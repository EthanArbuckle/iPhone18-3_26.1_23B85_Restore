void sub_100001DC0(id a1)
{
  qword_10002C708 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceAdAttribution");

  _objc_release_x1();
}

void sub_10000288C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100002C68(id a1)
{
  qword_10002C718 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayAppClipLockupProvider");

  _objc_release_x1();
}

id sub_100002FC8(uint64_t a1)
{
  v2 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsBetaApp serviceContext:*(a1 + 40)];
  v3 = [*(a1 + 40) isBetaApp];
  if (v2)
  {
    if ([v2 BOOLValue])
    {
LABEL_3:
      v4 = [ASOServiceOverlayDevelopmentLockupProvider placeholderAppDevelopmentLockupForConfiguration:*(a1 + 32) serviceContext:*(a1 + 40)];
      v5 = [[ASOServiceLockupDefinition alloc] initWithLockup:v4];
      v6 = [*(a1 + 48) loadOverlayFromDefinition:v5 configuration:*(a1 + 32) serviceContext:*(a1 + 40) metricsReporter:*(a1 + 56)];

      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 64);
LABEL_6:

  return v6;
}

void sub_100003214(uint64_t a1)
{
  v2 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterHostBundleID];
  v3 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterHostSceneIdentifier];
  v4 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterCampaignToken];
  v5 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterProviderToken];
  v6 = [*(a1 + 40) request];

  if (v6)
  {
    v7 = [_TtC23AppStoreOverlaysService24ServiceOverlayLockupView alloc];
    v8 = [*(a1 + 40) request];
    v9 = *(a1 + 48);
    v10 = +[ASOLocalizer defaultLocalizer];
    v11 = [(ServiceOverlayLockupView *)v7 initWithFrame:v8 request:v9 metricsReporter:v10 localizer:v2 hostBundleIdentifier:v3 hostSceneIdentifier:v4 campaignToken:CGRectZero.origin.x providerToken:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v5];
LABEL_5:
    v15 = v11;

    v16 = *(a1 + 56);
    v17 = [ASOServiceOverlayAppClipLockupProvider configureLockupView:v15 forAppClipWithConfiguration:*(a1 + 32) serviceContext:*(a1 + 64) metricsReporter:*(a1 + 48)];
    [v16 finishWithPromise:v17];

    goto LABEL_6;
  }

  v12 = [*(a1 + 40) lockup];

  if (v12)
  {
    v13 = [_TtC23AppStoreOverlaysService24ServiceOverlayLockupView alloc];
    v8 = [*(a1 + 40) lockup];
    v14 = *(a1 + 48);
    v10 = +[ASOLocalizer defaultLocalizer];
    v11 = [(ServiceOverlayLockupView *)v13 initWithFrame:v8 lockup:v14 metricsReporter:v10 localizer:v2 hostBundleIdentifier:v3 hostSceneIdentifier:v4 campaignToken:CGRectZero.origin.x providerToken:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v5];
    goto LABEL_5;
  }

  v18 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000179E8();
  }

  v19 = *(a1 + 56);
  v15 = [NSError errorWithDomain:@"ASOErrorDomain" code:0 userInfo:0];
  [v19 finishWithError:v15];
LABEL_6:
}

id sub_100003620(uint64_t a1)
{
  v2 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100017A28();
  }

  v3 = [*(a1 + 32) campaignToken];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) providerToken];

    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) campaignToken];
      v8 = [*(a1 + 32) providerToken];
      v9 = [*(a1 + 48) lockup];
      [v6 recordCampaignToken:v7 providerToken:v8 withLockup:v9];
    }
  }

  v10 = objc_alloc_init(AMSMutablePromise);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000037E0;
  block[3] = &unk_100024D88;
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v11 = v10;
  v20 = v11;
  dispatch_async(&_dispatch_main_q, block);
  v12 = v20;
  v13 = v11;

  return v11;
}

void sub_1000037E0(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationRecord];
  v3 = [v2 isArcadeApp];

  v4 = *(a1 + 40);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
LABEL_3:
      v5 = 2;
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_3;
  }

  v5 = 1;
LABEL_6:
  [*(a1 + 48) setVariant:v5];
  v6 = [*(a1 + 56) additionalValueForKey:ASOOverlayConfigurationParameterHostSignpostSpan];
  [*(a1 + 48) setHostSignpostSpan:v6];

  v7 = [*(a1 + 56) additionalValueForKey:ASOOverlayConfigurationParameterHostIdiom];
  v8 = [v7 integerValue];

  v10 = -[ASOServiceOverlayContainerConfiguration initWithPosition:userDismissible:hostIdiom:]([ASOServiceOverlayContainerConfiguration alloc], "initWithPosition:userDismissible:hostIdiom:", [*(a1 + 56) position], 1, v8);
  v9 = [[ASOServiceOverlay alloc] initWithContentView:*(a1 + 48) containerConfiguration:v10];
  [*(a1 + 64) finishWithResult:v9];
}

void sub_100003F2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100003F8C(id a1)
{
  qword_10002C728 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayAppLockupProvider");

  _objc_release_x1();
}

void sub_10000432C(uint64_t a1)
{
  v2 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterHostBundleID];
  v3 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterHostSceneIdentifier];
  v4 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterCampaignToken];
  v5 = [*(a1 + 32) additionalValueForKey:ASOOverlayConfigurationParameterProviderToken];
  v6 = [*(a1 + 40) request];

  if (v6)
  {
    v7 = [_TtC23AppStoreOverlaysService24ServiceOverlayLockupView alloc];
    v8 = [*(a1 + 40) request];
    v9 = *(a1 + 48);
    v10 = +[ASOLocalizer defaultLocalizer];
    v11 = [(ServiceOverlayLockupView *)v7 initWithFrame:v8 request:v9 metricsReporter:v10 localizer:v2 hostBundleIdentifier:v3 hostSceneIdentifier:v4 campaignToken:CGRectZero.origin.x providerToken:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v5];
LABEL_5:
    v15 = v11;

    v16 = [*(a1 + 64) adInteractionAttributor];
    [v15 setAdInteractionAttributor:v16];

    v17 = *(a1 + 56);
    v18 = [ASOServiceOverlayAppLockupProvider configureLockupView:v15 forAppWithConfiguration:*(a1 + 72) serviceContext:*(a1 + 80) metricsReporter:*(a1 + 48)];
    [v17 finishWithPromise:v18];

    goto LABEL_6;
  }

  v12 = [*(a1 + 40) lockup];

  if (v12)
  {
    v13 = [_TtC23AppStoreOverlaysService24ServiceOverlayLockupView alloc];
    v8 = [*(a1 + 40) lockup];
    v14 = *(a1 + 48);
    v10 = +[ASOLocalizer defaultLocalizer];
    v11 = [(ServiceOverlayLockupView *)v13 initWithFrame:v8 lockup:v14 metricsReporter:v10 localizer:v2 hostBundleIdentifier:v3 hostSceneIdentifier:v4 campaignToken:CGRectZero.origin.x providerToken:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v5];
    goto LABEL_5;
  }

  v19 = +[ASOServiceOverlayAppLockupProvider log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000179E8();
  }

  v20 = *(a1 + 56);
  v15 = [NSError errorWithDomain:@"ASOErrorDomain" code:0 userInfo:0];
  [v20 finishWithError:v15];
LABEL_6:
}

id sub_100004814(uint64_t a1)
{
  v2 = +[ASOServiceOverlayAppLockupProvider log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100017AD8();
  }

  v3 = [*(a1 + 32) campaignToken];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) providerToken];

    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) campaignToken];
      v8 = [*(a1 + 32) providerToken];
      v9 = [*(a1 + 48) lockup];
      [v6 recordCampaignToken:v7 providerToken:v8 withLockup:v9];
    }
  }

  v10 = objc_alloc_init(AMSMutablePromise);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049AC;
  block[3] = &unk_100024E20;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v11 = v10;
  v18 = v11;
  dispatch_async(&_dispatch_main_q, block);
  v12 = v18;
  v13 = v11;

  return v11;
}

void sub_1000049AC(id *a1)
{
  [a1[4] setVariant:0];
  v2 = [a1[5] additionalValueForKey:ASOOverlayConfigurationParameterHostSignpostSpan];
  [a1[4] setHostSignpostSpan:v2];

  v3 = [a1[5] additionalValueForKey:ASOOverlayConfigurationParameterHostIdiom];
  v4 = [v3 integerValue];

  v6 = -[ASOServiceOverlayContainerConfiguration initWithPosition:userDismissible:hostIdiom:]([ASOServiceOverlayContainerConfiguration alloc], "initWithPosition:userDismissible:hostIdiom:", [a1[5] position], objc_msgSend(a1[5], "userDismissible"), v4);
  v5 = [[ASOServiceOverlay alloc] initWithContentView:a1[4] containerConfiguration:v6];
  [a1[6] finishWithResult:v5];
}

