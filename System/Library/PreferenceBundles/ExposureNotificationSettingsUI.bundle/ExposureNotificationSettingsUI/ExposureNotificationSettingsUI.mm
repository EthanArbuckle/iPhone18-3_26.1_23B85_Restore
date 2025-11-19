void sub_1A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A84(uint64_t a1)
{
  v2 = ENUILogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Done adding a region", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1BD8;
  v5[3] = &unk_2C698;
  v5[4] = *(a1 + 32);
  objc_copyWeak(&v6, (a1 + 40));
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v5];
  objc_destroyWeak(&v6);
}

void sub_1BD8(uint64_t a1)
{
  v2 = ENUILogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Done refreshing regions", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
  v6 = [WeakRetained presentedViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

void sub_21C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = ENUILogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B2A8();
    }
  }

  [*(a1 + 32) setEnableDeleteButton:a2];
  dispatch_group_leave(*(a1 + 40));
}

void sub_2278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLastKnownStatus:a3];
}

id sub_2A98(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    [ENUITitleWithCountCell addCount:result toSpecifier:*(a1 + 32)];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 reloadSpecifier:v5];
  }

  return result;
}

void sub_2E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2E94(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = ENUILogForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Delete exposure checks completed", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B334(v5, v7);
  }

  v8 = [*(a1 + 32) store];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2FE4;
  v11[3] = &unk_2C7F0;
  v9 = v5;
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  objc_copyWeak(&v14, (a1 + 40));
  [v8 fetchExposureLogsExistWithCompletion:v11];

  objc_destroyWeak(&v14);
}

void sub_2FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = ENUILogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B3AC();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setEnableDeleteButton:a2];
  [WeakRetained reloadSpecifiers];
}

void sub_330C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_33F4;
    v8[3] = &unk_2C840;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    dispatch_async(&_dispatch_main_q, v8);
  }

  else
  {
    v7 = ENUILogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B4C0();
    }
  }
}

id sub_33F4(uint64_t a1)
{
  v2 = ENUILogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B54C(a1);
  }

  return [*(a1 + 32) _showControllerForSpecifier:*(a1 + 40)];
}

id sub_36F0(id a1)
{

  return a1;
}

void sub_3830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_384C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshRegionsAndReloadSpecifiers];
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 applicationState];

  if (v2)
  {
    v3 = [WeakRetained navigationController];
    v4 = [v3 popToViewController:WeakRetained animated:0];
  }
}

void sub_3BFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_3C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshRegionsAndReloadSpecifiers];
}

void sub_4190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_4200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[NSDate date];
  [WeakRetained setLastRegionRefreshDate:v2];

  v3 = [WeakRetained adapter];
  [WeakRetained setLastKnownStatus:{objc_msgSend(v3, "exposureNotificationStatus")}];

  dispatch_group_leave(*(a1 + 32));
}

void sub_4298(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLatestNotification:v3];

  dispatch_group_leave(*(a1 + 32));
}

void sub_42FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ENUILogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B5E0();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsExtraLoggingEnabled:{objc_msgSend(v5, "BOOLValue")}];
  dispatch_group_leave(*(a1 + 32));
}

void sub_43A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ENUILogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B650();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [v5 firstObject];
  [WeakRetained setLatestExposureCheckSession:v9];

  v10 = [WeakRetained latestExposureCheckSession];
  v11 = [v10 date];
  [WeakRetained setLastExposureCheckTime:v11];

  dispatch_group_leave(*(a1 + 32));
}

void sub_4488(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ENUILogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B6C0();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsWeeklySummaryEnabled:{objc_msgSend(v5, "BOOLValue")}];
  dispatch_group_leave(*(a1 + 32));
}

void sub_4534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsDataLoaded:1];
  [WeakRetained reloadSpecifiers];
  if ([*(a1 + 32) shouldShowTurndownScreen])
  {
    v2 = +[ENUIViewControllerFactory sharedInstance];
    v3 = [v2 createTurndownStackWithEnteredFromMainScreen:1 completion:&stru_2C948];

    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }
}

