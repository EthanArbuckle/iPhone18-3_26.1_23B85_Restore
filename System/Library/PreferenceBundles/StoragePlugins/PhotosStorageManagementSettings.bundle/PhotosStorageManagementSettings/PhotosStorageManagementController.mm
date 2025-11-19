@interface PhotosStorageManagementController
- (BOOL)_hasCompletedCPLEnablement;
- (BOOL)_isExpungeRecentlyDeletedItemsOptionTip:(id)a3;
- (BOOL)_isOptimizePhotosOptionTip:(id)a3;
- (PhotosStorageManagementController)init;
- (id)_significantTipItemsFromAssets:(id)a3 recoverable:(BOOL)a4;
- (id)_tipForEnableCPLOption;
- (id)_tipForExpungeRecentlyDeletedItemsOption;
- (id)_tipForOptimizePhotosOption;
- (id)_tipForPhotosAction;
- (id)_tipOperationQueue;
- (id)identifier;
- (id)tips;
- (void)_handleFailureToEnableCPLWithError:(id)a3;
- (void)_performTipOperation:(id)a3;
- (void)_presentAlertController:(id)a3;
- (void)_refreshSizeGainForICPLEnableTip;
- (void)_updateStateForEnableCPLOptionTip;
- (void)enableOptionForTip:(id)a3;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)managerDidCancel:(id)a3;
@end

@implementation PhotosStorageManagementController

- (void)managerDidCancel:(id)a3
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Up-sell offer was cancelled by the user.", &v5, 0x16u);
  }
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Loading of Up-sell workflow failed with an error: %@", &v7, 0x20u);
  }
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  v4 = a4;
  v5 = PULocalizedString();
  [v4 setTitle:v5];
}

- (void)_presentAlertController:(id)a3
{
  v12 = a3;
  if (!+[NSThread isMainThread])
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PhotosStorageManagementController.m" lineNumber:504 description:{@"%s must be called on the main thread", "-[PhotosStorageManagementController _presentAlertController:]"}];
  }

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 keyWindow];
  v7 = [v6 rootViewController];

  v8 = [v7 presentedViewController];

  if (v8)
  {
    do
    {
      v9 = [v7 presentedViewController];

      v10 = [v9 presentedViewController];

      v7 = v9;
    }

    while (v10);
  }

  else
  {
    v9 = v7;
  }

  [v9 presentViewController:v12 animated:1 completion:0];
}

- (void)_handleFailureToEnableCPLWithError:(id)a3
{
  v4 = a3;
  if ([v4 code] == &dword_4 + 3)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2048;
      v25 = self;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present insufficient iCloud storage alert", buf, 0x16u);
    }

    v6 = +[UIApplication sharedApplication];
    v7 = [v6 px_firstKeyWindow];
    v8 = [v7 rootViewController];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1760;
    v20[3] = &unk_8308;
    v20[4] = self;
    v21 = v8;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_185C;
    v19[3] = &unk_8420;
    v19[4] = self;
    v9 = v8;
    v10 = [UIAlertController px_alertForCPLEnableError:v4 actionHandler:v20 cancelHandler:v19];
    [(PhotosStorageManagementController *)self _presentAlertController:v10];
  }

  else
  {
    v11 = +[CPNetworkObserver sharedNetworkObserver];
    v12 = [v11 isNetworkReachable];

    v13 = PLUIGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 138543618;
        v23 = objc_opt_class();
        v24 = 2048;
        v25 = self;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present generic failure alert", buf, 0x16u);
      }
    }

    else if (v14)
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2048;
      v25 = self;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present network failure alert", buf, 0x16u);
    }

    v9 = PULocalizedString();
    v15 = PULocalizedString();
    v16 = PULocalizedString();
    v17 = [UIAlertController alertControllerWithTitle:v9 message:v15 preferredStyle:1];
    v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:0];
    [v17 addAction:v18];

    [(PhotosStorageManagementController *)self _presentAlertController:v17];
  }
}