void sub_100004B0C(id a1)
{
  qword_10002C738 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayDevelopmentLockupProvider");

  _objc_release_x1();
}

void sub_100005464(id a1)
{
  qword_10002C748 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayLoader");

  _objc_release_x1();
}

void sub_100005818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained config];
  v2 = [v1 storage];
  v3 = [WeakRetained config];
  v4 = [v3 appIdentifier];
  v5 = [WeakRetained serviceContext];
  v6 = [v5 hostAdamID];
  v7 = [WeakRetained serviceContext];
  v8 = [v7 hostBundleIdentifier];
  [ASOServiceAdAttribution recordImpressionWithParameters:v2 storeIdentifier:v4 hostAdamID:v6 clientBundleId:v8 interactionType:0];
}

void sub_100005E78(id a1)
{
  qword_10002C758 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayPresenter");

  _objc_release_x1();
}

void sub_100006444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100006470(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) convertErrorIfNeeded:a2];
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1000064D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoadedOverlay:v3];

  v5 = [v3 contentView];

  v12 = [v5 additionalMetricsFields];

  if (v12)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 viewMetricsReporter];
    v8 = [v7 activity];
    v9 = [v8 metricsActivityByMergingFields:v12 uniquingFieldsWithBlock:&stru_100024F38];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 viewMetricsReporter];
    [v11 setActivity:v9];
  }
}

void sub_1000067BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000067D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000067EC(uint64_t a1)
{
  v2 = [*(a1 + 32) unlockedLoadedOverlay];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100006960(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000069E4;
  block[3] = &unk_100024FD8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000069E4(uint64_t a1)
{
  v2 = +[ASOServiceOverlayPresenter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "remoteStoreOverlayWillStartPresenting executeBlock called", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100006BB8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006C3C;
  block[3] = &unk_100024FD8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100006C3C(uint64_t a1)
{
  v2 = +[ASOServiceOverlayPresenter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "remoteStoreOverlayWillStartDismissing executeBlock called", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000071DC(id a1)
{
  qword_10002C768 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceViewMetricsReporter");

  _objc_release_x1();
}

void sub_10000782C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_100007864(uint64_t a1)
{
  v2 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100017BE4(a1, v2);
  }
}

void sub_1000078B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100017C98(a1, v3, v4);
  }
}

id sub_100007924(uint64_t a1)
{
  v2 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Releasing post events process assertion", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100007B7C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) finishExecuting];
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100017D6C(v5);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Did finishing dismissing lockup overlay. Success: %i", v6, 8u);
  }
}

void sub_100007E48(id a1)
{
  qword_10002C778 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServicePresentationQueue");

  _objc_release_x1();
}

void sub_1000081A0(uint64_t a1)
{
  [*(a1 + 32) removePendingPresentationOperations];
  v3 = [[ASOServicePresentOverlayOperation alloc] initWithQueue:*(a1 + 32) configuration:*(a1 + 40) delegate:*(a1 + 48)];
  v2 = [*(a1 + 32) queue];
  [v2 addOperation:v3];
}

void sub_1000082F4(uint64_t a1)
{
  [*(a1 + 32) removePendingPresentationOperations];
  v3 = [[ASOServiceDismissOverlayOperation alloc] initWithQueue:*(a1 + 32)];
  v2 = [*(a1 + 32) queue];
  [v2 addOperation:v3];
}

void sub_10000845C(id a1)
{
  qword_10002C788 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServicePresentOverlayOperation");

  _objc_release_x1();
}

void sub_1000087CC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) finishExecuting];
  v6 = +[ASOServicePresentOverlayOperation log];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017F14(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did finishing presenting lockup overlay. Success: %i", v8, 8u);
  }
}

void sub_100008C98(id a1)
{
  qword_10002C798 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceOverlayViewController");

  _objc_release_x1();
}

id sub_100009448(uint64_t a1)
{
  [*(a1 + 32) setCurrentOverlayPresenter:*(a1 + 40)];
  v2 = objc_alloc_init(AMSMutableBinaryPromise);
  v3 = [*(a1 + 40) loadOverlayIfNeeded];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000095A0;
  v12[3] = &unk_100025150;
  v12[4] = *(a1 + 32);
  v4 = v2;
  v13 = v4;
  v14 = *(a1 + 48);
  [v3 addSuccessBlock:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000096F8;
  v9[3] = &unk_100025178;
  v10 = *(a1 + 40);
  v5 = v4;
  v11 = v5;
  [v3 addErrorBlock:v9];
  v6 = v11;
  v7 = v5;

  return v5;
}

void sub_1000095A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009658;
  v6[3] = &unk_100025128;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100009658(uint64_t a1)
{
  v2 = [*(a1 + 40) contentView];
  v3 = [*(a1 + 32) overlayContainer];
  [v3 setContentView:v2];

  [*(a1 + 32) reloadContainerConfiguration];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) showOverlayAnimated:*(a1 + 56)];
  [v4 finishWithPromise:v5];
}

void sub_1000096F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 didFailToLoadWithError:v4];
  [*(a1 + 40) finishWithError:v4];
}

AMSBinaryPromise *sub_100009848(uint64_t a1)
{
  [*(a1 + 32) setCurrentOverlayPresenter:0];

  return +[AMSBinaryPromise promiseWithSuccess];
}

void sub_100009F20(uint64_t a1)
{
  [*(a1 + 32) refreshOverlayFrame];
  v2 = *(a1 + 32);
  [v2 percentageOnScreen];
  [v2 edgePointForPercentage:?];
  [v2 overlayFrameForEdgePoint:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  [v11 edgePointForPercentage:1.0];
  [v11 overlayFrameForEdgePoint:?];
  v16 = [[ASOOverlayTransitionContext alloc] initWithStartFrame:v4 endFrame:{v6, v8, v10, v12, v13, v14, v15}];
  v17 = [*(a1 + 32) currentOverlayPresenter];
  objc_initWeak(&location, v17);

  v18 = [*(a1 + 32) currentOverlayPresenter];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000A104;
  v20[3] = &unk_100025240;
  v20[4] = *(a1 + 32);
  v24 = *(a1 + 48);
  objc_copyWeak(&v23, &location);
  v19 = v16;
  v21 = v19;
  v22 = *(a1 + 40);
  [v18 willStartPresentation:v19 executeBlock:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void sub_10000A0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A1E4;
  v4[3] = &unk_100025218;
  objc_copyWeak(&v7, (a1 + 56));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 setPercentageOnScreen:v3 animated:v4 completion:1.0];

  objc_destroyWeak(&v7);
}

id sub_10000A1E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishPresentation:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 finishWithSuccess];
}

void sub_10000A35C(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 percentageOnScreen];
  [v2 edgePointForPercentage:?];
  [v2 overlayFrameForEdgePoint:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  [v11 edgePointForPercentage:0.0];
  [v11 overlayFrameForEdgePoint:?];
  v16 = [[ASOOverlayTransitionContext alloc] initWithStartFrame:v4 endFrame:{v6, v8, v10, v12, v13, v14, v15}];
  v17 = [*(a1 + 32) currentOverlayPresenter];
  objc_initWeak(&location, v17);

  v18 = [*(a1 + 32) currentOverlayPresenter];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000A538;
  v20[3] = &unk_100025240;
  v20[4] = *(a1 + 32);
  v24 = *(a1 + 48);
  objc_copyWeak(&v23, &location);
  v19 = v16;
  v21 = v19;
  v22 = *(a1 + 40);
  [v18 willStartDismissal:v19 executeBlock:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void sub_10000A514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A538(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A618;
  v4[3] = &unk_100025218;
  objc_copyWeak(&v7, (a1 + 56));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 setPercentageOnScreen:v3 animated:v4 completion:0.0];

  objc_destroyWeak(&v7);
}

id sub_10000A618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishDismissal:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 finishWithSuccess];
}

void sub_10000AA68(id a1)
{
  v1 = +[ASOServiceOverlayViewController log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Overlay presentation succeeded", v2, 2u);
  }
}

void sub_10000AAD8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[ASOServiceOverlayViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Overlay presentation failed with error: %{public}@", &v4, 0xCu);
  }
}

id sub_10000AED4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10002C7A0;
  v7 = qword_10002C7A0;
  if (!qword_10002C7A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000AFB4;
    v3[3] = &unk_1000252F0;
    v3[4] = &v4;
    sub_10000AFB4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AFB4(uint64_t a1)
{
  sub_10000B00C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ASCSignpostSpan");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10002C7A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100017FE4();
    sub_10000B00C();
  }
}

void sub_10000B00C()
{
  v1[0] = 0;
  if (!qword_10002C7A8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10000B108;
    v1[4] = &unk_100025328;
    v1[5] = v1;
    v2 = off_100025310;
    v3 = 0;
    qword_10002C7A8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10002C7A8)
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

uint64_t sub_10000B108(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10002C7A8 = result;
  return result;
}

void sub_10000B1C0(id a1)
{
  qword_10002C7B8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASOHostProtocol];

  _objc_release_x1();
}