void sub_4ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_4F38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentedViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

void sub_4F9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentedViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

void sub_5000(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v3 = v2;
  if (v2)
  {
    if ([v2 isRegionUsingApp] && objc_msgSend(v3, "isAppInstalled"))
    {
      v4 = ENUILogForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 appBundleId];
        *buf = 138412290;
        v37 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "### Request pre-authorization needs to open app - %@", buf, 0xCu);
      }

      v6 = +[LSApplicationWorkspace defaultWorkspace];
      v7 = [v3 appBundleId];
      [v6 openApplicationWithBundleID:v7];
    }

    else
    {
      v8 = ENUILogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v3 region];
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "### Request pre-authorization for - %@", buf, 0xCu);
      }

      v10 = +[ENUIViewControllerFactory sharedInstance];
      v11 = [*(a1 + 32) adapter];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_54B4;
      v34[3] = &unk_2C998;
      v12 = *(a1 + 48);
      v34[4] = *(a1 + 32);
      v35 = v12;
      v13 = [v10 createPreAuthorizationStackForAgencyModel:v3 exposureManager:v11 completion:v34];

      v14 = [*(a1 + 32) navigationController];
      [v14 presentViewController:v13 animated:1 completion:0];

      v15 = *(a1 + 56);
      if (v15)
      {
        (*(v15 + 16))();
      }

      v6 = v35;
    }
  }

  else
  {
    v16 = ENUILogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v37 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "### No active region Request to present onboarding for - %@, presenting onboarding instead", buf, 0xCu);
    }

    v18 = ENUILocalizedString();
    v19 = ENUILocalizedString();
    v20 = [UIAlertController alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    v21 = ENUILocalizedString();
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_5694;
    v31[3] = &unk_2C9C0;
    v22 = *(a1 + 40);
    v31[4] = *(a1 + 32);
    v32 = v22;
    v33 = *(a1 + 56);
    v23 = [UIAlertAction actionWithTitle:v21 style:0 handler:v31];

    v24 = ENUILocalizedString();
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_56A8;
    v29 = &unk_2C7C8;
    v30 = v20;
    v6 = v20;
    v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:&v26];

    [v6 addAction:{v23, v26, v27, v28, v29}];
    [v6 addAction:v25];
    [v6 setPreferredAction:v23];
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
}

void sub_54B4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

  if (v2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5568;
    v3[3] = &unk_2C750;
    v3[4] = *(a1 + 32);
    [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v3];
  }
}

void sub_5568(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55E0;
  block[3] = &unk_2C750;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_55E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v4 = [v2 specifierForHealthAgencyModel:v3];
  v6 = [v2 selectSpecifier:v4];

  if (v6)
  {
    v5 = [*(a1 + 32) navigationController];
    [v5 pushViewController:v6 animated:0];
  }
}

void sub_56B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[ENUIViewControllerFactory sharedInstance];
    v8 = [*(a1 + 40) adapter];
    v9 = [v7 createOnboardingStackForAgencyModel:v5 exposureManager:v8 fromAvailabilityAlert:1 fromDeepLink:0 subsequentFlow:0 completion:*(a1 + 56)];

    [*(a1 + 40) presentUIFlowStack:v9 forRegionModel:v5 onboardingSource:3 completion:*(a1 + 48)];
  }

  else
  {
    v10 = ENUILogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B76C(a1);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

void sub_57C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[ENUIViewControllerFactory sharedInstance];
    v8 = [*(a1 + 40) adapter];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_591C;
    v12[3] = &unk_2CA38;
    v13 = *(a1 + 56);
    v9 = [v7 createAnalyticsConsentStackForAgencyModel:v5 exposureManager:v8 completion:v12];

    [*(a1 + 40) presentUIFlowStack:v9 forRegionModel:v5 onboardingSource:0 completion:*(a1 + 48)];
  }

  else
  {
    v10 = ENUILogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7D8(a1);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

void sub_5938(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

  v3 = ENUILogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Bringing up web self report flow", buf, 2u);
    }

    v5 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
    v6 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    v7 = +[ENUIViewControllerFactory sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5B0C;
    v9[3] = &unk_2C970;
    objc_copyWeak(&v10, (a1 + 56));
    v8 = [v7 createVerificationStackForAgencyModel:v5 exposureManager:v6 sessionIdentifier:0 reportType:0 enteredFromMainScreen:1 completion:v9];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
    objc_destroyWeak(&v10);
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "No active region for web report, starting onboarding flow instead", buf, 2u);
    }

    [*(a1 + 32) presentOnboardingForPath:*(a1 + 40) fromDeepLink:1 completion:*(a1 + 48)];
  }
}