- (void)enableOptionForTip:(id)a3
{
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [(STStorageOptionTip *)v4 identifier];
    *buf = 138543874;
    v42 = v6;
    v43 = 2048;
    v44 = self;
    v45 = 2114;
    v46 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Enable option for storage tip: %{public}@", buf, 0x20u);
  }

  if (self->_enableCPLOptionTip == v4)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v42 = v11;
      v43 = 2048;
      v44 = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Attempting to enable iCloud Photos", buf, 0x16u);
    }

    self->_isEnablingCPL = 1;
    [(PhotosStorageManagementController *)self _updateStateForEnableCPLOptionTip];
    storageManagementUtility = self->_storageManagementUtility;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1FD8;
    v40[3] = &unk_8330;
    v40[4] = self;
    [(PXStorageManagementUtility *)storageManagementUtility enableCPLWithCompletionBlock:v40];
  }

  else if ([(PhotosStorageManagementController *)self _isOptimizePhotosOptionTip:v4])
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v42 = v9;
      v43 = 2048;
      v44 = self;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will enable iCloud Photos optimized mode", buf, 0x16u);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_21A0;
    v37[3] = &unk_8358;
    v38 = v4;
    v39 = self;
    [(PhotosStorageManagementController *)self _performTipOperation:v37];
  }

  else if ([(PhotosStorageManagementController *)self _isExpungeRecentlyDeletedItemsOptionTip:v4])
  {
    v29 = PULocalizedString();
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 keyWindow];
    v15 = [v14 rootViewController];

    v16 = [v15 traitCollection];
    if ([PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:v16])
    {
      v17 = [UIAlertController alertControllerWithTitle:v29 message:0 preferredStyle:0];
    }

    else
    {
      v21 = PULocalizedString();
      v17 = [UIAlertController alertControllerWithTitle:v21 message:v29 preferredStyle:1];
    }

    v22 = PULocalizedString();
    objc_initWeak(&location, self);
    v23 = PULocalizedString();
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_22B8;
    v35[3] = &unk_8380;
    v35[4] = self;
    v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v35];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_23C0;
    v32[3] = &unk_83F8;
    v32[4] = self;
    v33 = v4;
    objc_copyWeak(&v34, &location);
    v25 = [UIAlertAction actionWithTitle:v22 style:2 handler:v32];
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *buf = 138543618;
      v42 = v27;
      v43 = 2048;
      v44 = self;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Present confirmation to empty recently deleted items", buf, 0x16u);
    }

    [v17 addAction:v24];
    [v17 addAction:v25];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2528;
    block[3] = &unk_8308;
    block[4] = self;
    v31 = v17;
    v28 = v17;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = PLUIGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = [(STStorageOptionTip *)v4 identifier];
      *buf = 138543874;
      v42 = v19;
      v43 = 2048;
      v44 = self;
      v45 = 2114;
      v46 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Unknown storage tip: %{public}@", buf, 0x20u);
    }
  }
}

- (BOOL)_isExpungeRecentlyDeletedItemsOptionTip:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:@"ExpungeRecentlyDeletedItemsOptionTip"];

  return v4;
}

- (BOOL)_isOptimizePhotosOptionTip:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:@"OptimizePhotosOptionTip"];

  return v4;
}

- (void)_performTipOperation:(id)a3
{
  v4 = a3;
  v5 = [(PhotosStorageManagementController *)self _tipOperationQueue];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_293C;
  v7[3] = &unk_82E0;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(v5, v7);

  _Block_object_dispose(v10, 8);
}

- (id)_tipOperationQueue
{
  opQueue = self->_opQueue;
  if (!opQueue)
  {
    v4 = dispatch_queue_create("tipQueue", 0);
    v5 = self->_opQueue;
    self->_opQueue = v4;

    opQueue = self->_opQueue;
  }

  return opQueue;
}

