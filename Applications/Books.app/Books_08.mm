void sub_1001C5FD0(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "BKAppLaunchJaliscoUpdate", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C6098;
  v3[3] = &unk_100A03788;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  os_activity_apply(v2, v3);
}

void sub_1001C6098(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C6144;
  v3[3] = &unk_100A08EF8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 updatePolitely:1 reason:7 completionWithError:v3];
}

void sub_1001C6144(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:BLJaliscoDAAPClientErrorDomain])
  {
    v7 = [v5 code];

    if (v7 == 5)
    {
      v8 = sub_1000122C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100793B40(a2, v8);
      }

      v9 = +[BKAuthenticationAlertRequest sharedRequester];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001C6328;
      v13[3] = &unk_100A04160;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      [v9 requestAuthenticationPolitely:1 completion:v13];

      v10 = v14;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = sub_1000122C0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated BDSJaliscoDAAPClient on app launch : %{BOOL}d", buf, 8u);
  }

  v12 = objc_retainBlock(*(a1 + 40));
  v10 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }

LABEL_11:
}

void sub_1001C6328(uint64_t a1, int a2)
{
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001C640C;
    v7[3] = &unk_100A03CA0;
    v3 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v3 updatePolitely:1 reason:7 completion:v7];
    v4 = v8;
  }

  else
  {
    v5 = sub_1000122C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100793BBC(v5);
    }

    v6 = objc_retainBlock(*(a1 + 40));
    v4 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

void sub_1001C640C(uint64_t a1, int a2)
{
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "after auth retry Updated BDSJaliscoDAAPClient on app launch : %{BOOL}d", v7, 8u);
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
  }
}

void sub_1001C64E0(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) preLaunchQueue];
  [v2 setQosClass:33];

  v3 = [*(a1 + 40) librarySetupQueue];
  [v3 setQosClass:33];

  v4 = +[JSABridge sharedInstance];
  [v4 startProvisioningPackage];

  v5 = BCSignpostLaunch();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "Hold at launch", "", v8, 2u);
  }
}

void sub_1001C65C4(uint64_t a1)
{
  v2 = objc_alloc_init(BKOfflineCacheLoadingController);
  [*(a1 + 32) setOfflineCacheLoadingController:v2];

  kdebug_trace();
  v3 = [*(a1 + 32) offlineCacheLoadingController];
  [v3 prewarmForLaunchIfNeeded];

  kdebug_trace();
  v4 = +[BUBag defaultBag];
  v5 = +[BURestrictionsProvider sharedInstance];
  v7 = +[NSFileManager defaultManager];
  v6 = [v7 ubiquityIdentityToken];
}

id sub_1001C66C4(uint64_t a1)
{
  [*(a1 + 32) registerReadingSettings];

  return +[REBookReaderModuleFactory prewarm];
}

void sub_1001C66F8(id a1)
{
  v1 = BCSignpostLaunch();
  v2 = os_signpost_id_generate(v1);

  v3 = BCSignpostLaunch();
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "User Agent", "", buf, 2u);
  }

  v5 = +[JSADevice userAgent];
  v6 = BCSignpostLaunch();
  v7 = v6;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v2, "User Agent", "", v8, 2u);
  }
}

id sub_1001C69A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [UIColor colorNamed:@"BrandColor" inBundle:v7 compatibleWithTraitCollection:0];
  [v6 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

  v9 = objc_alloc_init(NSMutableParagraphStyle);
  [v9 setAlignment:1];
  [v9 setLineSpacing:4.0];
  [v6 setObject:v9 forKeyedSubscript:NSParagraphStyleAttributeName];
  if (v4)
  {
    v10 = [v7 pathForResource:v4 ofType:0];
    v11 = [NSURL fileURLWithPath:v10];
    [v6 setObject:v11 forKeyedSubscript:NSLinkAttributeName];
  }

  v12 = [NSAttributedString alloc];
  v13 = [v6 copy];
  v14 = [v12 initWithString:v5 attributes:v13];

  return v14;
}

void sub_1001C6E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C6EB0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C6F7C;
  v3[3] = &unk_100A03C78;
  v3[4] = WeakRetained;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1001C7428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1001C7444(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = +[BAEventReporter sharedReporter];
    v4 = [v6 analyticsController];
    v5 = [v4 applicationTracker];
    [v3 emitWidgetEngagementEventWithTracker:v5 widgetData:*(a1 + 32)];

    WeakRetained = v6;
  }
}

uint64_t sub_1001C76E8(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) librarySetupQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C77B0;
  v4[3] = &unk_100A033C8;
  v4[4] = *(a1 + 32);
  [v2 addOperationWithBlock:v4];

  return kdebug_trace();
}

void sub_1001C77B0(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceCenter];
  v3 = [*(a1 + 32) libraryManager];
  [v2 setupServicesWithLibraryManager:v3 appDelegate:*(a1 + 32)];

  +[BAEventReporter setupLibraryAnalyticsDataProvider];
  kdebug_trace();
  [*(a1 + 32) _setupUserEngagement];
  kdebug_trace();
  v4 = [*(a1 + 32) startupQueue];
  [v4 activate];
}

void sub_1001C79C4(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.books.plist.changed", 0, 0, 0);
}

void sub_1001C7A08(uint64_t a1)
{
  v2 = [*(a1 + 32) appLaunchCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C7AB0;
  v3[3] = &unk_100A033C8;
  v4 = *(a1 + 40);
  [v2 appLaunchCoordinatorPerformWhenLaunched:@"plistImporting cleanUpImportedFiles" block:v3];
}

id sub_1001C7AB8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCurrentQueueGeneration:a2];
  v4 = *(a1 + 40);

  return [v4 setCurrentQueueGeneration:a2];
}

id sub_1001C7B00(uint64_t a1)
{
  [*(a1 + 32) reload];
  [*(a1 + 40) reload];
  [*(a1 + 48) reload];
  v2 = *(a1 + 56);

  return [v2 reload];
}

void sub_1001C7B4C(uint64_t a1)
{
  v1 = [*(a1 + 32) ubiquitousDocumentsController];
  [v1 migrateBooksToUbiquityIfNeededWithCompletion:0];
}

void sub_1001C7B94(id *a1, int a2)
{
  [a1[4] reload];
  if (a2 && (([a1[5] hasDigestChangedSinceFetch] & 1) != 0 || objc_msgSend(a1[6], "hasDigestChangedSinceFetch")))
  {
    [a1[5] reload];
    [a1[6] reload];
    v4 = +[BKLibraryManager defaultManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001C7C8C;
    v5[3] = &unk_100A035D0;
    objc_copyWeak(&v6, a1 + 7);
    [v4 addCustomOperationBlock:v5];

    objc_destroyWeak(&v6);
  }
}

void sub_1001C7C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained ubiquitousDocumentsController];
  [v1 migrateBooksToUbiquityIfNeededWithCompletion:0];
}

BLDownloadQueueUIManagerProtocol *__cdecl sub_1001C7CF0(id a1)
{
  v1 = +[JSABridge sharedInstance];
  v2 = [v1 windowManager];

  return v2;
}

void sub_1001C8198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 - 120));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_1001C820C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationWillEnterForeground:*(a1 + 32)];
}

void sub_1001C825C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationDidEnterBackground:*(a1 + 32)];
}

void sub_1001C82AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationWillResignActive:*(a1 + 32)];
}

void sub_1001C82FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationDidBecomeActive:*(a1 + 32)];
}

void sub_1001C834C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationWillResignFrontmost:*(a1 + 32)];
}

void sub_1001C839C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applicationDidBecomeFrontmost:*(a1 + 32)];
}

id sub_1001C83EC(uint64_t a1)
{
  [AEAssetEngine setAppInfoMgr:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [AEAssetEngine setStoreMgr:v2];
}

void sub_1001C858C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1001C85BC(uint64_t a1)
{
  v2 = sub_1000122C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100793C38();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalConditionSatisfied:14];
}

id sub_1001C861C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained signalConditionSatisfied:14];

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void sub_1001C8978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C899C(uint64_t a1)
{
  [*(a1 + 32) setupAEAssetFactory];
  v2 = [*(a1 + 32) sceneManager];
  if ([v2 shouldOpenLastBook])
  {
  }

  else
  {
    v3 = [*(a1 + 32) sceneManager];
    v4 = [v3 primarySceneController];
    v5 = [v4 willAttemptBookReopen];

    if (!v5)
    {
      v7 = [*(a1 + 32) appLaunchCoordinator];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1001C8AF4;
      v8[3] = &unk_100A038D0;
      v8[4] = *(a1 + 32);
      [v7 appLaunchCoordinatorOnConditionMask:512 blockID:@"prewarm AEPluginRegistry sharedResources" performBlock:v8];

      return;
    }
  }

  v6 = BCCurrentBookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will attempt to open previously open book.  Prewarming AEPlugingRegistry.", buf, 2u);
  }

  [*(a1 + 32) _prewarmAEPluginRegistry];
}

void sub_1001C8AFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearWidgetImageCacheIfNeeded];
}

void sub_1001C97DC(id a1, int64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = BooksSiriLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100793CD4();
      }
    }

    else
    {
      if (a2 != 3)
      {
        return;
      }

      v2 = BooksSiriLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Siri is authorized", v3, 2u);
      }
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v2 = BooksSiriLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100793CA0();
    }
  }

  else
  {
    v2 = BooksSiriLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100793C6C();
    }
  }
}

void sub_1001C98D8(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setDownloadProgressCenter:v2];

  v11 = [*(a1 + 32) sceneManager];
  v3 = [*(a1 + 32) libraryManager];
  v4 = [*(a1 + 32) libraryItemStateProvider];
  v5 = [*(a1 + 32) downloadProgressCenter];
  v6 = [*(a1 + 32) serviceCenter];
  v7 = [*(a1 + 32) storeController];
  v8 = [*(a1 + 32) engagementManager];
  v9 = [*(a1 + 32) jetActionHandler];
  v10 = [*(a1 + 32) pageHostingControllerProvider];
  [v11 startJavascriptAppWithLibrary:v3 libraryItemStateProvider:v4 downloadProgressCenter:v5 serviceCenter:v6 storeController:v7 engagementManager:v8 jetActionHandler:v9 pageHostingControllerProvider:v10];
}

void sub_1001C9A20(uint64_t a1)
{
  v7 = [*(a1 + 32) objectGraphHost];
  v2 = [*(a1 + 32) libraryItemStateProvider];
  v3 = [*(a1 + 32) downloadProgressCenter];
  v4 = [*(a1 + 32) sceneManager];
  v5 = [v4 jsaLibraryManager];
  v6 = [*(a1 + 32) serviceCenter];
  [v7 resolveAsyncDependenciesWithLibraryItemStateProvider:v2 downloadProgressCenter:v3 assetActionHandler:v5 serviceCenter:v6];
}

uint64_t sub_1001C9AF4(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) sq_kickoffFinishLaunching];

  return kdebug_trace();
}

uint64_t sub_1001C9B60(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  [v2 migrateLibraryIfNeeded];

  return kdebug_trace();
}

void sub_1001C9BDC(id a1)
{
  kdebug_trace();
  +[BLJaliscoDAAPClient workaround];

  kdebug_trace();
}

uint64_t sub_1001C9C40(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) sharedAnnotationProvider];
  [v2 loadCoreData];

  v3 = [*(a1 + 32) sharedAnnotationProvider];
  [v3 upgradeAnnotationsIfNeeded];

  return kdebug_trace();
}

uint64_t sub_1001C9CD4(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) mergeSyncSidecar];

  return kdebug_trace();
}

uint64_t sub_1001C9D40(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  [v2 cleanupDefaultCollections];

  return kdebug_trace();
}

uint64_t sub_1001C9DBC(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 collectionController];
  [v3 setEnableCloudMerge:1];

  v4 = [*(a1 + 32) sharedAnnotationProvider];
  v5 = [*(a1 + 32) libraryManager];
  v6 = [v5 assetDetailsManager];
  [v6 setAnnotationProvider:v4];

  v7 = [*(a1 + 32) libraryManager];
  v8 = [v7 assetDetailsManager];
  [v8 setEnableCloudMerge:1];

  return kdebug_trace();
}

uint64_t sub_1001C9EC0(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  [v2 bootstrapSamplesCollectionIfNeeded];

  return kdebug_trace();
}

uint64_t sub_1001C9F3C(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  [v2 checkDatabaseIntegrity];

  return kdebug_trace();
}

void sub_1001C9FB8(uint64_t a1)
{
  kdebug_trace();
  v3 = +[BCBookReadingTimeTracker sharedInstance];
  v2 = [*(a1 + 32) libraryManager];
  [v3 setLibraryDelegate:v2];

  [v3 scrubRecents];
  kdebug_trace();
}

void sub_1001CA068(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001CA0F0;
  v2[3] = &unk_100A03440;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

uint64_t sub_1001CA0F0(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) _didFinishUpgradingWithOptions:*(a1 + 40)];

  return kdebug_trace();
}

void sub_1001CA15C(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 priceManager];

  [v3 invalidate:0];
  kdebug_trace();
}

void sub_1001CA208(id a1)
{
  BKAppDelegate.enableMetricsInspectorOnDebugMode()();
  v1 = +[BCAppKitBundleLoader appKitBundleClass];

  [v1 setAllowsAutomaticWindowTabbing:0];
}

void sub_1001CA240(uint64_t a1)
{
  v2 = [BKAppAccountActionHandler alloc];
  v3 = [*(a1 + 32) sceneManager];
  v4 = [(BKAppAccountActionHandler *)v2 initWithSceneManager:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 200);
  *(v5 + 200) = v4;

  v7 = [BKAppGlobalActionHandler alloc];
  v8 = [*(a1 + 32) sceneManager];
  v9 = [(BKAppGlobalActionHandler *)v7 initWithSceneManager:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 208);
  *(v10 + 208) = v9;

  [*(*(a1 + 32) + 208) setDelegate:?];
  if (+[JSADevice isInternalBuild])
  {
    v12 = [BKAppInternalActionHandler alloc];
    v13 = *(a1 + 40);
    v17 = [*(a1 + 32) sceneManager];
    v14 = [(BKAppInternalActionHandler *)v12 initWithApplication:v13 sceneManager:v17];
    v15 = *(a1 + 32);
    v16 = *(v15 + 216);
    *(v15 + 216) = v14;
  }
}

void sub_1001CA38C(uint64_t a1)
{
  v2 = [BKAudiobookController alloc];
  v3 = +[BKAudiobookPlayer sharedInstance];
  v4 = +[BKAudiobookSleepTimer defaultTimer];
  v5 = +[BUBag defaultBag];
  v6 = +[JSABridge sharedInstance];
  v7 = [(BKAudiobookController *)v2 initWithPlayer:v3 sleepTimer:v4 bag:v5 bridge:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 224);
  *(v8 + 224) = v7;

  [*(*(a1 + 32) + 224) setDelegate:?];
  v10 = +[JSAMetricsController shared];
  [v10 startSubmissionIfAllowed];

  v11 = [*(a1 + 32) engagementManager];
  [v11 reportAppOpenEvent];

  v12 = [*(a1 + 32) containerHost];
  v13 = [v12 bridgedResolver];

  v14 = [v13 resolveClass:objc_opt_class()];
  v15 = *(a1 + 32);
  v16 = *(v15 + 320);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001CA55C;
  v18[3] = &unk_100A03440;
  v18[4] = v15;
  v19 = v14;
  v17 = v14;
  dispatch_async(v16, v18);
}

void sub_1001CA55C(uint64_t a1)
{
  v2 = [*(a1 + 32) engagementManager];
  [v2 setupSessionDonor];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) libraryManager];
  [v3 setupWithLibraryManager:v4];

  v5 = [*(a1 + 32) engagementManager];
  [v5 setupPersonalizationEventDonor:*(a1 + 40)];
}

void sub_1001CA5F0(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3 = [*(a1 + 32) workloopUtilityQueue];
  dispatch_after(v2, v3, &stru_100A0AF70);
}

void sub_1001CA664(id a1)
{
  v2 = +[JSABridge sharedInstance];
  v1 = [v2 currentPackage];
  [v1 startEviction];
}

void sub_1001CA6CC(uint64_t a1)
{
  v1 = [*(a1 + 32) bkStartupTaskManager];
  [v1 startAllTasksInPhase:2];
}

void sub_1001CABAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CABD0(id a1)
{
  v3[0] = AEAudioBookForceAudiobookPlayIfCurrentAsset;
  v3[1] = @"BKBookPresentWithoutAnimations";
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v3[2] = AEAudiobookOptionsShouldBeginPlaybackInBackground;
  v4[2] = &__kCFBooleanTrue;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_100AF7848;
  qword_100AF7848 = v1;
}