void sub_10000B24C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASOServiceProtocol];
  v2 = qword_10002C7C8;
  qword_10002C7C8 = v1;

  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASORemoteAppOverlayDelegate];
  [qword_10002C7C8 setInterface:v3 forSelector:"presentOverlayWithConfiguration:delegate:reply:" argumentIndex:1 ofReply:0];
  v4 = qword_10002C7C8;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = sub_10000AED0(v9, v5);
  v6 = [NSArray arrayWithObjects:&v8 count:3];
  v7 = [NSSet setWithArray:v6, v8];
  [v4 setClasses:v7 forSelector:"presentOverlayWithConfiguration:delegate:reply:" argumentIndex:0 ofReply:0];
}

void sub_10000B514(id a1)
{
  qword_10002C7D8 = os_log_create("com.apple.AppStoreOverlays.ViewService", "ASOServiceContext");

  _objc_release_x1();
}

uint64_t sub_10000C158(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + OBJC_IVAR___ASOKeepAlive_name);
  v4 = *(a1 + OBJC_IVAR___ASOKeepAlive_name + 8);
  v7 = *(a1 + OBJC_IVAR___ASOKeepAlive_explanation);
  v6 = *(a1 + OBJC_IVAR___ASOKeepAlive_explanation + 8);

  sub_1000184C8();
  if (qword_10002BF40 != -1)
  {
    swift_once();
  }

  sub_100018128();
  if (qword_10002BF50 != -1)
  {
    swift_once();
  }

  v8 = qword_10002CD70;
  [qword_10002CD70 lock];
  a2(v2, v5, v4, v7, v6, v2);

  [v8 unlock];
  sub_1000184C8();

  return sub_100018128();
}

uint64_t sub_10000C414()
{
  sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
  result = sub_100018548();
  qword_10002CD60 = result;
  return result;
}

uint64_t sub_10000C488()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

Swift::Int sub_10000C4C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100018638();
  sub_100018478();
  sub_100018478();
  return sub_100018658();
}

uint64_t sub_10000C528()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100018478();

  return sub_100018478();
}

Swift::Int sub_10000C578()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100018638();
  sub_100018478();
  sub_100018478();
  return sub_100018658();
}

uint64_t sub_10000C5DC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1000185F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1000185F8();
    }
  }

  return result;
}

unint64_t sub_10000C6C0()
{
  result = sub_100016B58(&_swiftEmptyArrayStorage);
  qword_10002CD68 = result;
  return result;
}

id sub_10000C6E8()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10002CD70 = result;
  return result;
}

uint64_t sub_10000C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10002BF48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_10002CD68;
  if (*(qword_10002CD68 + 16) && (v10 = sub_100015B2C(a2, a3, a4, a5), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for KeepAliveManager.Assertion();
    swift_allocObject();

    v12 = sub_10000D31C();
  }

  v13 = *(v12 + 24);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_11;
  }

  *(v12 + 24) = v15;
  v16 = *(v12 + 16);
  v28[0] = 0;
  v17 = [v16 acquireWithError:v28];
  v18 = v28[0];
  if (v17)
  {
    swift_beginAccess();
    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = qword_10002CD68;
    qword_10002CD68 = 0x8000000000000000;
    sub_100016524(v12, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    qword_10002CD68 = v27;
    swift_endAccess();
  }

  v22 = v28[0];
  sub_100018058();

  swift_willThrow();
  sub_1000184D8();
  if (qword_10002BF40 != -1)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001C7C0;
  swift_getErrorValue();
  v24 = sub_100018628();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_10000D4F4();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_100018128();
}

uint64_t sub_10000CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10002BF48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_10002CD68;
  if (*(qword_10002CD68 + 16) && (v10 = sub_100015B2C(a2, a3, a4, a5), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    result = swift_endAccess();
    v14 = *(v12 + 24);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v12 + 24) = v16;
      if (v16 < 1)
      {
        v17 = *(v12 + 16);

        [v17 invalidate];
        if (!*(v12 + 24))
        {
          swift_beginAccess();
          sub_10000D0A0(a2, a3, a4, a5);
          swift_endAccess();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_1000184D8();
    if (qword_10002BF40 != -1)
    {
      swift_once();
    }

    return sub_100018128();
  }

  return result;
}

id sub_10000CC3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000CCC0()
{
  v1 = *v0;
  sub_100018458();
  v2 = sub_100018488();

  return v2;
}

uint64_t sub_10000CCFC()
{
  v1 = *v0;
  sub_100018458();
  sub_100018478();
}

Swift::Int sub_10000CD50()
{
  v1 = *v0;
  sub_100018458();
  sub_100018638();
  sub_100018478();
  v2 = sub_100018658();

  return v2;
}

uint64_t sub_10000CDCC(uint64_t a1, id *a2)
{
  result = sub_100018438();
  *a2 = 0;
  return result;
}

uint64_t sub_10000CE44(uint64_t a1, id *a2)
{
  v3 = sub_100018448();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000CEC4@<X0>(void *a1@<X8>)
{
  sub_100018458();
  v2 = sub_100018428();

  *a1 = v2;
  return result;
}

uint64_t sub_10000CF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100018458();
  v6 = v5;
  if (v4 == sub_100018458() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000185F8();
  }

  return v9 & 1;
}

uint64_t sub_10000CF94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100018458();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000CFC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100018428();

  *a2 = v5;
  return result;
}

uint64_t sub_10000D008(uint64_t a1)
{
  v2 = sub_10000D778(&qword_10002C5F0);
  v3 = sub_10000D778(&unk_10002C110);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_100015B2C(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v18 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100016858();
    v12 = v18;
  }

  v13 = *(v12 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = *(*(v12 + 56) + 8 * v9);
  sub_10000D144(v9, v12);
  *v5 = v12;
  return v16;
}

uint64_t sub_10000D144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100018568() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_100018638();

      sub_100018478();
      sub_100018478();
      v15 = sub_100018658();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000D31C()
{
  v1 = getpid();
  v2 = [objc_opt_self() targetWithPid:v1];
  sub_10000D4AC(&qword_10002C0D0, &qword_10001C850);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001C7D0;
  v4 = sub_100018428();
  v5 = sub_100018428();
  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  *(v3 + 32) = v6;
  v7 = objc_allocWithZone(RBSAssertion);
  v8 = sub_100018428();
  sub_10000D548(0, &qword_10002C0D8, RBSAttribute_ptr);
  isa = sub_100018498().super.isa;

  v10 = [v7 initWithExplanation:v8 target:v2 attributes:isa];

  *(v0 + 16) = v10;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_10000D4AC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000D4F4()
{
  result = qword_10002C0C8;
  if (!qword_10002C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C0C8);
  }

  return result;
}

uint64_t sub_10000D548(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_10000D590(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D59C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D5E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for ASCOfferTitleVariant()
{
  if (!qword_10002C0E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10002C0E0);
    }
  }
}

unint64_t sub_10000D6F0()
{
  result = qword_10002C0F8;
  if (!qword_10002C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C0F8);
  }

  return result;
}

uint64_t sub_10000D778(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCOfferTitleVariant();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000D7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_100018428();

  return v3;
}

