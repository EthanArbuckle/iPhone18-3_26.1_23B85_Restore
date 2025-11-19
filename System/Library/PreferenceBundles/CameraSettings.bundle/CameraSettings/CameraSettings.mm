id sub_23D0(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_34DC;
  v14 = sub_34EC;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_34F4;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32038 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_2524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_34DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_34F4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_3620(id a1)
{
  qword_36AA8 = [[CAMCaptureCapabilities alloc] initWithHostProcess:0];

  _objc_release_x1();
}

void sub_3664(id a1)
{
  qword_36AB8 = [[CAMCaptureCapabilities alloc] initWithHostProcess:2];

  _objc_release_x1();
}

void sub_390C(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_36AC8;
  qword_36AC8 = v1;

  v3 = qword_36AC8;

  [v3 setPositiveFormat:@"0"];
}

id sub_3A24(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_3CE4;
  v14 = sub_3CF4;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3CFC;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32050 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_3B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3CE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_3CFC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_3FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_4000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 cameraTCCIsAuthorized])
        {
          v12 = [v11 bundleIdentifier];
          [v4 addObject:v12];
        }

        v13 = [v11 bundleIdentifier];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setEligibleAppsBundleIDs:v5 withAuthorizedBundleIds:v4];
}

void sub_4190(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setEligibleAppsBundleIDs:v3];
}

void sub_41EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAssociatedAppBundleID:v3 notifySpringBoard:0 notifyDelegates:1];
}

void sub_4890(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    if ([v4 cellType] == &dword_0 + 3)
    {
      [v4 setProperty:&__kCFBooleanTrue forKey:PSAdjustFontSizeToFitWidthKey];
    }
  }

  _objc_release_x1();
}

id sub_57BC(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_64D0;
  v14 = sub_64E0;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_64E8;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32068 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_5910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_64D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_64E8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_65C0(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_6AD0;
  v14 = sub_6AE0;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6AE8;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32080 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_6AE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_747C(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_8384;
  v14 = sub_8394;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_839C;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_320B0 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_75D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_75E8()
{
  keyExistsAndHasValidFormat = 0;
  v0 = CFPreferencesGetAppBooleanValue(CAMUserPreferenceCameraAdjustmentsEnabled, @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Inspecting defaults for Camera Control usage history", buf, 2u);
    }

    v2 = CFPreferencesCopyAppValue(@"systemOverlay.swipeToPresentEnabled", @"com.apple.camera");
    v3 = CFPreferencesCopyAppValue(@"systemOverlay.halfPressGestureEnabled", @"com.apple.camera");
    v4 = [v2 BOOLValue];
    v5 = [v3 BOOLValue];
    if (v2 && (v4 & 1) == 0 && v3 && (v5 & 1) == 0)
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disabling camera adjustments by default due to disabled gestures", buf, 2u);
      }

      v0 = 0;
      goto LABEL_38;
    }

    if ((v4 | v5))
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to explicitly enabled gestures", buf, 2u);
      }

      v0 = 1;
      goto LABEL_38;
    }

    v6 = CFPreferencesCopyAppValue(@"systemOverlay.hidesClientControls", @"com.apple.camera");
    v7 = CFPreferencesCopyAppValue(@"systemOverlay.menuToggleMaxIntervalMilliseconds", @"com.apple.camera");
    v8 = CFPreferencesCopyAppValue(@"CameraButtonSensitivity", @"com.apple.Accessibility");
    v9 = v8;
    if (v6 || v8 || v7)
    {
      v14 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to behavior defaults written", buf, 2u);
      }

      v0 = 1;
      goto LABEL_37;
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.CameraOverlayAngel"];

    if (v12)
    {
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v13 objectForKey:@"systemOverlay.lastUsedControl"];
    }

    else
    {
      *buf = 0;
      v15 = [LSBundleRecord bundleRecordWithBundleIdentifier:@"com.apple.CameraOverlayAngel" allowPlaceholder:0 error:buf];
      v16 = *buf;
      v13 = v16;
      if (!v15 || v16)
      {
        v18 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1B800(v13, v18);
        }

        v19 = 0;
      }

      else
      {
        v17 = [v15 dataContainerURL];
        v18 = [v17 path];

        v19 = _CFPreferencesCopyAppValueWithContainer();
      }

      v14 = v19;
    }

    v0 = v14 != 0;
    v20 = os_log_create("com.apple.camera", "Camera");
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v21)
      {
        *buf = 138412290;
        *&buf[4] = v14;
        v22 = "Enabling camera adjustments by default due to last-used control data: %@";
        v23 = v20;
        v24 = 12;
LABEL_35:
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }

    else if (v21)
    {
      *buf = 0;
      v22 = "Disabling camera adjustments by default due to lack of usage history";
      v23 = v20;
      v24 = 2;
      goto LABEL_35;
    }

LABEL_37:
LABEL_38:
  }

  return v0;
}

uint64_t sub_8384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_839C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_88E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_8900(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

unint64_t sub_8C00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];

  if (v4 == @"CAMNoActionSpecifierID")
  {
    v5 = [*(a1 + 32) _associatedAppBundleID];
    v7 = v5 == 0;
  }

  else
  {
    v5 = [v3 identifier];
    v6 = [*(a1 + 32) _associatedAppBundleID];
    v7 = [v5 isEqualToString:v6];
  }

  return v7;
}

void sub_8E48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _captureButtonAppConfigurationCoordinator];
  v6 = [v5 isBundleIDCameraTTCAuthorized:v4];

  v7 = [*(a1 + 32) _listItemSpecifierForBundleID:v4 appAuthorized:v6];

  [*(a1 + 40) addObject:v7];
}

