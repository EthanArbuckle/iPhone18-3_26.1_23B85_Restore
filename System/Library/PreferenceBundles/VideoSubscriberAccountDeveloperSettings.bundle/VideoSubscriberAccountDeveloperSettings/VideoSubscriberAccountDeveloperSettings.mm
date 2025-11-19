void sub_E1C(id a1)
{
  qword_11598 = objc_alloc_init(VSDeveloperSettingsFacade);

  _objc_release_x1();
}

void sub_110C(id *a1)
{
  v2 = [a1[4] result];
  v3 = [v2 forceUnwrapObject];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_125C;
  v8[3] = &unk_C378;
  v9 = a1[5];
  [v3 unwrapObject:v8 error:&stru_C3B8];
  v4 = [a1[6] result];
  v5 = [v4 forceUnwrapObject];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_131C;
  v6[3] = &unk_C3E0;
  v7 = a1[5];
  [v5 unwrapObject:v6 error:&stru_C400];
}

void sub_125C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProviders:a2];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VSDeveloperSettingsFacadeProvidersDidUpdateNotification" object:*(a1 + 32)];
}

void sub_12C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6A24();
  }
}

void sub_131C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSettings:a2];
  [*(a1 + 32) _updateLabels];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VSDeveloperSettingsFacadeSettingsDidUpdateNotification" object:*(a1 + 32)];
}

void sub_1390(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6A8C();
  }
}

void sub_1770(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1888;
  v7[3] = &unk_C478;
  v4 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18FC;
  v5[3] = &unk_C4A0;
  v6 = *(a1 + 48);
  [v3 unwrapObject:v7 error:v5];
}

uint64_t sub_1888(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProviders:a2];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VSDeveloperSettingsFacadeProvidersDidUpdateNotification" object:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1A04(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  (*(*(a1 + 40) + 16))();
}

void sub_1B88(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  (*(*(a1 + 40) + 16))();
}

void sub_2300(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2338(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_23E8;
    v7[3] = &unk_C518;
    v6 = *(a1 + 32);
    v7[4] = WeakRetained;
    v7[5] = v6;
    [v3 unwrapObject:v7 error:&stru_C538];
  }
}

void sub_23E8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSettings:a2];
  [*(a1 + 32) _updateLabels];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VSDeveloperSettingsFacadeSettingsDidUpdateNotification" object:*(a1 + 40)];
}

void sub_245C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6AF4();
  }
}

void sub_24B0(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_25C0;
  v6[3] = &unk_C588;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 unwrapObject:v6 error:&stru_C5A8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"VSDeveloperSettingsFacadeProvidersDidUpdateNotification" object:WeakRetained];

  objc_destroyWeak(&v7);
}

void sub_25C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProviders:v3];
}

void sub_261C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6B5C();
  }
}

void sub_2848(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_361C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSBundle vs_frameworkBundle];
    v5 = [v4 localizedStringForKey:@"DEVELOPER_GENERIC_SAVE_ERROR_TITLE" value:0 table:0];

    v6 = +[NSBundle vs_frameworkBundle];
    v7 = [v6 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

    v8 = [v3 localizedDescription];
    v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_37FC;
    v16[3] = &unk_C5F8;
    v17 = v9;
    v10 = v9;
    v11 = [UIAlertAction actionWithTitle:v7 style:0 handler:v16];
    [v10 addAction:v11];
    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v12 = [*(a1 + 32) identityProvider];

    v13 = *(a1 + 32);
    if (v12)
    {
      v14 = [v13 navigationController];
      v15 = [v14 popViewControllerAnimated:1];
    }

    else
    {
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_3910(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_6BC4(a1, v3, v4);
    }
  }
}

void sub_3BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) urlOrError];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Test validation: %@", buf, 0xCu);
  }

  v4 = +[NSBundle vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

  v6 = [*(a1 + 32) trustInfo];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_3E4C;
  v19[3] = &unk_C648;
  v19[4] = *(a1 + 40);
  v20 = v6;
  v21 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_3F94;
  v15 = &unk_C670;
  v16 = *(a1 + 40);
  v17 = v20;
  v18 = v21;
  v7 = v21;
  v8 = v20;
  [v2 unwrapObject:v19 error:&v12];
  v9 = [*(a1 + 40) testSystemTrustSpecifier];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  v10 = *(a1 + 40);
  v11 = [v10 testSystemTrustSpecifier];
  [v10 reloadSpecifier:v11];
}