uint64_t sub_10000D840()
{
  v0 = *(*(sub_100018328() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_100018108();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for ImpressionIntake.InteractionType.view(_:), v1);
  sub_1000180F8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10000DB68()
{
  v0 = *(*(sub_100018328() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_100018108();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for ImpressionIntake.InteractionType.click(_:), v1);
  sub_1000180F8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10000DE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = sub_100018458();
  v11 = v10;
  v12 = sub_100018458();
  v14 = v13;
  v15 = a1;
  a6(a3, v9, v11, v12, v14);
}

uint64_t sub_10000DF3C()
{
  v0 = *(*(sub_100018328() - 8) + 64);
  __chkstk_darwin();
  return sub_100018118();
}

id sub_10000E578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionKitBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AttributionKitBridge()
{
  result = qword_10002C1A8;
  if (!qword_10002C1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E670()
{
  result = sub_1000183F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_10000E700(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000E764(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000E79C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D4AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E7FC()
{
  v0 = sub_1000180E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  sub_10000D4AC(&qword_10002C220, &unk_10001CB38);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10001CB00;
  v9 = objc_opt_self();
  v10 = [v9 asc_storefrontLocale];
  sub_1000180D8();

  v11 = sub_1000180C8();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v7, v0);
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  v15 = [v9 currentLocale];
  sub_1000180D8();

  v16 = sub_1000180C8();
  v18 = v17;
  v14(v5, v0);
  *(v8 + 48) = v16;
  *(v8 + 56) = v18;
  return v8;
}

id sub_10000E9B4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000180E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100018388();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v42);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v36 - v17;
  __chkstk_darwin(v16);
  v41 = &v36 - v19;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_100018598();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!*(a2 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v10;
  if (!(a1 >> 62))
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v7;
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_14:

    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v21 = sub_100018598();
  v39 = v7;
  if (!v21)
  {
    goto LABEL_14;
  }

LABEL_6:
  v44 = &_swiftEmptyArrayStorage;
  result = sub_10000F554(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v37 = v6;
    v38 = v3;
    v22 = v44;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        sub_100018578();

        sub_100018368();
        v44 = v22;
        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_10000F554(v24 > 1, v25 + 1, 1);
          v22 = v44;
        }

        v22[2] = v25 + 1;
        (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v18, v42);
      }
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = *(a1 + v26);

        v28 = v27;
        sub_100018368();
        v44 = v22;
        v30 = v22[2];
        v29 = v22[3];
        if (v30 >= v29 >> 1)
        {
          sub_10000F554(v29 > 1, v30 + 1, 1);
          v22 = v44;
        }

        v22[2] = v30 + 1;
        (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v15, v42);
        v26 += 8;
        --v21;
      }

      while (v21);
    }

    v6 = v37;
    v3 = v38;
LABEL_20:
    v31 = v40;
    *&v3[OBJC_IVAR___ASOLocalizer_stringTables] = v22;
    if (v22[2])
    {
      v32 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v33 = v41;
      v34 = v42;
      (*(v11 + 16))(v41, v32, v42);
      sub_100018378();
      (*(v11 + 8))(v33, v34);
      (*(v39 + 32))(&v3[OBJC_IVAR___ASOLocalizer_locale], v31, v6);
      v35 = type metadata accessor for Localizer();
      v43.receiver = v3;
      v43.super_class = v35;
      return objc_msgSendSuper2(&v43, "init");
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000EF0C(uint64_t a1, void *a2)
{
  v24._countAndFlagsBits = a1;
  v24._object = a2;
  v3 = sub_100018328();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100018388();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(v2 + OBJC_IVAR___ASOLocalizer_stringTables);
  v13 = *(v12 + 16);
  v23[1] = v7 + 16;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6);
    v14 = sub_100018358(v24);
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    if (v16)
    {
      return v14;
    }
  }

  if (qword_10002BF60 == -1)
  {
    goto LABEL_7;
  }

LABEL_10:
  swift_once();
LABEL_7:
  v18 = sub_1000183F8();
  sub_10000E764(v18, qword_10002CDA0);
  sub_10000D4AC(&qword_10002C1B8, &qword_10001CAD8);
  v19 = *(sub_100018348() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10001C7C0;
  sub_100018318();
  v27._object = 0x800000010001E270;
  v27._countAndFlagsBits = 0xD000000000000022;
  sub_100018308(v27);
  v26 = &type metadata for String;
  countAndFlagsBits = v24._countAndFlagsBits;
  v25 = v24;

  sub_1000182E8();
  sub_10000F4A0(&v25);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_100018308(v28);
  sub_100018338();
  sub_1000183B8();

  return countAndFlagsBits;
}

id sub_10000F2F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Localizer()
{
  result = qword_10002C200;
  if (!qword_10002C200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F400()
{
  result = sub_1000180E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F4A0(uint64_t a1)
{
  v2 = sub_10000D4AC(&qword_10002C1C0, qword_10001CAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F508()
{
  result = qword_10002C210;
  if (!qword_10002C210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002C210);
  }

  return result;
}

size_t sub_10000F554(size_t a1, int64_t a2, char a3)
{
  result = sub_10000F574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000F574(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000D4AC(&qword_10002C218, &unk_10001CB28);
  v10 = *(sub_100018388() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100018388() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000F750()
{
  v0 = sub_1000183D8();
  sub_10000F7B4(v0, qword_10002CD88);
  sub_10000E764(v0, qword_10002CD88);
  return sub_1000183C8();
}

uint64_t *sub_10000F7B4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000F818()
{
  v0 = sub_1000183D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000183F8();
  sub_10000F7B4(v5, qword_10002CDA0);
  sub_10000E764(v5, qword_10002CDA0);
  if (qword_10002BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_10000E764(v0, qword_10002CD88);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000183E8();
}

double sub_10000F970(char *a1, double a2, double a3)
{
  v6 = sub_1000180B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a1[OBJC_IVAR___ASORateLimiter_requestsPerSecond] = a2;
  *&a1[OBJC_IVAR___ASORateLimiter_timeWindow] = a3;
  v11 = &a1[OBJC_IVAR___ASORateLimiter_dateProvider];
  *v11 = sub_10000F96C;
  v11[1] = 0;
  v12 = [objc_allocWithZone(NSLock) init];
  *&a1[OBJC_IVAR___ASORateLimiter_requestCounterLock] = v12;
  sub_1000180A8();
  (*(v7 + 32))(&a1[OBJC_IVAR___ASORateLimiter_lastCounterUpdate], v10, v6);
  *&a1[OBJC_IVAR___ASORateLimiter_allowedRequestsCount] = 0;
  v13 = type metadata accessor for RateLimiter();
  v16.receiver = a1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "init");
  result = fmax(*&v14[OBJC_IVAR___ASORateLimiter_timeWindow] * *&v14[OBJC_IVAR___ASORateLimiter_requestsPerSecond], 1.0);
  *&v14[OBJC_IVAR___ASORateLimiter_allowedRequestsCount] = result;
  return result;
}

double sub_10000FC38(void *a1, void *a2, double result)
{
  v4 = *(v3 + *a1);
  *(v3 + *a1) = result;
  if (v4 != result)
  {
    result = fmax(*(v3 + *a2) * result, 1.0);
    *(v3 + OBJC_IVAR___ASORateLimiter_allowedRequestsCount) = result;
  }

  return result;
}

BOOL sub_10000FC74()
{
  v1 = *(v0 + OBJC_IVAR___ASORateLimiter_requestCounterLock);
  [v1 lock];
  sub_10000FD24();
  v2 = *(v0 + OBJC_IVAR___ASORateLimiter_allowedRequestsCount);
  if (v2 >= 1.0)
  {
    *(v0 + OBJC_IVAR___ASORateLimiter_allowedRequestsCount) = v2 + -1.0;
  }

  v3 = v2 >= 1.0;
  [v1 unlock];
  return v3;
}

uint64_t sub_10000FD24()
{
  v1 = v0;
  v2 = sub_1000180B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v21[-v9];
  v11 = *(v0 + OBJC_IVAR___ASORateLimiter_dateProvider);
  v12 = *(v0 + OBJC_IVAR___ASORateLimiter_dateProvider + 8);
  v11(v8);
  v13 = OBJC_IVAR___ASORateLimiter_lastCounterUpdate;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v13, v2);
  sub_100018098();
  v15 = v14;
  (*(v3 + 8))(v7, v2);
  v16 = *(v1 + OBJC_IVAR___ASORateLimiter_requestsPerSecond);
  v17 = v15 * v16;
  v18 = fmax(v16 * *(v1 + OBJC_IVAR___ASORateLimiter_timeWindow), 1.0);
  v19 = v17 + *(v1 + OBJC_IVAR___ASORateLimiter_allowedRequestsCount);
  if (v18 >= v19)
  {
    v18 = v19;
  }

  *(v1 + OBJC_IVAR___ASORateLimiter_allowedRequestsCount) = v18;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v13, v10, v2);
  return swift_endAccess();
}

id sub_10000FF34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RateLimiter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RateLimiter()
{
  result = qword_10002C280;
  if (!qword_10002C280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010050()
{
  result = sub_1000180B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10001010C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100018298();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor;
  *&v4[v15] = [objc_opt_self() separatorColor];
  (*(v11 + 104))(v14, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_1000181A8();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000E700(v22);
  sub_100018198();
  sub_1000182A8();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v18 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

void sub_100010750()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000185E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews");
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v1 layoutMargins];
  v18 = sub_100010BD8(v9, v11, v13, v15, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_1000182B8();
  v27 = v26;

  swift_beginAccess();
  sub_100018278();
  swift_endAccess();
  sub_100010BF4(v33, v33[3]);
  sub_100018138();
  sub_100018188();
  v29 = v28;
  (*(v4 + 8))(v7, v3);
  sub_100010C38(v33);
  v30 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView];
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  MinX = CGRectGetMinX(v35);
  v36.origin.x = v18;
  v36.origin.y = v20;
  v36.size.width = v22;
  v36.size.height = v24;
  v32 = v29 + CGRectGetMinY(v36);
  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  [v30 setFrame:{MinX, v32, CGRectGetWidth(v37), v27}];
}

id sub_100010A20()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorView()
{
  result = qword_10002C2C8;
  if (!qword_10002C2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010B38()
{
  result = sub_1000182C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_100010BF4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010C38(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_100010C84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView] = 0;
  v10 = [objc_opt_self() effectWithStyle:8];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
  *&v4[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView] = v11;
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView;
  v14 = *&v12[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView];
  v15 = v12;
  v16 = [v14 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [*&v12[v13] contentView];
  [v17 setInsetsLayoutMarginsFromSafeArea:0];

  v18 = [*&v12[v13] layer];
  [v18 setCornerRadius:16.0];

  v19 = [*&v12[v13] layer];
  [v19 setMasksToBounds:1];

  v20 = [v15 layer];
  LODWORD(v21) = 1041865114;
  [v20 setShadowOpacity:v21];

  v22 = [v15 layer];
  [v22 setShadowOffset:{0.0, 6.0}];

  v23 = [v15 layer];
  [v23 setShadowRadius:16.0];

  [v15 addSubview:*&v12[v13]];
  return v15;
}

void sub_100010FF0()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [v1 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 contentView];
  [v11 layoutMargins];
  v13 = v12;
  v15 = v14;

  v16 = *&v0[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView];
  if (v16)
  {
    [v16 setFrame:{sub_100010BD8(v4, v6, v8, v10, v13, v15)}];
  }

  [v0 bounds];
  v21 = [objc_opt_self() bezierPathWithRoundedRect:v17 cornerRadius:{v18, v19, v20, 16.0}];
  v22 = [v0 layer];
  v23 = [v21 CGPath];
  [v22 setShadowPath:v23];
}

void sub_100011230(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = [*&v2[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView] contentView];
  [v6 layoutMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v18.top = v8;
  v18.left = v10;
  v18.bottom = v12;
  v18.right = v14;
  v15 = sub_1000184E8(v18);
  v16 = *&v2[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView];
  if (v16)
  {
    [v16 sizeThatFits:v15];
    v19.top = v8;
    v19.left = v10;
    v19.bottom = v12;
    v19.right = v14;
    sub_1000184F8(v19);
  }

  else
  {
    v17.receiver = v2;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, "sizeThatFits:", a1, a2);
  }
}

void sub_100011404(void *a1)
{
  v2 = OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView;
  v8 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView];
  *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_contentView] = a1;
  v3 = a1;
  [v8 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService27ServiceOverlayContainerView_visualEffectView];
    v6 = v4;
    v7 = [v5 contentView];
    [v7 addSubview:v6];
  }

  [v1 setNeedsLayout];
}

Swift::Int sub_1000114E0()
{
  v1 = *v0;
  sub_100018638();
  sub_100018648(v1);
  return sub_100018658();
}

Swift::Int sub_100011554()
{
  v1 = *v0;
  sub_100018638();
  sub_100018648(v1);
  return sub_100018658();
}

uint64_t *sub_100011598@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

UIFontTextStyle sub_1000115C0()
{
  v0 = sub_100018178();
  sub_10000F7B4(v0, qword_10002CDC0);
  v1 = sub_10000E764(v0, qword_10002CDC0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

id sub_10001167C()
{
  result = [objc_allocWithZone(ASCAdamID) initWithInt64:0x8000000000000000];
  qword_10002CDD8 = result;
  return result;
}

uint64_t sub_1000116B4()
{
  v0 = sub_1000183D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000183F8();
  sub_10000F7B4(v5, qword_10002CDE0);
  sub_10000E764(v5, qword_10002CDE0);
  if (qword_10002BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_10000E764(v0, qword_10002CD88);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000183E8();
}

char *sub_100011808(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ObjectType = swift_getObjectType();
  v24 = objc_allocWithZone(ObjectType);
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor] = 0;
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan] = 0;
  swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant] = 0;
  swift_unknownObjectWeakAssign();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_localizer] = a3;
  v25 = objc_allocWithZone(ASCLockupView);
  v75 = a3;
  v74 = a2;
  v26 = [v25 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView] = v26;
  v27 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel] = v27;
  type metadata accessor for SeparatorView();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_loadLockupPromise] = v28;
  v77.receiver = v24;
  v77.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v77, "initWithFrame:", a4, a5, a6, a7);
  [v29 setLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  [v29 setInsetsLayoutMarginsFromSafeArea:0];
  v30 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView;
  [*&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView] setAutomaticallyGeneratesAppearMetrics:0];
  [*&v29[v30] setAutomaticallyPresentsProductDetails:0];
  v31 = *&v29[v30];
  v32 = v31;
  if (a9)
  {

    v33 = sub_100018428();
  }

  else
  {
    v33 = 0;
  }

  [v31 setStoreSheetHostBundleID:v33];

  v34 = *&v29[v30];
  v35 = v34;
  if (a11)
  {
    v36 = sub_100018428();
  }

  else
  {
    v36 = 0;
  }

  [v34 setPresentingSceneIdentifier:v36];

  v37 = *&v29[v30];
  v38 = v37;
  if (a9)
  {
    v39 = sub_100018428();
  }

  else
  {
    v39 = 0;
  }

  [v37 setPresentingSceneBundleIdentifier:v39];

  v40 = *&v29[v30];
  v41 = v40;
  if (a13)
  {
    v42 = sub_100018428();
  }

  else
  {
    v42 = 0;
  }

  [v40 setCampaignToken:v42];

  v43 = *&v29[v30];
  v44 = v43;
  if (a15)
  {
    v45 = sub_100018428();
  }

  else
  {
    v45 = 0;
  }

  [v43 setProviderToken:v45];

  v46 = *&v29[v30];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 systemGrayColor];
  v50 = [v47 whiteColor];
  v51 = [v47 systemGrayColor];
  v52 = [v47 systemGrayColor];
  v53 = [objc_opt_self() grayTheme];
  v73 = v30;
  v54 = [v53 progressColor];

  v55 = [objc_allocWithZone(ASCOfferTheme) initWithTitleBackgroundColor:v49 titleTextColor:v50 subtitleTextColor:v51 iconTintColor:v52 progressColor:v54];
  [v48 setOfferTheme:v55];

  v56 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView;
  v57 = *&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView];
  v58 = [v47 systemGray2Color];
  v59 = *&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor];
  *&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor] = v58;
  v60 = v58;

  [*&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView] setBackgroundColor:v60];
  v61 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel;
  v62 = *&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel];
  v63 = [v47 systemGrayColor];
  [v62 setTextColor:v63];

  [*&v29[v61] setNumberOfLines:2];
  v64 = *&v29[v61];
  sub_10000D548(0, &qword_10002C5F8, UIFont_ptr);
  if (qword_10002BF68 != -1)
  {
    swift_once();
  }

  v65 = sub_100018178();
  sub_10000E764(v65, qword_10002CDC0);
  v66 = [v29 traitCollection];
  v67 = sub_100018508();

  [v64 setFont:v67];
  [v29 addSubview:*&v29[v61]];
  [v29 addSubview:*&v29[v56]];
  [v29 addSubview:*&v29[v73]];
  v68 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v29 action:"didTapOnOverlay"];
  [v29 addGestureRecognizer:v68];
  sub_10000D4AC(&qword_10002C650, &qword_10001CD30);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10001C7C0;
  *(v69 + 32) = sub_1000182D8();
  *(v69 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100018518();

  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v70 = *&v29[v73];
  v71 = v29;
  [v70 setDelegate:v71];
  [*&v29[v73] setRequest:a1];

  return v71;
}