void sub_5B0C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_5BB4;
  v1[3] = &unk_2CA88;
  objc_copyWeak(&v2, (a1 + 32));
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v1];
  objc_destroyWeak(&v2);
}

void sub_5BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_5C14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    [v3 presentVerificationFlowForAgencyModel:a2 sessionIdentifier:v4 reportType:v5 onboardingCompletionHandler:v6 completionHandler:v7];
  }

  else
  {
    v8 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    v9 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_5D48;
    v15[3] = &unk_2CAD8;
    v14 = *(a1 + 32);
    v10 = *(&v14 + 1);
    v18 = *(a1 + 72);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v16 = v14;
    v17 = v13;
    [v8 fetchAgencyModelForRegionCode:v9 reason:2 completion:v15];
  }
}

void sub_5D60(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  [*(a1 + 32) presentVerificationFlowForAgencyModel:v2 sessionIdentifier:*(a1 + 40) reportType:*(a1 + 64) onboardingCompletionHandler:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_5E3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5EB4;
  block[3] = &unk_2C750;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_5EB4(uint64_t a1)
{
  v2 = [_TtC28HealthExposureNotificationUI34VerificationFinishedViewController alloc];
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v4 = [v3 name];
  v5 = [v2 initWithRegionDisplayName:v4];

  [v5 setModalPresentationStyle:2];
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5F98;
  v7[3] = &unk_2C750;
  v7[4] = v6;
  [v6 presentViewController:v5 animated:1 completion:v7];
}

id sub_5F98(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_6014;
  v2[3] = &unk_2C750;
  v2[4] = *(a1 + 32);
  return [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v2];
}

void sub_6014(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];

  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_60B4;
    block[3] = &unk_2C750;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_60B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v4 = [v2 specifierForHealthAgencyModel:v3];
  v6 = [v2 selectSpecifier:v4];

  if (v6)
  {
    v5 = [*(a1 + 32) navigationController];
    [v5 pushViewController:v6 animated:0];
  }
}

void sub_6520(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_6554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentedViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

uint64_t sub_65B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_65D0(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  v3 = *(a1 + 64);
  v4 = *(*(v3 + 8) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_66E8;
  v11[3] = &unk_2CB78;
  v14 = v3;
  v5 = *(a1 + 32);
  v16 = *(a1 + 80);
  v15 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v10 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v2 fetchAgencyModelForRegionCode:v4 reason:2 completion:v11];
}

void sub_66E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ENUILogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v6 = *(a1 + 32);
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "### Request to present onboarding for - %@, path: %@", buf, 0x16u);
  }

  v7 = +[ENUIViewControllerFactory sharedInstance];
  v8 = [*(a1 + 40) adapter];
  v9 = *(a1 + 80);
  v10 = *(a1 + 72);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_68B0;
  v15[3] = &unk_2CB50;
  v11 = *(a1 + 48);
  v12 = *(a1 + 72);
  v16 = v11;
  v17 = v12;
  v15[4] = *(a1 + 40);
  v13 = [v7 createOnboardingStackForAgencyModel:v3 exposureManager:v8 fromAvailabilityAlert:v9 ^ 1 fromDeepLink:v9 subsequentFlow:v10 completion:v15];

  if (*(a1 + 80))
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  [*(a1 + 40) presentUIFlowStack:v13 forRegionModel:v3 onboardingSource:v14 completion:*(a1 + 56)];
}