int64_t sub_8EE0(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_91E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_941C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_9434(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_98E0(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_9CC8;
  v14 = sub_9CD8;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_9CE0;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_320F8 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_9A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9CC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_9CE0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_A8E4(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_AE64;
  v14 = sub_AE74;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_AE7C;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32110 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_AA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_AE64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_AE7C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_BCD8(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_BEB0;
  v14 = sub_BEC0;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_DC58;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32128 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BE44(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isSupportedVideoConfiguration:a2 forMode:1 device:0])
  {
    return &dword_0 + 1;
  }

  v5 = *(a1 + 32);

  return [v5 isSupportedVideoConfiguration:a2 forMode:1 device:1];
}

uint64_t sub_BEB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_BEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (*(a1 + 80) == 1)
  {
    v4 = [*(a1 + 32) isHDR10BitVideoSupportedForVideoConfiguration:objc_msgSend(v3 videoEncodingBehavior:{"integerValue"), 1}];
    v3 = v11;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 81) | v4;
  v6 = +[CameraVideoSettingsController _titleForVideoConfiguration:isHEVCEnabled:isHDR10BitVideoEnabled:](CameraVideoSettingsController, "_titleForVideoConfiguration:isHEVCEnabled:isHDR10BitVideoEnabled:", [v3 integerValue], *(a1 + 81), v4);
  v7 = [CameraVideoSettingsController _footerForVideoConfiguration:v11 willUseHEVC:v5 & 1 willUseDolbyVision:v4];
  v8 = [PSSpecifier preferenceSpecifierNamed:v6 target:*(a1 + 40) set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setProperty:v11 forKey:PSValueKey];
  [v8 setProperty:&__kCFBooleanTrue forKey:PSAdjustFontSizeToFitWidthKey];
  [*(a1 + 48) addObject:v8];
  v9 = [NSNumber numberWithInteger:*(a1 + 72)];
  v10 = [v11 isEqualToNumber:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  }

  [*(a1 + 56) appendFormat:@"\n%@", v7];
}

id sub_DC58(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_DD30(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_E660;
  v14 = sub_E670;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_E678;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32140 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_E678(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_11414(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_12C24;
  v14 = sub_12C34;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_12C3C;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_32158 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_11568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_11580(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexOfSpecifierWithID:a2];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) objectAtIndex:v3];
    [v4 addObject:v5];
  }
}

uint64_t sub_12C24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_12C3C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_13388(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_13700;
  v14 = sub_13710;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_13718;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_321B8 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_134DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_13700(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_13718(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

id sub_13828(void *a1)
{
  v1 = a1;
  [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_149FC;
  v14 = sub_14A0C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_14A14;
  v6[3] = &unk_2CA98;
  v2 = v9 = &v10;
  v7 = v2;
  v3 = v1;
  v8 = v3;
  [&off_321E8 enumerateObjectsUsingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

void sub_1397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_149FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_14A14(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_14B10(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    if ([v4 cellType] == &dword_0 + 3)
    {
      [v4 setProperty:&__kCFBooleanTrue forKey:PSAdjustFontSizeToFitWidthKey];
    }
  }

  _objc_release_x1();
}

void sub_14D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_14F58(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_151DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_15304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1531C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:&stru_2DB58 table:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(*(*(a1 + 48) + 8) + 40) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1538C(char a1)
{
  switch(a1)
  {
    case 1:

      return sub_16F30();
    case 2:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 cinematic4KSupported];
      return v2 & 1;
    case 4:
      v37 = objc_opt_self();
      if (([v37 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v37, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        v38 = qword_36FD0;
        v2 = [qword_36FD0 isLongPressVideoCaptureFromPhotoModeSupported];
        if (v2)
        {
          LOBYTE(v2) = [v38 multipleCaptureFeaturesSupported];
        }
      }

      return v2 & 1;
    case 5:
    case 6:
      v3 = objc_opt_self();
      if (([v3 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v3, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        v2 = [qword_36FD0 isImageAnalysisSupported];
        if (v2)
        {
          v4 = +[NSUserDefaults standardUserDefaults];
          v5 = [v4 objectForKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

          if (v5)
          {
            v6 = [v5 BOOLValue];
          }

          else
          {
            v43 = &__NSArray0__struct;
            v44 = &off_32230;

            v45 = +[NSLocale _deviceLanguage];
            v49 = v45;
            v46 = [NSArray arrayWithObjects:&v49 count:1];
            v47 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_32230 forPreferredLanguages:v46];

            v48 = [v47 count];
            v6 = v48 != 0;
          }

          LOBYTE(v2) = v6;
        }
      }

      return v2 & 1;
    case 9:
      v36 = objc_opt_self();
      if (([v36 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v36, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isMirroredFrontVideosSupported];
      }

      return v2 & 1;
    case 10:
      v23 = objc_opt_self();
      if (([v23 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v23, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isSpatialOverCaptureSupported];
      }

      return v2 & 1;
    case 11:
      v29 = objc_opt_self();
      if (([v29 isCameraAppInstalled] & 1) == 0)
      {
        v2 = [v29 isMessagesAppInstalled];
        if (!v2)
        {
          return v2 & 1;
        }
      }

      v30 = MobileGestalt_get_current_device();
      if (!v30)
      {
        goto LABEL_181;
      }

      v31 = v30;
      iPadCapability = MobileGestalt_get_iPadCapability();

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v33 = qword_36FD0;
      if ([qword_36FD0 isActionModeControlSupported])
      {
        v34 = 1;
      }

      else
      {
        v34 = [v33 isFrontRearSimultaneousVideoSupported];
      }

      LOBYTE(v2) = iPadCapability ^ 1 | v34;
      return v2 & 1;
    case 12:
      v21 = objc_opt_self();
      if (([v21 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v21, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 focalLengthPickerSupported];
      }

      return v2 & 1;
    case 13:
      v35 = objc_opt_self();
      if (([v35 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v35, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 photoModeDepthSuggestionSupported];
      }

      return v2 & 1;
    case 14:
      v25 = objc_opt_self();
      if (([v25 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v25, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 responsiveShutterSupported];
      }

      return v2 & 1;
    case 15:
      v10 = objc_opt_self();
      if (([v10 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v10, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 contentAwareDistortionCorrectionSupported];
      }

      return v2 & 1;
    case 16:
      v19 = objc_opt_self();
      if (([v19 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v19, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isSuperWideAutoMacroSupported];
      }

      return v2 & 1;
    case 17:
      v24 = objc_opt_self();
      if (([v24 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v24, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isSmudgeDetectionSupported];
      }

      return v2 & 1;
    case 19:
      v11 = objc_opt_self();
      if (([v11 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v11, "isMessagesAppInstalled")) != 0)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 smartStylesSupported];
      }

      return v2 & 1;
    case 20:
      v12 = objc_opt_self();
      if (([v12 isCameraAppInstalled] & 1) == 0)
      {
        v2 = [v12 isMessagesAppInstalled];
        if (!v2)
        {
          return v2 & 1;
        }
      }

      v13 = [v12 capabilities];
      if (!v13)
      {
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v14 = v13;
      v15 = [v13 semanticStylesSupport];

      if ((v15 & 8) == 0)
      {
LABEL_170:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      v16 = [v12 capabilities];
      if (!v16)
      {
LABEL_182:
        __break(1u);
        JUMPOUT(0x163CCLL);
      }

      v17 = v16;
      v18 = [v16 smartStylesSupported];

      LOBYTE(v2) = v18 ^ 1;
      return v2 & 1;
    case 21:
      LOBYTE(v2) = [objc_opt_self() isCameraAppInstalled];
      return v2 & 1;
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 29:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isCameraButtonSupported];
      return v2 & 1;
    case 26:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v2 = [qword_36FD0 isCameraButtonSupported];
      if (v2)
      {
        v22 = objc_opt_self();
        if (([v22 isCameraAppInstalled] & 1) != 0 || (v2 = objc_msgSend(v22, "isMessagesAppInstalled")) != 0)
        {
          LOBYTE(v2) = sub_173D0();
        }
      }

      return v2 & 1;
    case 28:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v2 = [qword_36FD0 isCameraButtonSupported];
      if (!v2)
      {
        return v2 & 1;
      }

      return sub_16FEC();
    case 30:

      return sub_17304();
    case 31:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isPALVideoSupported];
      return v2 & 1;
    case 32:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isEnhancedStabilizationSupported];
      return v2 & 1;
    case 33:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isActionModeControlSupported];
      return v2 & 1;
    case 34:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v39 = qword_36FD0;
      v2 = [qword_36FD0 isActionModeControlSupported];
      if (v2)
      {
        LOBYTE(v2) = [v39 isHDR10BitVideoSupported];
      }

      return v2 & 1;
    case 35:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isVariableFramerateVideoSupported];
      return v2 & 1;
    case 36:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v40 = qword_36FD0;
      if ([qword_36FD0 isBackTelephotoSupported])
      {
        goto LABEL_3;
      }

      LOBYTE(v2) = [v40 isBackSuperWideSupported];
      return v2 & 1;
    case 37:
      if (!sub_17304())
      {
        goto LABEL_170;
      }

      if (qword_367A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v2) = [qword_36FD0 isWhiteBalanceLockingForVideoRecordingSupported];
      return v2 & 1;
    case 38:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v20 = qword_36FD0;
      if (([qword_36FD0 isStereoAudioRecordingSupported] & 1) == 0 && (objc_msgSend(v20, "isCinematicAudioSupported") & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_3;
    case 39:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v9 = qword_36FD0;
      if (([qword_36FD0 isStereoAudioRecordingSupported] & 1) != 0 || (objc_msgSend(v9, "isCinematicAudioSupported") & 1) != 0 || (v2 = objc_msgSend(v9, "isWindRemovalSupported")) != 0)
      {
        LOBYTE(v2) = [v9 isMixAudioWithOthersSupported];
      }

      return v2 & 1;
    case 40:
      if (qword_367A8 != -1)
      {
        swift_once();
      }

      v20 = qword_36FD0;
      if (([qword_36FD0 isStereoAudioRecordingSupported] & 1) != 0 || (objc_msgSend(v20, "isCinematicAudioSupported") & 1) != 0 || (v2 = objc_msgSend(v20, "isWindRemovalSupported")) != 0)
      {
LABEL_106:
        LOBYTE(v2) = [v20 isWindRemovalSupported];
      }

      return v2 & 1;
    case 42:
      v28 = objc_opt_self();
      if ([v28 isCameraAppInstalled])
      {
        goto LABEL_3;
      }

      v2 = [v28 isMessagesAppInstalled];
      if (v2)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isHEVCEncodingSupported];
      }

      return v2 & 1;
    case 43:
      v42 = objc_opt_self();
      if ([v42 isCameraAppInstalled])
      {
        goto LABEL_3;
      }

      v2 = [v42 isMessagesAppInstalled];
      if (v2)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isPhotoResolutionSupported:2 forPhotoEncoding:1];
      }

      return v2 & 1;
    case 44:
      v7 = objc_opt_self();
      if ([v7 isCameraAppInstalled])
      {
        goto LABEL_3;
      }

      v2 = [v7 isMessagesAppInstalled];
      if (v2)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isLinearDNGSupported];
      }

      return v2 & 1;
    case 45:
      v26 = objc_opt_self();
      if ([v26 isCameraAppInstalled])
      {
        goto LABEL_3;
      }

      v2 = [v26 isMessagesAppInstalled];
      if (v2)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        v27 = qword_36FD0;
        v2 = [qword_36FD0 isLinearDNGSupported];
        if (v2)
        {
          LOBYTE(v2) = [v27 isPhotoResolutionSupported:3 forPhotoEncoding:1];
        }
      }

      return v2 & 1;
    case 46:
      v41 = objc_opt_self();
      if ([v41 isCameraAppInstalled])
      {
        goto LABEL_3;
      }

      v2 = [v41 isMessagesAppInstalled];
      if (v2)
      {
        if (qword_367A8 != -1)
        {
          swift_once();
        }

        LOBYTE(v2) = [qword_36FD0 isProResVideoSupported];
      }

      return v2 & 1;
    default:
      v1 = objc_opt_self();
      if ([v1 isCameraAppInstalled])
      {
LABEL_3:
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = [v1 isMessagesAppInstalled];
      }

      return v2 & 1;
  }
}

unint64_t sub_16488(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      return 0xD000000000000018;
    case 2:
      return 0xD00000000000001CLL;
    case 3:
    case 11:
      v3 = 5;
      goto LABEL_42;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0xD000000000000015;
    case 6:
      return 0x4E415F5458455423;
    case 7:
      return 0xD000000000000011;
    case 8:
    case 16:
      return 0xD000000000000012;
    case 9:
      return 0x524F5252494D23;
    case 10:
      return 0xD00000000000002BLL;
    case 12:
      return 0xD00000000000001ELL;
    case 13:
      return 0xD000000000000018;
    case 14:
      return 0xD000000000000023;
    case 15:
      return 0x4957535F43444923;
    case 17:
      return 0xD000000000000018;
    case 18:
    case 31:
    case 43:
      return 0xD00000000000002ELL;
    case 19:
      return 0x535F5452414D532FLL;
    case 20:
      return 0xD000000000000014;
    case 21:
      return 0xD000000000000019;
    case 22:
      return 0xD000000000000017;
    case 23:
      return 0xD000000000000035;
    case 24:
      v3 = 33;
      goto LABEL_42;
    case 25:
      return 0xD000000000000038;
    case 26:
    case 42:
      return 0xD000000000000036;
    case 27:
      return 0xD000000000000037;
    case 28:
      v3 = 35;
      goto LABEL_42;
    case 29:
      return 0xD000000000000033;
    case 30:
      return 0xD000000000000018;
    case 32:
      v3 = 38;
      goto LABEL_42;
    case 33:
      return 0xD000000000000032;
    case 34:
      return 0xD000000000000026;
    case 35:
      return 0xD000000000000025;
    case 36:
      return 0xD000000000000045;
    case 37:
    case 46:
      v3 = 39;
LABEL_42:
      result = v3 | 0xD000000000000018;
      break;
    case 38:
      result = 0xD000000000000018;
      break;
    case 39:
    case 44:
      result = 0xD000000000000042;
      break;
    case 40:
      result = 0xD00000000000002FLL;
      break;
    case 41:
      result = 0xD00000000000001ALL;
      break;
    case 45:
      result = 0xD000000000000031;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_16A58(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_16488(*a1);
  v5 = v4;
  if (v3 == sub_16488(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB8();
  }

  return v8 & 1;
}

unint64_t sub_16AE4()
{
  result = qword_367D0;
  if (!qword_367D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_367D0);
  }

  return result;
}

Swift::Int sub_16B38()
{
  v1 = *v0;
  sub_1BBE8();
  sub_16488(v1);
  sub_1BB28();

  return sub_1BBF8();
}

uint64_t sub_16B9C()
{
  sub_16488(*v0);
  sub_1BB28();
}

Swift::Int sub_16BF0()
{
  v1 = *v0;
  sub_1BBE8();
  sub_16488(v1);
  sub_1BB28();

  return sub_1BBF8();
}

uint64_t sub_16C50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_178B0();
  *a2 = result;
  return result;
}

unint64_t sub_16C80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_16488(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_16CB0()
{
  result = qword_367D8;
  if (!qword_367D8)
  {
    sub_16D14(&qword_367E0, qword_20050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_367D8);
  }

  return result;
}

uint64_t sub_16D14(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_16D74@<X0>(_BYTE *a1@<X8>)
{

  result = sub_178B0();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraSettingDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 46;
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

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraSettingDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL sub_16F30()
{
  if (qword_367A8 != -1)
  {
    swift_once();
  }

  v0 = qword_36FD0;
  v1 = [qword_36FD0 backHighFrameRate720pMaxFPS];
  v2 = [v0 backHighFrameRate1080pMaxFPS];
  [objc_opt_self() newFormatsConfiguration];
  [v0 isHEVCEncodingSupported];
  return v1 > 239 || v2 > 119;
}

uint64_t sub_16FEC()
{
  v0 = sub_1B9C8();
  v27 = *(v0 - 8);
  v28 = v0;
  v1 = *(v27 + 64);
  __chkstk_darwin();
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B9E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA28();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v4);
  sub_1B9D8();
  sub_1BA18();
  v19 = v9;
  v20 = v27;
  (*(v10 + 8))(v13, v19);
  v21 = v28;
  sub_1B9F8();
  (*(v15 + 8))(v18, v14);
  v22 = (*(v20 + 88))(v3, v21);
  v24 = v22 != enum case for GenerativeModelsAvailability.Availability.restricted(_:) && v22 != enum case for GenerativeModelsAvailability.Availability.unavailable(_:) && v22 == enum case for GenerativeModelsAvailability.Availability.available(_:);
  v25 = v24;
  if (!v24)
  {
    (*(v20 + 8))(v3, v21);
  }

  return v25;
}

BOOL sub_17304()
{
  if (qword_367A8 != -1)
  {
    swift_once();
  }

  v0 = qword_36FD0;
  return [qword_36FD0 back720pMaxFPS] >= 30 && objc_msgSend(v0, "back1080pMaxFPS") > 29 || objc_msgSend(v0, "back1080pMaxFPS") > 59 || objc_msgSend(v0, "back4kMaxFPS") > 29 || objc_msgSend(v0, "back4kMaxFPS") > 59;
}

BOOL sub_173D0()
{
  keyExistsAndHasValidFormat = 0;
  v0 = CFPreferencesGetAppBooleanValue(CAMUserPreferenceCameraAdjustmentsEnabled, @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v1 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Inspecting defaults for Camera Control usage history", buf, 2u);
    }

    v2 = CFPreferencesCopyAppValue(@"systemOverlay.swipeToPresentEnabled", @"com.apple.camera");
    v3 = CFPreferencesCopyAppValue(@"systemOverlay.halfPressGestureEnabled", @"com.apple.camera");
    v4 = [v2 BOOLValue];
    v5 = [v3 BOOLValue];
    if (v2 && (v4 & 1) == 0 && v3 && (v5 & 1) == 0)
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disabling camera adjustments by default due to disabled gestures", buf, 2u);
      }

      v0 = 0;
      goto LABEL_38;
    }

    if ((v4 | v5))
    {
      v6 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to explicitly enabled gestures", buf, 2u);
      }

      v0 = 1;
      goto LABEL_38;
    }

    v7 = CFPreferencesCopyAppValue(@"systemOverlay.hidesClientControls", @"com.apple.camera");
    v8 = CFPreferencesCopyAppValue(@"systemOverlay.menuToggleMaxIntervalMilliseconds", @"com.apple.camera");
    v9 = CFPreferencesCopyAppValue(@"CameraButtonSensitivity", @"com.apple.Accessibility");
    v6 = v9;
    if (v7 || v9 || v8)
    {
      v16 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to behavior defaults written", buf, 2u);
      }

      v0 = 1;
      goto LABEL_37;
    }

    v10 = @"com.apple.CameraOverlayAngel";
    v11 = @"systemOverlay.lastUsedControl";
    v12 = +[NSBundle mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.CameraOverlayAngel"];

    if (v14)
    {
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 objectForKey:@"systemOverlay.lastUsedControl"];
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v30 = 0;
      v15 = [LSBundleRecord bundleRecordWithBundleIdentifier:@"com.apple.CameraOverlayAngel" allowPlaceholder:0 error:&v30];
      v19 = v30;
      v18 = v19;
      if (!v15 || v19)
      {
        v21 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v18;
          _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not find CameraOverlayAngel bundle record: %{public}@", buf, 0xCu);
        }

        v22 = 0;
      }

      else
      {
        v20 = [v15 dataContainerURL];
        v21 = [v20 path];

        v22 = _CFPreferencesCopyAppValueWithContainer();
      }

      v17 = v22;
      v16 = v17;
    }

    v0 = v16 != 0;
    v23 = os_log_create("com.apple.camera", "Camera");
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v24)
      {
        *buf = 138412290;
        v32 = v16;
        v25 = "Enabling camera adjustments by default due to last-used control data: %@";
        v26 = v23;
        v27 = 12;
LABEL_35:
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else if (v24)
    {
      *buf = 0;
      v25 = "Disabling camera adjustments by default due to lack of usage history";
      v26 = v23;
      v27 = 2;
      goto LABEL_35;
    }

LABEL_37:
LABEL_38:
  }

  return v0;
}

uint64_t sub_178B0()
{
  v0 = sub_1BBC8();

  if (v0 >= 0x2F)
  {
    return 47;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_17904()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_179A8()
{
  result = qword_36920;
  if (!qword_36920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36920);
  }

  return result;
}

uint64_t sub_17A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(sub_1BA68() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_1BA48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFF0(0, &qword_369D8, off_2C4D0);
  v11 = [objc_allocWithZone(PSSpecifier) init];
  [v11 setProperty:a4 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_1BA58();
  sub_1BA38();
  sub_1BA98();
  sub_1AFF0(0, &qword_369E0, NSBundle_ptr);
  if (!sub_1BB68())
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = sub_1BAA8();
  v15 = v14;
  v17 = v16;
  sub_1AFA4(&qword_36940, &type metadata accessor for PreferencesControllerView);
  sub_1BAB8();
  sub_1B038(v13, v15, v17 & 1);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_17CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[95] = a6;
  v6[94] = a5;
  v6[93] = a4;
  v6[92] = a3;
  v6[91] = a2;
  v6[90] = a1;
  v7 = sub_1BA68();
  v6[96] = v7;
  v8 = *(v7 - 8);
  v6[97] = v8;
  v9 = *(v8 + 64) + 15;
  v6[98] = swift_task_alloc();
  v10 = sub_1BA88();
  v6[99] = v10;
  v11 = *(v10 - 8);
  v6[100] = v11;
  v12 = *(v11 + 64) + 15;
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v13 = sub_1B9B8();
  v6[103] = v13;
  v14 = *(v13 - 8);
  v6[104] = v14;
  v15 = *(v14 + 64) + 15;
  v6[105] = swift_task_alloc();
  v16 = *(*(sub_1ABCC(&qword_36950, &qword_20218) - 8) + 64) + 15;
  v6[106] = swift_task_alloc();
  v17 = sub_1B9A8();
  v6[107] = v17;
  v18 = *(v17 - 8);
  v6[108] = v18;
  v19 = *(v18 + 64) + 15;
  v6[109] = swift_task_alloc();
  sub_1BB58();
  v6[110] = sub_1BB48();
  v21 = sub_1BB38();

  return _swift_task_switch(sub_17F54, v21, v20);
}

uint64_t sub_17F54()
{
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[91];

  sub_1BAE8();
  sub_1B978();
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v9 = v0[102];
    v10 = v0[100];
    v11 = v0[99];
    v12 = v0[91];
    v13 = v0[90];
    sub_1AE94(v0[106]);
    sub_1BAD8();
    sub_1BAF8();
    (*(v10 + 8))(v9, v11);
    goto LABEL_125;
  }

  v14 = v0[101];
  v15 = v0[91];
  (*(v0[108] + 32))(v0[109], v0[106], v0[107]);
  sub_1BAD8();
  v0[88] = sub_1B988();
  v0[89] = v16;
  v0[86] = 47;
  v0[87] = 0xE100000000000000;
  sub_1AEFC();
  v17 = sub_1BB78();

  v18 = 0;
  v19 = *(v17 + 16);
  v20 = _swiftEmptyArrayStorage;
LABEL_4:
  v21 = (v17 + 40 + 16 * v18);
  while (v19 != v18)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
      JUMPOUT(0x196CCLL);
    }

    v23 = *(v21 - 1);
    v22 = *v21;
    v21 += 2;
    ++v18;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A8A0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        sub_1A8A0((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[2 * v26];
      *(v27 + 4) = v23;
      *(v27 + 5) = v22;
      goto LABEL_4;
    }
  }

  v28 = _swiftEmptyArrayStorage[2];
  if (!v28)
  {
    v170 = v0[109];
    sub_1B998();
    if (v171)
    {
      v172 = v0[95];

      v173 = sub_1BB18();

      [v172 setSpecifierIdentifierToScrollAndHighlight:v173];

      goto LABEL_124;
    }

    v28 = _swiftEmptyArrayStorage[2];
    if (!v28)
    {

      goto LABEL_124;
    }
  }

  v29 = 0;
  v30 = (v0[97] + 8);
  v31 = v0[92];
  v192 = PSListControllerCellHighlightingSelectionInvocationRelayKey;
  while (2)
  {
    v43 = *(v20 + 4);
    v42 = *(v20 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v28 - 1) > *(v20 + 3) >> 1)
    {
      v20 = sub_1A9CC(isUniquelyReferenced_nonNull_native, v28, 1, v20);
    }

    sub_1AF50((v20 + 32));
    v45 = *(v20 + 2);
    memmove(v20 + 32, v20 + 48, 16 * v45 - 16);
    *(v20 + 2) = v45 - 1;

    v46 = sub_1B700();
    v47 = 22;
    switch(v46)
    {
      case 1:
        v47 = 23;
        goto LABEL_41;
      case 2:
        v47 = 26;
        goto LABEL_41;
      case 3:
        v47 = 29;
        goto LABEL_41;
      case 4:
        v47 = 19;
        goto LABEL_41;
      case 5:
        v47 = 20;
        goto LABEL_41;
      case 6:
        v47 = 30;
        goto LABEL_41;
      case 7:
        v47 = 35;
        goto LABEL_41;
      case 8:
        v47 = 1;
        goto LABEL_41;
      case 9:
        v47 = 2;
        goto LABEL_41;
      case 10:
        v47 = 38;
        goto LABEL_41;
      case 11:
        v47 = 41;
        goto LABEL_41;
      case 12:
        v47 = 43;
        goto LABEL_41;
      case 13:
        v47 = 45;
        goto LABEL_41;
      case 14:
        v47 = 3;
        goto LABEL_41;
      case 15:
        v47 = 11;
        goto LABEL_41;
      case 16:
        v47 = 12;
        goto LABEL_41;
      case 17:
        goto LABEL_117;
      default:
LABEL_41:
        if (sub_1538C(v47))
        {
          switch(v46)
          {
            case 1:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v100 = *(v31 + 16);
              if (*(v100 + 16) && (v101 = sub_19A34(1), (v102 & 1) != 0))
              {
                v103 = *(*(v100 + 56) + 8 * v101);
                swift_endAccess();
                v33 = v103;
              }

              else
              {
                swift_endAccess();
                v146 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v146;
                v147 = *(v31 + 16);
                v148 = swift_isUniquelyReferenced_nonNull_native();
                v201 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 1, v148);
                *(v31 + 16) = v201;
                swift_endAccess();
              }

              v149 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36988;
              v40 = off_2C4A0;
              goto LABEL_19;
            case 2:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v82 = *(v31 + 16);
              if (*(v82 + 16) && (v83 = sub_19A34(2), (v84 & 1) != 0))
              {
                v85 = *(*(v82 + 56) + 8 * v83);
                swift_endAccess();
                v33 = v85;
              }

              else
              {
                swift_endAccess();
                v134 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v134;
                v135 = *(v31 + 16);
                v136 = swift_isUniquelyReferenced_nonNull_native();
                v198 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 2, v136);
                *(v31 + 16) = v198;
                swift_endAccess();
              }

              v137 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36980;
              v40 = off_2C490;
              goto LABEL_19;
            case 3:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v92 = *(v31 + 16);
              if (*(v92 + 16) && (v93 = sub_19A34(3), (v94 & 1) != 0))
              {
                v95 = *(*(v92 + 56) + 8 * v93);
                swift_endAccess();
                v33 = v95;
              }

              else
              {
                swift_endAccess();
                v138 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v138;
                v139 = *(v31 + 16);
                v140 = swift_isUniquelyReferenced_nonNull_native();
                v199 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 3, v140);
                *(v31 + 16) = v199;
                swift_endAccess();
              }

              v141 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36978;
              v40 = AXUICameraButtonController_ptr;
              goto LABEL_19;
            case 4:
            case 5:
              v48 = v0[95];
              v49 = sub_1BB18();

              [v48 setSpecifierIdentifierToScrollAndSelect:v49];

              break;
            case 6:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v74 = *(v31 + 16);
              if (*(v74 + 16) && (v75 = sub_19A34(6), (v76 & 1) != 0))
              {
                v77 = *(*(v74 + 56) + 8 * v75);
                swift_endAccess();
                v33 = v77;
              }

              else
              {
                swift_endAccess();
                v126 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v126;
                v127 = *(v31 + 16);
                v128 = swift_isUniquelyReferenced_nonNull_native();
                v196 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 6, v128);
                *(v31 + 16) = v196;
                swift_endAccess();
              }

              v129 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_369C0;
              v40 = &off_2C4F0;
              goto LABEL_19;
            case 7:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v104 = *(v31 + 16);
              if (*(v104 + 16) && (v105 = sub_19A34(7), (v106 & 1) != 0))
              {
                v107 = *(*(v104 + 56) + 8 * v105);
                swift_endAccess();
                v33 = v107;
              }

              else
              {
                swift_endAccess();
                v150 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v150;
                v151 = *(v31 + 16);
                v152 = swift_isUniquelyReferenced_nonNull_native();
                v202 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 7, v152);
                *(v31 + 16) = v202;
                swift_endAccess();
              }

              v153 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36970;
              v40 = off_2C4E8;
              goto LABEL_19;
            case 8:
              v116 = v0[93];
              v117 = sub_1BB18();

              v65 = [v116 specifierForID:v117];

              if (!v65)
              {
                goto LABEL_118;
              }

              [v65 setTarget:v0[93]];
              swift_beginAccess();
              v118 = *(v31 + 16);
              if (*(v118 + 16) && (v119 = sub_19A34(8), (v120 & 1) != 0))
              {
                v121 = *(*(v118 + 56) + 8 * v119);
                swift_endAccess();
                v33 = v121;
              }

              else
              {
                swift_endAccess();
                v166 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v166;
                v167 = *(v31 + 16);
                v168 = swift_isUniquelyReferenced_nonNull_native();
                v206 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 8, v168);
                *(v31 + 16) = v206;
                swift_endAccess();
              }

              v169 = v0[101];
              v37 = v0[98];
              v38 = v0[96];

              [v65 setProperty:v33 forKey:v192];
              v39 = &unk_369B8;
              v40 = off_2C4E0;
              goto LABEL_19;
            case 9:
              v86 = v0[93];
              v87 = sub_1BB18();

              v65 = [v86 specifierForID:v87];

              if (!v65)
              {
                goto LABEL_118;
              }

              [v65 setTarget:v0[93]];
              swift_beginAccess();
              v88 = *(v31 + 16);
              if (*(v88 + 16) && (v89 = sub_19A34(9), (v90 & 1) != 0))
              {
                v91 = *(*(v88 + 56) + 8 * v89);
                swift_endAccess();
                v33 = v91;
              }

              else
              {
                swift_endAccess();
                v162 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v162;
                v163 = *(v31 + 16);
                v164 = swift_isUniquelyReferenced_nonNull_native();
                v205 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 9, v164);
                *(v31 + 16) = v205;
                swift_endAccess();
              }

              v165 = v0[101];
              v37 = v0[98];
              v38 = v0[96];

              [v65 setProperty:v33 forKey:v192];
              v39 = &qword_36960;
              v40 = off_2C4D8;
LABEL_19:
              sub_1AFF0(0, v39, v40);
              v41 = v65;
              sub_1BA58();
              sub_1AFA4(&qword_36968, &type metadata accessor for PreferencesControllerRecipe);
              sub_1BA78();

              (*v30)(v37, v38);
              v29 = v33;
              break;
            case 10:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v112 = *(v31 + 16);
              if (*(v112 + 16) && (v113 = sub_19A34(10), (v114 & 1) != 0))
              {
                v115 = *(*(v112 + 56) + 8 * v113);
                swift_endAccess();
                v33 = v115;
              }

              else
              {
                swift_endAccess();
                v158 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v158;
                v159 = *(v31 + 16);
                v160 = swift_isUniquelyReferenced_nonNull_native();
                v204 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 10, v160);
                *(v31 + 16) = v204;
                swift_endAccess();
              }

              v161 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_369B0;
              v40 = off_2C498;
              goto LABEL_19;
            case 11:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v78 = *(v31 + 16);
              if (*(v78 + 16) && (v79 = sub_19A34(11), (v80 & 1) != 0))
              {
                v81 = *(*(v78 + 56) + 8 * v79);
                swift_endAccess();
                v33 = v81;
              }

              else
              {
                swift_endAccess();
                v130 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v130;
                v131 = *(v31 + 16);
                v132 = swift_isUniquelyReferenced_nonNull_native();
                v197 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 11, v132);
                *(v31 + 16) = v197;
                swift_endAccess();
              }

              v133 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_369A8;
              v40 = off_2C4B0;
              goto LABEL_19;
            case 12:
            case 13:
              v50 = v0[94];
              v51 = sub_1BB18();

              v52 = [v50 specifierForID:v51];

              if (!v52)
              {
                goto LABEL_118;
              }

              [v52 setTarget:v0[94]];
              swift_beginAccess();
              v53 = *(v31 + 16);
              if (*(v53 + 16) && (v54 = sub_19A34(v46), (v55 & 1) != 0))
              {
                v56 = *(*(v53 + 56) + 8 * v54);
                swift_endAccess();
                v57 = v56;
              }

              else
              {
                swift_endAccess();
                v58 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v57 = v58;
                v59 = *(v31 + 16);
                v60 = swift_isUniquelyReferenced_nonNull_native();
                v194 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v57, v46, v60);
                *(v31 + 16) = v194;
                swift_endAccess();
              }

              v61 = v0[101];
              v62 = v0[98];
              v63 = v0[96];

              [v52 setProperty:v57 forKey:v192];
              sub_1AFF0(0, &qword_36960, off_2C4D8);
              v64 = v52;
              sub_1BA58();
              sub_1AFA4(&qword_36968, &type metadata accessor for PreferencesControllerRecipe);
              sub_1BA78();

              (*v30)(v62, v63);
              v29 = v57;
              break;
            case 14:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v70 = *(v31 + 16);
              if (*(v70 + 16) && (v71 = sub_19A34(14), (v72 & 1) != 0))
              {
                v73 = *(*(v70 + 56) + 8 * v71);
                swift_endAccess();
                v33 = v73;
              }

              else
              {
                swift_endAccess();
                v122 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v122;
                v123 = *(v31 + 16);
                v124 = swift_isUniquelyReferenced_nonNull_native();
                v195 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 14, v124);
                *(v31 + 16) = v195;
                swift_endAccess();
              }

              v125 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_369A0;
              v40 = off_2C4C8;
              goto LABEL_19;
            case 15:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v108 = *(v31 + 16);
              if (*(v108 + 16) && (v109 = sub_19A34(15), (v110 & 1) != 0))
              {
                v111 = *(*(v108 + 56) + 8 * v109);
                swift_endAccess();
                v33 = v111;
              }

              else
              {
                swift_endAccess();
                v154 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v154;
                v155 = *(v31 + 16);
                v156 = swift_isUniquelyReferenced_nonNull_native();
                v203 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 15, v156);
                *(v31 + 16) = v203;
                swift_endAccess();
              }

              v157 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36998;
              v40 = off_2C4C0;
              goto LABEL_19;
            case 16:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v66 = *(v31 + 16);
              if (*(v66 + 16) && (v67 = sub_19A34(16), (v68 & 1) != 0))
              {
                v69 = *(*(v66 + 56) + 8 * v67);
                swift_endAccess();
                v33 = v69;
              }

              else
              {
                swift_endAccess();
                v32 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v32;
                v34 = *(v31 + 16);
                v35 = swift_isUniquelyReferenced_nonNull_native();
                v193 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 16, v35);
                *(v31 + 16) = v193;
                swift_endAccess();
              }

              v36 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_36990;
              v40 = off_2C4B8;
              goto LABEL_19;
            default:

              v65 = [objc_allocWithZone(PSSpecifier) init];
              swift_beginAccess();
              v96 = *(v31 + 16);
              if (*(v96 + 16) && (v97 = sub_19A34(0), (v98 & 1) != 0))
              {
                v99 = *(*(v96 + 56) + 8 * v97);
                swift_endAccess();
                v33 = v99;
              }

              else
              {
                swift_endAccess();
                v142 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
                swift_beginAccess();
                v33 = v142;
                v143 = *(v31 + 16);
                v144 = swift_isUniquelyReferenced_nonNull_native();
                v200 = *(v31 + 16);
                *(v31 + 16) = 0x8000000000000000;
                sub_1A5FC(v33, 0, v144);
                *(v31 + 16) = v200;
                swift_endAccess();
              }

              v145 = v0[101];
              v37 = v0[98];
              v38 = v0[96];
              [v65 setProperty:v33 forKey:v192];

              v39 = &unk_369C8;
              v40 = off_2C4A8;
              goto LABEL_19;
          }

          v28 = *(v20 + 2);
          if (!v28)
          {
            goto LABEL_118;
          }

          continue;
        }

