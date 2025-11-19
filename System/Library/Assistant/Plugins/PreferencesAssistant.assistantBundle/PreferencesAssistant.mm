uint64_t sub_3488(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:SASettingLocationPreferenceBundleValue])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_Location_ServicesValue])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_ContactsValue])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_CalendarValue])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_RemindersValue])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_PhotosValue])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_Bluetooth_SharingValue])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:SASettingLocationNotificationsValue])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_MicrophoneValue])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_LiverpoolValue])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:SASettingLocationPrivacy_CameraValue])
  {
    v2 = 12;
  }

  else
  {
    v2 = 11;
  }

  return v2;
}

__CFString *sub_3610(unint64_t a1)
{
  if (a1 <= 0xC && ((0x1DFFu >> a1) & 1) != 0)
  {
    v2 = **(&off_10528 + a1);
  }

  else
  {
    v2 = @"UNKNOWN";
  }

  return v2;
}

void sub_3DF4(uint64_t a1)
{
  v2 = +[PSBluetoothSettingsDetail isEnabled];
  if ([*(a1 + 32) toggle])
  {
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = [*(a1 + 32) value];
  }

  *(*(a1 + 32) + 17) = v3;
  v4 = PALogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 17);
    v18 = 136315650;
    v19 = "[PreferencesAssistantSetBluetooth performWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = v2;
    v22 = 1024;
    v23 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "######## %s - previousValue: %d; targetEnabled: %d", &v18, 0x18u);
  }

  if (*(*(a1 + 32) + 17) == v2)
  {
    v6 = objc_alloc_init(SACommandFailed);
    [v6 setErrorCode:SASettingValueUnchangedErrorCode];
    [v6 setReason:{@"Value unchanged, No change was made"}];
    v7 = *(a1 + 40);
    v8 = [v6 dictionary];
    (*(v7 + 16))(v7, v8);

    return;
  }

  v9 = [*(a1 + 40) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;

  if ([*(a1 + 32) dryRun])
  {
    v12 = PALogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[PreferencesAssistantSetBluetooth performWithCompletion:]_block_invoke";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "######## %s - dry run! we're done.", &v18, 0xCu);
    }

LABEL_15:

    [*(a1 + 32) _finish];
    return;
  }

  v13 = +[BluetoothManager sharedInstance];
  v14 = [v13 available];

  v15 = PALogForCategory(0);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = *(*(a1 + 32) + 17);
      v18 = 136315394;
      v19 = "[PreferencesAssistantSetBluetooth performWithCompletion:]_block_invoke";
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "######## %s - BT is already available. Setting it to %d", &v18, 0x12u);
    }

    v12 = +[BluetoothManager sharedInstance];
    [v12 setEnabled:*(*(a1 + 32) + 17)];
    goto LABEL_15;
  }

  if (v16)
  {
    v18 = 136315138;
    v19 = "[PreferencesAssistantSetBluetooth performWithCompletion:]_block_invoke";
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "######## %s - BT is not available. Waiting.", &v18, 0xCu);
  }

  *(*(a1 + 32) + 16) = 1;
}

void sub_54C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 _performWithCompletion:v3];
  }

  else
  {
    if (!*(v2 + 32))
    {
      v5 = objc_opt_new();
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      v2 = *(a1 + 32);
    }

    objc_initWeak(&location, v2);
    v8 = *(*(a1 + 32) + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5698;
    v14[3] = &unk_105C0;
    objc_copyWeak(&v16, &location);
    v15 = *(a1 + 40);
    v9 = objc_retainBlock(v14);
    [v8 addObject:v9];

    v10 = dispatch_time(0, 200000000);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_56E8;
    v13[3] = &unk_105E8;
    v13[4] = v11;
    dispatch_after(v10, v12, v13);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void sub_567C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_5698(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performWithCompletion:*(a1 + 32)];
}

id sub_59A8(uint64_t a1)
{
  v2 = PALogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(*(a1 + 32) + 8) flashlightLevel];
    v4 = v3;
    if ([*(*(a1 + 32) + 8) isAvailable])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [*(*(a1 + 32) + 8) isOverheated];
    v9 = 134218498;
    if (v6)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "########## PSSetTorch (flashlightLevel: %f / available: %@ / overheated: %@)", &v9, 0x20u);
  }

  *(*(a1 + 32) + 16) = 1;
  return [*(a1 + 32) _performQueuedRequests];
}

void sub_5EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    [v4 _performWithCompletion:v3];
  }

  else
  {
    if (!*(v2 + 32))
    {
      v5 = objc_opt_new();
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      v2 = *(a1 + 32);
    }

    objc_initWeak(&location, v2);
    v8 = *(*(a1 + 32) + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_608C;
    v14[3] = &unk_105C0;
    objc_copyWeak(&v16, &location);
    v15 = *(a1 + 40);
    v9 = objc_retainBlock(v14);
    [v8 addObject:v9];

    v10 = dispatch_time(0, 200000000);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_60DC;
    v13[3] = &unk_105E8;
    v13[4] = v11;
    dispatch_after(v10, v12, v13);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void sub_6070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_608C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performWithCompletion:*(a1 + 32)];
}

id sub_6674(uint64_t a1)
{
  v2 = PALogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(*(a1 + 32) + 8) flashlightLevel];
    v4 = v3;
    if ([*(*(a1 + 32) + 8) isAvailable])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [*(*(a1 + 32) + 8) isOverheated];
    v9 = 134218498;
    if (v6)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "########## PSSetTorch (flashlightLevel: %f / available: %@ / overheated: %@)", &v9, 0x20u);
  }

  *(*(a1 + 32) + 16) = 1;
  return [*(a1 + 32) _performQueuedRequests];
}

BOOL sub_9244(void *a1)
{
  v1 = a1;
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:v1];

  return v3 == 1;
}

uint64_t sub_92A8(void *a1)
{
  v1 = a1;
  v29 = @"still-camera";
  v30[0] = MCFeatureCameraAllowed;
  v2 = 1;
  v3 = [NSArray arrayWithObjects:&v29 count:1];
  v31[0] = v3;
  v30[1] = MCFeatureVideoConferencingAllowed;
  v28[0] = @"still-camera";
  v28[1] = @"venice";
  v4 = [NSArray arrayWithObjects:v28 count:2];
  v31[1] = v4;
  v30[2] = MCFeatureAssistantAllowed;
  v27 = @"assistant";
  v5 = [NSArray arrayWithObjects:&v27 count:1];
  v31[2] = v5;
  v30[3] = off_19EB8;
  v26 = @"CellularTelephonyCapability";
  v6 = [NSArray arrayWithObjects:&v26 count:1];
  v31[3] = v6;
  v30[4] = off_19EC0;
  v25 = @"wifi";
  v7 = [NSArray arrayWithObjects:&v25 count:1];
  v31[4] = v7;
  v30[5] = off_19EC8;
  v24 = @"bluetooth";
  v8 = [NSArray arrayWithObjects:&v24 count:1];
  v31[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];

  [v9 objectForKey:v1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = MGCopyAnswer();
        v17 = [v16 BOOLValue];

        if (!v17)
        {
          v2 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v2 = 1;
  }

LABEL_11:

  return v2;
}

id PALogForCategory(uint64_t a1)
{
  if (a1)
  {
    sub_9C1C();
  }

  if (qword_19ED8 != -1)
  {
    sub_9C48();
  }

  v1 = qword_19ED0;

  return v1;
}

void sub_96A4(id a1)
{
  qword_19ED0 = os_log_create("com.apple.SettingsAndCoreApps.PreferencesAssistant", "Base");

  _objc_release_x1();
}