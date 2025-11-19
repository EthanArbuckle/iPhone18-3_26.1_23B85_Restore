void sub_2198(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 target];
  if (objc_opt_respondsToSelector())
  {
    [v2 _valueChangedNotificationForSpecifier:v3];
  }
}

void sub_3440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&a53);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3474(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 cellType] == &dword_0 + 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 identifier];
    [v3 addObject:v4];
  }
}

int64_t sub_34E8(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_3558(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained specifierForID:PassbookSettingsBundleID];

  if (v5)
  {
    if (a2)
    {
      v6 = @"NanoPassbookBridgeSettings";
    }

    else
    {
      v6 = @"NanoPassbookBridgeSettings_NoStockholm";
    }

    v7 = sub_3658(v6);
    [v5 setName:v7];

    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_36D8;
    v9[3] = &unk_C4C8;
    v10 = v5;
    [v8 performUpdatesAnimated:0 usingBlock:v9];
  }
}

id sub_3658(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_C638 table:@"Settings"];

  return v3;
}

void sub_3980(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 applicationMode] == &dword_0 + 3 || objc_msgSend(v6, "applicationMode") == &dword_0 + 2))
  {
    v7 = [*(*(a1 + 32) + 48) dictionaryForKey:v18];
    if (v7)
    {
      v8 = [v6 bundleIdentifier];
      v9 = [v6 applicationName];
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
      [v10 setIdentifier:v8];
      [v10 setProperty:v8 forKey:@"bundleID"];
      [v10 setProperty:v9 forKey:@"localizedName"];
      if ([v6 applicationMode] == &dword_0 + 2)
      {
        v11 = [v6 companionAppBundleID];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [v6 companionAppBundleID];
          [v10 setProperty:v13 forKey:@"companionAppBundleID"];
        }
      }

      [*(a1 + 40) addObject:v10];

      goto LABEL_12;
    }
  }

  else
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = [v6 companionAppBundleID];
    LODWORD(v14) = [v14 containsObject:v15];

    if (!v14)
    {
      goto LABEL_14;
    }

    v7 = [v6 applicationName];
    if ([v7 length])
    {
      v16 = *(a1 + 32);
      v17 = [v6 bundleIdentifier];
      v8 = [v16 watchAppSpecifierWithDisplayName:v7 specifierID:v18 identifier:v17];

      [*(a1 + 40) addObject:v8];
LABEL_12:
    }
  }

LABEL_14:
}

void *MappedPhoneBundleIDForNanoSettingsBundleID(void *a1)
{
  v1 = a1;
  v2 = [&off_D4B8 mutableCopy];
  v3 = +[BPSBridgeAppContext shared];
  v4 = [v3 activeDevice];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  if (HasCapabilityForString)
  {
    [v2 setObject:@"com.apple.Home" forKey:@"com.apple.NanoHome"];
  }

  v6 = +[BPSBridgeAppContext shared];
  v7 = [v6 activeDevice];
  v8 = BPSDeviceHasCapabilityForString();

  if (v8)
  {
    [v2 setObject:@"com.apple.podcasts" forKey:@"com.apple.private.PodcastsBridgeSettings"];
  }

  v9 = +[BPSBridgeAppContext shared];
  v10 = [v9 activeDevice];
  v11 = BPSDeviceHasCapabilityForString();

  if (v11)
  {
    [v2 setObject:@"com.apple.news" forKey:@"com.apple.nanonews"];
  }

  v12 = [v2 objectForKey:v1];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v1;
  }

  v15 = v14;

  return v14;
}

void sub_47A4(id a1)
{
  v1 = qword_110B0;
  qword_110B0 = &off_D4E0;
}

int64_t sub_4EA0(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t sub_4F10(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_56F8(void *a1, uint64_t a2)
{
  v3 = [a1 companionAppBundleID];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "error while collecting application record %@ with error: %@", &v4, 0x16u);
}