void sub_3E4C(uint64_t a1)
{
  v2 = +[NSBundle vs_frameworkBundle];
  v9 = [v2 localizedStringForKey:@"TEST_SYSTEM_TRUST_RESULT_ALERT_TITLE" value:0 table:0];

  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TEST_SYSTEM_TRUST_SUCCESS_ALERT_MESSAGE" value:0 table:0];

  v5 = [*(a1 + 32) settingsFacade];
  v6 = [v5 buildSystemTrustTestAlertMessageWithStatusMessage:v4 andTrustInfo:*(a1 + 40)];

  v7 = [UIAlertController alertControllerWithTitle:v9 message:v6 preferredStyle:1];
  v8 = [UIAlertAction actionWithTitle:*(a1 + 48) style:0 handler:0];
  [v7 addAction:v8];

  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

void sub_3F94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle vs_frameworkBundle];
  v10 = [v4 localizedStringForKey:@"TEST_SYSTEM_TRUST_RESULT_ALERT_ERROR_TITLE" value:0 table:0];

  v5 = [*(a1 + 32) settingsFacade];
  v6 = [v3 localizedDescription];

  v7 = [v5 buildSystemTrustTestAlertMessageWithStatusMessage:v6 andTrustInfo:*(a1 + 40)];

  v8 = [UIAlertController alertControllerWithTitle:v10 message:v7 preferredStyle:1];
  v9 = [UIAlertAction actionWithTitle:*(a1 + 48) style:0 handler:0];
  [v8 addAction:v9];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

id sub_50D4(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_5150;
  v3[3] = &unk_C3E0;
  v3[4] = *(a1 + 32);
  return [a2 unwrapObject:v3 error:&stru_C6B8];
}

id sub_5150(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setHasLoadedInitialSettings:1];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 cacheBusterEnabled]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 160);
  *(v6 + 160) = v5;

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 requestTimeoutsDisabled]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 168);
  *(v9 + 168) = v8;

  v11 = [v4 simulateExpiredToken];
  v12 = [NSNumber numberWithBool:v11];
  v13 = *(a1 + 32);
  v14 = *(v13 + 176);
  *(v13 + 176) = v12;

  v15 = *(a1 + 32);

  return [v15 reloadSpecifiers];
}

void sub_524C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_6CC8();
  }
}

void sub_5408(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_5508;
  v4[3] = &unk_C748;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 unwrapObject:&stru_C720 error:v4];
}

void sub_54A0(id a1, VSDeveloperSettings *a2)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully updated cache buster developer setting.", v3, 2u);
  }
}

void sub_5508(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_6D30();
  }

  objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
  [*(a1 + 32) reloadSpecifiers];
}

void sub_56B4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_57B4;
  v4[3] = &unk_C748;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 unwrapObject:&stru_C790 error:v4];
}

void sub_574C(id a1, VSDeveloperSettings *a2)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully updated request timeouts developer settings.", v3, 2u);
  }
}

void sub_57B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_6D30();
  }

  objc_storeStrong((*(a1 + 32) + 168), *(a1 + 40));
  [*(a1 + 32) reloadSpecifiers];
}

void sub_5960(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_5A60;
  v4[3] = &unk_C748;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 unwrapObject:&stru_C7B0 error:v4];
}

void sub_59F8(id a1, VSDeveloperSettings *a2)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully updated simluate expired token developer settings.", v3, 2u);
  }
}

void sub_5A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_6D30();
  }

  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  [*(a1 + 32) reloadSpecifiers];
}

void sub_6BC4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error deleting identity provider %@: %@", &v4, 0x16u);
}

void sub_6C50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Received text field did change notification for an unknown text field %@", &v2, 0xCu);
}