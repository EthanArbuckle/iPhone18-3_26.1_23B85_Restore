void sub_18E0(void *a1)
{
  v1 = a1;
  [v1 frame];
  if (v3 < 1.0 && v2 > 1.0)
  {
    v5 = [UIColor colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
    [v1 setBackgroundColor:v5];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v1 subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        sub_18E0(*(*(&v11 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

id sub_1F18(uint64_t a1)
{
  v2 = [*(a1 + 32) lastPullDate];

  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 _mainQueue_stopActivityIndicator];
  }

  else
  {

    return [v3 _mainQueue_startActivityIndicator];
  }
}

void sub_24B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_24DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 firstName];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained dataSource];
  [v8 setFirstName:v6];

  v9 = [*(a1 + 32) activeTinkerDevice];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 dataSource];
  [v11 setActiveTinkerDevice:v9];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 getCellForIndexPath:v5];

  return v13;
}

id sub_28C4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2940;
  v2[3] = &unk_18510;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_2940(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  [*(*(a1 + 32) + 224) setNeedsLayout];
  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

void sub_3CC8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D90;
  block[3] = &unk_18538;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_3D90(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    _HKInitializeLogging();
    v3 = HKLogDatabase;
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_BD0C(a1, v3);
    }

    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_188B0;
  }

  [*(a1 + 40) setFirstName:v4];
  return [*(a1 + 40) setLoadingDisplayNameForTinker:0];
}

void sub_4178(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_BDFC(a1, v6);
    }
  }
}

void sub_4A30(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1ED58;
  qword_1ED58 = v1;

  [qword_1ED58 setTimeStyle:0];
  v3 = qword_1ED58;

  [v3 setDateStyle:2];
}

void sub_598C(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:1];
}

void sub_59D8(uint64_t a1)
{
  v2 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5AEC;
  v8[3] = &unk_18510;
  v8[4] = *(a1 + 32);
  [v2 setOnDismiss:v8];
  v3 = [[UINavigationController alloc] initWithRootViewController:v2];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 windows];
  v6 = [v5 firstObject];
  v7 = [v6 rootViewController];
  [v7 presentViewController:v3 animated:1 completion:0];
}

void sub_5AF4(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:0];
}

void sub_67A0(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_1ED68;
  qword_1ED68 = v1;

  _objc_release_x1(v1, v2);
}

void sub_6CC0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _medicalIDDidChangeNotificationReceived];
}

void sub_8188(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStore];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8218;
  v3[3] = &unk_18588;
  v3[4] = *(a1 + 32);
  [v2 forceCloudSyncDataUploadForProfileWithCompletion:v3];
}

void sub_8218(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_C150(a1, v6);
    }
  }
}

void sub_89D4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8A78;
  block[3] = &unk_18730;
  v6 = *(a1 + 32);
  v10 = a2;
  block[4] = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_8A78(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 152) = 0;
  if (*(a1 + 48) == 1)
  {
    _HKInitializeLogging();
    v2 = HKLogSync;
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully tore down sharing.", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained(*v1 + 22);
    [WeakRetained didSuccessfullyTearDownSharing];
  }

  else
  {
    v5 = [*v1 table];
    [v5 reloadData];

    _HKInitializeLogging();
    v6 = HKLogSync;
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
    {
      sub_C264(v1, v6, a1);
    }
  }
}

void sub_8E80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v6;
  if (!v6)
  {
    _HKInitializeLogging();
    v9 = HKLogDatabase;
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_C358(a1, v7, v9);
    }

    v8 = &stru_188B0;
  }

  [*(a1 + 32) setFirstName:v8];
  v10 = [*(a1 + 32) medicalIDStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_8F80;
  v11[3] = &unk_18758;
  v11[4] = *(a1 + 32);
  [v10 fetchMedicalIDDataWithCompletion:v11];
}

void sub_8F80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_904C;
  block[3] = &unk_18538;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_904C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v3 = HKLogMedicalID;
    if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
    {
      sub_C3E4(a1, v3, v2);
    }
  }

  [*(a1 + 40) setShouldShowSetupMedicalID:*(a1 + 48) == 0];
  [*(a1 + 40) setLoadingProfileData:0];
  [*(a1 + 40) setMedicalIDData:*(a1 + 48)];
  return [*(a1 + 40) reloadSpecifiers];
}

void sub_948C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_992C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v1 = [WeakRetained navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_9A04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained view];
  [v3 removeFromSuperview];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [v4 parentViewController];
  [v5 viewDidLoad];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [v7 navigationController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

void sub_9C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = v5;
  v12 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 152);
  *(v9 + 152) = v6;
  v11 = v6;

  [*(a1 + 32) reloadSpecifiers];
}