char *sub_100012018(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  ObjectType = swift_getObjectType();
  v24 = objc_allocWithZone(ObjectType);
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor] = 0;
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan] = 0;
  swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant] = 0;
  swift_unknownObjectWeakAssign();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_localizer] = a3;
  v25 = objc_allocWithZone(ASCLockupView);
  v75 = a3;
  v74 = a2;
  v26 = [v25 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView] = v26;
  v27 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel] = v27;
  type metadata accessor for SeparatorView();
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  *&v24[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_loadLockupPromise] = v28;
  v77.receiver = v24;
  v77.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v77, "initWithFrame:", a4, a5, a6, a7);
  [v29 setLayoutMargins:{0.0, 10.0, 0.0, 10.0}];
  [v29 setInsetsLayoutMarginsFromSafeArea:0];
  v30 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView;
  [*&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView] setAutomaticallyGeneratesAppearMetrics:0];
  [*&v29[v30] setAutomaticallyPresentsProductDetails:0];
  v31 = *&v29[v30];
  v32 = v31;
  if (a9)
  {

    v33 = sub_100018428();
  }

  else
  {
    v33 = 0;
  }

  [v31 setStoreSheetHostBundleID:v33];

  v34 = *&v29[v30];
  v35 = v34;
  if (a11)
  {
    v36 = sub_100018428();
  }

  else
  {
    v36 = 0;
  }

  [v34 setPresentingSceneIdentifier:v36];

  v37 = *&v29[v30];
  v38 = v37;
  if (a9)
  {
    v39 = sub_100018428();
  }

  else
  {
    v39 = 0;
  }

  [v37 setPresentingSceneBundleIdentifier:v39];

  v40 = *&v29[v30];
  v41 = v40;
  if (a13)
  {
    v42 = sub_100018428();
  }

  else
  {
    v42 = 0;
  }

  [v40 setCampaignToken:v42];

  v43 = *&v29[v30];
  v44 = v43;
  if (a15)
  {
    v45 = sub_100018428();
  }

  else
  {
    v45 = 0;
  }

  [v43 setProviderToken:v45];

  v46 = *&v29[v30];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 systemGrayColor];
  v50 = [v47 whiteColor];
  v51 = [v47 systemGrayColor];
  v52 = [v47 systemGrayColor];
  v53 = [objc_opt_self() grayTheme];
  v73 = v30;
  v54 = [v53 progressColor];

  v55 = [objc_allocWithZone(ASCOfferTheme) initWithTitleBackgroundColor:v49 titleTextColor:v50 subtitleTextColor:v51 iconTintColor:v52 progressColor:v54];
  [v48 setOfferTheme:v55];

  v56 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView;
  v57 = *&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView];
  v58 = [v47 systemGray2Color];
  v59 = *&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor];
  *&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor] = v58;
  v60 = v58;

  [*&v57[OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineView] setBackgroundColor:v60];
  v61 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel;
  v62 = *&v29[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel];
  v63 = [v47 systemGrayColor];
  [v62 setTextColor:v63];

  [*&v29[v61] setNumberOfLines:2];
  v64 = *&v29[v61];
  sub_10000D548(0, &qword_10002C5F8, UIFont_ptr);
  if (qword_10002BF68 != -1)
  {
    swift_once();
  }

  v65 = sub_100018178();
  sub_10000E764(v65, qword_10002CDC0);
  v66 = [v29 traitCollection];
  v67 = sub_100018508();

  [v64 setFont:v67];
  [v29 addSubview:*&v29[v61]];
  [v29 addSubview:*&v29[v56]];
  [v29 addSubview:*&v29[v73]];
  v68 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v29 action:"didTapOnOverlay"];
  [v29 addGestureRecognizer:v68];
  sub_10000D4AC(&qword_10002C650, &qword_10001CD30);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10001C7C0;
  *(v69 + 32) = sub_1000182D8();
  *(v69 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100018518();

  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v70 = *&v29[v73];
  v71 = v29;
  [v70 setDelegate:v71];
  [*&v29[v73] setLockup:a1];
  [*&v71[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_loadLockupPromise] finishWithSuccess];

  return v71;
}