void sub_1001CAC80(uint64_t a1)
{
  if ([*(*(*(a1 + 48) + 8) + 40) length])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CAE38;
    v10[3] = &unk_100A05A78;
    v10[4] = *(a1 + 32);
    v7 = *(a1 + 40);
    v2 = v7;
    v11 = v7;
    v3 = objc_retainBlock(v10);
    if (v3)
    {
      if (+[NSThread isMainThread])
      {
        (v3[2])(v3);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001CB230;
        block[3] = &unk_100A03920;
        v9 = v3;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  else
  {
    v4 = BooksSiriLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100793D30();
    }

    v5 = objc_retainBlock(*(a1 + 40));
    if (v5)
    {
      v6 = [[INPlayMediaIntentResponse alloc] initWithCode:6 userActivity:0];
      v5[2](v5, v6);
    }
  }
}

void sub_1001CAE38(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CAEEC;
  v5[3] = &unk_100A0AFE0;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 requestPrimaryScene:v5];
}

void sub_1001CAEEC(uint64_t a1, void *a2)
{
  v3 = [a2 newShowURLTransaction];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001CB034;
  v13[3] = &unk_100A03CF0;
  v13[4] = *(a1 + 48);
  [v3 whenCancelled:v13];
  v4 = [*(a1 + 32) sceneManager];
  v5 = [v4 bookPresenter];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(v7 + 8) + 40);
  v9 = qword_100AF7848;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CB0E4;
  v10[3] = &unk_100A0AFB8;
  v12 = v7;
  v11 = v6;
  [v5 showAssetWithTransaction:v3 assetID:v8 location:0 options:v9 completion:v10];
}

void sub_1001CB034(uint64_t a1)
{
  v2 = BooksSiriLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = 138477827;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Playback tx cancelled for assetID:%{private}@", &v4, 0xCu);
  }
}

void sub_1001CB0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BooksSiriLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100793D64(v4, v6);
    }

    v7 = objc_retainBlock(*(a1 + 32));
    if (v7)
    {
      v8 = 6;
LABEL_10:
      v10 = [[INPlayMediaIntentResponse alloc] initWithCode:v8 userActivity:0];
      v7[2](v7, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v11 = 138477827;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Playback succeeded for assetID:%{private}@", &v11, 0xCu);
    }

    v7 = objc_retainBlock(*(a1 + 32));
    if (v7)
    {
      v8 = 4;
      goto LABEL_10;
    }
  }
}

void sub_1001CB240(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [*(a1 + 32) identifier];
    v9 = [NSURL URLWithString:v4];

    v5 = [v9 bu_assetIDFromURL];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001CB398;
    v11[3] = &unk_100A0B030;
    v11[4] = *(a1 + 40);
    *v10 = *(a1 + 48);
    v8 = v10[0];
    v12 = *v10;
    [BKRecentBooksProvider recentBooksAssetIDs:v11];
  }
}

void sub_1001CB398(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CB458;
  block[3] = &unk_100A09AA8;
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1001CB458(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 40) libraryAssetProvider];
        v9 = [v8 libraryAssetOnMainQueueWithAssetID:v7];

        if ([v9 isAudiobook] && ((objc_msgSend(v9, "streamable") & 1) != 0 || objc_msgSend(v9, "isLocal")))
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
          v10 = BooksSiriLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138477827;
            v18 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current audiobook assetID:%{private}@", buf, 0xCu);
          }

          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return (*(*(a1 + 48) + 16))();
}

void sub_1001CB81C(id *a1)
{
  v2 = [a1[4] sceneManager];
  v3 = a1 + 5;
  v4 = [a1[5] type];
  v5 = [v4 isEqual:@"com.apple.iBooks.openStoreSearch"];

  if (v5)
  {
    v6 = sub_1000122C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Performing shortcut: Search store", buf, 2u);
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001CBCF0;
    v36[3] = &unk_100A0B080;
    v37 = v2;
    v38 = a1[6];
    [v37 requestPrimaryScene:v36];

    v7 = v37;
  }

  else
  {
    v8 = [*v3 type];
    v9 = [v8 isEqual:@"com.apple.iBooks.assetReading"];

    v10 = sub_1000122C0();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Performing shortcut: Read book", buf, 2u);
      }

      objc_opt_class();
      v12 = [*v3 userInfo];
      v13 = [v12 objectForKeyedSubscript:@"assetID"];
      v7 = BUDynamicCast();

      if ([v7 length])
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1001CBE4C;
        v32[3] = &unk_100A0B0A8;
        v14 = v2;
        v33 = v14;
        v15 = v7;
        v34 = v15;
        v35 = a1[6];
        v16 = objc_retainBlock(v32);
        v17 = [v14 sceneInfoPresentingAssetID:v15];
        v18 = BCSceneLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v19)
          {
            *buf = 138412290;
            v40 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing shortcut: Requesting scene with assetID=%@", buf, 0xCu);
          }

          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1001CBF90;
          v29[3] = &unk_100A0B0D0;
          v20 = &v31;
          v31 = v16;
          v30 = v17;
          v21 = v16;
          [v14 requestSceneWithAssetID:v15 completion:v29];
        }

        else
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Performing shortcut: Requesting primary scene", buf, 2u);
          }

          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001CBFEC;
          v27[3] = &unk_100A09DC0;
          v20 = &v28;
          v28 = v16;
          v26 = v16;
          [v14 requestPrimaryScene:v27];
        }

        v25 = v33;
      }

      else
      {
        v23 = sub_1000122C0();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100793E78();
        }

        v24 = objc_retainBlock(a1[6]);
        v25 = v24;
        if (v24)
        {
          (*(v24 + 2))(v24, 0);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100793DDC(a1 + 5, v11);
      }

      v22 = objc_retainBlock(a1[6]);
      v7 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, 0);
      }
    }
  }
}

void sub_1001CBCF0(uint64_t a1, void *a2)
{
  v3 = [a2 newShowURLTransaction];
  v4 = [*(a1 + 32) bookPresenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CBDD4;
  v6[3] = &unk_100A049A0;
  v7 = *(a1 + 32);
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 closeAllPresentersForSingleSceneWithTransaction:v5 animated:0 completion:v6];
}

void sub_1001CBDD4(uint64_t a1)
{
  v2 = [*(a1 + 32) storePresenter];
  [v2 showStoreSearchWithTransaction:*(a1 + 40)];

  v3 = objc_retainBlock(*(a1 + 48));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1);
    v3 = v4;
  }
}

void sub_1001CBE4C(uint64_t a1, void *a2)
{
  v3 = [a2 newShowAssetTransaction];
  v4 = [*(a1 + 32) bookPresenter];
  v5 = *(a1 + 40);
  v10[0] = @"BKBookPresentingForceLargeCover";
  v10[1] = AEAudiobookOptionsShouldNotAutoplayKey;
  v11[0] = &__kCFBooleanTrue;
  v11[1] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 showAssetWithTransaction:v3 assetID:v5 location:0 options:v6 completion:0];

  v7 = [v3 synchronizer];

  [v7 waitForCompletionWithTimeout:0.5];
  v8 = objc_retainBlock(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 1);
  }
}

void sub_1001CBF90(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) sceneController];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1001CC078(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if ([a1 caseInsensitiveCompare:@"ibooks"])
  {
    return 0xFFFFFFFFLL;
  }

  return 3;
}

void sub_1001CC150(uint64_t a1)
{
  v2 = BCSignpostLibrary();
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Post-Library Reload", "", buf, 2u);
  }

  v6 = sub_1000122C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Running Post-Library Reload launch jobs", buf, 2u);
  }

  objc_initWeak(&location, *(a1 + 32));
  v7 = [BKLibraryAssetModificationDateManager alloc];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) sharedAnnotationProvider];
  v10 = [v7 initWithLibraryManager:v8 annotationProvider:v9];
  [*(a1 + 32) setLibraryAssetModificationDateManager:v10];

  v11 = [[BKLibraryAssetPostProcessor alloc] initWithLibraryManager:*(a1 + 40)];
  [*(a1 + 32) setLibraryAssetPostProcessor:v11];

  v12 = dispatch_time(0, 5000000000);
  v13 = [*(a1 + 32) workloopUtilityQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CC8B4;
  block[3] = &unk_100A035D0;
  objc_copyWeak(&v49, &location);
  dispatch_after(v12, v13, block);

  v14 = [*(a1 + 32) libraryAssetIsNewManager];
  [v14 updateStaleEpubIDs];

  v15 = [*(a1 + 32) libraryAssetIsNewManager];
  [v15 resetIsNewIfNeeded];

  v16 = [*(a1 + 32) libraryAssetIsNewManager];
  [v16 migrateAudiobookProgressIfNeeded];

  [*(a1 + 32) importMigratedBooks];
  v17 = [*(a1 + 32) sharedAnnotationProvider];
  [BKBookProgressController preWarmWithAnnotationProvider:v17];

  v18 = [*(a1 + 32) mainLibrary];
  v19 = [*(a1 + 32) sharedAnnotationProvider];
  [BKApplicationShortcutController preWarmWithLibrary:v18 annotationProvider:v19];

  v20 = [*(a1 + 32) ubiquityStatusMonitor];
  [v20 restartObserving];

  v21 = [*(a1 + 32) liverpoolStatusMonitor];
  [v21 restartObserving];

  v22 = sub_1000122C0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [*(a1 + 32) liverpoolStatusMonitor];
    v24 = [v23 isCloudKitEnabled];
    v25 = "NO";
    if (v24)
    {
      v25 = "YES";
    }

    *buf = 136315138;
    v52 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "DidFinishUpgrading: Is user opted in: %s", buf, 0xCu);
  }

  [*(a1 + 32) _startObservingNotifications];
  v26 = [BUCoalescingCallBlock alloc];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001CC90C;
  v46[3] = &unk_100A04820;
  objc_copyWeak(&v47, &location);
  v27 = [v26 initWithNotifyBlock:v46 blockDescription:@"BKAppDelegate"];
  v28 = *(a1 + 32);
  v29 = *(v28 + 256);
  *(v28 + 256) = v27;

  [*(*(a1 + 32) + 256) setCoalescingDelay:1.0];
  [*(a1 + 32) _signalEnableSyncCheck];
  +[BCCloudKitController registerForSecureNotifications];
  v30 = *(a1 + 32);
  v31 = +[BKLibraryAssetStatusController sharedController];
  [v31 setStoreDelegate:v30];

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001CC988;
  v45[3] = &unk_100A033C8;
  v45[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v45);
  v32 = +[BLJaliscoDAAPClient sharedClient];
  [v32 setDelegate:*(a1 + 32)];
  +[BKLibraryIndexer setup];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001CCA24;
  v44[3] = &unk_100A033C8;
  v44[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v44);

  v33 = +[BKLibraryFileSizeManager sharedInstance];
  [v33 purgeUnusedCacheEntries];

  [*(a1 + 32) setFinishedAssetRemovalThreshold:86400.0];
  v34 = +[NSUserDefaults standardUserDefaults];
  v35 = [v34 BOOLForKey:@"BKLibraryFinishedAssetForceEarlyThreshold"];

  if (v35)
  {
    [*(a1 + 32) setFinishedAssetRemovalThreshold:10.0];
  }

  v36 = sub_1000122C0();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) finishedAssetRemovalThreshold];
    *buf = 134217984;
    v52 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Finished asset removal threshhold is %f", buf, 0xCu);
  }

  v38 = [BKFinishedAssetManager alloc];
  v39 = [*(a1 + 32) libraryManager];
  v40 = [(BKFinishedAssetManager *)v38 initWithLibraryManager:v39];
  [*(a1 + 32) setFinishedAssetManager:v40];

  [*(a1 + 40) updateMostRecentPurchaseDateCacheFromLibrary];
  v41 = v5;
  v42 = v41;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v3, "Post-Library Reload", "", buf, 2u);
  }

  v43 = sub_1000122C0();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Completed all Post-Library Reload launch jobs", buf, 2u);
  }

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

void sub_1001CC858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 152));
  _Unwind_Resume(a1);
}

void sub_1001CC8B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained libraryAssetPostProcessor];
  [v1 performPostProcessing];
}

void sub_1001CC90C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateEnableSync];

  v6 = objc_retainBlock(v3);
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

void sub_1001CC988(uint64_t a1)
{
  v2 = [*(a1 + 32) storeController];
  [v2 startAllowingRefreshUpdateCount];

  v3 = [*(a1 + 32) storeController];
  [v3 refreshUpdateCountAsync];

  v4 = [*(a1 + 32) sceneManager];
  [v4 saveStateClosing:0];

  v5 = [*(a1 + 32) bookletMigrationManager];
  [v5 migrateIfNeeded];
}

id sub_1001CCA24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CCAA8;
  v4[3] = &unk_100A033C8;
  v4[4] = v1;
  return [v2 appLaunchCoordinatorPerformWhenLaunched:@"startIndexing library" block:v4];
}

void sub_1001CCAA8(uint64_t a1)
{
  v2 = dispatch_time(0, 10000000000);
  v3 = [*(a1 + 32) workloopUtilityQueue];
  dispatch_after(v2, v3, &stru_100A0B0F0);
}

void sub_1001CCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

id sub_1001CCEB4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1001CCEF0(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = sub_1000122C0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Library Reload: Extended launch completed. Starting library reload in 1s.", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    v3 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CCFEC;
    block[3] = &unk_100A03CF0;
    block[4] = *(a1 + 40);
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

void sub_1001CCFEC(uint64_t a1)
{
  v4 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
  if (v4)
  {
    v4[2]();
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1001CD064(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v2 = sub_1000122C0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Library Reload: Launched from CarPlay. Starting library reload right away.", v7, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    v3 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_1001CD134(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Library Reload: applicationState after delay: %ld", &v10, 0xCu);
  }

  if (v3 == 2 && (*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = sub_1000122C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Library Reload: Launched in background. Starting library reload right away.", &v10, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1001CD2AC(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = sub_1000122C0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100793EAC(a1, v2);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = objc_retainBlock(*(*(*(a1 + 48) + 8) + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_1001CD35C(id a1)
{
  v1 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v1 releaseAssertionForIdentifier:@"kAppLaunchBackgroundTaskIdentifier"];
}

void sub_1001CD3AC(uint64_t a1)
{
  v4 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
  if (v4)
  {
    v4[2]();
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1001CD424(uint64_t a1)
{
  v4 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
  if (v4)
  {
    v4[2]();
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1001CD6CC(id a1)
{
  +[AETestDriver prewarm];

  +[BKTestDriver prewarm];
}

void sub_1001CD704(uint64_t a1)
{
  v1 = [*(a1 + 32) storeController];
  [v1 downloadQueueReload];
}

void sub_1001CDAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001CDABC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained appLaunchCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CDB5C;
  v3[3] = &unk_100A038D0;
  v3[4] = WeakRetained;
  [v2 appLaunchCoordinatorOnConditionMask:128 blockID:@"_showMainViewControllerOrWelcomeScreen" performBlock:v3];
}

void sub_1001CDB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CDBEC;
  v3[3] = &unk_100A07040;
  v3[4] = *(a1 + 32);
  [v2 requestTabBarSceneController:v3];
}

void sub_1001CDBEC(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneManager];
  [v1 _showMainViewControllerOrWelcomeScreen];
}

void sub_1001CDDC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001CDDE0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([a1[4] welcomeScreenShouldShow] && (objc_msgSend(WeakRetained, "appLaunchCoordinator"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "appLaunchCoordinatorIsConditionSatisfied:", 6), v3, v4))
  {
    v5 = [WeakRetained sceneManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001CDF04;
    v8[3] = &unk_100A0B080;
    v9 = a1[4];
    v10 = a1[5];
    [v5 requestPrimaryScene:v8];
  }

  else
  {
    v6 = objc_retainBlock(a1[5]);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

void sub_1001CDF04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  [v4 _showWelcomeScreen:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_1001CE044(uint64_t a1)
{
  v1 = [*(a1 + 32) ubiquitousDocumentsController];
  [v1 migrateBooksToUbiquityIfNeededWithCompletion:0];
}

void sub_1001CE0F8(uint64_t a1)
{
  v2 = [*(a1 + 32) storeController];
  [v2 refreshUpdateCountAsync];

  v3 = [*(a1 + 32) storeController];
  [v3 downloadQueueReload];

  v4 = [*(a1 + 32) ubiquityStatusMonitor];
  [v4 restartObserving];

  v5 = [*(a1 + 32) liverpoolStatusMonitor];
  [v5 restartObserving];

  v6 = [*(a1 + 32) untetheredPlistDataSource];
  [v6 reloadIfChanged];

  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE2A4;
  block[3] = &unk_100A033C8;
  block[4] = v7;
  dispatch_async(v8, block);
  v9 = sub_1000122C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) liverpoolStatusMonitor];
    v11 = [v10 isCloudKitEnabled];
    v12 = "NO";
    if (v11)
    {
      v12 = "YES";
    }

    *buf = 136446210;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ResumeFromBackground: isCloudKitEnabled: %{public}s", buf, 0xCu);
  }
}

void sub_1001CE494(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  [v2 clearAgingDocumentInbox];

  [*(a1 + 32) saveStateClosing:1];
  v3 = +[BCBackgroundTaskAssertion sharedAssertion];
  [v3 releaseAssertionForIdentifier:*(a1 + 40)];
}

void sub_1001CE700(uint64_t a1)
{
  v1 = [*(a1 + 32) coalescingJaliscoBlock];
  [v1 signalWithCompletion:&stru_100A0B1A0];
}

void sub_1001CE74C(id a1)
{
  v1 = sub_1000122C0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Updated BDSJaliscoDAAPClient on app launch", v2, 2u);
  }
}

void sub_1001CE8B0(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_1000122C0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 138412290;
      v9 = v4;
      v7 = "Error flushing Jet events: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134217984;
    v9 = a2;
    v7 = "Flushed %ld Jet events";
    goto LABEL_6;
  }
}

void sub_1001CEBC4(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_1000122C0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 138412290;
      v9 = v4;
      v7 = "Error flushing Jet events: %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134217984;
    v9 = a2;
    v7 = "Flushed %ld Jet events";
    goto LABEL_6;
  }
}

void sub_1001CECA8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  if (v7)
  {
    v4 = [v7 analyticsManager];
    [v4 appWillTerminate];

    v5 = [v7 analyticsManager];
    v6 = [v5 analyticsController];
    [v6 waitForSessionEnd:*(a1 + 32)];
  }
}

