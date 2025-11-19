void sub_1000017FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001818(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7 = PUPickerAssetPreparationOptionsFromAdditionalSelectionState();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _finishPicking:*(a1 + 40) withPreparationOptions:v7];
  }

  else
  {
    v5 = [*(a1 + 40) objects];
    v7 = PXMap();

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained pickerCoordinator];
    [v6 deselectItemsWithIdentifiers:v7];
  }
}

void sub_1000019C8(uint64_t a1)
{
  v4 = [*(a1 + 32) loadingStatusManager];
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"PhotosMessagesExtensionProgressTrackingIDKey"];
  [*(a1 + 40) fractionCompleted];
  [v4 didUpdateLoadOperationWithTrackingID:v3 withProgress:?];
}

id sub_100001E50(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 10;
  }

  else
  {
    v2 = 15;
  }

  return [a2 setEdgesWithoutContentMargins:v2];
}

void sub_100001F14(id a1, PXMutableMessagesExtensionViewModel *a2)
{
  v2 = a2;
  [(PXMutableMessagesExtensionViewModel *)v2 setSelectedMessageText:0];
  [(PXMutableMessagesExtensionViewModel *)v2 setSelectedMessageDate:0];
}

void sub_100002044(id a1, PXMutableMessagesExtensionViewModel *a2)
{
  v2 = a2;
  [(PXMutableMessagesExtensionViewModel *)v2 clearSelection];
  [(PXMutableMessagesExtensionViewModel *)v2 setDrawerActive:0];
}

void sub_100002558(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSelectedMessageText:v3];
  [v4 setSelectedMessageDate:*(a1 + 40)];
}

void sub_1000027C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 url];
  [v5 setSelectedURL:v4];

  [v5 setSelectedActivityType:*(a1 + 40)];
}

void sub_10000313C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unstaging complete: %@", &v4, 0xCu);
  }
}

void sub_10000341C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Staging complete: %@", &v4, 0xCu);
  }
}

void sub_1000037F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003810(uint64_t a1)
{
  v2 = dispatch_time(0, 300000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000038C8;
  v3[3] = &unk_10000C770;
  v5 = *(a1 + 40);
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_1000038C8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismiss];
  }
}

void sub_100003CC0(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100003D1C(id a1, UIViewController *a2)
{
  v3 = a2;
  [(UIViewController *)v3 willMoveToParentViewController:0];
  v2 = [(UIViewController *)v3 view];
  [v2 removeFromSuperview];

  [(UIViewController *)v3 removeFromParentViewController];
}

void sub_100003F78(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_1000048D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSSet setWithObject:objc_opt_class()];
  v11 = 0;
  v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v4 fromData:v3 error:&v11];

  v6 = v11;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    v8 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 32) + 8) + 24)];
    [v7 setSidecarObject:v8 forKey:AEPackageTransportSidecarProposedOrderKey];

    v9 = [v7 copy];
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v7 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to unarchive draft asset archive with error: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

NSString *__cdecl sub_100004AD8(id a1, AEAssetPackage *a2)
{
  v2 = [(AEAssetPackage *)a2 identifier];
  v3 = [PHAsset localIdentifierWithUUID:v2];

  return v3;
}

void sub_100004CD0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 CGContext];
  v4 = [v8 format];
  if (*(a1 + 40) == 1)
  {
    v5 = +[UIColor redColor];
  }

  else
  {
    v6 = +[UIColor systemBackgroundColor];
    v7 = [*(a1 + 32) traitCollection];
    v5 = [v6 resolvedColorWithTraitCollection:v7];
  }

  CGContextSetFillColorWithColor(v3, [v5 CGColor]);

  [v4 bounds];
  [v8 fillRect:?];
}

void sub_100004EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _contentReadyForDisplayTimeout];
}

void sub_10000556C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005594(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) expectedPackageIdentifiers];
  v10 = [v9 containsObject:*(a1 + 40)];

  if (!v10)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    v11 = [v7 mutableCopy];
    [v11 setMediaOrigin:4];
    v12 = *(a1 + 32);
    v13 = [v7 identifier];
    v14 = [v12 proposedStagedIndexForPendingIdentifier:v13];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [NSNumber numberWithUnsignedInteger:v14];
      [v11 setSidecarObject:v15 forKey:AEPackageTransportSidecarProposedOrderKey];
    }

    [*(a1 + 32) stagePackage:v11];

    goto LABEL_13;
  }

  if (v8)
  {
    [*(a1 + 32) reportError:v8];
LABEL_12:
    [*(a1 + 32) removePendingPackageIdentifier:*(a1 + 40)];
    goto LABEL_13;
  }

  if ((a4 & 1) == 0)
  {
    v16 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Nil package returned from package generator with no error!", v26, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v18 = [WeakRetained loadingProgresses];

  v19 = [v18 objectForKey:*(a1 + 40)];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"PhotosMessagesExtensionProgressTrackingIDKey"];

    v23 = *(a1 + 48);
    if (a4)
    {
      [v23 didCancelLoadOperationWithTrackingID:v22];
    }

    else
    {
      [v23 didCompleteLoadOperationWithTrackingID:v22 withSuccess:v7 != 0 error:v8];
    }

    v24 = *(a1 + 56);
    v25 = NSStringFromSelector("fractionCompleted");
    [v20 removeObserver:v24 forKeyPath:v25];

    [v18 removeObjectForKey:*(a1 + 40)];
  }

LABEL_19:
}

NSString *__cdecl sub_1000057D8(id a1, PHAsset *a2)
{
  v2 = [(PHAsset *)a2 localIdentifier];
  v3 = [PHObject uuidFromLocalIdentifier:v2];

  return v3;
}

void sub_100005C50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to stage message with error: %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5[40] == 1)
    {
      [v5 dismiss];
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"DidStageBubble" object:0];
  }
}

void sub_100005D48(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to direct send message with error: %@", &v4, 0xCu);
    }
  }
}

void sub_100006494(id a1)
{
  v1 = +[PXPreloadScheduler sharedScheduler];
  [v1 scheduleDeferredTaskWithQoS:1 block:&stru_10000C478];
}

void sub_100006568(id a1)
{
  v1 = +[NSBundle mainBundle];
  [CPAnalytics setupWithConfigurationFilename:@"CPAnalyticsConfig-PhotosMessagesApp" inBundle:v1];

  v2 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  [CPAnalytics setupSystemPropertyProvidersForLibrary:v2];

  +[CPAnalytics startAppTracking];
  +[CPAnalytics startViewTracking];

  +[UIApplication pu_prepareCPAnalytics];
}

void sub_100006638(id a1)
{
  [PXSettings setSuiteName:@"com.apple.mobileslideshow"];
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"UIBarsApplyChromelessEverywhere"];

  _PXAsynchronousAddDragAndDropFileProviderDomain();
}