uint64_t sub_100012840(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(id, id, id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, uint64_t, uint64_t, uint64_t))
{
  if (a10)
  {
    v23 = sub_100018458();
    v41 = v24;
    v42 = v23;
    v25 = a13;
    if (a11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v40 = 0;
    v27 = 0;
    v28 = a14;
    if (a12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v41 = 0;
  v42 = 0;
  v25 = a13;
  if (!a11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v40 = sub_100018458();
  v27 = v26;
  v28 = a14;
  if (a12)
  {
LABEL_4:
    v29 = sub_100018458();
    a12 = v30;
    goto LABEL_8;
  }

LABEL_7:
  v29 = 0;
LABEL_8:
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v34 = v25;
  if (v34)
  {
    v35 = v34;
    v36 = sub_100018458();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  return v28(v31, v32, v33, v42, v41, v40, v27, v29, a1, a2, a3, a4, a12, v36, v38);
}

void sub_100012AA0(unint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant) = a1;
  if (a1 >= 3)
  {
    sub_100018608();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
    v3 = **(&off_100025560 + a1);
    sub_100018458();
    v4 = sub_100018428();

    [v2 setStoreSheetUsageContext:v4];

    sub_100012B60();
  }
}

void sub_100012B60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() asc_storefrontLocale];
  if (!v3)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = v3;
  if ([v3 asc_prefersRightToLeftLayout])
  {
    v23.receiver = v1;
    v23.super_class = ObjectType;
    objc_msgSendSuper2(&v23, "setSemanticContentAttribute:", 4);
    v6 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel];
    v22 = v1;
    v7 = &v22;
  }

  else
  {
    v26.receiver = v1;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "setSemanticContentAttribute:", 3);
    v6 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel];
    v25.receiver = v1;
    v7 = &v25;
  }

  v7->super_class = ObjectType;
  [v6 setSemanticContentAttribute:{-[objc_super semanticContentAttribute](v7, "semanticContentAttribute")}];
  v8 = [*&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView] lockup];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 offer];

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = [v10 subtitles];
  swift_unknownObjectRelease();
  type metadata accessor for ASCOfferTitleVariant();
  sub_100017560(&qword_10002C5F0, type metadata accessor for ASCOfferTitleVariant);
  v12 = sub_100018418();

  if (qword_10002BF80 == -1)
  {
    if (!*(v12 + 16))
    {
LABEL_13:

LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    swift_once();
    if (!*(v12 + 16))
    {
      goto LABEL_13;
    }
  }

  v13 = sub_100015BCC(qword_10002CDF8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v16 = *v15;
  v10 = v15[1];

LABEL_15:
  v4 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant];
  switch(v4)
  {
    case 2:
      if (!v10)
      {
        v17 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_localizer];
        v19 = 0xD000000000000014;
        v18 = 0x800000010001EB50;
        goto LABEL_21;
      }

LABEL_22:
      v20 = sub_100018428();

      [v6 setText:v20];

      v21 = 0;
LABEL_25:
      [v6 setHidden:v21];
      [*&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView] setHidden:v21];

      return;
    case 1:
      if (!v10)
      {
        v17 = *&v1[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_localizer];
        v18 = 0x800000010001EB70;
        v19 = 0xD000000000000010;
LABEL_21:
        sub_10000EF0C(v19, v18);

        goto LABEL_22;
      }

      goto LABEL_22;
    case 0:

      v21 = 1;
      goto LABEL_25;
  }

LABEL_27:
  v24 = v4;
  sub_100018608();
  __break(1u);
}