void sub_1001CEFA4(uint64_t a1)
{
  v2 = [*(a1 + 32) appLaunchCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CF040;
  v3[3] = &unk_100A038D0;
  v3[4] = *(a1 + 32);
  [v2 appLaunchCoordinatorOnConditionMask:1089 blockID:@"_signalExtendedLaunchComplete" performBlock:v3];
}

void sub_1001CF3C8(uint64_t a1)
{
  v2 = [*(a1 + 32) appLaunchCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CF474;
  v4[3] = &unk_100A03440;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 appLaunchCoordinatorPerformWhenLaunched:@"presentBookMigrationNotice" block:v4];
}

void sub_1001CF474(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3 = [v2 currentSceneController];

  v4 = [v3 newTransactionWithName:BCTransactionNameShowHUD];
  v5 = v4;
  if (v4)
  {
    v7 = BCTransactionOptionsTransactionKey;
    v8 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  [BSUINoticeViewController presentNoticeForMigratingBooksCollection:*(a1 + 40) options:v6];
}

id sub_1001CF5DC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) appLaunchCoordinatorIsConditionSatisfied:13];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 120);

    return [v3 signalConditionSatisfied:13];
  }

  return result;
}

void sub_1001CFAF0()
{
  v0 = +[UIApplication sharedApplication];
  v2 = [v0 delegate];

  v1 = [v2 airTrafficController];
  [v1 airTrafficStarted];
}

void sub_1001CFB64()
{
  v0 = +[UIApplication sharedApplication];
  v2 = [v0 delegate];

  v1 = [v2 airTrafficController];
  [v1 airTrafficEnded];
}

void sub_1001CFBD8()
{
  v0 = +[UIApplication sharedApplication];
  v2 = [v0 delegate];

  v1 = [v2 libraryAssetProvider];
  [v1 managedBooksDidChange];
}

id sub_1001CFC4C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"networkReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];

  v3 = [*(a1 + 32) networkReachability];
  [v3 startNotifier];

  return +[BCCloudKitDatabaseController startInternetConnectionReachabilityNotifier];
}

id sub_1001CFCD0(uint64_t a1)
{
  v2 = sub_1000122C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received tcc change notification.", v4, 2u);
  }

  return [*(a1 + 32) _signalEnableSyncCheck];
}

void sub_1001D052C(uint64_t a1)
{
  v2 = [CKNotification notificationFromRemoteNotificationDictionary:*(a1 + 32)];
  v3 = [BCCloudKitController instanceForCKNotification:v2];
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2 containerIdentifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "application:didReceiveRemoteNotification: for container %{public}@", &v6, 0xCu);
  }

  [v3 handleRemoteNotification:*(a1 + 32)];
}

void sub_1001D09F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D0A14(uint64_t a1)
{
  v2 = objc_alloc_init(NSOperationQueue);
  [v2 setMaxConcurrentOperationCount:1];
  v3 = +[BKDatabaseBackupFileManager mergeSyncSidecarPath];
  v4 = +[IMFileWatcher defaultWatcher];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D0AF4;
  v6[3] = &unk_100A0B248;
  v6[4] = *(a1 + 32);
  v5 = [v4 watchFileAtPath:v3 queue:v2 usingBlock:v6];
}

id *sub_1001D0AF4(id *result, int a2)
{
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    return [result[4] mergeSyncSidecar];
  }

  return result;
}

void sub_1001D0B0C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1001D0C20(uint64_t a1)
{
  v5 = objc_alloc_init(NSOperationQueue);
  [v5 setMaxConcurrentOperationCount:1];
  [v5 setQualityOfService:17];
  v2 = [BKLibraryImportMigratedBooksOperation alloc];
  v3 = [*(a1 + 32) libraryAssetProvider];
  v4 = [(BKLibraryImportMigratedBooksOperation *)v2 initWithLibraryAssetProvider:v3];

  [v5 addOperation:v4];
}

void sub_1001D0E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D0E20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mainLibrary];
  v6 = [v5 libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:v4];

  if (v6)
  {
    v7 = [*(a1 + 32) mainLibrary];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001D0F50;
    v13[3] = &unk_100A0B2D0;
    v8 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = *(a1 + 40);
    *(&v11 + 1) = v8;
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v14 = v12;
    v15 = v11;
    [v7 assetForLibraryAsset:v6 completion:v13];
  }
}

void sub_1001D0F50(void *a1, void *a2)
{
  v3 = [a2 url];
  if (v3)
  {
    v7 = v3;
    v4 = +[AEPluginRegistry sharedInstance];
    v5 = [v4 pluginForURL:v7];

    if (v5)
    {
      v6 = [v5 helperForURL:v7 withOptions:0];
      if (objc_opt_respondsToSelector())
      {
        *(*(a1[7] + 8) + 24) = [v6 acknowledgeAnnotationProvider:a1[4] willMergeAnnotationsWithAssertVersionMismatch:a1[5] assetID:a1[6] assetURL:v7];
      }
    }

    v3 = v7;
  }
}

void sub_1001D11B0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1228;
  block[3] = &unk_100A033C8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001D1228(uint64_t a1)
{
  v2 = [*(a1 + 32) appLaunchCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001D12C0;
  v3[3] = &unk_100A033C8;
  v3[4] = *(a1 + 32);
  [v2 appLaunchCoordinatorPerformWhenLaunched:@"reload Ubiquity Data Sources" block:v3];
}

void sub_1001D12C0(uint64_t a1)
{
  v2 = [*(a1 + 32) ubiquityStatusMonitor];
  v3 = [v2 isICloudDriveEnabled];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 sceneManager];
    v6 = [v5 criticalAlertCoordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001D13AC;
    v7[3] = &unk_100A033C8;
    v7[4] = *(a1 + 32);
    [v6 invokeAfterCriticalAlertDismisses:v7];
  }

  else
  {

    [v4 _reloadUbiquityDataSources];
  }
}

intptr_t sub_1001D13B4(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleted local copies of cloud data in response to logout.", v4, 2u);
  }

  [*(a1 + 32) acknowledgeiCloudIdentity];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001D17E4(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1001D1870(void *a1)
{
  v2 = [[BKDatabaseBackupFileManager alloc] initWithLibraryManager:a1[4] annotationProvider:a1[5]];
  [(BKDatabaseBackupFileManager *)v2 rewriteBackupFileWithCompletionBlock:a1[6]];
}

void sub_1001D1BC8(uint64_t a1)
{
  v2 = +[BDSJaliscoDAAPClient sharedClient];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D1C70;
  v4[3] = &unk_100A09D98;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 resetStaleJaliscoDatabaseWithCompletion:v4];
}

void sub_1001D1C70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App finished resetStaleJaliscoDatabase after clientDetectedStoreChangeAndAccountChange error:%@", buf, 0xCu);
  }

  [*(a1 + 32) _logIfError:v3 operation:@"deleting jalisco store after clientDetectedStoreChangeAndAccountChange"];
  v5 = +[BLJaliscoDAAPClient sharedClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D1DB8;
  v6[3] = &unk_100A038D0;
  v7 = *(a1 + 40);
  [v5 refreshStoreWithCompletion:v6];
}

void sub_1001D1DB8(uint64_t a1, int a2)
{
  v4 = sub_1000122C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "refreshStoreWithCompletion : %{BOOL}d", v7, 8u);
  }

  v5 = +[BDSJaliscoDAAPClient sharedClient];
  [v5 updatePolitelyAfterSignOut:1 reason:6 completion:&stru_100A0B358];

  v6 = +[BKLibraryDataSourceJaliscoDAAPClientProxy sharedproxy];
  [v6 clientDetectedStoreChange:*(a1 + 32)];
}

void sub_1001D1EB4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_1000122C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "App finished updatePolitelyAfterSignOut success:%{BOOL}d", v4, 8u);
  }
}

void sub_1001D20CC(uint64_t a1)
{
  v2 = +[BDSJaliscoDAAPClient sharedClient];
  [v2 updatePolitelyAfterSignIn:1 reason:6 completion:&stru_100A0B398];

  v3 = +[BKLibraryDataSourceJaliscoDAAPClientProxy sharedproxy];
  [v3 clientDetectedStoreChange:*(a1 + 32)];
}

void sub_1001D2150(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_1000122C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "App finished updatePolitelyAfterSignIn success:%{BOOL}d", v4, 8u);
  }
}

void sub_1001D22CC(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Update Required" value:&stru_100A30A68 table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To continue to see purchases from other devices available for download in your library value:please update to the latest version of Apple Books." table:{&stru_100A30A68, 0}];
  v11 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [v11 addAction:v8];

  v9 = [*(a1 + 32) sceneManager];
  v10 = [v9 currentSceneController];
  [v10 presentViewController:v11 animated:1 completion:0];
}

void sub_1001D28B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D299C;
  v8[3] = &unk_100A0B3E8;
  v5 = *(a1 + 40);
  v11 = v4;
  v7 = *(a1 + 48);
  v6.i64[0] = *(a1 + 32);
  v6.i64[1] = v5;
  v9 = vextq_s8(v6, v7, 8uLL);
  v6.i64[1] = v7.i64[1];
  v10 = v6;
  [v4 deleteCloudDataWithCompletion:v8];
}

void sub_1001D299C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2A68;
  block[3] = &unk_100A0B3C0;
  v5 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v10 = v4;
  v12 = *(a1 + 64);
  v8 = *(a1 + 48);
  v6 = v8;
  v11 = v8;
  v7 = v4;
  dispatch_async(v5, block);
}

void sub_1001D2A68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = NSStringFromClass(*(a1 + 64));
  v5 = [NSString stringWithFormat:@"deleting %@ core data stores", v4];
  [v2 _logIfError:v3 operation:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, v6);
    }
  }

  v10 = *(a1 + 48);

  dispatch_group_leave(v10);
}

void sub_1001D2B20(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D2BEC;
  v8[3] = &unk_100A0B460;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v13 = v6;
  v12 = *(a1 + 32);
  v7 = v3;
  [v7 deleteCloudDataWithCompletion:v8];
}

void sub_1001D2BEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2CC4;
  block[3] = &unk_100A0B438;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v4;
  v12 = v6;
  v9 = *(a1 + 56);
  v7 = v9;
  v13 = v9;
  v8 = v4;
  dispatch_async(v5, block);
}

void sub_1001D2CC4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"deleting %@ core data stores", v5];
  [v2 _logIfError:v3 operation:v6];

  v7 = a1[5];
  if (v7)
  {
    v8 = *(a1[8] + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (!v10)
    {
      objc_storeStrong(v9, v7);
    }
  }

  v11 = a1[7];

  dispatch_group_leave(v11);
}

void sub_1001D2D80(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 40) == 0);
    v2 = v3;
  }
}

void sub_1001D4194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) assetCache];
  v5 = [v4 assetFromCacheID:v3];

  if (v5)
  {
    v6 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100794354(v3, v5);
    }

    v7 = [*(a1 + 32) removed];
    [v7 setObject:v5 forKeyedSubscript:v3];

    v8 = [*(a1 + 32) updated];
    [v8 setObject:0 forKeyedSubscript:v3];
  }

  v9 = [*(a1 + 32) assetCache];
  [v9 uncacheAsset:v5 cacheID:v3];
}

void sub_1001D4C70(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  [*(a1 + 32) q_willJoinPlistContentsOnFetch];
  v3 = *(a1 + 32);
  v54 = 0;
  v4 = [v3 q_plistContentsArrayWithError:&v54];
  v5 = v54;
  [*(a1 + 32) q_didJoinPlistContentsOnFetch];
  if (v5)
  {
    [*(a1 + 32) q_clearAssetCaches];
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1007943F8(a1 + 32);
    }

    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0, v5);
    }

    goto LABEL_34;
  }

  v45 = (a1 + 32);
  v41 = a1;
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v44 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v42 = v4;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v51;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v51 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v50 + 1) + 8 * i);
      v16 = +[BKPlistAsset newBlankAsset];
      [*v45 _setPropertiesOfAsset:v16 withPlistEntry:v15];
      [v2 addObject:v16];
      v17 = [v16 assetID];
      v18 = [v17 length];

      if (v18)
      {
        v19 = [v16 assetID];
        [v9 setObject:v16 forKey:v19];

        v20 = [v16 assetID];
      }

      else
      {
        v21 = [v16 temporaryAssetID];
        v22 = [v21 length];

        if (!v22)
        {
          goto LABEL_16;
        }

        v23 = [v16 temporaryAssetID];
        [v9 setObject:v16 forKey:v23];

        v20 = [v16 temporaryAssetID];
      }

      v24 = v20;
      [v44 addObject:v20];

LABEL_16:
    }

    v12 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
  }

  while (v12);
LABEL_18:

  v43 = v2;
  [*v45 q_processAssetStateChanges:v2];
  v25 = [*v45 assetCache];
  v26 = [*v45 assetCacheByTemporaryAssetID];
  [*v45 q_clearAssetCaches];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v9;
  v27 = [v8 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v8);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = [v8 objectForKeyedSubscript:{v31, v41}];
        v33 = [v32 assetID];
        v34 = [v33 length];

        if (v34)
        {
          [v25 setObject:v32 forKey:v31];
        }

        v35 = [v32 temporaryAssetID];
        if ([v35 length])
        {
          [v26 setObject:v32 forKey:v35];
        }
      }

      v28 = [v8 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v28);
  }

  v36 = BKLibraryLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_100794484();
  }

  v2 = v43;
  v37 = [v43 valueForKey:@"assetID"];
  v38 = [v37 bu_arrayByRemovingNSNulls];

  [*(v41 + 32) _addAssetIDsToCacheManager:v43];
  v39 = objc_retainBlock(*(v41 + 40));
  v40 = v39;
  v5 = 0;
  if (v39)
  {
    (*(v39 + 2))(v39, v38, 0);
  }

  v4 = v42;
LABEL_34:
}