id sub_68B0(void *a1)
{
  result = (*(a1[5] + 16))();
  if (a1[6] == 5)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_6950;
    v3[3] = &unk_2C750;
    v3[4] = a1[4];
    return [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v3];
  }

  return result;
}

void sub_6950(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v3 = [v2 isPreauthorizationDomainAllowed];

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6A00;
    block[3] = &unk_2C750;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_6A00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v4 = [v2 specifierForHealthAgencyModel:v3];
  v6 = [v2 selectSpecifier:v4];

  if (v6)
  {
    v5 = [*(a1 + 32) navigationController];
    [v5 pushViewController:v6 animated:0];
  }
}

void sub_6AB4(uint64_t a1)
{
  v2 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6BE8;
  v10[3] = &unk_2CBC8;
  v4 = *(a1 + 48);
  v14 = *(a1 + 72);
  v5 = *(a1 + 32);
  v16 = *(a1 + 88);
  v15 = *(a1 + 80);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v9 = v6;
  v7 = *(a1 + 56);
  *&v8 = v4;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  [v2 fetchAgencyModelForRegionCode:v3 reason:0 completion:v10];
}

void sub_6BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 72) + 8) + 40);
      v6 = *(a1 + 32);
      *buf = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "### Locally requested to present onboarding for - %@, path: %@", buf, 0x16u);
    }

    v7 = +[ENUIViewControllerFactory sharedInstance];
    v8 = [*(a1 + 40) adapter];
    v9 = *(a1 + 88);
    v10 = *(a1 + 80);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_6DC8;
    v15[3] = &unk_2CB50;
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v16 = v11;
    v17 = v12;
    v15[4] = *(a1 + 40);
    v13 = [v7 createOnboardingStackForAgencyModel:v3 exposureManager:v8 fromAvailabilityAlert:v9 ^ 1 fromDeepLink:v9 subsequentFlow:v10 completion:v15];

    if (*(a1 + 88))
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    [*(a1 + 40) presentUIFlowStack:v13 forRegionModel:v3 onboardingSource:v14 completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_6DC8(void *a1)
{
  (*(a1[5] + 16))();
  if (a1[6] == 5)
  {
    v2 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
    v3 = [v2 isPreauthorizationDomainAllowed];

    if (v3)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6E94;
      block[3] = &unk_2C750;
      block[4] = a1[4];
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_6E94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel activeRegion];
  v4 = [v2 specifierForHealthAgencyModel:v3];
  v6 = [v2 selectSpecifier:v4];

  if (v6)
  {
    v5 = [*(a1 + 32) navigationController];
    [v5 pushViewController:v6 animated:0];
  }
}

void sub_6F48(uint64_t a1)
{
  if ([*(a1 + 32) count] > 1)
  {
    v5 = [*(a1 + 48) lastPathComponent];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1 + 56) + 16);

    v8();
  }

  else
  {
    v2 = ENUILogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "### fetching last region", buf, 2u);
    }

    v3 = [*(a1 + 40) adapter];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_7098;
    v10[3] = &unk_2CC18;
    v9 = *(a1 + 56);
    v4 = v9;
    v11 = v9;
    [v3 getLastVisitedRegionWithCompletion:v10];
  }
}

void sub_7098(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  (*(*(a1 + 32) + 16))();
  v5 = ENUILogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "### fetched last region: %@", &v7, 0xCu);
  }
}

void sub_7604(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

void sub_7718(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setLatestNotification:a2];
  if (a2)
  {
    v8 = objc_alloc_init(ENUIExposureDetailsViewController);
    v4 = [*(a1 + 32) _latestNotificationSpecifier];
    [(ENUIExposureDetailsViewController *)v8 setSpecifier:v4];

    [*(a1 + 32) showController:v8 animate:1];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    v6 = ENUILogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B9C8();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void sub_9FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A018(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      [WeakRetained setNotificationsEnabled:1];
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_A0F4;
    v6[3] = &unk_2CA88;
    objc_copyWeak(&v7, (a1 + 32));
    [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v6];
    objc_destroyWeak(&v7);
  }
}

void sub_A0F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_A340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didConfirmTurnOffExposureNotifications];
}