- (id)_significantTipItemsFromAssets:(id)a3 recoverable:(BOOL)a4
{
  v5 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2ACC;
  v8[3] = &unk_82B8;
  v6 = v10 = a4;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (void)_updateStateForEnableCPLOptionTip
{
  if ([(PXStorageManagementUtility *)self->_storageManagementUtility isCPLEnabled])
  {
    if ([(PhotosStorageManagementController *)self _hasCompletedCPLEnablement])
    {
      v3 = PULocalizedString();
      v4 = 0;
      v5 = 0;
      v6 = 1.0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (self->_isEnablingCPL)
  {
LABEL_5:
    MGGetBoolAnswer();
    v3 = PULocalizedString();
    v5 = PULocalizedString();
    v4 = 0;
    v6 = -1.0;
    goto LABEL_7;
  }

  v3 = PULocalizedString();
  v5 = 0;
  v6 = 0.0;
  v4 = 1;
LABEL_7:
  v7 = [(PhotosStorageManagementController *)self enableCPLOptionTip];
  [v7 setInfoText:v3];
  *&v8 = v6;
  [v7 setActivationPercent:v8];
  [v7 setActivatingString:v5];
  if (v4)
  {
    storageManagementUtility = self->_storageManagementUtility;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2DA4;
    v10[3] = &unk_8250;
    v11 = v7;
    [(PXStorageManagementUtility *)storageManagementUtility purgeableSizeAndOriginalsInLibrary:v10];
  }

  else
  {
    [v7 setImmediateGain:0];
  }
}

- (id)tips
{
  v3 = +[NSMutableArray array];
  v4 = [(PXStorageManagementUtility *)self->_storageManagementUtility isCPLEnabled];
  if (v4)
  {
    v5 = [(PhotosStorageManagementController *)self _hasCompletedCPLEnablement];
    v6 = [(PXStorageManagementUtility *)self->_storageManagementUtility isOptimizedModeOn];
    v7 = v6 | [(PXStorageManagementUtility *)self->_storageManagementUtility isCPLInExitMode];
    if (v5)
    {
      if (v7)
      {
LABEL_15:
        v16 = +[NSUserDefaults standardUserDefaults];
        v17 = [v16 BOOLForKey:@"PXShowLocalStorageTips"];

        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v8 = v7 ^ 1;
  }

  else
  {
    if (([(PXStorageManagementUtility *)self->_storageManagementUtility shouldHideCPL]& 1) != 0)
    {
      goto LABEL_16;
    }

    v8 = 0;
  }

  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = objc_opt_class();
    v29 = 2048;
    v30 = self;
    v31 = 1024;
    v32 = v4;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Show enable iCloud Photos storage tip (already enabled: %d)", buf, 0x1Cu);
  }

  v10 = [(PhotosStorageManagementController *)self _tipForEnableCPLOption];
  [(PhotosStorageManagementController *)self _updateStateForEnableCPLOptionTip];
  [v3 addObject:v10];

  if (v8)
  {
LABEL_11:
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543618;
      v28 = v12;
      v29 = 2048;
      v30 = self;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Show optimize iCloud Photos storage tip", buf, 0x16u);
    }

    v13 = [(PhotosStorageManagementController *)self _tipForOptimizePhotosOption];
    [v3 addObject:v13];
    storageManagementUtility = self->_storageManagementUtility;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_31AC;
    v25[3] = &unk_8250;
    v26 = v13;
    v15 = v13;
    [(PXStorageManagementUtility *)storageManagementUtility purgeableSizeAndOriginalsInLibrary:v25];
  }

  if (v4)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ([(PXStorageManagementUtility *)self->_storageManagementUtility isDeletableItemsInTrash])
  {
    v18 = [(PhotosStorageManagementController *)self _tipForExpungeRecentlyDeletedItemsOption];
    if (v18)
    {
      v19 = PLUIGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v28 = v20;
        v29 = 2048;
        v30 = self;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Show empty recently deleted storage tip", buf, 0x16u);
      }

      [v3 addObject:v18];
    }
  }

  if ([(PXStorageManagementUtility *)self->_storageManagementUtility localStorageTotalBytesSize])
  {
    v21 = PLUIGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543618;
      v28 = v22;
      v29 = 2048;
      v30 = self;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Show photos storage tip", buf, 0x16u);
    }

    v23 = [(PhotosStorageManagementController *)self _tipForPhotosAction];
    [v3 addObject:v23];
  }

LABEL_26:

  return v3;
}

- (BOOL)_hasCompletedCPLEnablement
{
  cplStatus = self->_cplStatus;
  if (cplStatus)
  {
    goto LABEL_8;
  }

  v4 = [(PHPhotoLibrary *)self->_photoLibrary cplStatus];
  v5 = self->_cplStatus;
  self->_cplStatus = v4;

  [(CPLStatus *)self->_cplStatus setDelegate:self];
  v6 = self->_cplStatus;
  v7 = PLUIGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = self->_cplStatus;
      v19 = 138543874;
      v20 = v9;
      v21 = 2048;
      v22 = self;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> [CPLStatus] Created: %@", &v19, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    photoLibrary = self->_photoLibrary;
    v13 = [(PHPhotoLibrary *)photoLibrary photoLibraryURL];
    v19 = 138544130;
    v20 = v11;
    v21 = 2048;
    v22 = self;
    v23 = 2112;
    v24 = photoLibrary;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "<%{public}@:%p> [CPLStatus] Failed to acquire for library: %@, URL: %@", &v19, 0x2Au);
  }

  cplStatus = self->_cplStatus;
  if (cplStatus)
  {
LABEL_8:
    v14 = [(CPLStatus *)cplStatus initialSyncDate];
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = PLUIGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v19 = 138543874;
    v20 = v17;
    v21 = 2048;
    v22 = self;
    v23 = 1024;
    LODWORD(v24) = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> [CPLStatus] hasCompletedCPLEnablement: %d", &v19, 0x1Cu);
  }

  return v15;
}