LABEL_117:

LABEL_118:

        if (v29)
        {
          v174 = v0[109];
          sub_1B998();
          if (v175)
          {
            v176 = sub_1BB18();

            [v29 setSpecifierIdentifierToScrollAndHighlight:v176];
          }

          else
          {
          }
        }

LABEL_124:
        v177 = v0[109];
        v178 = v0[108];
        v179 = v0[107];
        v180 = v0[101];
        v181 = v0[100];
        v182 = v0[99];
        v183 = v0[90];
        sub_1BAF8();
        (*(v181 + 8))(v180, v182);
        (*(v178 + 8))(v177, v179);
LABEL_125:
        v184 = v0[109];
        v185 = v0[106];
        v186 = v0[105];
        v187 = v0[102];
        v188 = v0[101];
        v189 = v0[98];

        v190 = v0[1];

        return v190();
    }
  }
}

uint64_t sub_19758@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_1ABCC(&qword_36930, &qword_201F8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v10;
  v11[5] = v9;

  v12 = v8;
  v13 = v10;
  v14 = v9;
  sub_1ABCC(&qword_36938, &qword_20200);
  v15 = sub_1BA48();
  v16 = sub_1AFA4(&qword_36940, &type metadata accessor for PreferencesControllerView);
  v22[2] = v15;
  v22[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BB08();
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v12;
  v17[4] = v13;
  v17[5] = v14;
  sub_1AE30();

  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_1BAC8();
  return (*(v3 + 8))(v6, v2);
}

id sub_1998C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ListControllerCellHighlightingSelectionInvocationRelaysManager();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1AAD8(&_swiftEmptyArrayStorage);
  v3 = [objc_allocWithZone(CameraSettingsController) init];
  v4 = [objc_allocWithZone(CameraCodecSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = result;
  return result;
}

unint64_t sub_19A34(char a1)
{
  v3 = *(v1 + 40);
  sub_1BBE8();
  sub_1B2A4(a1);
  sub_1BB28();

  v4 = sub_1BBF8();

  return sub_19ABC(a1, v4);
}

unint64_t sub_19ABC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000053454C59;
      v8 = 0x54535F5452414D53;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000000024810;
          break;
        case 2:
          v8 = 0xD00000000000001ELL;
          v7 = 0x8000000000024830;
          break;
        case 3:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000000024850;
          break;
        case 4:
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000024880;
          break;
        case 6:
          v8 = 0xD000000000000017;
          v7 = 0x80000000000248A0;
          break;
        case 7:
          v8 = 0x4F5455415F4D4143;
          v7 = 0xEC0000005350465FLL;
          break;
        case 8:
          v8 = 0xD000000000000017;
          v7 = 0x80000000000248D0;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000000000248F0;
          break;
        case 0xA:
          v8 = 0xD000000000000017;
          v7 = 0x8000000000024910;
          break;
        case 0xB:
          v8 = 0xD000000000000019;
          v7 = 0x8000000000024930;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000024950;
          break;
        case 0xD:
          v8 = 0xD000000000000016;
          v7 = 0x8000000000024970;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000000024990;
          break;
        case 0xF:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000000000249B0;
          break;
        case 0x10:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000000000249D0;
          break;
        default:
          v8 = 0xD000000000000016;
          v7 = 0x80000000000247F0;
          break;
      }

      v9 = 0x54535F5452414D53;
      v10 = 0xEC00000053454C59;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000000024810;
          if (v8 == 0xD00000000000001DLL)
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        case 2:
          v10 = 0x8000000000024830;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 3:
          v10 = 0x8000000000024850;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 4:
          goto LABEL_50;
        case 5:
          v10 = 0x8000000000024880;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 6:
          v10 = 0x80000000000248A0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 7:
          v10 = 0xEC0000005350465FLL;
          if (v8 != 0x4F5455415F4D4143)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 8:
          v10 = 0x80000000000248D0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 9:
          v10 = 0x80000000000248F0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 10:
          v9 = 0xD000000000000017;
          v10 = 0x8000000000024910;
LABEL_50:
          if (v8 == v9)
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        case 11:
          v10 = 0x8000000000024930;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 12:
          v10 = 0x8000000000024950;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 13:
          v10 = 0x8000000000024970;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 14:
          v10 = 0x8000000000024990;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 15:
          v10 = 0x80000000000249B0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        case 16:
          v10 = 0x80000000000249D0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        default:
          v10 = 0x80000000000247F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_52;
          }