void sub_A560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didConfirmTurnOffExposureNotifications];
}

void sub_A618(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ENUILogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1BA58();
    }
  }
}

void sub_A79C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ENUILogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1BAC8();
    }
  }
}

void sub_A904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_A928(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained refreshRegionsAndReloadSpecifiers];
    v2 = [v3 view];
    [v2 setUserInteractionEnabled:1];

    WeakRetained = v3;
  }
}

void sub_AA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AA78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained adapter];
  [WeakRetained setLastKnownStatus:{objc_msgSend(v1, "exposureNotificationStatus")}];

  [WeakRetained reloadSpecifiers];
}

void sub_AEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AEE0(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_AF88;
  v1[3] = &unk_2CA88;
  objc_copyWeak(&v2, (a1 + 32));
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v1];
  objc_destroyWeak(&v2);
}

void sub_AF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_B2CC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_340F0;
  qword_340F0 = v1;

  [qword_340F0 setDoesRelativeDateFormatting:1];
  [qword_340F0 setDateStyle:2];
  v3 = qword_340F0;

  [v3 setTimeStyle:1];
}

void sub_B370(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_B460(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setExposureChecks:a2];
  [*(a1 + 32) setFetchCompleted:1];
  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

void sub_BD64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ENUILogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543874;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v9 = v22;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Created export file at URL: %@, error: %@", buf, 0x20u);
  }

  if (v5)
  {
    v10 = [UIActivityViewController alloc];
    v20 = v5;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v12 = [v10 initWithActivityItems:v11 applicationActivities:0];

    v19[0] = @"com.apple.Health.ShareExtension";
    v19[1] = UIActivityTypePostToFacebook;
    v19[2] = UIActivityTypePostToTwitter;
    v19[3] = UIActivityTypePostToWeibo;
    v19[4] = UIActivityTypePrint;
    v19[5] = UIActivityTypeAssignToContact;
    v19[6] = UIActivityTypeSaveToCameraRoll;
    v19[7] = UIActivityTypeAddToReadingList;
    v19[8] = UIActivityTypePostToFlickr;
    v19[9] = UIActivityTypePostToVimeo;
    v19[10] = UIActivityTypePostToTencentWeibo;
    v13 = [NSArray arrayWithObjects:v19 count:11];
    [v12 setExcludedActivityTypes:v13];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_C050;
    v18[3] = &unk_2CE68;
    v18[4] = *(a1 + 32);
    [v12 setCompletionWithItemsHandler:v18];
    v14 = ENUILogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      *buf = 138543362;
      v22 = v16;
      v17 = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting Share Sheet", buf, 0xCu);
    }

    [*(a1 + 32) presentViewController:v12 animated:1 completion:0];
  }
}

void sub_C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = ENUILogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [NSNumber numberWithBool:a3];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Share Sheet completed: %@, error: %@", &v14, 0x20u);
  }

  v13 = [*(a1 + 32) exportManager];
  [v13 removeExportFile];
}

id *sub_C204(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] setExposureChecks:&__NSArray0__struct];
    v3 = v2[4];

    return [v3 reloadSpecifiers];
  }

  return result;
}

void sub_C344(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_34100;
  qword_34100 = v1;

  [qword_34100 setDoesRelativeDateFormatting:1];
  [qword_34100 setDateStyle:2];
  v3 = qword_34100;

  [v3 setTimeStyle:1];
}

BOOL sub_C5D4(id a1, id a2)
{
  v2 = [a2 objectForKey:kTCCInfoGranted];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_EF20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_EF40(id a1)
{

  return a1;
}

void sub_F8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1BE10();
    }
  }

  v5 = [*(a1 + 32) activationGroup];
  dispatch_group_leave(v5);
}