void sub_1001D56D8(id *a1)
{
  v86 = objc_alloc_init(NSMutableSet);
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a1[4] count]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v100 objects:v107 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v101;
    do
    {
      v7 = 0;
      do
      {
        if (*v101 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v100 + 1) + 8 * v7);
        v9 = [a1[5] assetCache];
        v10 = [v9 objectForKey:v8];
        if (v10)
        {
          v11 = v10;

LABEL_9:
          [v2 addObject:v11];

          goto LABEL_10;
        }

        v12 = [a1[5] assetCacheByTemporaryAssetID];
        v11 = [v12 objectForKey:v8];

        if (v11)
        {
          goto LABEL_9;
        }

        v13 = +[NSNull null];
        [v2 addObject:v13];

        [v86 addObject:v8];
LABEL_10:
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v14 = [v3 countByEnumeratingWithState:&v100 objects:v107 count:16];
      v5 = v14;
    }

    while (v14);
  }

  v15 = v86;
  if (![v86 count])
  {
    v22 = BKLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100794670();
    }

    kdebug_trace();
    v23 = objc_retainBlock(a1[6]);
    v18 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v2, 0);
    }

    goto LABEL_78;
  }

  v16 = a1[5];
  v78 = a1 + 5;
  v99 = 0;
  v17 = [v16 q_plistContentsArrayWithError:&v99];
  v18 = v99;
  if (v18)
  {
    v19 = BKLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100794534(v78);
    }

    kdebug_trace();
    v20 = objc_retainBlock(a1[6]);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, 0, v18);
    }

    goto LABEL_77;
  }

  v81 = objc_opt_new();
  v24 = v86;
  v79 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v76 = v17;
  obj = v17;
  v25 = a1 + 5;
  v84 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (!v84)
  {
    goto LABEL_50;
  }

  v82 = v2;
  v83 = *v96;
  v26 = UIBezierPath_ptr;
  do
  {
    for (i = 0; i != v84; i = i + 1)
    {
      if (*v96 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v95 + 1) + 8 * i);
      v29 = [*v25 _isSupplementalPDFFromPlistEntry:{v28, v76}];
      v30 = [v26[417] storeIdFromPlistEntry:v28];
      v31 = v30;
      if (!v30 || (v29 & 1) != 0)
      {
        v32 = [v26[417] uniqueIdFromPlistEntry:v28];
      }

      else
      {
        v32 = v30;
      }

      v33 = v32;
      v34 = v26;
      v35 = [v26[417] temporaryItemIdentifierFromPlistEntry:v28];
      if (([v24 containsObject:v33] & 1) == 0 && !objc_msgSend(v24, "containsObject:", v35))
      {
        v36 = +[BKPlistAsset newBlankAsset];
        [*v25 _setPropertiesOfAsset:v36 withPlistEntry:v28];
        v39 = [v36 assetID];
        if (v39)
        {
          v40 = v39;
          v41 = [v36 assetID];
          v42 = [v86 containsObject:v41];

          v24 = v86;
          if (v42)
          {
            v43 = [v36 assetID];
            [v81 setObject:v36 forKey:v43];
            goto LABEL_45;
          }
        }

        v44 = [v36 temporaryAssetID];
        if (v44)
        {
          v45 = v44;
          v46 = [v36 temporaryAssetID];
          v47 = v24;
          v48 = v46;
          v49 = [v47 containsObject:v46];

          if (v49)
          {
            v43 = [v36 temporaryAssetID];
            [v79 setObject:v36 forKey:v43];
            v24 = v86;
LABEL_45:
          }

          else
          {
            v24 = v86;
          }
        }

        v25 = a1 + 5;
        goto LABEL_48;
      }

      v36 = +[BKPlistAsset newBlankAsset];
      [*v25 _setPropertiesOfAsset:v36 withPlistEntry:v28];
      v37 = [v36 assetID];

      if (v37)
      {
        v38 = [v36 assetID];
        [v81 setObject:v36 forKey:v38];
      }

      if (v35)
      {
        [v79 setObject:v36 forKey:v35];
      }

LABEL_48:

      v26 = v34;
      v2 = v82;
    }

    v84 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  }

  while (v84);
LABEL_50:

  v50 = [a1[4] count];
  if (v50)
  {
    v51 = v50;
    for (j = 0; j != v51; ++j)
    {
      v53 = [v2 objectAtIndexedSubscript:{j, v76}];
      v54 = +[NSNull null];

      if (v53 == v54)
      {
        v55 = [a1[4] objectAtIndexedSubscript:j];
        v56 = [v81 objectForKeyedSubscript:v55];
        if (v56 || ([v79 objectForKeyedSubscript:v55], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v57 = v56;
          [v2 setObject:v56 atIndexedSubscript:j];
        }
      }
    }
  }

  v58 = [*v78 assetCache];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v21 = v81;
  v59 = [v21 countByEnumeratingWithState:&v91 objects:v105 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v92;
    do
    {
      for (k = 0; k != v60; k = k + 1)
      {
        if (*v92 != v61)
        {
          objc_enumerationMutation(v21);
        }

        v63 = *(*(&v91 + 1) + 8 * k);
        v64 = [v21 objectForKeyedSubscript:v63];
        [v58 setObject:v64 forKey:v63];
      }

      v60 = [v21 countByEnumeratingWithState:&v91 objects:v105 count:16];
    }

    while (v60);
  }

  v85 = v58;

  v65 = [*v78 assetCacheByTemporaryAssetID];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v66 = v79;
  v67 = [v66 countByEnumeratingWithState:&v87 objects:v104 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v88;
    do
    {
      for (m = 0; m != v68; m = m + 1)
      {
        if (*v88 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v87 + 1) + 8 * m);
        v72 = [v66 objectForKeyedSubscript:v71];
        [v65 setObject:v72 forKey:v71];
      }

      v68 = [v66 countByEnumeratingWithState:&v87 objects:v104 count:16];
    }

    while (v68);
  }

  [*v78 q_processAssetStateChanges:v2];
  v73 = BKLibraryLog();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    sub_1007945C0();
  }

  kdebug_trace();
  v74 = objc_retainBlock(a1[6]);
  v75 = v74;
  v15 = v86;
  v17 = v77;
  if (v74)
  {
    (*(v74 + 2))(v74, v2, 0);
  }

  v18 = 0;
LABEL_77:

LABEL_78:
}

void sub_1001D6198(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_retainBlock(a1[7]);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5, 0, v6);
  }

  if (a1[4])
  {
    v9 = [a1[5] itunesuQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001D62BC;
    v12[3] = &unk_100A03C78;
    v13 = a1[4];
    v14 = a1[6];
    v10 = v5;
    v11 = a1[5];
    v15 = v10;
    v16 = v11;
    dispatch_async(v9, v12);
  }
}

void sub_1001D62BC(void *a1)
{
  v2 = +[BLEduCloudContainer sharedEduCloudContainer];
  v3 = [v2 bookItemForPermlink:a1[4]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 itunesuAssetID];
    v6 = [v5 isEqualToString:a1[5]];

    if ((v6 & 1) == 0)
    {
      v7 = a1[6];
      if (v7)
      {
        v8 = UIImageJPEGRepresentation(v7, 0.0);
      }

      else
      {
        v8 = 0;
      }

      [v4 _setCloudCoverImageData:v8];
      [v4 setItunesuAssetID:a1[5]];
      v11 = 0;
      [v2 updateBookItem:v4 error:&v11];
      v9 = v11;
      if (v9)
      {
        v10 = BKLibraryLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10079473C();
        }
      }
    }
  }
}

void sub_1001D6698(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_1001D67F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    if ([v4 isRestoring])
    {
      [*(a1 + 32) _prioritizeRestorePlistAsset:v5];
    }
  }

  else
  {
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100794888(a1);
    }
  }

  v7 = objc_retainBlock(*(a1 + 48));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v3, 0, 0);
  }
}

void sub_1001D6A10(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 || [v10 count] == 1 && (objc_msgSend(v10, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "conformsToProtocol:", &OBJC_PROTOCOL___BKAsset), v8, v9))
  {
    v6 = objc_retainBlock(*(a1 + 32));
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [v10 firstObject];
    v6[2](v6, v7, v5);
  }

  else
  {
    v6 = objc_retainBlock(*(a1 + 32));
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
    v6[2](v6, 0, v7);
  }

LABEL_9:
}

void sub_1001D6D28(id *a1)
{
  if ([a1[4] length])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001D6EB8;
    v10[3] = &unk_100A0B588;
    v2 = a1[5];
    v11 = a1[4];
    v12 = a1[6];
    [v2 q_asyncReplacePlistEntries:v10 notify:1 completion:a1[7]];
    v3 = [a1[5] updateAssetMetadataQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D6FAC;
    block[3] = &unk_100A03A30;
    v4 = a1[6];
    block[4] = a1[5];
    v8 = v4;
    v9 = a1[4];
    dispatch_async(v3, block);
  }

  else
  {
    v5 = objc_retainBlock(a1[7]);
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))(v5, 0, 0);
      v5 = v6;
    }
  }
}

id sub_1001D6EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMLibraryPlist assetIDFromPlistEntry:v3];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 mutableCopy];
    v6 = *(a1 + 40);
    v7 = +[IMLibraryPlist keyNameForTitle];
    [v5 setObject:v6 forKey:v7];

    v8 = *(a1 + 40);
    v9 = +[IMLibraryPlist keyNameForSortTitle];
    [v5 setObject:v8 forKey:v9];
  }

  else
  {
    v5 = 0;
  }

  v10 = [v5 copy];

  return v10;
}

void sub_1001D6FAC(uint64_t a1)
{
  v2 = [*(a1 + 32) assetMetadataCache];
  [v2 saveTitle:*(a1 + 40) author:0 genre:0 language:0 pageProgressionDirection:0 forAssetID:*(a1 + 48)];
}

void sub_1001D71EC(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001D735C;
    v10[3] = &unk_100A0B5B0;
    v2 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001D7420;
    v7[3] = &unk_100A04200;
    *v5 = *(a1 + 32);
    v3 = v5[0];
    v8 = vextq_s8(*v5, *v5, 8uLL);
    v9 = *(a1 + 48);
    [v2 q_asyncReplacePlistEntries:v10 notify:1 completion:v7];
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 48));
    if (v4)
    {
      v6 = v4;
      (*(v4 + 2))(v4, 0, 0);
      v4 = v6;
    }
  }
}

id sub_1001D735C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMLibraryPlist assetIDFromPlistEntry:v3];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 mutableCopy];
    v6 = [NSNumber numberWithBool:*(a1 + 40)];
    [v5 setObject:v6 forKeyedSubscript:@"Ephemeral"];
  }

  else
  {
    v5 = 0;
  }

  v7 = [v5 copy];

  return v7;
}

void sub_1001D7420(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) assetsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7504;
  block[3] = &unk_100A0A388;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v8 = *(a1 + 48);
  v14 = a2;
  v12 = v5;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void sub_1001D7504(uint64_t a1)
{
  [*(a1 + 32) q_evictFromAssetCaches:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 56));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 64), *(a1 + 48));
    v2 = v3;
  }
}

void sub_1001D77C8(uint64_t a1, void *a2)
{
  v4 = [a2 bu_arrayByRemovingNSNulls];
  if ([v4 count])
  {
    v3 = [*(a1 + 32) libraryManager];
    [v3 libraryDataSource:*(a1 + 32) addedAssets:v4];
  }
}

void sub_1001D832C(uint64_t a1)
{
  v2 = [*(a1 + 32) assetCache];
  v14 = [*(a1 + 32) assetCacheByTemporaryAssetID];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [*(a1 + 40) objectForKeyedSubscript:{v8, v14}];
        objc_opt_class();
        v10 = BUDynamicCast();
        [v2 setObject:v10 forKey:v8];
        v11 = [v10 temporaryAssetID];
        if (v11)
        {
          [v14 setObject:v10 forKey:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D8530;
  v15[3] = &unk_100A063F0;
  v13 = *(a1 + 48);
  v16 = *(a1 + 56);
  [v12 q_asyncAddAssetDictionaries:v13 completion:v15];
}

void sub_1001D8530(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1, 0);
    v1 = v2;
  }
}

void sub_1001D87A8(uint64_t *a1)
{
  if ([a1[4] count])
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];

    [v2 q_asyncRemovePlistAssets:v3 notify:1 completion:v4];
  }

  else
  {
    v5 = objc_retainBlock(a1[6]);
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))(v5, 1, 0);
      v5 = v6;
    }
  }
}

void sub_1001D8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1001D8BE4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) assetCache];
  v4 = (a1 + 40);
  v5 = [v3 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v6 = [v5 coverWritingMode];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v5 language];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v5 pageProgressionDirection];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v15 = BKLibraryLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v2 identifier];
      v17 = *v4;
      *buf = 138543874;
      v34 = v16;
      v35 = 2160;
      v36 = 1752392040;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: coverWritingModeLanguageAndPageProgressionDirectionFromAssetID: Asset is not in cache, reading full plist from disk. assetID: %{mask.hash}@", buf, 0x20u);
    }

    v18 = *v2;
    v32 = 0;
    v19 = [v18 q_plistContentsWithError:&v32];
    v20 = v32;
    if (v20)
    {
      v21 = BKLibraryLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100794BD8();
      }
    }

    else
    {
      v21 = [IMLibraryPlist entryForAssetID:*v4 contents:v19];
      if (v21)
      {
        v22 = [IMLibraryPlist coverWritingModeFromPlistEntry:v21];
        v23 = *(*(a1 + 48) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v25 = [IMLibraryPlist languageFromPlistEntry:v21];
        v26 = *(*(a1 + 56) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        v28 = [IMLibraryPlist pageProgressionFromPlistEntry:v21];
        v29 = *(*(a1 + 64) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;

        [*(a1 + 32) q_refreshAssetCachesFromPlistContents:v19];
      }

      else
      {
        v31 = BKLibraryLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100794C70(v2, v4, v31);
        }
      }
    }
  }
}

void sub_1001D8FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001D9008(void *a1)
{
  v2 = a1[4];
  v14 = 0;
  v3 = [v2 q_plistContentsWithError:&v14];
  v4 = v14;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [IMLibraryPlist entryForAssetID:a1[5] contents:v3];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(a1[7] + 8) + 40))
    {
      v10 = [NSURL URLWithString:a1[6]];
      v11 = [IMLibraryPlist entryForAssetURL:v10 contents:v3];
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }
}

void sub_1001DADD0(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1001DADE8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1001DADF4);
}

void sub_1001DBEA4(uint64_t a1)
{
  v8 = +[BCCacheManager defaultCacheManager];
  v2 = [*(a1 + 32) valueForKey:@"assetID"];
  v3 = [*(a1 + 32) valueForKey:@"temporaryAssetID"];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  v5 = [v4 bu_arrayByRemovingNSNulls];

  v6 = [NSSet setWithArray:v5];
  [v8 incrementVersionForIdentifiers:v6];
  v7 = [*(a1 + 40) libraryManager];
  [v7 libraryDataSource:*(a1 + 40) updatedAssets:*(a1 + 32)];
}

void sub_1001DC268(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) plist];
  v48 = [v2 directory];
  v44 = +[BLLockFile iTunesSyncLockFile];
  v45 = v2;
  if ([v44 tryLock:0])
  {
    v3 = [*(v1 + 32) plist];
    v4 = [v3 contents];
  }

  else
  {
    v4 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  obj = *(v1 + 40);
  v49 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v49)
  {
    v5 = *v59;
    v6 = UIBezierPath_ptr;
    v46 = *v59;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v59 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = [v6[417] lookupAssetURLStringFromAssetID:v8 contents:v4];
        if (![v9 length])
        {
          v10 = [*(v1 + 48) objectForKey:v8];
          if (v10)
          {
            v11 = v6[417];
            v12 = [NSURL fileURLWithPath:v10];
            v13 = [v11 entryForAssetURL:v12 contents:v4];

            if (v13)
            {
              v14 = v10;

              v9 = v14;
            }
          }
        }

        if ([v8 length] && objc_msgSend(v9, "length"))
        {
          v15 = v1;
          v16 = v4;
          v17 = [NSURL fileURLWithPath:v9];
          v18 = [v17 path];
          v19 = [v18 lastPathComponent];

          if ([v19 length])
          {
            [*(v1 + 56) addObject:v8];
            [*(v1 + 64) addObject:v19];
            v20 = [*(v1 + 32) assetCache];
            v21 = [v20 objectForKey:v8];
            if (v21)
            {
              v22 = v21;

              goto LABEL_20;
            }

            v23 = [*(v1 + 32) assetCacheByTemporaryAssetID];
            v22 = [v23 objectForKey:v8];

            if (v22)
            {
LABEL_20:
              [*(v15 + 72) addObject:v22];
            }
          }

          v4 = v16;
          v5 = v46;
          v1 = v15;
          v6 = UIBezierPath_ptr;
        }

        if ([v9 length])
        {
          v24 = [v9 lastPathComponent];
          v25 = [v48 stringByAppendingPathComponent:v24];

          v26 = [*(v1 + 32) fullPathToAssetID];
          [v26 removeObjectForKey:v25];
        }
      }

      v49 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v49);
  }

  v27 = [*(v1 + 32) booksRootPath];
  if ([*(v1 + 64) count])
  {
    v28 = [*(v1 + 64) allObjects];
    v29 = v45;
    [v45 addDeletedFiles:v28];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = *(v1 + 56);
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v55;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(v1 + 32) q_evictFromAssetCaches:*(*(&v54 + 1) + 8 * j)];
        }

        v32 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v32);
    }

    v35 = *(v1 + 32);
    v36 = *(v1 + 64);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1001DC7BC;
    v50[3] = &unk_100A09060;
    v51 = v36;
    v37 = v27;
    v38 = *(v1 + 32);
    v52 = v37;
    v53 = v38;
    [v35 q_asyncRemovePlistPaths:v51 completion:v50];
    v39 = [*(v1 + 32) libraryManager];
    [v39 libraryDataSource:*(v1 + 32) removedAssets:*(v1 + 72)];

    [*(v1 + 32) _removeAssetIDsFromCacheManager:*(v1 + 72)];
    v40 = objc_retainBlock(*(v1 + 80));
    v41 = v40;
    if (v40)
    {
      (*(v40 + 2))(v40, 1, 0);
    }

    v42 = v51;
  }

  else
  {
    v43 = objc_retainBlock(*(v1 + 80));
    v42 = v43;
    v29 = v45;
    if (v43)
    {
      (*(v43 + 2))(v43, 1, 0);
    }
  }
}