LABEL_51:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_52:
          v11 = sub_1BBB8();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1A09C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1ABCC(&qword_36928, &qword_201F0);
  v36 = a2;
  v7 = sub_1BB98();
  v8 = v7;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v25 = v22 | (v9 << 6);
      v26 = *(*(v5 + 48) + v25);
      v27 = *(*(v5 + 56) + 8 * v25);
      if ((v36 & 1) == 0)
      {
        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_1BBE8();
      sub_1BB28();

      v17 = sub_1BBF8();
      v18 = -1 << *(v8 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v15 + 8 * (v19 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v19) & ~*(v15 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = 0;
        v31 = (63 - v18) >> 6;
        do
        {
          if (++v20 == v31 && (v30 & 1) != 0)
          {
            goto LABEL_38;
          }

          v32 = v20 == v31;
          if (v20 == v31)
          {
            v20 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v20);
        }

        while (v33 == -1);
        v21 = __clz(__rbit64(~v33)) + (v20 << 6);
      }

      *(v15 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v8 + 48) + v21) = v26;
      *(*(v8 + 56) + 8 * v21) = v27;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        JUMPOUT(0x1A5B8);
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_19;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1A5FC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19A34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return _objc_release_x1();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1A744();
    result = v17;
    goto LABEL_8;
  }

  sub_1A09C(v14, a3 & 1);
  v18 = *v4;
  result = sub_19A34(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1BBD8();
  __break(1u);
  return _objc_release_x1();
}