void sub_FA30(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FAD4;
  v4[3] = &unk_2CF68;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getDetectionHistoryChecksWithCompletion:v4];
}

void sub_FAD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = ENUILogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v9 = v12;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received exposure checks: %@, error: %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v10);
}

void sub_FC8C(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FD30;
  v4[3] = &unk_2CF68;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getDetectionHistorySessionsWithCompletion:v4];
}

void sub_FD30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v7 = ENUILogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v9 = v12;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received exposure check sessions: %@, error: %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v10);
}

void sub_FEF0(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FFA8;
  v5[3] = &unk_2CF90;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = v3;
  v6 = v4;
  [v2 resetDataWithFlags:v3 completionHandler:v5];
}

void sub_FFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ENUILogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1BE94(a1);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = *(a1 + 48);
      v10 = 138543618;
      v11 = v7;
      v12 = 1024;
      v13 = v8;
      v9 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] reset data with flags %x", &v10, 0x12u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 1, 0);
  }
}

void sub_10170(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1021C;
  v4[3] = &unk_2CFE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getInfoForKey:@"profileInstalled" completion:v4];
}

void sub_1021C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = ENUILogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1BF34();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10370(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1041C;
  v4[3] = &unk_2CFE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getInfoForKey:@"weeklySummaryAlertEnabled" completion:v4];
}

void sub_1041C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = ENUILogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1BFB8();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10570(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1061C;
  v4[3] = &unk_2CFE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getInfoForKey:@"supported" completion:v4];
}

void sub_1061C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = ENUILogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1C03C();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10770(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1081C;
  v4[3] = &unk_2CFE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getInfoForKey:@"dataPresent" completion:v4];
}

void sub_1081C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 BOOLValue], v6);
  }

  else
  {
    v7 = ENUILogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C0C0();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6);
  }
}

void sub_10980(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10A20;
  v3[3] = &unk_2D008;
  v4 = *(a1 + 40);
  [v2 resetAllDataWithCompletionHandler:v3];
}

id sub_10A9C(id a1)
{

  return a1;
}

uint64_t sub_10AC0(uint64_t a1)
{
  v2 = *(a1 + 32);

  return objc_opt_class();
}

void sub_121B0(uint64_t a1)
{
  v2 = [*(a1 + 32) specifier];
  v3 = [v2 userInfo];

  v4 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12274;
  v5[3] = &unk_2D078;
  v5[4] = *(a1 + 32);
  [v4 getAgencyModelForBundleID:v3 completion:v5];
}

id sub_12274(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setModel:a2];
  [*(a1 + 32) setDidRefreshModelSinceLoading:1];
  v3 = *(a1 + 32);

  return [v3 refreshSwitchStates];
}

void sub_12364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_12380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshSwitchStates];
  [WeakRetained reloadSpecifiers];
}

void sub_125D8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) set_travelStatusFlag:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_12618(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) set_preAuthorizationFlag:a2];
  if (!v2)
  {
LABEL_8:
    v12 = *(a1 + 40);

    dispatch_group_leave(v12);
    return;
  }

  if (([*(a1 + 32) didRefreshModelSinceLoading] & 1) == 0)
  {
    v13 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
    v14 = [*(a1 + 32) model];
    v15 = [v14 region];
    v16 = [v15 regionCode];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_128F0;
    v25[3] = &unk_2D0A0;
    v17 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v17;
    [v13 getAgencyModelForRegionCode:v16 completion:v25];

    return;
  }

  v4 = +[NSDate date];
  v5 = [*(a1 + 32) model];
  v6 = [v5 diagnosisKeysPreAuthorization];
  v7 = [v6 expirationDate];

  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 components:16 fromDate:v4 toDate:v7 options:0];

  v10 = [v9 day];
  if (v10 < 6)
  {
    if (v10 == &dword_4 + 1)
    {
      v11 = 5;
    }

    else
    {
      v11 = (v10 + 1);
    }

    [*(a1 + 32) set_daysUntilPreAuthExpires:v11];
    [*(a1 + 32) reloadSpecifiers];

    goto LABEL_8;
  }

  v18 = ENUILogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1C144();
  }

  v19 = *(a1 + 48);
  v20 = [*(a1 + 32) model];
  v21 = [v20 region];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_12948;
  v23[3] = &unk_2D0C8;
  v22 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v22;
  [v19 setPreAuthorizeDiagnosisKeysEnabled:0 forRegion:v21 completion:v23];
}