void sub_1001DC7BC(uint64_t a1, int a2)
{
  if (a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v17;
      *&v5 = 138412546;
      v14 = v5;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(a1 + 40) stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * v8), v14}];
          v10 = [NSURL fileURLWithPath:v9];

          v11 = *(a1 + 48);
          v15 = 0;
          [v11 removeFileWithURL:v10 error:&v15];
          v12 = v15;
          if (v12)
          {
            v13 = BKLibraryLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = v14;
              v21 = v10;
              v22 = 2112;
              v23 = v12;
              _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Error: failed to remove: [URL: %@] [Error: %@]", buf, 0x16u);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v6);
    }
  }
}

id sub_1001DCC9C(uint64_t a1, uint64_t a2)
{
  v3 = [IMLibraryPlist assetIDFromPlistEntry:a2];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

id sub_1001DCD94(uint64_t a1, uint64_t a2)
{
  v3 = [IMLibraryPlist folderNameFromPlistEntry:a2];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

void sub_1001DCEB0(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DD004;
  v14[3] = &unk_100A033C8;
  v14[4] = *(a1 + 32);
  v3 = [v2 beginBackgroundTaskWithName:@"BKLibraryDataSourcePlist Remove" expirationHandler:v14];
  v4 = [*(a1 + 32) ioQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD010;
  block[3] = &unk_100A0B678;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v5;
  v13 = *(a1 + 56);
  v9 = v2;
  v10 = v6;
  v12 = v3;
  v11 = *(a1 + 48);
  v7 = v2;
  dispatch_async(v4, block);
}

void sub_1001DD010(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setStartQueueGeneration:{objc_msgSend(*(a1 + 32), "currentQueueGeneration")}];
  v3 = [*v2 plist];
  v4 = [v3 contents];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSDictionary dictionary];
  }

  v46 = v6;

  v7 = [*(a1 + 32) plist];
  v8 = [v7 unfilteredContents];
  v9 = +[IMLibraryPlist keyNameForBooksArray];
  v10 = [v8 objectForKey:v9];
  v44 = [v10 count];

  v11 = [*(a1 + 32) plist];
  v43 = [v11 path];

  [*(a1 + 32) setBackgroundTaskCancelled:0];
  v12 = 0;
  v13 = UIBezierPath_ptr;
  v45 = v2;
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v13[412] iTunesSyncLockFile];
    if ([v15 tryLock:1])
    {
      v47 = v14;
      v16 = +[NSMutableArray array];
      v17 = +[IMLibraryPlist keyNameForBooksArray];
      v18 = [v46 objectForKey:v17];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        v23 = *v54;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v54 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v53 + 1) + 8 * i);
            if ((*(*(a1 + 48) + 16))())
            {
              ++v22;
            }

            else
            {
              [v16 addObject:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v21);
      }

      else
      {
        v22 = 0;
      }

      v27 = [v19 count];
      v28 = v27;
      if (v22 > 0 || v44 > v27)
      {
        v29 = [v46 mutableCopyWithZone:0];
        v30 = +[IMLibraryPlist keyNameForBooksArray];
        [v29 setObject:v16 forKey:v30];

        v31 = BKLibraryLog();
        v2 = v45;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v42 = [*v45 identifier];
          v36 = [v16 count];
          *buf = 138544386;
          v58 = v42;
          v59 = 2114;
          v60 = v43;
          v61 = 1024;
          v62 = v36;
          v63 = 1024;
          v64 = v22;
          v65 = 1024;
          v66 = v44 - v28;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@ Rewriting the plist: %{public}@ -- [%d Remaining] [Removed: %d] [Filtered: %d]", buf, 0x28u);
        }

        LODWORD(v26) = [*(a1 + 32) q_rewritePlistDictionary:v29 path:v43 notify:*(a1 + 72)];
        v14 = v47;
      }

      else
      {
        v29 = BKLibraryLog();
        v2 = v45;
        v14 = v47;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v37 = [*v45 identifier];
          v38 = [v16 count];
          *buf = 138543874;
          v58 = v37;
          v59 = 2114;
          v60 = v43;
          v61 = 1024;
          v62 = v38;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@ No need to rewrite %{public}@. {Nothing removed} %d entries", buf, 0x1Cu);
        }

        LODWORD(v26) = 1;
      }

      v13 = UIBezierPath_ptr;
    }

    else
    {
      LODWORD(v26) = 0;
    }

    objc_autoreleasePoolPop(v14);
    v32 = BKLibraryLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [*v2 identifier];
      v34 = v33;
      *buf = 138543874;
      v35 = "NO";
      if (v26)
      {
        v35 = "YES";
      }

      v58 = v33;
      v59 = 2082;
      v60 = v35;
      v61 = 1024;
      v62 = v12 + 1;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}@ -- rewrite succeeded: %{public}s -- Try # %d", buf, 0x1Cu);
    }

    if ((v12 > 3) | v26 & 1)
    {
      break;
    }

    if ([*v2 backgroundTaskCancelled])
    {
      v26 = BKLibraryLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1007953B0(v2);
      }

      LOBYTE(v26) = 0;
      break;
    }

    usleep(0x61A8u);
    ++v12;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD618;
  block[3] = &unk_100A09798;
  v39 = *(a1 + 40);
  v41 = *(a1 + 56);
  v40 = *(a1 + 64);
  v49 = v39;
  v51 = v40;
  v50 = v41;
  v52 = v26;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001DD618(uint64_t a1)
{
  [*(a1 + 32) endBackgroundTask:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 56), 0);
    v2 = v3;
  }
}

void sub_1001DD750(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DD8A4;
  v14[3] = &unk_100A033C8;
  v14[4] = *(a1 + 32);
  v3 = [v2 beginBackgroundTaskWithName:@"BKLibraryDataSourcePlist Replace" expirationHandler:v14];
  v4 = [*(a1 + 32) ioQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD8B0;
  block[3] = &unk_100A0B678;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v5;
  v13 = *(a1 + 56);
  v9 = v2;
  v10 = v6;
  v12 = v3;
  v11 = *(a1 + 48);
  v7 = v2;
  dispatch_async(v4, block);
}

void sub_1001DD8B0(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setStartQueueGeneration:{objc_msgSend(*(a1 + 32), "currentQueueGeneration")}];
  v3 = [*v2 plist];
  v4 = [v3 contents];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSDictionary dictionary];
  }

  v7 = v6;

  v8 = [*(a1 + 32) plist];
  v42 = [v8 path];

  [*(a1 + 32) setBackgroundTaskCancelled:0];
  v9 = 0;
  v10 = UIBezierPath_ptr;
  *&v11 = 138544130;
  v41 = v11;
  v43 = v2;
  v44 = v7;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v10[412] iTunesSyncLockFile];
    if (![v13 tryLock:1])
    {
      LODWORD(v29) = 0;
      goto LABEL_26;
    }

    v45 = v12;
    v46 = v9;
    v14 = +[NSMutableArray array];
    v15 = +[IMLibraryPlist keyNameForBooksArray];
    v16 = [v7 objectForKey:v15];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (!v18)
    {

LABEL_22:
      v27 = BKLibraryLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v34 = [*v2 identifier];
        v35 = [v14 count];
        *buf = 138543874;
        v57 = v34;
        v58 = 2114;
        v59 = v42;
        v60 = 1024;
        v61 = v35;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}@ No need to rewrite %{public}@. {Nothing replaced} %d entries", buf, 0x1Cu);
      }

      LODWORD(v29) = 1;
      goto LABEL_25;
    }

    v19 = v18;
    v20 = 0;
    v21 = *v53;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        v24 = (*(*(a1 + 48) + 16))();
        if (v24)
        {
          ++v20;
          v25 = v14;
          v26 = v24;
        }

        else
        {
          v25 = v14;
          v26 = v23;
        }

        [v25 addObject:{v26, v41}];
      }

      v19 = [v17 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v19);

    v2 = v43;
    v7 = v44;
    if (v20 < 1)
    {
      goto LABEL_22;
    }

    v27 = [v44 mutableCopy];
    v28 = +[IMLibraryPlist keyNameForBooksArray];
    [v27 setObject:v14 forKey:v28];

    v29 = BKLibraryLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v36 = [*v43 identifier];
      v37 = [v14 count];
      *buf = v41;
      v57 = v36;
      v58 = 2114;
      v59 = v42;
      v60 = 1024;
      v61 = v37;
      v62 = 1024;
      v63 = v20;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%{public}@ Rewriting the plist: %{public}@ -- [Total: %d] [Replaced: %d]", buf, 0x22u);
    }

    LODWORD(v29) = [*(a1 + 32) q_rewritePlistDictionary:v27 path:v42 notify:*(a1 + 72)];
LABEL_25:
    v12 = v45;

    v10 = UIBezierPath_ptr;
    v9 = v46;
LABEL_26:

    objc_autoreleasePoolPop(v12);
    v30 = BKLibraryLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = [*v2 identifier];
      v32 = v31;
      *buf = 138543874;
      v33 = "NO";
      if (v29)
      {
        v33 = "YES";
      }

      v57 = v31;
      v58 = 2082;
      v59 = v33;
      v60 = 1024;
      v61 = v9 + 1;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}@ -- rewrite succeeded: %{public}s -- Try # %d", buf, 0x1Cu);
    }

    if ((v9 > 3) | v29 & 1)
    {
      goto LABEL_36;
    }

    if ([*v2 backgroundTaskCancelled])
    {
      break;
    }

    usleep(0x61A8u);
    ++v9;
  }

  v29 = BKLibraryLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1007953B0(v2);
  }

  LOBYTE(v29) = 0;
LABEL_36:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DDE34;
  block[3] = &unk_100A09798;
  v38 = *(a1 + 40);
  v40 = *(a1 + 56);
  v39 = *(a1 + 64);
  v48 = v38;
  v50 = v39;
  v49 = v40;
  v51 = v29;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001DDE34(uint64_t a1)
{
  [*(a1 + 32) endBackgroundTask:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 56), 0);
    v2 = v3;
  }
}

void sub_1001DDF64(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001DE0B0;
  v12[3] = &unk_100A033C8;
  v12[4] = *(a1 + 32);
  v3 = [v2 beginBackgroundTaskWithName:@"BKLibraryDataSourcePlist Add" expirationHandler:v12];
  v4 = [*(a1 + 32) ioQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DE0BC;
  v7[3] = &unk_100A09AF8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v2;
  v11 = v3;
  v10 = *(a1 + 48);
  v6 = v2;
  dispatch_async(v4, v7);
}

void sub_1001DE0BC(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 32);
  [*(a1 + 32) setStartQueueGeneration:{objc_msgSend(*(a1 + 32), "currentQueueGeneration")}];
  [*v2 setBackgroundTaskCancelled:0];
  v3 = 0;
  v4 = UIBezierPath_ptr;
  v5 = UIBezierPath_ptr;
  *&v6 = 138543618;
  v43 = v6;
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v4[412] iTunesSyncLockFile];
    if ([v8 tryLock:1])
    {
      v46 = v7;
      v47 = v3;
      v9 = [*v2 plist];
      v10 = [v9 contents];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = +[NSDictionary dictionary];
      }

      v14 = v12;

      v15 = [*v2 plist];
      v16 = [v15 path];

      v17 = [v5[417] keyNameForBooksArray];
      v18 = [v14 objectForKey:v17];

      if (v18)
      {
        v19 = [v18 mutableCopyWithZone:0];
      }

      else
      {
        v19 = +[NSMutableArray array];
      }

      v20 = v19;
      v45 = v18;
      [v19 addObjectsFromArray:{*(v1 + 40), v43}];
      v21 = [v14 mutableCopyWithZone:0];
      v22 = [v5[417] keyNameForBooksArray];
      [v21 setObject:v20 forKey:v22];

      v23 = BKLibraryLog();
      v44 = v14;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v37 = [*v2 identifier];
        v38 = [v20 count];
        *buf = v43;
        v54 = v37;
        v55 = 1024;
        LODWORD(v56) = v38;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}@ Trying to rewritePlistDictionary: %d entries", buf, 0x12u);
      }

      v13 = [*(v1 + 32) q_rewritePlistDictionary:v21 path:v16 notify:1];
      v24 = v2;
      v25 = *(v1 + 40);
      [v5[417] keyNameForPath];
      v26 = v16;
      v28 = v27 = v5;
      v29 = [v25 valueForKey:v28];

      v30 = [*(v1 + 32) plist];
      [v30 removeDeletedPaths:v29];

      v5 = v27;
      v2 = v24;

      v7 = v46;
      v3 = v47;
      v4 = UIBezierPath_ptr;
    }

    else
    {
      v13 = 0;
    }

    objc_autoreleasePoolPop(v7);
    v31 = BKLibraryLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [*v2 identifier];
      v33 = v5;
      v34 = v1;
      v35 = v32;
      *buf = 138543874;
      v36 = "NO";
      if (v13)
      {
        v36 = "YES";
      }

      v54 = v32;
      v55 = 2082;
      v56 = v36;
      v57 = 1024;
      v58 = v3 + 1;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@ -- rewrite succeeded: %{public}s -- Try # %d", buf, 0x1Cu);

      v1 = v34;
      v5 = v33;
    }

    if ((v3 > 3) | v13 & 1)
    {
      break;
    }

    if ([*v2 backgroundTaskCancelled])
    {
      v39 = BKLibraryLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1007953B0(v2);
      }

      LOBYTE(v13) = 0;
      break;
    }

    usleep(0x61A8u);
    ++v3;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE548;
  block[3] = &unk_100A09798;
  v40 = *(v1 + 48);
  v42 = *(v1 + 56);
  v41 = *(v1 + 64);
  v49 = v40;
  v51 = v41;
  v50 = v42;
  v52 = v13;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001DE548(uint64_t a1)
{
  [*(a1 + 32) endBackgroundTask:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 56), 0);
    v2 = v3;
  }
}

void sub_1001DE808(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 firstObject];

  v6 = BUDynamicCast();

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) _prioritizeRestorePlistAsset:v6];
    v5 = v6;
  }
}

void sub_1001DECE0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1001DEFE0(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"chapterProgress"])
  {
    v2 = (a1 + 40);
    v3 = (a1 + 48);
    v4 = [*(*(a1 + 40) + 8) objectForKey:*(a1 + 48)];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = 8;
    if (!v7)
    {
LABEL_3:
      v9 = [[BKLibraryAudiobookProgress alloc] initWithKind:*(a1 + 32) instance:*(a1 + 48) parameters:*(a1 + 56)];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v7 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"timeRemaining"])
    {
      return;
    }

    v2 = (a1 + 40);
    v3 = (a1 + 48);
    v13 = [*(*(a1 + 40) + 16) objectForKey:*(a1 + 48)];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = 16;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v12 = *(*v2 + v8);
  v16 = [*v3 stringValue];
  [v12 setObject:v7 forKey:v16];
}

void sub_1001DF74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DF774(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001DF980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DF9A8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001E048C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) fetchCompletion];

  if (v3)
  {
    v4 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10079551C(v2, v4);
    }
  }

  v5 = [*v2 fetchCompletion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  [*(a1 + 32) setFetchCompletion:0];

  [*(a1 + 32) setLibraryAssetMonitor:0];
  v7 = +[BLJaliscoDAAPClient sharedClient];
  v8 = [*(a1 + 56) copy];
  [*(a1 + 32) setFetchCompletion:v8];

  v9 = _os_activity_create(&_mh_execute_header, "Books/BKLibraryDataSourceJaliscoUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E0634;
  v12[3] = &unk_100A03C78;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v7;
  v14 = v10;
  v15 = *(a1 + 48);
  v11 = v7;
  os_activity_apply(v9, v12);
}

void sub_1001E0634(id *a1)
{
  v2 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] identifier];
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Books/BKLibraryDataSourceJaliscoUpdate %@ fetchAssetIDsWithPredicate updatePolitely", buf, 0xCu);
  }

  v4 = +[BDSJaliscoDAAPClient sharedClient];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E07B0;
  v10[3] = &unk_100A05178;
  v9 = *(a1 + 2);
  v5 = *(&v9 + 1);
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 updatePolitely:0 reason:6 completion:v10];
}