id sub_1A744()
{
  v1 = v0;
  sub_1ABCC(&qword_36928, &qword_201F0);
  v2 = *v0;
  v3 = sub_1BB88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1A8A0(char *a1, int64_t a2, char a3)
{
  result = sub_1A8C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A8C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABCC(&qword_369D0, &qword_20220);
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

char *sub_1A9CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABCC(&qword_369D0, &qword_20220);
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

unint64_t sub_1AAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1ABCC(&qword_36928, &qword_201F0);
    v3 = sub_1BBA8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_19A34(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1ABCC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1AC24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1AC74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1AD3C;

  return sub_17CF4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1AD3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1AE30()
{
  result = qword_36948;
  if (!qword_36948)
  {
    sub_16D14(&qword_36930, &qword_201F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36948);
  }

  return result;
}

uint64_t sub_1AE94(uint64_t a1)
{
  v2 = sub_1ABCC(&qword_36950, &qword_20218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AEFC()
{
  result = qword_36958;
  if (!qword_36958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36958);
  }

  return result;
}

uint64_t sub_1AFA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_1B048(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0EC()
{
  sub_16D14(&qword_36930, &qword_201F8);
  sub_1AE30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for CameraSettingsSpecifierIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraSettingsSpecifierIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B2A4(char a1)
{
  result = 0x54535F5452414D53;
  switch(a1)
  {
    case 1:
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      return result;
    case 5:
    case 12:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x4F5455415F4D4143;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 14:
    case 15:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B4AC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B2A4(*a1);
  v5 = v4;
  if (v3 == sub_1B2A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB8();
  }

  return v8 & 1;
}

Swift::Int sub_1B534()
{
  v1 = *v0;
  sub_1BBE8();
  sub_1B2A4(v1);
  sub_1BB28();

  return sub_1BBF8();
}

uint64_t sub_1B598()
{
  sub_1B2A4(*v0);
  sub_1BB28();
}

Swift::Int sub_1B5EC()
{
  v1 = *v0;
  sub_1BBE8();
  sub_1B2A4(v1);
  sub_1BB28();

  return sub_1BBF8();
}

uint64_t sub_1B64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B700();
  *a2 = result;
  return result;
}

unint64_t sub_1B67C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B2A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B6AC()
{
  result = qword_369E8;
  if (!qword_369E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_369E8);
  }

  return result;
}

uint64_t sub_1B700()
{
  v0 = sub_1BBC8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

id sub_1B754()
{
  result = [objc_allocWithZone(CAMCaptureCapabilities) initWithHostProcess:0];
  qword_36FD0 = result;
  return result;
}

void sub_1B800(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not find CameraOverlayAngel bundle record: %{public}@", &v2, 0xCu);
}

void sub_1B878(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Missing bundleIdentifier for selected specifier %{public}@", &v2, 0xCu);
}

void sub_1B8F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to get application record for %{public}@: %{public}@", &v3, 0x16u);
}