void sub_A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A44C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_A4AC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_A618(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogSync;
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
    {
      sub_C4A8(a1, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_A7A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogSync;
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
    {
      sub_C544(a1, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

id sub_A8B4(id a1)
{

  return a1;
}

void sub_A8D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_ACAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 appleID];

  if (v6 || !v7)
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = v8;
      v18 = [v5 appleID];
      v19 = [*(a1 + 32) activeTinkerDevice];
      v20 = [v19 pairingID];
      *buf = 138544130;
      v24 = v16;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v6;
      _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch family member %{public}@ for pairingID %{public}@, %{public}@", buf, 0x2Au);
    }
  }

  v9 = [HKProfileStore alloc];
  v10 = objc_alloc_init(HKHealthStore);
  v11 = [v9 initWithHealthStore:v10];

  v12 = [*(a1 + 32) activeTinkerDevice];
  v13 = [v12 pairingID];
  v14 = [v5 appleID];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_AEEC;
  v21[3] = &unk_18848;
  v21[4] = *(a1 + 32);
  v22 = v5;
  v15 = v5;
  [v11 fetchProfileIdentifierForNRDeviceUUID:v13 ownerAppleID:v14 completion:v21];
}

void sub_AEEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_AFC4;
  v10[3] = &unk_18820;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

id sub_AFC4(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) _mainQueue_stopActivityIndicator];
  if (*(v2 + 8))
  {
    v3 = objc_alloc_init(HKHealthStore);
    [*(a1 + 32) setHealthStore:v3];

    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) healthStore];
    [v5 setProfileIdentifier:v4];

    v6 = [*(a1 + 32) healthStore];
    [v6 resume];
  }

  else
  {
    [*v2 setHealthStore:0];
    _HKInitializeLogging();
    v7 = HKLogDatabase;
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_C5E0(v2, v7, a1);
    }
  }

  [*v2 setLoadingHealthStore:0];
  return [*v2 _addExpectedHealthSettingsViewAsChildViewController];
}

void sub_B7A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  objc_opt_self();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v11 bundleIdentifier];
  v10 = [NSURL URLWithString:v6];

  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:v9 title:v8 localizedNavigationComponents:v7 deepLink:v10];
}

id sub_B898()
{
  objc_opt_self();
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  objc_opt_class();
  objc_opt_self();
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"HEALTH_LABEL" table:@"Localizable" locale:v1 bundleURL:v3];

  return v4;
}

id sub_B96C()
{
  objc_opt_self();
  objc_opt_class();
  objc_opt_self();
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundleIdentifier];
  v2 = [NSString stringWithFormat:@"bridge:root=%@", v1];

  return v2;
}

id sub_BA94()
{
  objc_opt_self();
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  objc_opt_class();
  objc_opt_self();
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:@"HEALTH_DETAILS" table:@"Localizable" locale:v1 bundleURL:v3];

  return v4;
}

id sub_BB68()
{
  objc_opt_self();
  objc_opt_class();
  v0 = sub_B96C();
  v1 = [v0 stringByAppendingString:@"&path=HealthProfileIdentifier"];

  return v1;
}

void sub_BD0C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get profile display name, error : %{public}@", &v4, 0x16u);
}

void sub_BDFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 healthStore];
  v10 = [v4 profileIdentifier];
  sub_6CE8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_C00C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_6CDC();
  sub_6CE8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_C150(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 healthStore];
  v11 = [v4 profileIdentifier];
  sub_948C(&dword_0, v5, v6, "%{public}@ Failed to force cloud sync data upload for profile identifier %{public}@, Error: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_C264(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  v7 = objc_opt_class();
  v8 = *a1;
  v9 = v7;
  v10 = [v8 activeTinkerDevice];
  v11 = [v10 pairingID];
  v12 = *(a3 + 40);
  v13 = 138543874;
  v14 = v7;
  sub_9474();
  _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Failed to tear down Health Sharing With Tinker Device NRUUID %{public}@, Error: %{public}@", &v13, 0x20u);
}

void sub_C358(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get profile display name, error : %{public}@", &v4, 0x16u);
}

void sub_C3E4(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 healthStore];
  v7 = [v6 profileIdentifier];
  v8 = *a3;
  sub_9474();
  sub_948C(&dword_0, v9, v10, "%{public}@ Error fetching medical id data for profile identifier %{public}@, Error: %{public}@", v11, v12, v13, v14, 2u);
}

void sub_C4A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_A8B4(v4);
  sub_A8D8(&dword_0, v6, v7, "[sharing-setup] %{public}@ Failed to fetch tinker family member with error: %{public}@", v8, v9, v10, v11, v12);
}

void sub_C544(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_A8B4(v4);
  sub_A8D8(&dword_0, v6, v7, "[sharing-setup] %{public}@ Failed to fetch active tinker family member with error : %{public}@", v8, v9, v10, v11, v12);
}

void sub_C5E0(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 activeTinkerDevice];
  v7 = [v6 pairingID];
  v8 = [*(a3 + 48) appleID];
  v9 = *(a3 + 56);
  v10 = 138544130;
  v11 = v4;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v9;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@ Profile identifier is Nil for NRDeviceUUID %{public}@, appleID %{public}@, %{public}@", &v10, 0x2Au);
}