void sub_1001E07B0(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E088C;
  block[3] = &unk_100A04AC8;
  v8 = *(a1 + 32);
  v3 = *(v8 + 48);
  v12 = a2;
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

id sub_1001E088C(uint64_t a1)
{
  v2 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 64);
    *buf = 138412546;
    v14 = v3;
    v15 = 1024;
    LODWORD(v16) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ fetchAssetIDsWithPredicate updatePolitely returned success: %{BOOL}d", buf, 0x12u);
  }

  v5 = [BCRemoteManagedObjectIDMonitor alloc];
  v6 = [*(a1 + 40) persistentStoreCoordinator];
  v7 = [*(a1 + 40) currentJaliscoHistoryToken];
  v8 = [v5 initWithCoordinator:v6 entityName:@"BLJaliscoServerItem" historyToken:v7 predicate:*(a1 + 48) mapProperty:@"storeID" propertiesOfInterest:0 observer:*(a1 + 32)];
  [*(a1 + 32) setLibraryAssetMonitor:v8];

  v9 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = [*(a1 + 32) libraryAssetMonitor];
    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ managedObjectBackgroundMonitor libraryAssetMonitor assigned to %@", buf, 0x16u);
  }

  return [*(a1 + 32) setBookletItemsPredicate:*(a1 + 56)];
}

void sub_1001E0C30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ [JaliscoDS] fetchAssetIDsWithCompletion: assetIDs %@", &v11, 0x16u);
  }

  kdebug_trace();
  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v5, v6);
  }
}

void sub_1001E0E4C(id *a1)
{
  v2 = +[BLJaliscoDAAPClient sharedClient];
  v3 = [v2 newManagedObjectContext];
  v4 = [NSSet setWithArray:a1[4]];
  v53 = v2;
  v5 = [v2 fetchRequestForStoreIDs:v4];

  v67 = 0;
  v54 = v3;
  v6 = [v3 executeFetchRequest:v5 error:&v67];
  v51 = v67;
  v7 = [v6 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];

  v8 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[5] identifier];
    v10 = [v7 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v70 = v9;
    v71 = 2112;
    v72 = v5;
    v73 = 2112;
    v74 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ [JaliscoDS] fetchAssetsWithIDs --- unsortedJaliscoServerItems fetch:%@ items:%@", buf, 0x20u);
  }

  v52 = v5;

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v58 = a1;
  v12 = [a1[4] count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = +[NSNull null];
      [v11 setObject:v15 atIndexedSubscript:i];
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v63 objects:v79 count:16];
  v55 = v16;
  v56 = v11;
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v63 + 1) + 8 * j);
        v22 = [v21 storeID];
        v23 = [v58[4] indexOfObject:v22];
        if (v23 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v23;
          v25 = [v58[5] identifier];
          v26 = [BKJaliscoAsset newAssetFromServerItem:v21 dataSourceIdentifier:v25];

          [v11 setObject:v26 atIndexedSubscript:v24];
          v27 = BKLibraryDataSourceJaliscoLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v58[5] identifier];
            v29 = [v26 storeID];
            v30 = [v26 title];
            v31 = [v26 expectedDate];
            *buf = 138413314;
            v70 = v28;
            v71 = 2160;
            v72 = 1752392040;
            v73 = 2112;
            v74 = v29;
            v75 = 2112;
            v76 = v30;
            v77 = 2112;
            v78 = v31;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ fetch -- asset storeID: %{mask.hash}@ title: %@ expectedDate: %@", buf, 0x34u);

            v11 = v56;
            v16 = v55;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v63 objects:v79 count:16];
    }

    while (v18);
  }

  v32 = v58[5];
  v33 = [NSSet setWithArray:v58[4]];
  v34 = [v32 _bookletItemsForStoreIDSet:v33 moc:v54 dedupe:1];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v34;
  v35 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v60;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v60 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v59 + 1) + 8 * k);
        v40 = [v39 storeID];
        v41 = [v58[4] indexOfObject:v40];
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = v41;
          v43 = [v58[5] _supplementalAssetFromServerBookletItem:v39];
          [v11 setObject:v43 atIndexedSubscript:v42];
          v44 = BKLibraryDataSourceJaliscoLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v58[5] identifier];
            v46 = [v39 title];
            *buf = 138413058;
            v70 = v45;
            v71 = 2160;
            v72 = 1752392040;
            v73 = 2112;
            v74 = v40;
            v75 = 2112;
            v76 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@ fetch -- booklet storeID: %{mask.hash}@ title: %@", buf, 0x2Au);

            v11 = v56;
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v36);
  }

  v47 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [v58[5] identifier];
    *buf = 138412546;
    v70 = v48;
    v71 = 2112;
    v72 = v11;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%@ [JaliscoDS] fetchAssetsWithIDs --- sortedAssets %@", buf, 0x16u);
  }

  kdebug_trace();
  v49 = objc_retainBlock(v58[6]);
  v50 = v49;
  if (v49)
  {
    (*(v49 + 2))(v49, v11, 0);
  }
}

void sub_1001E1778(uint64_t a1)
{
  v2 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138412802;
    v43 = v3;
    v44 = 2112;
    v45 = v4;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ resolveLibraryAsset: (assetID:%@, title:%@)", buf, 0x20u);
  }

  v6 = +[BLJaliscoDAAPClient sharedClient];
  v7 = [v6 newManagedObjectContext];

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  if (*(a1 + 88) == 1)
  {
    v10 = [v8 _bookletItemForStoreID:v9 moc:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 parentItem];
      v13 = [v12 storeDownloadParameters];

      v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 64) longLongValue]);
      v15 = [BLPurchaseRequest requestWithBuyParameters:v13 storeIdentifier:v14];

      v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 56) longLongValue]);
      v17 = [NSSet setWithObject:v16];
      [v15 setStoreIdentifiersToDownload:v17];

      [v15 setAudiobook:1];
      [v15 setSupplementalContent:1];
      v18 = [*(a1 + 72) userInitiated];

      if (v18)
      {
        v19 = [*(a1 + 72) userInitiated];
        [v15 setUserInitiated:{objc_msgSend(v19, "BOOLValue")}];
      }

      v20 = +[JSABridge sharedInstance];
      v21 = [v20 windowManager];

      v22 = +[BLDownloadQueue sharedInstance];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1001E1D20;
      v39[3] = &unk_100A06000;
      v39[4] = *(a1 + 32);
      v11 = v11;
      v40 = v11;
      v41 = *(a1 + 80);
      [v22 purchaseWithRequest:v15 uiManager:v21 completion:v39];

      goto LABEL_19;
    }

    v24 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100795658();
    }
  }

  else
  {
    v23 = [v8 _serverItemForStoreID:v9 moc:v7];
    v11 = v23;
    if (v23 && ([v23 isDeleted] & 1) == 0)
    {
      v25 = [*(a1 + 32) identifier];
      v26 = [BKJaliscoAsset newAssetFromServerItem:v11 dataSourceIdentifier:v25];

      v27 = [v11 storeDownloadParameters];
      v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 56) longLongValue]);
      v13 = [BLPurchaseRequest requestWithBuyParameters:v27 storeIdentifier:v28];

      v29 = [v11 isAudiobook];
      [v13 setAudiobook:{objc_msgSend(v29, "BOOLValue")}];

      v30 = [*(a1 + 72) userInitiated];

      if (v30)
      {
        v31 = [*(a1 + 72) userInitiated];
        [v13 setUserInitiated:{objc_msgSend(v31, "BOOLValue")}];
      }

      v32 = +[JSABridge sharedInstance];
      v15 = [v32 windowManager];

      v33 = +[BLDownloadQueue sharedInstance];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001E1FDC;
      v36[3] = &unk_100A09C98;
      v36[4] = *(a1 + 32);
      v34 = *(a1 + 80);
      v37 = v26;
      v38 = v34;
      v35 = v26;
      [v33 purchaseWithRequest:v13 uiManager:v15 completion:v36];

      goto LABEL_19;
    }

    v24 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1007955B4();
    }
  }

  v13 = objc_retainBlock(*(a1 + 80));
  if (v13)
  {
    v15 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
    (v13)[2](v13, 0, 1, v15);
LABEL_19:
  }
}

void sub_1001E1D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@ Purchase completed. error:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) _supplementalAssetFromServerBookletItem:*(a1 + 40)];
  v9 = objc_retainBlock(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v8, 1, v5);
  }

  v11 = [*(a1 + 32) plistWriter];
  v16 = v8;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001E1EE8;
  v14[3] = &unk_100A034F8;
  v14[4] = *(a1 + 32);
  v15 = v8;
  v13 = v8;
  [v11 removePlistAssets:v12 completion:v14];
}

void sub_1001E1EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 40) assetID];
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ Deleted equivalent asset with assetID:%@ from books.plist error: %@", &v8, 0x20u);
  }
}

void sub_1001E1FDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) identifier];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Purchase completed. error:%@", buf, 0x16u);
  }

  v8 = objc_retainBlock(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, *(a1 + 40), 1, v5);
  }

  v10 = [*(a1 + 32) plistWriter];
  v15 = *(a1 + 40);
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E218C;
  v13[3] = &unk_100A034F8;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v10 removePlistAssets:v11 completion:v13];
}

void sub_1001E218C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 40) assetID];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Deleted equivalent asset with assetID:%@ from books.plist error: %@", &v8, 0x20u);
  }
}

void sub_1001E2454(uint64_t a1)
{
  v2 = +[BLJaliscoDAAPClient sharedClient];
  v3 = [v2 newManagedObjectContext];

  v4 = *(a1 + 32);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = [*(a1 + 40) _bookletItemForStoreID:v4 moc:v3];
      v6 = [*(a1 + 40) _supplementalAssetFromServerBookletItem:v5];
      if (!v6)
      {
        v7 = BKLibraryDataSourceJaliscoLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100795658();
        }

        v8 = objc_retainBlock(*(a1 + 56));
        if (v8)
        {
          v9 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
          (v8)[2](v8, 0, v9);
        }

LABEL_24:

        goto LABEL_25;
      }

LABEL_22:
      v17 = objc_retainBlock(*(a1 + 56));
      v8 = v17;
      if (v17)
      {
        (*(v17 + 2))(v17, v6, 0);
      }

      goto LABEL_24;
    }
  }

  else if (v4)
  {
    v10 = [*(a1 + 40) _serverItemForStoreID:v4 moc:v3];
    v5 = v10;
    if (!v10 || ([v10 isDeleted] & 1) != 0)
    {
      v11 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1007956EC();
      }

      v6 = objc_retainBlock(*(a1 + 56));
      if (!v6)
      {
        goto LABEL_25;
      }

      v8 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
      (*(v6 + 2))(v6, 0, v8);
      goto LABEL_24;
    }

    v13 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) identifier];
      v15 = *(a1 + 32);
      v18 = 138412802;
      v19 = v14;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ asset found for storeId: %{mask.hash}@", &v18, 0x20u);
    }

    v16 = [*(a1 + 40) identifier];
    v6 = [BKJaliscoAsset newAssetFromServerItem:v5 dataSourceIdentifier:v16];

    goto LABEL_22;
  }

  v12 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100795780();
  }

  v5 = objc_retainBlock(*(a1 + 56));
  if (v5)
  {
    v6 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorAssetIDNotInCacheError userInfo:0];
    (v5)[2](v5, 0, v6);
LABEL_25:
  }
}

void sub_1001E28C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001E2A58;
    v11[3] = &unk_100A09C70;
    v6 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v5;
    v13 = *(a1 + 48);
    [v6 fetchAssetsWithIDs:v3 completion:v11];

    v7 = v12;
  }

  else
  {
    v8 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) time];
      v9 = [NSNumber numberWithDouble:?];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MRP: %@ for 0 jalisco books", buf, 0xCu);
    }

    v10 = objc_retainBlock(*(a1 + 48));
    v7 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void sub_1001E2A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 bu_arrayByRemovingNSNulls];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v21 + 1) + 8 * i) purchaseDate];
        v14 = v13;
        if (!v10 || [v13 compare:v10] == 1)
        {
          v15 = v14;

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v16 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) time];
    v17 = [NSNumber numberWithDouble:?];
    v18 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    *buf = 138412546;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MRP: %@ for %@ jalisco books", buf, 0x16u);
  }

  v19 = objc_retainBlock(*(a1 + 40));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v10);
  }
}

void sub_1001E2F3C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJalisco updated jalisco after purchase %{BOOL}d}", v4, 8u);
  }
}

void sub_1001E3470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 identifier];
  v5 = [BKJaliscoAsset newAssetFromServerItem:v4 dataSourceIdentifier:v6];

  [v2 addObject:v5];
}

void sub_1001E3644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _supplementalAssetFromServerBookletItem:a2];
  [v2 addObject:v3];
}

id sub_1001E39C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[BLJaliscoDAAPClient sharedClient];
    v3 = [v4 isInitiallyLoadingJalisco];

    v2 = *(a1 + 32);
  }

  return [v2 setProcessingAuthentication:v3];
}

void *sub_1001E3B00(void *result)
{
  v1 = result;
  v3 = result[4];
  v2 = result[5];
  v4 = *(v2 + 56);
  if (v3 == v4)
  {
    v5 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v1[5] identifier];
      v7 = [v1[6] deletedObjects];
      v13 = [v7 count];
      v9 = [v1[6] addedObjects];
      v14 = [v9 count];
      v11 = [v1[6] updatedObjects];
      v15 = 138413058;
      v16 = v6;
      v17 = 2048;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = [v11 count];
      v12 = "%@ managedObjectBackgroundMonitor:didSaveNotify: (deleted: %ld, added: %ld, updated: %ld). Will process and notify library of changes.";
      goto LABEL_7;
    }
  }

  else
  {
    if (v3 != *(v2 + 64))
    {
      return result;
    }

    v5 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v1[5] identifier];
      v7 = [v1[6] deletedObjects];
      v8 = [v7 count];
      v9 = [v1[6] addedObjects];
      v10 = [v9 count];
      v11 = [v1[6] updatedObjects];
      v15 = 138413058;
      v16 = v6;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = [v11 count];
      v12 = "%@ Booklet managedObjectBackgroundMonitor:didSaveNotify: (deleted: %ld, added: %ld, updated: %ld). Will process and notify library of changes.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x2Au);
    }
  }

  return [v1[5] _processLibraryAssetChanges:v1[6] bookletItems:v3 != v4];
}

void sub_1001E3E8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v2 == *(v3 + 56))
  {
    v8 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) identifier];
      v48 = [*(a1 + 48) deletedObjects];
      v10 = [v48 count];
      v11 = [*(a1 + 48) addedObjects];
      v12 = [v11 count];
      v13 = [*(a1 + 48) updatedObjects];
      v14 = [v13 count];
      v15 = [*(a1 + 40) fetchCompletion];
      *buf = 138413314;
      v16 = @"have";
      v51 = v9;
      if (!v15)
      {
        v16 = @"nil";
      }

      v52 = 2048;
      v53 = v10;
      v54 = 2048;
      v55 = v12;
      v56 = 2048;
      v57 = v14;
      v58 = 2112;
      v59 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ managedObjectBackgroundMonitor:fetchNotify: (deleted: %ld, added: %ld, updated: %ld). %@ fetchCompletion", buf, 0x34u);
    }

    v17 = [*(a1 + 48) addedObjects];
    v7 = [v17 bu_arrayByRemovingDuplicates];

    v18 = +[BCCacheManager defaultCacheManager];
    [v18 addProductProfileIDs:v7 priority:3];

    v19 = [v7 mutableCopy];
    [*(a1 + 40) setMonitoredStoreIDs:v19];

    v20 = +[BLJaliscoDAAPClient sharedClient];
    v21 = [BCRemoteManagedObjectIDMonitor alloc];
    v22 = [v20 persistentStoreCoordinator];
    v23 = [v20 currentJaliscoHistoryToken];
    v24 = [*(a1 + 40) bookletItemsPredicate];
    v25 = [v21 initWithCoordinator:v22 entityName:@"BLJaliscoServerBookletItem" historyToken:v23 predicate:v24 mapProperty:@"storeID" propertiesOfInterest:0 observer:*(a1 + 40)];
    [*(a1 + 40) setBookletAssetMonitor:v25];

    v26 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*v4 identifier];
      v28 = [*v4 bookletAssetMonitor];
      *buf = 138412546;
      v51 = v27;
      v52 = 2112;
      v53 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ managedObjectBackgroundMonitor bookletAssetMonitor assigned to %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = *(v3 + 64);
    v6 = BKLibraryDataSourceJaliscoLog();
    v7 = v6;
    if (v2 == v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 40) identifier];
        v49 = [*(a1 + 48) deletedObjects];
        v30 = [v49 count];
        v31 = [*(a1 + 48) addedObjects];
        v32 = [v31 count];
        v33 = [*(a1 + 48) updatedObjects];
        v34 = [v33 count];
        v35 = [*(a1 + 40) fetchCompletion];
        *buf = 138413314;
        v36 = @"have";
        v51 = v29;
        if (!v35)
        {
          v36 = @"nil";
        }

        v52 = 2048;
        v53 = v30;
        v54 = 2048;
        v55 = v32;
        v56 = 2048;
        v57 = v34;
        v58 = 2112;
        v59 = v36;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Booklet managedObjectBackgroundMonitor:fetchNotify: (deleted: %ld, added: %ld, updated: %ld). %@ fetchCompletion", buf, 0x34u);
      }

      v37 = [*(a1 + 40) monitoredStoreIDs];
      v38 = [*(a1 + 48) addedObjects];
      v39 = [v38 bu_arrayByRemovingDuplicates];
      [v37 addObjectsFromArray:v39];

      v40 = [*(a1 + 40) fetchCompletion];

      if (v40)
      {
        v41 = BKLibraryDataSourceJaliscoLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [*v4 identifier];
          v43 = [*v4 monitoredStoreIDs];
          v44 = [v43 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v51 = v42;
          v52 = 2112;
          v53 = v44;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@ managedObjectBackgroundMonitor:fetchNotify: Calling completion with %@", buf, 0x16u);
        }
      }

      v45 = [*v4 fetchCompletion];
      if (v45)
      {
        v46 = [*v4 monitoredStoreIDs];
        v47 = [v46 copy];
        (v45)[2](v45, v47, 0);
      }

      [*v4 setFetchCompletion:0];

      v7 = [*v4 monitoredStoreIDs];
      [v7 removeAllObjects];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1007958EC();
    }
  }
}