void sub_128F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setModel:a2];
  }

  [*(a1 + 32) setDidRefreshModelSinceLoading:1];
  [*(a1 + 32) refreshSwitchStates];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_12948(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C1C8();
    }
  }

  [*(a1 + 32) set_preAuthorizationFlag:0];
  dispatch_group_leave(*(a1 + 40));
}

id sub_129C4(uint64_t a1)
{
  [*(a1 + 32) setLastKnownStatus:{objc_msgSend(*(a1 + 40), "exposureNotificationStatus")}];
  [*(a1 + 32) setIsDataLoaded:1];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_145B4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_145DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshRegionAndReloadSpecifiers];
}

void sub_1461C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshRegionAndReloadSpecifiers];
}

void sub_14818(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_14840(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_148E8;
  v1[3] = &unk_2CA88;
  objc_copyWeak(&v2, (a1 + 32));
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v1];
  objc_destroyWeak(&v2);
}

void sub_148E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];

  v2 = [WeakRetained navigationController];
  v3 = [v2 popViewControllerAnimated:1];
}

void sub_1496C(uint64_t a1)
{
  v4 = +[_TtC28HealthExposureNotificationUI16ENManagerAdapter defaultAdapter];
  v2 = [*(a1 + 32) model];
  v3 = [v2 region];
  [v4 onboardingDidStartForRegion:v3 source:1];
}

void sub_14C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didConfirmRemoveRegion];
}

void sub_14E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14E54(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_14EE4;
  block[3] = &unk_2CA88;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_14EE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void sub_14F48(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_14FD8;
  v1[3] = &unk_2D138;
  v2 = *(a1 + 32);
  [_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel refreshRegionsWithCompletion:v1];
}

id *sub_150FC(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] refreshSwitchStates];
  }

  return result;
}

void sub_153B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C274();
    }
  }

  [*(a1 + 32) refreshSwitchStates];
}

void sub_15624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1564C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentedViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_159C0(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_15A30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ENUILogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C2DC();
    }

    v5 = [*(a1 + 32) model];
    [v5 setAnalyticsConsentStatus:0];

    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_15D08(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1760C()
{
  if (qword_34128 != -1)
  {
    sub_1C358();
  }

  v1 = qword_34120;

  return v1;
}

void sub_177C4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_34110;
  qword_34110 = v1;

  [qword_34110 setDateStyle:2];
  v3 = qword_34110;

  [v3 setTimeStyle:1];
}

void sub_17820(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_34120;
  qword_34120 = v1;

  v3 = qword_34120;

  [v3 setNumberStyle:1];
}

void sub_17F88(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_34130;
  qword_34130 = v1;

  v3 = qword_34130;

  [v3 setNumberStyle:1];
}

void sub_17FD8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_34140;
  qword_34140 = v1;

  [qword_34140 setDateStyle:2];
  v3 = qword_34140;

  [v3 setTimeStyle:1];
}