- (id)_tipForPhotosAction
{
  v3 = objc_alloc_init(STStorageActionTip);
  v4 = PXLocalizedString();
  [v3 setTitle:v4];

  v5 = PXLocalizedString();
  [v3 setInfoText:v5];

  [v3 setRepresentedApp:@"com.apple.mobileslideshow"];
  [v3 setIdentifier:@"PhotosActionTip"];
  [v3 setDetailControllerClass:objc_opt_class()];
  [v3 setSize:{-[PXStorageManagementUtility localStorageTotalBytesSize](self->_storageManagementUtility, "localStorageTotalBytesSize")}];

  return v3;
}

- (id)_tipForExpungeRecentlyDeletedItemsOption
{
  v3 = [(PXStorageManagementUtility *)self->_storageManagementUtility sizeForRecentlyDeletedItems];
  v4 = [v3 unsignedLongLongValue];
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(STStorageOptionTip);
    v7 = PULocalizedString();
    [v6 setInfoText:v7];

    v8 = PULocalizedString();
    [v6 setTitle:v8];

    v9 = PULocalizedString();
    [v6 setEnableButtonTitle:v9];

    [v6 setDelegate:self];
    [v6 setRepresentedApp:@"com.apple.mobileslideshow"];
    [v6 setImmediateGain:v5];
    [v6 setIdentifier:@"ExpungeRecentlyDeletedItemsOptionTip"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_tipForEnableCPLOption
{
  enableCPLOptionTip = self->_enableCPLOptionTip;
  if (!enableCPLOptionTip)
  {
    v4 = objc_alloc_init(STStorageOptionTip);
    v5 = PULocalizedString();
    [v4 setTitle:v5];

    v6 = PULocalizedString();
    [v4 setConfirmationText:v6];

    v7 = PULocalizedString();
    [v4 setConfirmationButtonTitle:v7];

    [v4 setDelegate:self];
    [v4 setRepresentedApp:@"com.apple.mobileslideshow"];
    [v4 setIdentifier:@"EnableCPLOptionOptionTip"];
    v8 = self->_enableCPLOptionTip;
    self->_enableCPLOptionTip = v4;
    v9 = v4;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_refreshSizeGainForICPLEnableTip" name:PXStorageManagementICPLEnableTipSizeRefreshRequired object:0];

    enableCPLOptionTip = self->_enableCPLOptionTip;
  }

  return enableCPLOptionTip;
}

- (id)_tipForOptimizePhotosOption
{
  v3 = objc_alloc_init(STStorageOptionTip);
  v4 = PULocalizedString();
  [v3 setTitle:v4];

  v5 = +[UIDevice currentDevice];
  v6 = [v5 model];

  if (([v6 isEqualToString:@"iPhone"] & 1) == 0)
  {
    [v6 isEqualToString:@"iPad"];
  }

  v7 = PULocalizedString();
  [v3 setInfoText:v7];
  [v3 setDelegate:self];
  [v3 setRepresentedApp:@"com.apple.mobileslideshow"];
  [v3 setIdentifier:@"OptimizePhotosOptionTip"];

  return v3;
}

- (id)identifier
{
  if (qword_C910 != -1)
  {
    dispatch_once(&qword_C910, &stru_8290);
  }

  v3 = qword_C908;

  return v3;
}

- (void)_refreshSizeGainForICPLEnableTip
{
  enableCPLOptionTip = self->_enableCPLOptionTip;
  if (enableCPLOptionTip)
  {
    v4 = enableCPLOptionTip;
    storageManagementUtility = self->_storageManagementUtility;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_39F4;
    v7[3] = &unk_8250;
    v8 = v4;
    v6 = v4;
    [(PXStorageManagementUtility *)storageManagementUtility purgeableSizeAndOriginalsInLibrary:v7];
  }
}

- (PhotosStorageManagementController)init
{
  v8.receiver = self;
  v8.super_class = PhotosStorageManagementController;
  v2 = [(PhotosStorageManagementController *)&v8 init];
  if (v2)
  {
    v3 = +[PHPhotoLibrary px_systemPhotoLibrary];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = v3;

    v5 = [[PXStorageManagementUtility alloc] initWithPhotoLibrary:v2->_photoLibrary];
    storageManagementUtility = v2->_storageManagementUtility;
    v2->_storageManagementUtility = v5;
  }

  return v2;
}

@end