void sub_1001E4D54(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) countForObject:v10];
  v4 = v10;
  if (!v3)
  {
    v5 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      v6 = [BKLibrarySupplementalAsset alloc];
      v7 = [*(a1 + 48) identifier];
      v8 = [(BKLibrarySupplementalAsset *)v6 initWithParentAsset:0 dataSourceIdentifier:v7 storeID:v10 title:0 downloadParams:0 size:0];
    }

    else
    {
      v7 = [*(a1 + 48) identifier];
      v8 = [BKJaliscoAsset newAssetWithStoreID:v10 dataSourceIdentifier:v7];
    }

    v9 = v8;
    [v5 addObject:v8];

    v4 = v10;
  }
}

void sub_1001E4E48(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] countForObject:v5];
  if (v3 < [a1[5] countForObject:v5])
  {
    sub_1007959A4();
  }

  v4 = [a1[5] countForObject:v5];
  if (v4 >= [a1[4] countForObject:v5])
  {
    [a1[6] addObject:v5];
  }
}

void sub_1001E5010(uint64_t a1)
{
  v2 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ clientDetectedStoreChange reload complete!", &v4, 0xCu);
  }
}

void sub_1001E531C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7, a3);
  }
}

void sub_1001E5448(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1);
    v1 = v2;
  }
}

void sub_1001E5568(uint64_t a1, int a2)
{
  v4 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ reloadPurchaseItemStoreID completed, success=%{BOOL}d", &v8, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) updatePurchaseItemsWithCompletion:*(a1 + 40)];
  }

  else
  {
    v6 = objc_retainBlock(*(a1 + 40));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_1001E5B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 componentsJoinedByString:{@", "}];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJaliscoPurchases %@ fetchAssets:[%@] error%@", &v12, 0x20u);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }
}

void sub_1001E6044(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = BKLibraryDataSourceJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 componentsJoinedByString:{@", "}];
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourceJaliscoPreorders %@ fetchAssets:[%@] error%@", &v12, 0x20u);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }
}

uint64_t variable initialization expression of REActionMenuState.safeAreaInsetsPublisher()
{
  type metadata accessor for EdgeInsetPublisher(0);
  v0 = swift_allocObject();
  type metadata accessor for UIEdgeInsets(0);
  sub_10079B964();
  return v0;
}

uint64_t variable initialization expression of REActionMenuState.snapshotQueue()
{
  v7 = sub_1007A2D64();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A2CF4();
  __chkstk_darwin(v3);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A1C84();
  v8 = _swiftEmptyArrayStorage;
  sub_1001F18F0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1007A2DA4();
}

uint64_t variable initialization expression of REActionMenuState.chapterTitleSubject()
{
  sub_1001F1160(&unk_100AD1E30);
  swift_allocObject();
  return sub_10079B924();
}

uint64_t variable initialization expression of REActionMenuState.pagesLeftInChapterStringSubject()
{
  sub_1001F1160(&unk_100AF28B0);
  swift_allocObject();
  return sub_10079B924();
}

id variable initialization expression of PalettePresentationInteraction.tapGestureRecognizer()
{
  v0 = objc_allocWithZone(UITapGestureRecognizer);

  return [v0 init];
}

id variable initialization expression of PalettePresentationInteraction.panGestureRecognizer()
{
  v0 = objc_allocWithZone(UIPanGestureRecognizer);

  return [v0 init];
}

id sub_1001E6C90(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id variable initialization expression of NowPlayingIndicatorView.levelGuttersColor()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  return v1;
}

id variable initialization expression of NowPlayingIndicatorView.levelColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

void variable initialization expression of BKSharedWithYouProvider.dynamicArray()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000022;
  *(inited + 80) = 0x80000001008BFFD0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = objc_allocWithZone(BSUIDynamicArray);
  sub_1001F1160(&unk_100AEF1B0);
  isa = sub_1007A25D4().super.isa;
  v3 = sub_1007A2024().super.isa;

  v4 = [v1 initWithArray:isa options:v3];

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t variable initialization expression of ContextMenuProvider.swipeActionItems()
{
  sub_1001F1160(&qword_100AD1E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B6A0;
  ThisActionItem = type metadata accessor for ReadThisActionItem();
  v2 = sub_1001F18F0(&qword_100AD1E68, type metadata accessor for ReadThisActionItem);
  *(v0 + 32) = ThisActionItem;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for MarkAsFinishedActionItem();
  v4 = sub_1001F18F0(&qword_100AD1E70, type metadata accessor for MarkAsFinishedActionItem);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for MarkAsStillReadingActionItem();
  v6 = sub_1001F18F0(&qword_100AD1E78, type metadata accessor for MarkAsStillReadingActionItem);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  ActionItem = type metadata accessor for AddToWantToReadActionItem();
  v8 = sub_1001F18F0(&qword_100AD1E80, type metadata accessor for AddToWantToReadActionItem);
  *(v0 + 80) = ActionItem;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for RemoveFromWantToReadActionItem();
  v10 = sub_1001F18F0(&qword_100AD1E88, type metadata accessor for RemoveFromWantToReadActionItem);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for ExplicitDeclineActionItem();
  v12 = sub_1001F18F0(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  *(v0 + 128) = type metadata accessor for AppShareActionItem();
  *(v0 + 136) = &protocol witness table for ShareActionItem;
  v13 = type metadata accessor for ListenSampleActionItem();
  v14 = sub_1001F18F0(&qword_100AD1E98, type metadata accessor for ListenSampleActionItem);
  *(v0 + 144) = v13;
  *(v0 + 152) = v14;
  SampleActionItem = type metadata accessor for ReadSampleActionItem();
  v16 = sub_1001F18F0(&qword_100AD1EA0, type metadata accessor for ReadSampleActionItem);
  *(v0 + 160) = SampleActionItem;
  *(v0 + 168) = v16;
  return v0;
}

uint64_t variable initialization expression of ContextMenuProvider.actionItems()
{
  sub_1001F1160(&qword_100AD1E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10080B6B0;
  v1 = type metadata accessor for AddToCollectionActionItem();
  v2 = sub_1001F18F0(&qword_100AD1EA8, type metadata accessor for AddToCollectionActionItem);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  ActionItem = type metadata accessor for AddToWantToReadActionItem();
  v4 = sub_1001F18F0(&qword_100AD1E80, type metadata accessor for AddToWantToReadActionItem);
  *(v0 + 48) = ActionItem;
  *(v0 + 56) = v4;
  *(v0 + 64) = type metadata accessor for AppShareActionItem();
  *(v0 + 72) = &protocol witness table for ShareActionItem;
  v5 = type metadata accessor for CancelDownloadActionItem();
  v6 = sub_1001F18F0(&qword_100AD1EB0, type metadata accessor for CancelDownloadActionItem);
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  v7 = sub_1001F194C();
  *(v0 + 96) = &type metadata for CloseAudiobookMiniPlayerActionItem;
  *(v0 + 104) = v7;
  v8 = type metadata accessor for CopyLinkActionItem();
  v9 = sub_1001F18F0(&qword_100AD1EC0, type metadata accessor for CopyLinkActionItem);
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  v10 = type metadata accessor for DislikeActionItem();
  v11 = sub_1001F18F0(&qword_100AD1EC8, type metadata accessor for DislikeActionItem);
  *(v0 + 128) = v10;
  *(v0 + 136) = v11;
  v12 = type metadata accessor for DownloadActionItem();
  v13 = sub_1001F18F0(&qword_100AD1ED0, type metadata accessor for DownloadActionItem);
  *(v0 + 144) = v12;
  *(v0 + 152) = v13;
  v14 = type metadata accessor for EditFinishedDateActionItem();
  v15 = sub_1001F18F0(&qword_100AD1ED8, type metadata accessor for EditFinishedDateActionItem);
  *(v0 + 160) = v14;
  *(v0 + 168) = v15;
  SampleActionItem = type metadata accessor for GetSampleActionItem();
  v17 = sub_1001F18F0(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem);
  *(v0 + 176) = SampleActionItem;
  *(v0 + 184) = v17;
  ThisActionItem = type metadata accessor for ReadThisActionItem();
  v19 = sub_1001F18F0(&qword_100AD1E68, type metadata accessor for ReadThisActionItem);
  *(v0 + 192) = ThisActionItem;
  *(v0 + 200) = v19;
  v20 = type metadata accessor for ExplicitDeclineActionItem();
  v21 = sub_1001F18F0(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem);
  *(v0 + 208) = v20;
  *(v0 + 216) = v21;
  v22 = type metadata accessor for GiftActionItem();
  v23 = sub_1001F18F0(&qword_100AD1EE8, type metadata accessor for GiftActionItem);
  *(v0 + 224) = v22;
  *(v0 + 232) = v23;
  v24 = type metadata accessor for MultipleGiftActionItem();
  v25 = sub_1001F18F0(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem);
  *(v0 + 240) = v24;
  *(v0 + 248) = v25;
  *(v0 + 256) = sub_100796F54();
  *(v0 + 264) = &protocol witness table for LikeActionItem;
  v26 = type metadata accessor for ListenSampleActionItem();
  v27 = sub_1001F18F0(&qword_100AD1E98, type metadata accessor for ListenSampleActionItem);
  *(v0 + 272) = v26;
  *(v0 + 280) = v27;
  v28 = type metadata accessor for MarkAsFinishedActionItem();
  v29 = sub_1001F18F0(&qword_100AD1E70, type metadata accessor for MarkAsFinishedActionItem);
  *(v0 + 288) = v28;
  *(v0 + 296) = v29;
  v30 = type metadata accessor for MarkAsStillReadingActionItem();
  v31 = sub_1001F18F0(&qword_100AD1E78, type metadata accessor for MarkAsStillReadingActionItem);
  *(v0 + 304) = v30;
  *(v0 + 312) = v31;
  v32 = type metadata accessor for OpenProductPageActionItem();
  v33 = sub_1001F18F0(&qword_100AD1EF8, type metadata accessor for OpenProductPageActionItem);
  *(v0 + 320) = v32;
  *(v0 + 328) = v33;
  *(v0 + 336) = sub_100797534();
  *(v0 + 344) = &protocol witness table for RateAndReviewActionItem;
  v34 = type metadata accessor for ReadSampleActionItem();
  v35 = sub_1001F18F0(&qword_100AD1EA0, type metadata accessor for ReadSampleActionItem);
  *(v0 + 352) = v34;
  *(v0 + 360) = v35;
  v36 = type metadata accessor for RemoveActionItem();
  v37 = sub_1001F18F0(&qword_100AD1F00, type metadata accessor for RemoveActionItem);
  *(v0 + 368) = v36;
  *(v0 + 376) = v37;
  v38 = type metadata accessor for RemoveFromContinueActionItem();
  v39 = sub_1001F18F0(&qword_100AD1F08, type metadata accessor for RemoveFromContinueActionItem);
  *(v0 + 384) = v38;
  *(v0 + 392) = v39;
  v40 = type metadata accessor for RemoveFromWantToReadActionItem();
  v41 = sub_1001F18F0(&qword_100AD1E88, type metadata accessor for RemoveFromWantToReadActionItem);
  *(v0 + 400) = v40;
  *(v0 + 408) = v41;
  v42 = type metadata accessor for RenameActionItem();
  v43 = sub_1001F18F0(&qword_100AD1F10, type metadata accessor for RenameActionItem);
  *(v0 + 416) = v42;
  *(v0 + 424) = v43;
  v44 = type metadata accessor for ReportAnIssueActionItem();
  v45 = sub_1001F18F0(&qword_100AD1F18, type metadata accessor for ReportAnIssueActionItem);
  *(v0 + 432) = v44;
  *(v0 + 440) = v45;
  v46 = type metadata accessor for ViewSupplementalContentActionItem();
  v47 = sub_1001F18F0(&qword_100AD1F20, type metadata accessor for ViewSupplementalContentActionItem);
  *(v0 + 448) = v46;
  *(v0 + 456) = v47;
  *(v0 + 464) = sub_100797544();
  *(v0 + 472) = &protocol witness table for SharedWithYouActionItem;
  v48 = type metadata accessor for InternalTapToRadarActionItem();
  v49 = sub_1001F18F0(&qword_100AD1F28, type metadata accessor for InternalTapToRadarActionItem);
  *(v0 + 480) = v48;
  *(v0 + 488) = v49;
  v50 = type metadata accessor for InternalEOBExperienceItem();
  v51 = sub_1001F18F0(&qword_100AD1F30, type metadata accessor for InternalEOBExperienceItem);
  *(v0 + 496) = v50;
  *(v0 + 504) = v51;
  return v0;
}

uint64_t sub_1001E7954(uint64_t *a1)
{
  sub_1001F1160(a1);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_1001E79A0()
{
  sub_1001F1160(&unk_100AD1E40);
  swift_allocObject();
  return sub_10079B924();
}

uint64_t sub_1001E7A60(unsigned int *a1)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_10079D4D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a1, v5);
  v9 = sub_10079D3A4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_10079D434();
  sub_100007840(v4, &unk_100AD1FC0);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t variable initialization expression of BookProviderService.logger()
{
  type metadata accessor for BookProviderService();
  sub_1001F1160(&qword_100AEBCE0);
  sub_1007A22E4();
  return sub_10079ACD4();
}

uint64_t sub_1001E7CD8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

id variable initialization expression of ToolbarButton.backgroundView()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 layer];
  [v1 setCornerRadius:6.0];

  v2 = [v0 layer];
  [v2 setCornerCurve:kCACornerCurveContinuous];

  [v0 setUserInteractionEnabled:0];
  [v0 setClipsToBounds:1];
  [v0 setAutoresizingMask:18];
  v3 = [objc_allocWithZone(UIView) init];
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 setUserInteractionEnabled:0];
  [v3 setAutoresizingMask:18];
  [v0 bounds];
  [v3 setFrame:?];
  [v0 addSubview:v3];

  return v0;
}

id variable initialization expression of ToolbarButton.highlightView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [v0 layer];
  [v2 setCornerRadius:6.0];

  v3 = [v0 layer];
  [v3 setCornerCurve:kCACornerCurveContinuous];

  [v0 setUserInteractionEnabled:0];
  [v0 setAutoresizingMask:18];
  return v0;
}

double variable initialization expression of BookReaderHostLayoutController.capturedSafeAreaInsets@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of TabBarController.isCreatingContentForNavigationController()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