void sub_100013074(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan;
  v5 = *(v2 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_hostSignpostSpan);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_10000D548(0, &unk_10002C640, ASCSignpostSpan_ptr);
    v6 = v5;
    v7 = a1;
    v8 = sub_100018528();

    if (v8)
    {
      return;
    }

    v5 = *(v2 + v4);
    if (v5)
    {
LABEL_5:
      v9 = *(v2 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      v14[4] = sub_10001768C;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_10001327C;
      v14[3] = &unk_100025538;
      v11 = _Block_copy(v14);
      v12 = v5;

      [v9 setViewRenderSpanProvider:v11];
      _Block_release(v11);

      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v13 = *(v2 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);

  [v13 setViewRenderSpanProvider:0];
}

uint64_t sub_100013220(void *a1)
{
  sub_10000D4AC(&qword_10002C0D0, &qword_10001C850);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001C7D0;
  *(v2 + 32) = a1;
  v3 = a1;
  return v2;
}

Class sub_10001327C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_10000D548(0, &unk_10002C640, ASCSignpostSpan_ptr);
  v4.super.isa = sub_100018498().super.isa;

  return v4.super.isa;
}

uint64_t sub_1000133D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v81 = sub_100018228();
  v3 = *(v81 - 8);
  v4 = v3[8];
  __chkstk_darwin(v81);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000181D8();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100018218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100018148();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D4AC(&qword_10002C600, &qword_10001CD08);
  v19 = *(sub_100018258() - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v59 = *(v19 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10001CB90;
  v80 = v2;
  v22 = *(v2 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_calloutLabel);
  v92 = sub_10000D548(0, &qword_10002C608, UILabel_ptr);
  v93 = &protocol witness table for UIView;
  v91 = v22;
  v23 = qword_10002BF68;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v60 = v21;
  v79 = v21 + v20;
  v25 = sub_100018178();
  v26 = sub_10000E764(v25, qword_10002CDC0);
  (*(*(v25 - 8) + 16))(v18, v26, v25);
  (*(v15 + 104))(v18, enum case for FontSource.useCase(_:), v14);
  v89 = sub_1000181B8();
  v90 = &protocol witness table for StaticDimension;
  sub_10000E700(&v88);
  *(&v86 + 1) = v14;
  v87 = &protocol witness table for FontSource;
  v27 = sub_10000E700(&v85);
  (*(v15 + 16))(v27, v18, v14);
  sub_1000181C8();
  (*(v15 + 8))(v18, v14);
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v77 = sub_10000D4AC(&qword_10002C610, &qword_10001CD10);
  v78 = *(v11 + 72);
  v28 = v11;
  v76 = *(v11 + 80);
  v65 = (v76 + 32) & ~v76;
  v29 = swift_allocObject();
  v75 = xmmword_10001C7C0;
  *(v29 + 16) = xmmword_10001C7C0;
  sub_100018208();
  v84 = v29;
  v73 = sub_100017560(&qword_10002C618, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10000D4AC(&qword_10002C620, &qword_10001CD18);
  v74 = sub_1000175A8();
  v30 = v61;
  v31 = v10;
  sub_100018558();
  v32 = v83;
  v33 = *(v83 + 104);
  v67 = v83 + 104;
  v68 = v33;
  v34 = v62;
  v35 = v82;
  (v33)(v62, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v82);
  v57 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v56 = v3[13];
  v66 = v3 + 13;
  v36 = v63;
  v37 = v81;
  v56(v63);
  sub_100018248();
  v71 = v3[1];
  v71(v36, v37);
  v70 = *(v32 + 8);
  v83 = v32 + 8;
  v70(v34, v35);
  v54 = *(v28 + 8);
  v69 = v28 + 8;
  v54(v30, v31);
  sub_10000E79C(&v85, &qword_10002C630, &unk_10001CD20);
  sub_100010C38(&v88);
  sub_100010C38(&v91);
  v58 = v3 + 1;
  v38 = *(v80 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_separatorView);
  v92 = type metadata accessor for SeparatorView();
  v93 = &protocol witness table for UIView;
  v91 = v38;
  v89 = &type metadata for Double;
  v90 = &protocol witness table for Double;
  v87 = 0;
  v88 = 0x4028000000000000;
  v85 = 0u;
  v86 = 0u;
  v55 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v68(v34);
  v39 = swift_allocObject();
  *(v39 + 16) = v75;
  v40 = v38;
  sub_100018208();
  v84 = v39;
  sub_100018558();
  v41 = v57;
  v42 = v81;
  v43 = v56;
  (v56)(v36, v57, v81);
  v44 = v59;
  v45 = v79;
  sub_100018248();
  v71(v36, v42);
  v46 = v54;
  v54(v30, v31);
  v47 = v82;
  v70(v34, v82);
  sub_10000E79C(&v85, &qword_10002C630, &unk_10001CD20);
  sub_100010C38(&v88);
  sub_100010C38(&v91);
  v79 = v45 + 2 * v44;
  v48 = *(v80 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
  v92 = sub_10000D548(0, &qword_10002C638, ASCLockupView_ptr);
  v93 = &protocol witness table for UIView;
  v91 = v48;
  v90 = &protocol witness table for Double;
  v89 = &type metadata for Double;
  v87 = &protocol witness table for Double;
  v88 = 0x4024000000000000;
  *(&v86 + 1) = &type metadata for Double;
  *&v85 = 0x4024000000000000;
  (v68)(v34, v55, v47);
  v49 = v81;
  v43(v36, v41, v81);
  v50 = swift_allocObject();
  *(v50 + 16) = v75;
  v51 = v48;
  sub_1000181F8();
  v84 = v50;
  sub_100018558();
  sub_100018248();
  v46(v30, v31);
  v71(v36, v49);
  v70(v34, v82);
  sub_10000E79C(&v85, &qword_10002C630, &unk_10001CD20);
  sub_100010C38(&v88);
  sub_100010C38(&v91);
  return sub_100018238();
}

id sub_1000144F0()
{
  v1 = v0;
  v2 = sub_100018088();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100018328();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = *(v0 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_lockupView);
  result = [v9 lockup];
  if (result)
  {
    v11 = result;
    v76 = v9;
    sub_10000D548(0, &unk_10002C590, NSObject_ptr);
    v12 = [v11 id];
    if (qword_10002BF70 != -1)
    {
      swift_once();
    }

    v13 = sub_100018528();

    if (v13)
    {
      if (qword_10002BF78 != -1)
      {
        swift_once();
      }

      v14 = sub_1000183F8();
      sub_10000E764(v14, qword_10002CDE0);
      sub_10000D4AC(&qword_10002C1B8, &qword_10001CAD8);
      v15 = *(sub_100018348() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      *(swift_allocObject() + 16) = xmmword_10001C7C0;
      sub_100018318();
      v79._countAndFlagsBits = 0xD00000000000002ALL;
      v79._object = 0x800000010001EA40;
      sub_100018308(v79);
      v18 = [v11 id];
      v78 = sub_10000D548(0, &unk_10002C5A0, ASCAdamID_ptr);
      v77[0] = v18;
      sub_1000182F8();
      sub_10000E79C(v77, &qword_10002C1C0, qword_10001CAE0);
      v80._object = 0x800000010001EA70;
      v80._countAndFlagsBits = 0xD000000000000017;
      sub_100018308(v80);
      sub_100018338();
      sub_100018398();
    }

    else
    {
      v19 = [v11 metrics];
      if (v19)
      {
        v20 = v19;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v22 = Strong;
          [Strong reportClickWithViewMetrics:v20];
        }
      }

      v23 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
      swift_beginAccess();
      v24 = *(v1 + v23);
      if (v24)
      {
        [v24 recordClickThroughImpressionWithDidInitiateDownload:0];
      }

      v75 = v6;
      if (qword_10002BF78 != -1)
      {
        swift_once();
      }

      v73 = v2;
      v25 = sub_1000183F8();
      sub_10000E764(v25, qword_10002CDE0);
      sub_10000D4AC(&qword_10002C1B8, &qword_10001CAD8);
      v26 = *(sub_100018348() - 8);
      v27 = *(v26 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      v74 = xmmword_10001C7C0;
      *(v29 + 16) = xmmword_10001C7C0;
      sub_100018318();
      v81._countAndFlagsBits = 0xD000000000000026;
      v81._object = 0x800000010001EA10;
      sub_100018308(v81);
      v30 = [v11 id];
      v78 = sub_10000D548(0, &unk_10002C5A0, ASCAdamID_ptr);
      v77[0] = v30;
      sub_1000182F8();
      sub_10000E79C(v77, &qword_10002C1C0, qword_10001CAE0);
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      sub_100018308(v82);
      sub_100018338();
      sub_100018398();

      v31 = sub_100016C7C(&_swiftEmptyArrayStorage);
      v32 = v76;
      v33 = [v76 campaignToken];
      if (v33)
      {
        v34 = v33;
        v35 = sub_100018458();
        v37 = v36;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v31;
        sub_1000166D0(v35, v37, 29795, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
        v31 = v77[0];
      }

      v39 = [v32 providerToken];
      if (v39)
      {
        v40 = v39;
        v41 = sub_100018458();
        v43 = v42;

        v44 = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v31;
        sub_1000166D0(v41, v43, 29808, 0xE200000000000000, v44);
      }

      v45 = [v11 id];
      v46 = [v11 kind];
      v47 = [v11 offer];
      if (v47)
      {
        v48 = [v47 flags];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0;
      }

      v72 = v3;
      v49 = objc_opt_self();
      isa = sub_100018408().super.isa;
      v71 = v11;
      v51 = [v49 queryParametersForLockup:v11 withBaseQueryParams:isa];

      if (v51)
      {
        v52 = sub_100018418();

        sub_100014F18(v52);

        v51 = sub_100018408().super.isa;
      }

      v53 = [v49 URLForLockupID:v45 ofKind:v46 offerFlags:v48 queryParameters:v51];

      sub_100018078();
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v54 = result;

        sub_100018068(v55);
        v57 = v56;
        sub_10000D4AC(&qword_10002C5B0, &qword_10001CCC8);
        inited = swift_initStackObject();
        *(inited + 16) = v74;
        *(inited + 32) = sub_100018458();
        *(inited + 40) = v59;
        sub_10000D4AC(&qword_10002C5B8, &qword_10001CCD0);
        v60 = swift_initStackObject();
        *(v60 + 16) = v74;
        *(v60 + 32) = sub_100018458();
        *(v60 + 40) = v61;
        v62 = [v76 storeSheetHostBundleID];
        v63 = v71;
        if (v62)
        {
          v64 = v62;
          v65 = sub_100018458();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        *(v60 + 48) = v65;
        *(v60 + 56) = v67;
        v68 = sub_100016D90(v60);
        swift_setDeallocating();
        sub_10000E79C(v60 + 32, &qword_10002C5C0, &qword_10001CCD8);
        *(inited + 72) = sub_10000D4AC(&qword_10002C5C8, &qword_10001CCE0);
        *(inited + 48) = v68;
        sub_100016EA4(inited);
        swift_setDeallocating();
        sub_10000E79C(inited + 32, &qword_10002C5D0, &qword_10001CCE8);
        v69 = sub_100018408().super.isa;

        [v54 openURL:v57 withOptions:v69];

        return (*(v72 + 8))(v75, v73);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_100014F18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000D4AC(&qword_10002C5D8, &qword_10001CCF0);
    v2 = sub_1000185C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_100016FB4(&v27, v29);
        sub_100016FB4(v29, v30);
        sub_100016FB4(v30, &v28);
        result = sub_100015C60(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100010C38(v12);
          result = sub_100016FB4(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_100016FB4(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000151B8()
{
  sub_10000D4AC(&qword_10002C578, &qword_10001CCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001C7C0;
  *(inited + 32) = 0x6E6F436567617375;
  v2 = inited + 32;
  *(inited + 40) = 0xEC00000074786574;
  v3 = *(v0 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant);
  if (v3 >= 3)
  {
    v9 = *(v0 + OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_variant);
    result = sub_100018608();
    __break(1u);
  }

  else
  {
    v4 = inited;
    v5 = **(&off_100025560 + v3);
    *(v4 + 48) = sub_100018458();
    *(v4 + 56) = v6;
    v7 = sub_100016C7C(v4);
    swift_setDeallocating();
    sub_10000E79C(v2, &qword_10002C580, &qword_10001CCB8);
    return v7;
  }

  return result;
}

id sub_100015424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v47 - v9;
  sub_1000184C8();
  sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10001C7C0;
  v11 = sub_100018458();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10000D4F4();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
  v14 = sub_100018538();
  sub_100018128();

  v15 = sub_100018088();
  v16 = *(*(v15 - 8) + 56);
  v49 = a1;
  v16(a1, 1, 1, v15);
  v17 = sub_100018458();
  v19 = v18;
  if (v17 == sub_100018458() && v19 == v20)
  {
    goto LABEL_3;
  }

  v21 = sub_1000185F8();

  if (v21)
  {
    goto LABEL_5;
  }

  v24 = sub_100018458();
  v26 = v25;
  if (v24 == sub_100018458() && v26 == v27)
  {
    goto LABEL_3;
  }

  v28 = sub_1000185F8();

  if (v28)
  {
    goto LABEL_5;
  }

  v29 = sub_100018458();
  v31 = v30;
  if (v29 == sub_100018458() && v31 == v32)
  {
LABEL_3:

    goto LABEL_5;
  }

  v33 = sub_1000185F8();

  if (v33)
  {
LABEL_5:
    v22 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
    swift_beginAccess();
    result = *(v2 + v22);
    if (result)
    {
      return [result recordClickThroughImpressionWithDidInitiateDownload:1];
    }

    return result;
  }

  v34 = sub_100018458();
  v36 = v35;
  if (v34 == sub_100018458() && v36 == v37)
  {
  }

  else
  {
    v38 = sub_1000185F8();

    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_adInteractionAttributor;
  swift_beginAccess();
  v40 = *(v2 + v39);
  if (v40)
  {
    swift_endAccess();
    v41 = [v40 processReengagement];
    v42 = v49;
    if (v41)
    {
      v43 = v41;
      sub_100018078();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    sub_10000E79C(v42, &qword_10002C1C8, &unk_10001CCA0);
    v16(v8, v44, 1, v15);
    v46 = v8;
    v45 = v48;
    sub_100015ABC(v46, v48);
  }

  else
  {
    v42 = v49;
    sub_10000E79C(v49, &qword_10002C1C8, &unk_10001CCA0);
    swift_endAccess();
    v45 = v48;
    v16(v48, 1, 1, v15);
  }

  return sub_100015ABC(v45, v42);
}

unint64_t sub_100015A28()
{
  result = qword_10002C560;
  if (!qword_10002C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C560);
  }

  return result;
}

NSString sub_100015A7C()
{
  result = sub_100018428();
  qword_10002CDF8 = result;
  return result;
}

uint64_t sub_100015ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D4AC(&qword_10002C1C8, &unk_10001CCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_100018638();
  sub_100018478();
  sub_100018478();
  v10 = sub_100018658();

  return sub_100015CD8(a1, a2, a3, a4, v10);
}

unint64_t sub_100015BCC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100018458();
  sub_100018638();
  sub_100018478();
  v4 = sub_100018658();

  return sub_100015DD8(a1, v4);
}

unint64_t sub_100015C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100018638();
  sub_100018478();
  v6 = sub_100018658();

  return sub_100015EDC(a1, a2, v6);
}

unint64_t sub_100015CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1000185F8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1000185F8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100015DD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100018458();
      v9 = v8;
      if (v7 == sub_100018458() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000185F8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100015EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000185F8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100015F94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D4AC(&qword_10002C658, &qword_10001CD38);
  v37 = a2;
  result = sub_1000185B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v39 = *v23;
      v25 = v23[3];
      v38 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_100018638();
      sub_100018478();
      sub_100018478();
      result = sub_100018658();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v24;
      v17[2] = v38;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100016264(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D4AC(&qword_10002C588, &qword_10001CCC0);
  v40 = a2;
  result = sub_1000185B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_100018638();
      sub_100018478();
      result = sub_100018658();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100016524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_100015B2C(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_100015F94(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_100015B2C(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_100018618();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100016858();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 32 * v15);
  *v30 = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1000166D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100015C60(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100016264(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100015C60(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_100018618();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000169E0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100016858()
{
  v1 = v0;
  sub_10000D4AC(&qword_10002C658, &qword_10001CD38);
  v2 = *v0;
  v3 = sub_1000185A8();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1000169E0()
{
  v1 = v0;
  sub_10000D4AC(&qword_10002C588, &qword_10001CCC0);
  v2 = *v0;
  v3 = sub_1000185A8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t sub_100016B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D4AC(&qword_10002C658, &qword_10001CD38);
    v3 = sub_1000185C8();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100015B2C(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100016C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D4AC(&qword_10002C588, &qword_10001CCC0);
    v3 = sub_1000185C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100015C60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100016D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D4AC(&qword_10002C5E0, &qword_10001CCF8);
    v3 = sub_1000185C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100015C60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100016EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D4AC(&qword_10002C5D8, &qword_10001CCF0);
    v3 = sub_1000185C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016FC4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100015C60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016FB4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_100016FB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100016FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D4AC(&qword_10002C5D0, &qword_10001CCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100017034()
{
  sub_1000184B8();
  sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001C7C0;
  v2 = v0;
  v3 = [v2 description];
  v4 = sub_100018458();
  v6 = v5;

  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10000D4F4();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
  v7 = sub_100018538();
  sub_100018128();
}

void sub_100017154()
{
  sub_1000184B8();
  sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10001C7C0;
  v2 = v0;
  v3 = [v2 description];
  v4 = sub_100018458();
  v6 = v5;

  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10000D4F4();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
  v7 = sub_100018538();
  sub_100018128();

  [*&v2[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_loadLockupPromise] finishWithSuccess];
  sub_100012B60();
}

void sub_10001727C()
{
  v1 = v0;
  sub_1000184D8();
  sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001CB00;
  swift_getErrorValue();
  v3 = sub_100018628();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000D4F4();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = v1;
  v8 = [v7 description];
  v9 = sub_100018458();
  v11 = v10;

  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v9;
  *(v2 + 80) = v11;
  sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
  v12 = sub_100018538();
  sub_100018128();

  v13 = *&v7[OBJC_IVAR____TtC23AppStoreOverlaysService24ServiceOverlayLockupView_loadLockupPromise];
  v14 = sub_100018048();
  [v13 finishWithError:v14];
}

id sub_100017404()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong activity], v1, (result = v2) == 0))
  {
    sub_1000184D8();
    sub_10000D4AC(&qword_10002C0C0, &qword_10001C848);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10001C7C0;
    swift_unknownObjectWeakLoadStrong();
    sub_10000D4AC(&qword_10002C5E8, &qword_10001CD00);
    v5 = sub_100018468();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10000D4F4();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10000D548(0, &qword_10002C570, OS_os_log_ptr);
    v8 = sub_100018538();
    sub_100018128();

    return [objc_allocWithZone(ASCMetricsActivity) init];
  }

  return result;
}

uint64_t sub_100017560(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000175A8()
{
  result = qword_10002C628;
  if (!qword_10002C628)
  {
    sub_10001760C(&qword_10002C620, &qword_10001CD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C628);
  }

  return result;
}

uint64_t sub_10001760C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100017654()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100017790(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to record install attribution because not all required parameters were provided: configuration=%{private}@ hostBundleId=%{private}@", &v3, 0x16u);
}

void sub_1000178FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Tried to use an app clip overlay configuration outside of an app clip: %@", &v2, 0xCu);
}

void sub_100017BE4(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = 138543618;
  v7 = WeakRetained;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ posted %{public}@ metrics", &v6, 0x16u);
}

void sub_100017C98(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v7 = AMSLogableError();
  v8 = 138543874;
  v9 = WeakRetained;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@ could not post %{public}@ metrics, reason: %{public}@", &v8, 0x20u);
}

void sub_100017D6C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Did finishing dismissing lockup overlay with error: %@", &v1, 0xCu);
}

void sub_100017DEC(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Start executing dismiss overlay operation: %@", &v1, 0xCu);
}

void sub_100017E6C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Finish dismiss overlay operation: %@", &v1, 0xCu);
}

void sub_100017F14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Did finishing presenting lockup overlay with error: %@", &v2, 0xCu);
}