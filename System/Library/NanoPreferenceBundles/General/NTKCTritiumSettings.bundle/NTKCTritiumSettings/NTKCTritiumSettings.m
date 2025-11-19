uint64_t sub_1170(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1530;
      v21[3] = &unk_82F8;
      v23 = a1[5];
      v22 = a1[4];
      dispatch_async(&_dispatch_main_q, v21);

      v9 = 0;
      v10 = v23;
      goto LABEL_14;
    }

    v11 = a1[6];
    v12 = [v5 bundleIdentifier];
    v13 = [v11 _isApplicationWithBundleIDHiddenByPolicy:v12];

    v10 = _NTKLoggingObjectForDomain();
    v14 = os_log_type_enabled(&v10->super, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v14)
      {
        v15 = a1[6];
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v5;
        v9 = 1;
        _os_log_impl(&dword_0, &v10->super, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDevice:withBlock: app: %@ is hidden by policy", buf, 0x16u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v14)
      {
        v16 = a1[6];
        *buf = 138412546;
        v28 = v16;
        v29 = 2112;
        v30 = v5;
        _os_log_impl(&dword_0, &v10->super, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDevice:withBlock: app: %@", buf, 0x16u);
      }

      v10 = objc_alloc_init(NTKTritiumAppInfo);
      v17 = [v5 bundleIdentifier];
      [(NTKTritiumAppInfo *)v10 setAppBundleID:v17];

      v18 = [a1[6] displayNameForWatchApp:v5];
      [(NTKTritiumAppInfo *)v10 setLocalizedName:v18];

      v19 = [v5 watchKitAppExtensionBundleID];
      [(NTKTritiumAppInfo *)v10 setWatchkitExtensionID:v19];

      [a1[4] addObject:v10];
    }

    v9 = 1;
    goto LABEL_14;
  }

  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = a1[6];
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDevice:withBlock: error: %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14D8;
  block[3] = &unk_82F8;
  v26 = a1[5];
  v25 = a1[4];
  dispatch_async(&_dispatch_main_q, block);

  v9 = 0;
  v10 = v26;
LABEL_14:

  return v9;
}

void sub_14D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_1530(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

id sub_19B0(uint64_t a1, void *a2)
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "NTKTritiumComplicationSpecifierProvider: Received NTKTritiumSettingsDidChangeNotification", v5, 2u);
  }

  return [a2 updateSpecifiers];
}

void sub_1AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) appInfosForAppsWithComplications];
  v3 = [v2 mutableCopy];
  [v3 sortUsingComparator:&stru_8360];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = +[NSNull null];
      [v4 addObject:v6];

      ++v5;
    }

    while ([v3 count] > v5);
  }

  v7 = [v3 count];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D70;
  block[3] = &unk_8388;
  v8 = v4;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v17 = v3;
  v10 = v3;
  dispatch_apply(v7, 0, block);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1DF4;
  v12[3] = &unk_83B0;
  v12[4] = *(a1 + 32);
  v13 = v8;
  v11 = v8;
  dispatch_async(&_dispatch_main_q, v12);
}

int64_t sub_1CD0(id a1, NTKTritiumSettingsListControllerAppInfo *a2, NTKTritiumSettingsListControllerAppInfo *a3)
{
  v4 = a3;
  v5 = [(NTKTritiumSettingsListControllerAppInfo *)a2 info];
  v6 = [v5 localizedName];
  v7 = [(NTKTritiumSettingsListControllerAppInfo *)v4 info];

  v8 = [v7 localizedName];
  v9 = [v6 compare:v8 options:1];

  return v9;
}

void sub_1D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v6 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v5 = [v4 _createSpecifierForApp:v6];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];
}

void sub_1DF4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 specifiersUpdated:*(a1 + 40)];
}

void sub_1FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 appBundleID];
        v10 = [v8 watchkitExtensionID];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        v13 = v12;

        if (([*(a1 + 32) vendorExistsWithClientIdentifier:v13 appBundleIdentifier:v9] & 1) != 0 || (objc_msgSend(*(a1 + 40), "vendorExistsWithContainerBundleIdentifier:", v9) & 1) != 0 || (objc_msgSend(*(a1 + 48), "bundleComplicationExistsForAppBundleIdentifier:", v9) & 1) != 0 || objc_msgSend(*(a1 + 56), "containsObject:", v9))
        {
          v14 = objc_alloc_init(NTKTritiumSettingsListControllerAppInfo);
          [(NTKTritiumSettingsListControllerAppInfo *)v14 setInfo:v8];
          [*(a1 + 64) addObject:v14];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_2480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_261C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_C9D8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_2760;
    v4[4] = &unk_8460;
    v4[5] = v4;
    v5 = off_8448;
    v6 = 0;
    qword_C9D8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_C9D8)
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
  result = objc_getClass("CSLPRFAppSwitchCell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_30E4();
  }

  qword_C9D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2760(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C9D8 = result;
  return result;
}

id sub_2904(uint64_t a1, void *a2)
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "NTKTritiumSettingsListController: Received NTKTritiumSettingsDidChangeNotification", v5, 2u);
  }

  return [a2 reloadSpecifiers];
}