double variable initialization expression of ContainerHost.$__lazy_storage_$_resolver@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of BookReaderModuleHost.appIntentsInfoTracker()
{
  type metadata accessor for AppIntentsAssetViewControllerInfoTracker();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1001F1160(&unk_100AEBC90);
  sub_10079B964();
  *(v0 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = 0;
  swift_unknownObjectWeakAssign();
  return v0;
}

id variable initialization expression of BookReaderModuleHost.appIntentsInfo()
{
  v0 = objc_allocWithZone(BCAppIntentsAssetViewControllerInfo);

  return [v0 init];
}

uint64_t variable initialization expression of BookReaderModuleHost.hostID()
{
  v0 = sub_100796C04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v4 = sub_100796BC4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t variable initialization expression of MainContentViewController.toolbarHeightPublisher()
{
  sub_1001F1160(&unk_100AD20C0);
  swift_allocObject();
  return sub_10079B924();
}

id variable initialization expression of MainContentViewController.syncLayoutController()
{
  v0 = objc_allocWithZone(TUISyncLayoutController);

  return [v0 init];
}

id variable initialization expression of YearInReviewEligibilityService.setupPromise()
{
  v0 = objc_allocWithZone(AMSMutablePromise);

  return [v0 init];
}

uint64_t variable initialization expression of CarPlayDataManager.accessQueue()
{
  v0 = sub_1007A2CF4();
  __chkstk_darwin(v0);
  v1 = sub_1007A1CA4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1007A2D64();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1007A1C74();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1001F18F0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  return sub_1007A2DA4();
}

void variable initialization expression of ReadingActivityService.dailyGoal()
{
  v0 = sub_100798694();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798684();
  sub_100798664();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v16[3] = &type metadata for Double;
  v16[0] = v5;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v15[1] = 0x6D614E6775626564;
  v15[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000020;
  *(inited + 80) = 0x80000001008C0070;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v7 = sub_10000E3E8(v16, &type metadata for Double);
  v8 = *(&type metadata for Double - 1);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = sub_1007A3AA4();
  (*(v8 + 8))(v10, &type metadata for Double);
  sub_1000074E0(v16);
  v12 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v14 = [v12 initWithValue:v11 options:isa];
  swift_unknownObjectRelease();

  if (!v14)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.booksFinishedGoal()
{
  v0 = sub_100798694();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798684();
  v4 = sub_100798674();
  (*(v1 + 8))(v3, v0);
  v15[3] = &type metadata for Int;
  v15[0] = v4;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v14[1] = 0x6D614E6775626564;
  v14[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000028;
  *(inited + 80) = 0x80000001008C00A0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v6 = sub_10000E3E8(v15, &type metadata for Int);
  v7 = *(&type metadata for Int - 1);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1007A3AA4();
  (*(v7 + 8))(v9, &type metadata for Int);
  sub_1000074E0(v15);
  v11 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v13 = [v11 initWithValue:v10 options:isa];
  swift_unknownObjectRelease();

  if (!v13)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssets()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001008C00D0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = objc_allocWithZone(BSUIDynamicArray);
  sub_1001F1160(&unk_100AEF1B0);
  isa = sub_1007A25D4().super.isa;
  v3 = sub_1007A2024().super.isa;

  v4 = [v1 initWithArray:isa options:v3];

  if (!v4)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetsData()
{
  v0 = sub_1001F1160(&qword_100AD6710);
  v11[3] = v0;
  v11[0] = &_swiftEmptyDictionarySingleton;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v10[1] = 0x6D614E6775626564;
  v10[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000029;
  *(inited + 80) = 0x80000001008C0100;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  if (v0)
  {
    v2 = sub_10000E3E8(v11, v0);
    v3 = *(v0 - 8);
    __chkstk_darwin(v2);
    v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    v6 = sub_1007A3AA4();
    (*(v3 + 8))(v5, v0);
    sub_1000074E0(v11);
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v9 = [v7 initWithValue:v6 options:isa];
  swift_unknownObjectRelease();

  if (!v9)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetYear()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000028;
  *(inited + 80) = 0x80000001008C0130;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetAllTimeCount()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000030;
  *(inited + 80) = 0x80000001008C0160;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetsAfterCurrentYearCount()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000003ALL;
  *(inited + 80) = 0x80000001008C01A0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetsPriorToCurrentYearCount()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000003CLL;
  *(inited + 80) = 0x80000001008C01E0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.isDailyGoalCompleted()
{
  v10[3] = &type metadata for Bool;
  LOBYTE(v10[0]) = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000002BLL;
  *(inited + 80) = 0x80000001008C0220;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Bool);
  v2 = *(&type metadata for Bool - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Bool);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.readingTimeToday()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000027;
  *(inited + 80) = 0x80000001008C0250;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.readingIndicatorTimeToday()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000030;
  *(inited + 80) = 0x80000001008C0280;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.readingHistory()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001008C02C0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = objc_allocWithZone(BSUIDynamicArray);
  sub_1001F1160(&unk_100AEF1B0);
  isa = sub_1007A25D4().super.isa;
  v3 = sub_1007A2024().super.isa;

  v4 = [v1 initWithArray:isa options:v3];

  if (!v4)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.didSeeWelcomeExperience()
{
  v10[3] = &type metadata for Bool;
  LOBYTE(v10[0]) = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000002ELL;
  *(inited + 80) = 0x80000001008C02F0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Bool);
  v2 = *(&type metadata for Bool - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Bool);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.allTimeRecordStreakData()
{
  v0 = sub_1001F1160(&qword_100AD6710);
  v11[3] = v0;
  v11[0] = &_swiftEmptyDictionarySingleton;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v10[1] = 0x6D614E6775626564;
  v10[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000002ELL;
  *(inited + 80) = 0x80000001008C0320;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  if (v0)
  {
    v2 = sub_10000E3E8(v11, v0);
    v3 = *(v0 - 8);
    __chkstk_darwin(v2);
    v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    v6 = sub_1007A3AA4();
    (*(v3 + 8))(v5, v0);
    sub_1000074E0(v11);
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v9 = [v7 initWithValue:v6 options:isa];
  swift_unknownObjectRelease();

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t variable initialization expression of ReadingActivityService.readingHistoryPublisher()
{
  v0 = sub_1001F1160(&unk_100AD20D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_100798774();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1001F1160(&unk_100AEF1C0);
  swift_allocObject();
  return sub_10079B924();
}

void variable initialization expression of ReadingActivityService.booksPerYear()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000023;
  *(inited + 80) = 0x80000001008C0350;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v3 = [v1 initWithValue:0 options:isa];

  if (!v3)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.timeReadPerMonth()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000027;
  *(inited + 80) = 0x80000001008C0380;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v3 = [v1 initWithValue:0 options:isa];

  if (!v3)
  {
    __break(1u);
  }
}

void variable initialization expression of ReadingActivityService.finishedAssetCountByYear()
{
  v10[3] = &type metadata for Int;
  v10[0] = 0;
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v9[1] = 0x6D614E6775626564;
  v9[2] = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD00000000000002FLL;
  *(inited + 80) = 0x80000001008C03B0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  v1 = sub_10000E3E8(v10, &type metadata for Int);
  v2 = *(&type metadata for Int - 1);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_1007A3AA4();
  (*(v2 + 8))(v4, &type metadata for Int);
  sub_1000074E0(v10);
  v6 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v8 = [v6 initWithValue:v5 options:isa];
  swift_unknownObjectRelease();

  if (!v8)
  {
    __break(1u);
  }
}

double variable initialization expression of ReadingActivityService.goalsModule@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of ReadingActivityService.historyModule@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of SidebarViewModel._programmaticSelection@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 16711422;
  *(a1 + 64) = xmmword_10080B6C0;
  *(a1 + 80) = 0;
  return result;
}

id variable initialization expression of SidebarViewModel._accountInfo@<X0>(uint64_t a1@<X8>)
{
  result = [objc_allocWithZone(CNContact) init];
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of SidebarViewModel.AccountInfo.contact()
{
  v0 = objc_allocWithZone(CNContact);

  return [v0 init];
}

uint64_t variable initialization expression of RootBarStandardItemsManager.cacheAccessQueue()
{
  v0 = sub_1007A2CF4();
  __chkstk_darwin(v0);
  v1 = sub_1007A2D64();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A1CA4();
  __chkstk_darwin(v5 - 8);
  sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A1C94();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = _swiftEmptyArrayStorage;
  sub_1001F18F0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  return sub_1007A2DA4();
}

uint64_t variable initialization expression of BKLRUCache.queue()
{
  v0 = sub_1007A2D64();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1007A2CF4();
  __chkstk_darwin(v5 - 8);
  sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A2CE4();
  sub_1007A1C74();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1007A2DA4();
}

uint64_t _s5Books13ServiceCenterC11_setupState33_886EC29998B696892D592E695442A5B5LL13BookDataStore26MutableObservableContainerCyAA0b5SetupE0OGvpfi_0()
{
  sub_1001F1160(&qword_100AD1F38);
  swift_allocObject();
  return sub_100798B54();
}

uint64_t sub_1001EB140(uint64_t *a1)
{
  sub_1001F1160(a1);
  swift_allocObject();
  return sub_10079B8D4();
}

uint64_t variable initialization expression of DownloadPurchaseMonitor.queue()
{
  v7 = sub_1007A2D64();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A2CF4();
  __chkstk_darwin(v3);
  v4 = sub_1007A1CA4();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A1C74();
  v8 = _swiftEmptyArrayStorage;
  sub_1001F18F0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1007A2DA4();
}

id variable initialization expression of BookReaderAccessoryHighlightsController.highlightRenderingController()
{
  v0 = [objc_allocWithZone(AEHighlightRenderingController) init];
  [v0 setCanUseFilters:1];
  return v0;
}

uint64_t sub_1001EB500@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

_WORD *sub_1001EB5EC@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1001EB604(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3F60, type metadata accessor for AudiobookPlayerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001EB670(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3F60, type metadata accessor for AudiobookPlayerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001EB6DC(uint64_t a1)
{
  v2 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001EB748(uint64_t a1, id *a2)
{
  result = sub_1007A2234();
  *a2 = 0;
  return result;
}

uint64_t sub_1001EB7C0(uint64_t a1, id *a2)
{
  v3 = sub_1007A2244();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001EB840@<X0>(void *a1@<X8>)
{
  sub_1007A2254();
  v2 = sub_1007A2214();

  *a1 = v2;
  return result;
}

Swift::Int sub_1001EB928()
{
  sub_1007A3C04();
  swift_getWitnessTable();
  sub_1007995D4();
  return sub_1007A3C44();
}

Swift::Int sub_1001EB990()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1007A3C14(v1);
  return sub_1007A3C44();
}

Swift::Int sub_1001EB9D8()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1007A3C14(v1);
  return sub_1007A3C44();
}

uint64_t sub_1001EBA2C(uint64_t a1)
{
  v2 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001EBA98(uint64_t a1)
{
  v2 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001EBB04(void *a1, uint64_t a2)
{
  v4 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001EBBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001EBC34()
{
  sub_1007A3C04();
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_1001EBC94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1001F0D7C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1001EBCD4()
{
  swift_getWitnessTable();

  return sub_1007995C4();
}

uint64_t sub_1001EBD40(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD4018, type metadata accessor for Identifier);
  v3 = sub_1001F18F0(&unk_100AD4020, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EBDFC(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3FC8, type metadata accessor for AssetActivityItemProviderProperty);
  v3 = sub_1001F18F0(&qword_100AD3FD0, type metadata accessor for AssetActivityItemProviderProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EBEB8(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3FD8, type metadata accessor for BLDownloadQueueProperty);
  v3 = sub_1001F18F0(&unk_100AD3FE0, type metadata accessor for BLDownloadQueueProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EBF74(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1001F18F0(&qword_100AD3FF0, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC030(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD4050, type metadata accessor for MCatalogRequestRelationship);
  v3 = sub_1001F18F0(&qword_100AD4058, type metadata accessor for MCatalogRequestRelationship);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC0EC(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AEDDB0, type metadata accessor for Key);
  v3 = sub_1001F18F0(&qword_100AD4030, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC1A8(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3680, type metadata accessor for BCDefaultCollectionID);
  v3 = sub_1001F18F0(&qword_100AD3688, type metadata accessor for BCDefaultCollectionID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F18F0(&unk_100AE4D10, type metadata accessor for AudiobookPlayerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001EC2E8(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD36A0, type metadata accessor for FigaroKey);
  v3 = sub_1001F18F0(&qword_100AD36A8, type metadata accessor for FigaroKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC3A4(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD40A8, type metadata accessor for ActivityType);
  v3 = sub_1001F18F0(&qword_100AD40B0, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC460(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3FF8, _s3__C10OptionsKeyVMa_0);
  v3 = sub_1001F18F0(&qword_100AD4000, _s3__C10OptionsKeyVMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC51C(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD4008, type metadata accessor for OpenURLOptionsKey);
  v3 = sub_1001F18F0(&qword_100AD4010, type metadata accessor for OpenURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC5D8(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3670, type metadata accessor for BDSCloudAssetType);
  v3 = sub_1001F18F0(&qword_100AD3678, type metadata accessor for BDSCloudAssetType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC694(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3660, type metadata accessor for BDSLibraryContentAssetType);
  v3 = sub_1001F18F0(&qword_100AD3668, type metadata accessor for BDSLibraryContentAssetType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC750(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3690, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1001F18F0(&qword_100AD3698, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC80C(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3FA8, type metadata accessor for OptionsKey);
  v3 = sub_1001F18F0(&qword_100AD3FB0, type metadata accessor for OptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC8C8@<X0>(void *a1@<X8>)
{
  v2 = sub_1007A2214();

  *a1 = v2;
  return result;
}

uint64_t sub_1001EC910(uint64_t a1)
{
  v2 = sub_1001F18F0(&qword_100AD3FB8, type metadata accessor for BSUIAssetKey);
  v3 = sub_1001F18F0(&qword_100AD3FC0, type metadata accessor for BSUIAssetKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001EC9CC()
{
  sub_1007A2254();
  v0 = sub_1007A2484();

  return v0;
}

uint64_t sub_1001ECA08()
{
  sub_1007A2254();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1001ECA5C()
{
  sub_1007A2254();
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v0 = sub_1007A3C44();

  return v0;
}

uint64_t sub_1001ECAD0()
{
  v0 = sub_1007A2254();
  v2 = v1;
  if (v0 == sub_1007A2254() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1007A3AB4();
  }

  return v5 & 1;
}

unint64_t sub_1001ECB58(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B98);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B90);
      v11 = *v5;
      result = sub_1002EC638(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1001ECD40(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B88);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B80);
      v11 = *v5;
      result = sub_1002F9CF8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1001ECF28(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B78);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B70);
      v11 = *v5;
      result = sub_1002EC6C0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED110(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B68);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B60);
      v11 = *v5;
      result = sub_1002EC758(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3868);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v11, &qword_100AD3870);
      v5 = v11;
      result = sub_1002F9CF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100019288(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&unk_100AD36E0);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v11, &unk_100ADA6C0);
      v5 = v11;
      result = sub_1002F9CF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100019288(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD36F0);
    v3 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000E53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED644(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B58);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B50);
      v11 = *v5;
      result = sub_1002EC82C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&unk_100ADACF0);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, v15, &qword_100AD35B0);
      result = sub_10000E2A4(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001ED994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&unk_100ADACE0);
    v3 = sub_1007A3924();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000E53C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EDAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD38E8);
    v3 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000E53C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EDBAC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3B40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3B48);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3B40);
      v11 = *v5;
      result = sub_1002EC9EC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EDD94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD35C8);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v13, &qword_100AD35D0);
      v5 = v13;
      v6 = v14;
      result = sub_10000E53C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019288(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EDEC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3878);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v11, &qword_100AD3880);
      v5 = v11;
      result = sub_1002F9CF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100019288(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EDFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3858);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v11, &qword_100AD3860);
      v5 = v11;
      result = sub_1002F9CF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100019288(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE114(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3AD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3AD8);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3AD0);
      v11 = *v5;
      result = sub_1002ECA30(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&unk_100AD3C20);
    v3 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000E53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE3F8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3AC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3AC8);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3AC0);
      v11 = *v5;
      result = sub_1002ECB04(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE5E0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3AB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3AB8);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3AB0);
      v11 = *v5;
      result = sub_1002ECBB8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE7C8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD4078);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD4080);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD4078);
      v11 = *v5;
      v12 = *(v5 + 1);
      result = sub_1002ECC48();
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_10079BF44();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EE9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD4070);
    v3 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1002ECC48();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001EEABC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1001F1160(&qword_100AD3850);
  v3 = sub_1007A3924();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1002F9CDC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1002F9CDC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EEC14(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001F1160(a2);
    v4 = sub_1007A3924();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_1002F9CF4(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EED04(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD3BF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100ADADC0);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000077D8(v9, v5, &unk_100AD3BF0);
      v11 = *v5;
      result = sub_1002F9CDC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1007A0044();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EEEE0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3BE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3BE8);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3BE0);
      v11 = *v5;
      result = sub_1002F9CDC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1007A1B34();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EF0D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD35B8);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v15, &qword_100AD35C0);
      v5 = v15;
      v6 = v16;
      result = sub_10000E53C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EF214(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3AA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3AA8);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3AA0);
      v11 = *v5;
      result = sub_1002ECCBC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EF3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3BD0);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v11, &qword_100AD3BD8);
      v5 = v11;
      result = sub_1002F9CF4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100019288(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EF524(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3658);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3650);
      result = sub_1002EC564(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100796C04();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001EF720(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1001F1160(a2);
  v4 = sub_1007A3924();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1002F9CDC(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 7);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_1002F9CDC(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}