void sub_180E0(uint64_t a1)
{
  v2 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/ExposureNotification/" isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  v10 = 0;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:4 error:&v10];
  v5 = v10;

  if (v5)
  {
    v6 = ENUILogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1C394(v2, v5, v6);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1822C;
  block[3] = &unk_2C840;
  block[4] = *(a1 + 32);
  v9 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1822C(uint64_t a1)
{
  [*(a1 + 32) setAnalyticsDataFileURLs:*(a1 + 40)];
  [*(a1 + 32) setFetchCompleted:1];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_18BD4(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_34150;
  qword_34150 = v1;

  v3 = qword_34150;

  [v3 setNumberStyle:1];
}

void sub_1B2A8()
{
  sub_3724();
  v1 = *(v0 + 32);
  v2 = objc_opt_class();
  v3 = sub_36F0(v2);
  sub_3714();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B334(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error in response to delete exposure checks. (%@)", &v2, 0xCu);
}

void sub_1B3AC()
{
  sub_3724();
  v1 = *(v0 + 40);
  v2 = objc_opt_class();
  v3 = sub_36F0(v2);
  sub_3714();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B438()
{
  sub_3724();
  v0 = objc_opt_class();
  v1 = sub_36F0(v0);
  sub_3714();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1B4C0()
{
  sub_3724();
  v1 = *(v0 + 32);
  v2 = objc_opt_class();
  v3 = sub_36F0(v2);
  sub_3714();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1B54C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1B5E0()
{
  sub_B34C();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B650()
{
  sub_B34C();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B6C0()
{
  sub_B34C();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B730()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B76C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_B358();
  sub_B370(&dword_0, v2, v3, "Failed to handle an onboarding from AA request as fetch for region code: %{public}@ failed: %{public}@");
}

void sub_1B7D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_B358();
  sub_B370(&dword_0, v2, v3, "Failed to handle a deeplink request as fetch for region code: %{public}@ failed: %{public}@");
}

void sub_1B844(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  sub_B34C();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Agency model for %@", v4, 0xCu);
}

void sub_1B8D8()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B914()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B950()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B98C()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B9C8()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1BA58()
{
  sub_B34C();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1BAC8()
{
  sub_B34C();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1BB38()
{
  sub_B340();
  sub_B334();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1BB88(uint64_t a1, NSObject *a2)
{
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Ignoring request to export since no exposure checks have been loaded", &v4, 0xCu);
}

void sub_1BC64(uint64_t a1, uint64_t *a2)
{
  v3 = objc_opt_class();
  v4 = *a2;
  v5 = sub_EF40(v3);
  sub_EF20(&dword_0, v6, v7, "[%{public}@] Removing unexpected existing export file: %{public}@", v8, v9, v10, v11, v12);
}

void sub_1BCEC(uint64_t a1, uint64_t *a2)
{
  v3 = objc_opt_class();
  v4 = *a2;
  v5 = sub_EF40(v3);
  sub_EF20(&dword_0, v6, v7, "[%{public}@] Failed to create empty file: %{public}@", v8, v9, v10, v11, v12);
}

void sub_1BD74(uint64_t a1, uint64_t *a2)
{
  v3 = objc_opt_class();
  v11 = *a2;
  v4 = v3;
  sub_EF20(&dword_0, v5, v6, "[%{public}@] Attempting to export nil exposure checks: %@", v7, v8, v9, v10, 2u);
}

void sub_1BE10()
{
  sub_3724();
  v1 = sub_10AC0(v0);
  v2 = sub_10A9C(v1);
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1BE94(uint64_t a1)
{
  v8 = sub_10AC0(a1);
  v9 = *(a1 + 48);
  v2 = v8;
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1BF34()
{
  sub_3724();
  v1 = sub_10AC0(v0);
  v2 = sub_10A9C(v1);
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1BFB8()
{
  sub_3724();
  v1 = sub_10AC0(v0);
  v2 = sub_10A9C(v1);
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1C03C()
{
  sub_3724();
  v1 = sub_10AC0(v0);
  v2 = sub_10A9C(v1);
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1C0C0()
{
  sub_3724();
  v1 = sub_10AC0(v0);
  v2 = sub_10A9C(v1);
  sub_3714();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1C144()
{
  sub_B34C();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Invalide PreAuth Consent from daemon, it's likely that user has changed device's time after consenting. Revoking the consent now. CurrentDate: %@, ExpirationDate: %@", v2, 0x16u);
}

void sub_1C394(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error enumerating %@: %@", &v3, 0x16u);
}

void sub_1C430(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to load %@: %@", &v3, 0x16u);
}