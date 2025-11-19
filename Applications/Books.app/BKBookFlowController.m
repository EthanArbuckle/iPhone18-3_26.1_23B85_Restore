@interface BKBookFlowController
- (BKBookFlowController)initWithLibraryAssetProvider:(id)a3;
- (BKSceneHosting)sceneHosting;
- (BOOL)_isPresenterAudiobook:(id)a3;
- (BOOL)_shouldOpenBookUsingLargeCover:(id)a3;
- (BOOL)_wantsMinifiedAssetPresenterToOpenForTransaction:(id)a3 forceOpen:(BOOL)a4;
- (BOOL)isOpeningFromCard:(id)a3 options:(id)a4;
- (CGRect)openAnimationRect;
- (CGRect)openAnimationSourceRect;
- (id)_bookFlowAssetPresentingForShowAssetAction:(id)a3;
- (id)_currentAssetPresentersFromAllScenes;
- (id)_currentPresenterFromAllScenesForAssetID:(id)a3;
- (id)_dockedAssetViewController;
- (id)_largeCoverViewControllerForAssetIdentifier:(id)a3 download:(BOOL)a4 options:(id)a5 minifiedPresenter:(id)a6 holdAnimationAssertion:(id)a7 withTransaction:(id)a8;
- (id)_largeCoverViewControllerForBook:(id)a3 options:(id)a4 transaction:(id)a5 minifiedPresenter:(id)a6 holdAnimationAssertion:(id)a7;
- (id)_optionsForLibraryAsset:(id)a3 transaction:(id)a4;
- (id)_prepareOpenFromCardOverlayWithTransaction:(id)a3 assetIdentifier:(id)a4 options:(id)a5;
- (id)_pushLargeCoverAndOpenBook:(id)a3 options:(id)a4 minifiedPresenter:(id)a5 animated:(BOOL)a6 transaction:(id)a7 completion:(id)a8;
- (id)_removePresenters:(id)a3 thatMustStayOpenWhenOpeningBook:(id)a4;
- (id)_storeController;
- (id)bookPresenterCurrentlyOpenBookForSingleScene:(id)a3;
- (id)currentAssetPresentersForSingleSceneWithTransaction:(id)a3;
- (void)_closeMinifiedPresenters:(id)a3 excludeAssetID:(id)a4 isAudiobook:(BOOL)a5 completion:(id)a6;
- (void)_closePresenter:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_closePresenters:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_libraryOwnershipNotification:(id)a3;
- (void)_obtainImageForAsset:(id)a3 withAssetIdentifier:(id)a4 options:(id)a5 withTransaction:(id)a6 completion:(id)a7;
- (void)_openPDFAsset:(id)a3;
- (void)_optionallyCloseCardStack:(id)a3 inPresentedVC:(id)a4 completion:(id)a5;
- (void)_pendingAssetUpdateNotification:(id)a3;
- (void)_popToPresenterIfNeeded:(id)a3 completion:(id)a4;
- (void)_prepareMinifiedAssetPresenterForAssetID:(id)a3 transaction:(id)a4 force:(BOOL)a5 openBook:(BOOL)a6 showRestorationScrim:(BOOL)a7;
- (void)_presentItem:(id)a3 transaction:(id)a4 host:(id)a5 source:(id)a6 options:(id)a7;
- (void)_presentViewController:(id)a3 bookFlowPresenting:(id)a4 options:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)_presentViewController:(id)a3 transaction:(id)a4 animated:(BOOL)a5 overlayView:(id)a6 options:(id)a7 completion:(id)a8;
- (void)_processAndClearReopenAssetIDs:(id)a3 options:(id)a4 assetIDToPresenterMap:(id)a5;
- (void)_processNextShowAssetInvocation;
- (void)_promptInVCToRestartReadingFromBeginning:(id)a3 completion:(id)a4;
- (void)_removeViewForCardOverlayWithTransaction:(id)a3 options:(id)a4;
- (void)_replacePresenterWithTransaction:(id)a3 oldPresenter:(id)a4 newPresenter:(id)a5 completion:(id)a6;
- (void)_showAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_showAssetWithoutStateRestoration:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_showRestorationScrimForAssetID:(id)a3 transaction:(id)a4;
- (void)_showStoreAsset:(id)a3 asset:(id)a4 options:(id)a5;
- (void)_updateAssetAfterOpen:(id)a3;
- (void)closeAllPresentersForSingleSceneWithTransaction:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)enqueueShowAssetWithTransactionProvider:(id)a3 assetID:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7;
- (void)handleBookOpenErrorWithTransaction:(id)a3 error:(id)a4 assetIdentifier:(id)a5;
- (void)handleFamilyChangeErrorWithTransaction:(id)a3 error:(id)a4 assetIdentifier:(id)a5;
- (void)minifiedAssetPresenterForAssetIdentifier:(id)a3 transaction:(id)a4 completion:(id)a5;
- (void)minifiedAssetPresenterForAssetIdentifier:(id)a3 transaction:(id)a4 options:(id)a5 completion:(id)a6;
- (void)preflightShowAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 completion:(id)a5;
- (void)presentItem:(id)a3 transaction:(id)a4 host:(id)a5 source:(id)a6 options:(id)a7;
- (void)requestOpenLastKnownBookWithTransaction:(id)a3;
- (void)requestReopenAssetIDs:(id)a3 options:(id)a4;
- (void)showAssetWithTransaction:(id)a3 assetID:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7;
- (void)showAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7;
- (void)showAssetWithTransaction:(id)a3 storeID:(id)a4 options:(id)a5;
- (void)showInstallationErrorWithTransaction:(id)a3 assetIdentifier:(id)a4;
- (void)showNotEnoughMemAlertWithTransaction:(id)a3 name:(id)a4;
- (void)showStoreAsset:(id)a3 asset:(id)a4 options:(id)a5;
@end

@implementation BKBookFlowController

- (BKBookFlowController)initWithLibraryAssetProvider:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKBookFlowController;
  v5 = [(BKBookFlowController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(BKBookFlowController *)v5 setLibraryAssetProvider:v4];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_libraryOwnershipNotification:" name:BKLibraryOwnershipDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v6 selector:"_pendingAssetUpdateNotification:" name:BKLibraryPendingUpdateNotification object:0];

    v9 = objc_alloc_init(NSArray);
    pendingShowAssetInvocations = v6->_pendingShowAssetInvocations;
    v6->_pendingShowAssetInvocations = v9;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BKLibraryOwnershipDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = BKBookFlowController;
  [(BKBookFlowController *)&v4 dealloc];
}

- (void)_pendingAssetUpdateNotification:(id)a3
{
  v4 = [a3 object];
  [v4 assetID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100089FA8;
  v6[3] = &unk_100A03440;
  v7 = v6[4] = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)_libraryOwnershipNotification:(id)a3
{
  v27 = self;
  v30 = a3;
  v3 = [v30 userInfo];
  objc_opt_class();
  v4 = BCGetUnsafeAppDelegateReference();
  v5 = BUDynamicCast();

  v28 = v5;
  v6 = [v5 ubiquityStatusMonitor];
  [v6 isICloudDriveEnabled];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v3;
  obj = [v3 objectForKeyedSubscript:BKLibraryOwnershipAssetsKey];
  v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v37 = *v42;
    v38 = 0;
    v35 = BKLibraryOwnershipNewDatasourceKey;
    v36 = BKLibraryOwnershipOldDatasourceKey;
    v33 = BKLibraryOwnershipOldStateKey;
    v34 = BKLibraryOwnershipNewStateKey;
    v32 = BKLibraryOwnershipAssetIDKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{v36, v27}];
        v12 = [v11 stringValue];

        v13 = [v10 objectForKeyedSubscript:v35];
        v14 = [v13 stringValue];

        v15 = [v10 objectForKeyedSubscript:v34];
        v16 = [v15 integerValue];

        v17 = [v10 objectForKeyedSubscript:v33];
        v18 = [v17 integerValue];

        v19 = [v10 objectForKeyedSubscript:v32];
        v20 = @"com.apple.iBooks.plist.sample.stashed";
        v21 = @"com.apple.ibooks.plist.untethered";
        if ([v12 isEqualToString:v20])
        {
          v22 = [v14 isEqualToString:v21];
          if (v16 == 2)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = [v12 isEqualToString:v21];
        if (v16 == 2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v19 && v18 == 1 && (v23 & 1) == 0 && (v25 & 1) == 0)
        {
          v26 = v38;
          if (!v38)
          {
            v26 = objc_alloc_init(NSMutableSet);
          }

          v38 = v26;
          [v26 addObject:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v8);
  }

  else
  {
    v38 = 0;
  }

  if ([v38 count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008A59C;
    block[3] = &unk_100A03440;
    block[4] = v27;
    v40 = v38;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)_storeController
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 storeController];

  return v3;
}

- (id)_optionsForLibraryAsset:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  if ([v6 isPreorderBook])
  {
    [v8 setObject:&__kCFBooleanTrue forKey:AEHelperNumberIsPreorderKey];
  }

  if ([v6 isAudiobook])
  {
    v9 = [v6 lastOpenDate];

    if (v9)
    {
      v10 = [v6 lastOpenDate];
      [v8 setObject:v10 forKey:AEHelperDateLastOpenKey];
    }

    if ([v6 isStore])
    {
      v11 = [v6 supplementalContentAssets];
      v12 = [v11 allObjects];
      v13 = [v12 bu_arrayByInvokingBlock:&stru_100A04EA8];
      v14 = [v13 bu_arrayByRemovingNSNulls];

      [v8 setObject:v14 forKeyedSubscript:AEHelperNumberSupplementalContentAssetIDs];
    }

    else
    {
      [v8 setObject:&__NSArray0__struct forKeyedSubscript:AEHelperNumberSupplementalContentAssetIDs];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008AE14;
    v18[3] = &unk_100A04ED0;
    v18[4] = self;
    v19 = v7;
    v20 = v6;
    v15 = objc_retainBlock(v18);
    v16 = [v15 copy];
    [v8 setObject:v16 forKey:AEHelperImageMetadataCoverBlockKey];

    [v8 setObject:&__kCFBooleanFalse forKey:@"BKBookPresentingResetLocationForMiniToFullTransition"];
  }

  return v8;
}

- (id)_largeCoverViewControllerForBook:(id)a3 options:(id)a4 transaction:(id)a5 minifiedPresenter:(id)a6 holdAnimationAssertion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = +[NSMutableDictionary dictionary];
  v18 = v17;
  if (v13)
  {
    [v17 addEntriesFromDictionary:v13];
  }

  if (([v12 isDownloading] & 1) != 0 || (objc_msgSend(v12, "isLocal") & 1) == 0)
  {
    v19 = [v12 streamable] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = BKLibraryAssetIdentifierFromAsset();
  v21 = [(BKBookFlowController *)self _largeCoverViewControllerForAssetIdentifier:v20 download:v19 options:v18 minifiedPresenter:v15 holdAnimationAssertion:v14 withTransaction:v16];

  return v21;
}

- (void)_obtainImageForAsset:(id)a3 withAssetIdentifier:(id)a4 options:(id)a5 withTransaction:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 permanentOrTemporaryAssetID];
  if ([v17 length])
  {
    v63 = [v14 objectForKeyedSubscript:@"storeAsset"];
    v18 = [v63 objectForKeyedSubscript:@"artwork"];
    objc_opt_class();
    v19 = BUDynamicCast();
    v64 = v16;
    v67 = v18;
    v62 = v19;
    if (v18)
    {
      v20 = v19;
      if (v19)
      {
        v21 = objc_alloc_init(BICProductProfileData);
        v22 = [v20 assetID];
        [v21 setIdentifier:v22];

        v23 = [v67 objectForKeyedSubscript:@"url"];
        [v21 setUrl:v23];

        v24 = [v67 objectForKeyedSubscript:@"width"];
        [v21 setWidth:{objc_msgSend(v24, "unsignedIntegerValue")}];

        v25 = [v67 objectForKeyedSubscript:@"height"];
        [v21 setHeight:{objc_msgSend(v25, "unsignedIntegerValue")}];

        v26 = +[BCCacheManager defaultCacheManager];
        v27 = [v26 describedImagesFromProductProfile:v21];
        [v26 addDescribedImages:v27];
        v28 = BCImageCacheLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_10078B3F0();
        }
      }
    }

    if (v12)
    {
      v29 = [BKLibraryManager processingOptionsFor:v12 coverEffectsEnvironment:0];
    }

    else
    {
      v29 = 2;
    }

    v66 = v12;
    objc_opt_class();
    v32 = [v14 objectForKeyedSubscript:@"isRTL"];
    v33 = BUDynamicCast();

    v61 = v33;
    v34 = [v33 BOOLValue];
    v35 = +[UIScreen mainScreen];
    [v35 nativeBounds];
    v37 = v36;
    v39 = v38;

    v65 = v15;
    v60 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v15];
    v59 = [v60 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
    v40 = [v59 coverEffectsNightMode];
    v41 = BCImageCacheLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_10078B464();
    }

    if (v40)
    {
      v42 = 64;
    }

    else
    {
      v42 = 0;
    }

    if (v34)
    {
      v43 = 128;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v29 | v42;
    v45 = [BICDescribedImage describedImageWithIdentifier:v17 size:v44 | 0x100u processingOptions:v37, v39];
    [v45 setRequestOptions:18];
    [v45 setPriority:6];
    v46 = [v14 objectForKeyedSubscript:@"title"];
    [v45 setTitle:v46];

    v47 = [v14 objectForKeyedSubscript:@"author"];
    [v45 setAuthor:v47];

    v48 = [v45 copy];
    [v48 setRequestOptions:514];
    v49 = [BICDescribedImage describedImageWithIdentifier:v17 size:v44 | 0x10u processingOptions:v37, v39];
    [v49 setRequestOptions:18];
    [v49 setPriority:6];
    v50 = [v14 objectForKeyedSubscript:@"title"];
    [v49 setTitle:v50];

    v51 = [v14 objectForKeyedSubscript:@"author"];
    [v49 setAuthor:v51];

    v86[0] = 0;
    v86[1] = v86;
    v86[2] = 0x3032000000;
    v86[3] = sub_100027334;
    v86[4] = sub_1000275E0;
    v87 = 0;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = sub_100027334;
    v84[4] = sub_1000275E0;
    v85 = 0;
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x3032000000;
    v82[3] = sub_100027334;
    v82[4] = sub_1000275E0;
    v83 = 0;
    v52 = dispatch_group_create();
    dispatch_group_enter(v52);
    dispatch_group_enter(v52);
    dispatch_group_enter(v52);
    v53 = +[BCCacheManager defaultCacheManager];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10008B8C8;
    v79[3] = &unk_100A04EF8;
    v81 = v86;
    v54 = v52;
    v80 = v54;
    [v53 fetchCGImageFor:v48 forRequest:v48 timeOut:1 waitForNonGeneric:v79 completion:4.0];

    v55 = +[BCCacheManager defaultCacheManager];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_10008B964;
    v76[3] = &unk_100A04EF8;
    v78 = v84;
    v56 = v54;
    v77 = v56;
    [v55 fetchCGImageFor:v45 forRequest:v45 timeOut:1 waitForNonGeneric:v76 completion:4.0];

    v57 = +[BCCacheManager defaultCacheManager];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10008BA00;
    v73[3] = &unk_100A04EF8;
    v75 = v82;
    v58 = v56;
    v74 = v58;
    [v57 fetchCGImageFor:v49 forRequest:v49 timeOut:1 waitForNonGeneric:v73 completion:4.0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008BAC0;
    block[3] = &unk_100A04F20;
    v70 = v86;
    v71 = v84;
    v16 = v64;
    v69 = v64;
    v72 = v82;
    dispatch_group_notify(v58, &_dispatch_main_q, block);

    _Block_object_dispose(v82, 8);
    _Block_object_dispose(v84, 8);

    _Block_object_dispose(v86, 8);
    v15 = v65;
    v12 = v66;
  }

  else
  {
    v30 = objc_retainBlock(v16);
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0, 0, 0);
    }
  }
}

- (id)_largeCoverViewControllerForAssetIdentifier:(id)a3 download:(BOOL)a4 options:(id)a5 minifiedPresenter:(id)a6 holdAnimationAssertion:(id)a7 withTransaction:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_opt_new();
  v20 = [(BKBookFlowController *)self libraryAssetProvider];
  v21 = [v20 libraryAssetOnMainQueueWithAssetIdentifier:v14];

  v22 = sub_100089C18();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558530;
    v48 = 1752392040;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _largeCoverViewControllerForAssetIdentifier: %@", buf, 0x20u);
  }

  v23 = [v21 contentType];
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_10008BE44;
  v37 = &unk_100A04FC0;
  v24 = (v23 - 7) != 65534 && (v23 - 7) != 0xFFFF;
  v45 = v24;
  v38 = v15;
  v39 = v14;
  v40 = v17;
  v41 = self;
  v46 = a4;
  v42 = v16;
  v43 = v18;
  v25 = v19;
  v44 = v25;
  v26 = v18;
  v27 = v16;
  v28 = v17;
  v29 = v14;
  v30 = v15;
  v31 = objc_retainBlock(&v34);
  [(BKBookFlowController *)self _obtainImageForAsset:v21 withAssetIdentifier:v29 options:v30 withTransaction:v26 completion:v31, v34, v35, v36, v37];
  v32 = v25;

  return v25;
}

- (id)_bookFlowAssetPresentingForShowAssetAction:(id)a3
{
  v4 = a3;
  v5 = [(BKBookFlowController *)self sceneHosting];
  v6 = [v5 defaultSceneControllerForTransaction:v4];

  if (!v6)
  {
    sub_10078B4D8();
  }

  v7 = [v6 bookFlowAssetPresenting];
  if (!v7)
  {
    sub_10078B510();
  }

  return v7;
}

- (void)_presentViewController:(id)a3 transaction:(id)a4 animated:(BOOL)a5 overlayView:(id)a6 options:(id)a7 completion:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = sub_100089C18();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v14;
    v35 = 1024;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_presentViewController: %@ animated: %{BOOL}d", buf, 0x12u);
  }

  v20 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v15];
  v21 = v20;
  if (v16)
  {
    v22 = [v20 presenterModalPresentingViewController];
    v23 = [v22 view];
    [v23 addSubview:v16];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10008C78C;
    v28 = &unk_100A04FE8;
    v29 = self;
    v30 = v15;
    v31 = v17;
    v32 = v18;
    v24 = objc_retainBlock(&v25);
  }

  else
  {
    v24 = objc_retainBlock(v18);
  }

  [(BKBookFlowController *)self _presentViewController:v14 bookFlowPresenting:v21 options:v17 animated:v11 completion:v24, v25, v26, v27, v28, v29];
}

- (void)_presentViewController:(id)a3 bookFlowPresenting:(id)a4 options:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v36 = a6;
  v37 = a3;
  v10 = a5;
  v11 = a7;
  v12 = a4;
  v13 = [v12 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost];
  v35 = [v13 ba_effectiveAnalyticsTracker];
  v14 = [v35 chainWithName:@"ContentReading"];
  objc_opt_class();
  v15 = [v10 objectForKeyedSubscript:@"interimTrackerPathOverride"];
  v16 = BUDynamicCast();

  if (v16)
  {
    v17 = [v14 chainWithName:v16];

    v14 = [v17 chainWithName:@"ContentReading"];
  }

  [v37 ba_setAnalyticsTracker:v14];
  objc_opt_class();
  v18 = [v10 objectForKeyedSubscript:@"rawUpSellData"];
  v19 = BUDynamicCast();

  if (v19)
  {
    v34 = v13;
    objc_opt_class();
    v20 = [v19 valueForKey:BAUpSellLocationKey];
    v21 = BUDynamicCast();
    v22 = [v21 integerValue];

    objc_opt_class();
    v23 = [v19 valueForKey:BAUpSellVariantKey];
    v24 = BUDynamicCast();
    v25 = [v24 integerValue];

    objc_opt_class();
    v26 = [v19 objectForKeyedSubscript:BAUpSellVariantVersionKey];
    v27 = BUDynamicCast();

    objc_opt_class();
    v28 = BUDynamicCast();
    if (v28)
    {
      v29 = [[BAUpSellData alloc] initWithLocation:v22 variant:v25 variantVersion:v27];
      [v28 setUpSellData:v29];
    }

    v13 = v34;
  }

  objc_opt_class();
  v30 = [v10 objectForKeyedSubscript:@"rawAppAnalyticsAdditionalData"];
  v31 = BUDynamicCast();

  if (v31 && _os_feature_enabled_impl())
  {
    objc_opt_class();
    v32 = BUDynamicCast();
    if (v32)
    {
      v33 = [BAAppAnalyticsAdditionalData dataWithDictionary:v31];
      [v32 setAppAnalyticsAdditionalData:v33];
    }
  }

  [v37 setModalPresentationStyle:{0, v34}];
  [v12 presenterShowModalController:v37 animated:v36 completion:v11];
}

- (id)_removePresenters:(id)a3 thatMustStayOpenWhenOpeningBook:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v6 count];
  if (v7 - 1 >= 0)
  {
    v8 = v7;
    do
    {
      --v8;
      if ([v5 isSupplementalContent])
      {
        v9 = [v5 supplementalContentParent];
        v10 = [v9 assetID];
        v11 = [v6 objectAtIndexedSubscript:v8];
        v12 = [v11 assetPresenterAssetID];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          [v6 removeObjectAtIndex:v8];
        }
      }
    }

    while (v8 > 0);
  }

  v14 = [v6 copy];

  return v14;
}

- (id)_pushLargeCoverAndOpenBook:(id)a3 options:(id)a4 minifiedPresenter:(id)a5 animated:(BOOL)a6 transaction:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v17];
  if (!v19)
  {
    sub_10078B548();
  }

  +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008CE48;
  v29[3] = &unk_100A05060;
  v29[4] = self;
  v30 = v14;
  v31 = v15;
  v32 = v17;
  v20 = v33 = v16;
  v36 = a6;
  v34 = v20;
  v35 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v17;
  v24 = v15;
  v25 = v14;
  [v19 presenterFinishModalTransitionsWithCompletion:v29];
  v26 = v35;
  v27 = v20;

  return v20;
}

- (void)enqueueShowAssetWithTransactionProvider:(id)a3 assetID:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v20 = objc_alloc_init(_BKShowAssetInvocation);
  [(_BKShowAssetInvocation *)v20 setTransactionProvider:v16];

  [(_BKShowAssetInvocation *)v20 setAssetID:v15];
  [(_BKShowAssetInvocation *)v20 setLocation:v14];

  [(_BKShowAssetInvocation *)v20 setOptions:v13];
  [(_BKShowAssetInvocation *)v20 setCompletion:v12];

  v17 = [(BKBookFlowController *)self pendingShowAssetInvocations];
  v18 = [v17 arrayByAddingObject:v20];
  [(BKBookFlowController *)self setPendingShowAssetInvocations:v18];

  v19 = [(BKBookFlowController *)self runningShowAssetInvocation];

  if (!v19)
  {
    [(BKBookFlowController *)self _processNextShowAssetInvocation];
  }
}

- (void)_processNextShowAssetInvocation
{
  v3 = [(BKBookFlowController *)self runningShowAssetInvocation];

  if (v3)
  {
    sub_10078B580();
  }

  v4 = [(BKBookFlowController *)self pendingShowAssetInvocations];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BKBookFlowController *)self pendingShowAssetInvocations];
    v7 = [v6 firstObject];
    [(BKBookFlowController *)self setRunningShowAssetInvocation:v7];

    v8 = [(BKBookFlowController *)self pendingShowAssetInvocations];
    v9 = [v8 subarrayWithRange:{1, v5 - 1}];
    [(BKBookFlowController *)self setPendingShowAssetInvocations:v9];

    v10 = [v7 transactionProvider];

    if (v10)
    {
      v11 = [v7 transactionProvider];
      v12 = [v11 newShowAssetTransaction];

      v13 = [v7 options];
      v14 = [v13 mutableCopy];

      if (!v14)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
      }

      if (+[BKSceneUtilities hasMultiWindowEnabled])
      {
        [v14 setObject:v12 forKeyedSubscript:BCTransactionOptionsTransactionKey];
      }

      objc_initWeak(&location, self);
      v15 = [v7 assetID];
      v16 = [v7 location];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008D668;
      v17[3] = &unk_100A05088;
      v18 = v7;
      objc_copyWeak(&v19, &location);
      [(BKBookFlowController *)self showAssetWithTransaction:v12 assetID:v15 location:v16 options:v14 completion:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_processAndClearReopenAssetIDs:(id)a3 options:(id)a4 assetIDToPresenterMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 firstObject];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BKTransactionProviding];
      v15 = [v14 newShowAssetTransaction];
      v16 = [v9 mutableCopy];
      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
      }

      [v16 setObject:v15 forKeyedSubscript:BCTransactionOptionsTransactionKey];
      objc_initWeak(&location, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008D914;
      v17[3] = &unk_100A050B0;
      v18 = v8;
      objc_copyWeak(&v21, &location);
      v19 = v9;
      v20 = v10;
      [(BKBookFlowController *)self showAssetWithTransaction:v15 assetID:v11 location:0 options:v16 completion:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

- (void)requestReopenAssetIDs:(id)a3 options:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentingCloseAndReopenAssetIfNeeded"];
  v10 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(BKBookFlowController *)self _currentAssetPresentersFromAllScenes];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 assetPresenterAssetID];

        if (v17)
        {
          v18 = [v16 assetPresenterAssetID];
          [v10 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [v20 mutableCopy];
  [(BKBookFlowController *)self _processAndClearReopenAssetIDs:v19 options:v9 assetIDToPresenterMap:v10];
}

- (void)_prepareMinifiedAssetPresenterForAssetID:(id)a3 transaction:(id)a4 force:(BOOL)a5 openBook:(BOOL)a6 showRestorationScrim:(BOOL)a7
{
  v7 = a6;
  v10 = a3;
  v11 = a4;
  if (![v10 length])
  {
    goto LABEL_27;
  }

  if (v7)
  {
    v12 = BCCurrentBookLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Requesting opening of the last known open book %@.", buf, 0xCu);
    }
  }

  v13 = BCCurrentBookLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Requesting minified opening of book %@.", buf, 0xCu);
  }

  v14 = [(BKBookFlowController *)self libraryAssetProvider];
  v15 = [v14 libraryAssetOnMainQueueWithAssetID:v10];

  if (([v15 canOpen] & 1) == 0)
  {

    v20 = BCCurrentBookLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "Requested minified opening of book that is not local or streamable.";
      goto LABEL_15;
    }

LABEL_16:

    v15 = 0;
    goto LABEL_17;
  }

  v16 = [v15 isExplicit];
  v17 = [v16 BOOLValue];

  if (!v17)
  {
    if (![v15 isEphemeral])
    {
      goto LABEL_17;
    }

    v20 = BCCurrentBookLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v21 = "The book we tried to re-open is ephemeral.";
    goto LABEL_15;
  }

  v18 = [(BKBookFlowController *)self libraryAssetProvider];
  v19 = [v18 isExplicitMaterialAllowed];

  if ((v19 & 1) == 0)
  {

    v20 = BCCurrentBookLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "Book is explicit which is not allowed for opening.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  v22 = [v15 assetID];
  if (v22)
  {
    v23 = [(BKBookFlowController *)self libraryAssetProvider];
    v24 = [v23 libraryAssetOnMainQueueWithAssetID:v22];

    v25 = [(BKBookFlowController *)self minifiedPresenter];
    [v25 setShouldIgnoreCurrentBookNotifications:1];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10008E03C;
    v38[3] = &unk_100A05128;
    v38[4] = self;
    v26 = v24;
    v39 = v26;
    v40 = v22;
    v27 = v11;
    v41 = v27;
    v42 = v7;
    v28 = objc_retainBlock(v38);
    if ([v26 isAudiobook])
    {
      v29 = [(BKBookFlowController *)self _optionsForLibraryAsset:v26 transaction:v27];
      v30 = [v29 mutableCopy];

      [v30 setObject:&__kCFBooleanTrue forKeyedSubscript:AEAudiobookOptionsShouldNotAutoplayKey];
      v31 = _AEBookPluginsAudiobookLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Preventing auto-play of audiobook on auto-reopen of previous asset.", buf, 2u);
      }

      (v28[2])(v28, v30);
    }

    else
    {
      if (+[BKAssetUtilities supportsRestorationSnapshots:](BKAssetUtilities, "supportsRestorationSnapshots:", [v26 contentType]))
      {
        [(BKBookFlowController *)self _showRestorationScrimForAssetID:v10 transaction:v27];
      }

      v32 = +[BKAppDelegate delegate];
      v33 = [v32 appLaunchCoordinator];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10008E798;
      v34[3] = &unk_100A05150;
      v37 = v28;
      v34[4] = self;
      v35 = v26;
      v36 = v27;
      [v33 appLaunchCoordinatorOnConditionMask:0x4000 blockID:@"minifiedAssetPresenter resolveAndShowAsset" performBlock:v34];

      v30 = v37;
    }
  }

LABEL_27:
}

- (void)_showRestorationScrimForAssetID:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:a4];
  v8 = [v7 presenterModalPresentingViewController];
  v9 = [v8 view];
  v10 = [v9 window];

  if (v10)
  {
    v11 = [[BKRestorationScrimView alloc] initWithAssetID:v6 window:v10];
  }

  else
  {
    v11 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E924;
  block[3] = &unk_100A033C8;
  v14 = v11;
  v12 = v11;
  dispatch_async(&_dispatch_main_q, block);
  [(BKRestorationScrimView *)v12 removeEventually];
}

- (void)requestOpenLastKnownBookWithTransaction:(id)a3
{
  v4 = a3;
  v5 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  if ([v5 length])
  {
    v6 = sub_100089C18();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Open Last Known Book. last ID: %@", &v9, 0xCu);
    }

    v7 = +[BKLastOpenBookManager sharedInstance];
    v8 = [v7 shouldAutoOpenAsset:v5];

    if ((v8 & 1) == 0)
    {
      +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
    }

    [(BKBookFlowController *)self _prepareMinifiedAssetPresenterForAssetID:v5 transaction:v4 force:0 openBook:1 showRestorationScrim:1];
  }
}

- (id)bookPresenterCurrentlyOpenBookForSingleScene:(id)a3
{
  v3 = [a3 bookFlowAssetPresenting];
  v4 = [v3 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

- (void)minifiedAssetPresenterForAssetIdentifier:(id)a3 transaction:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKBookFlowController *)self libraryAssetProvider];
  v13 = [v11 libraryAssetOnMainQueueWithAssetIdentifier:v10];

  v12 = [(BKBookFlowController *)self _optionsForLibraryAsset:v13 transaction:v9];
  [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:v10 transaction:v9 options:v12 completion:v8];
}

- (void)minifiedAssetPresenterForAssetIdentifier:(id)a3 transaction:(id)a4 options:(id)a5 completion:(id)a6
{
  v14 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [(BKBookFlowController *)self minifiedPresenter];

  if (v11)
  {
    v12 = [(BKBookFlowController *)self minifiedPresenter];
    [v12 minifiedPresenterAssetPresenterForAssetIdentifier:v14 options:v9 completion:v10];
  }

  else
  {
    v13 = objc_retainBlock(v10);
    v12 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

- (BOOL)_wantsMinifiedAssetPresenterToOpenForTransaction:(id)a3 forceOpen:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 targetSceneDescriptor];

    if (v8)
    {
      v9 = [v6 targetSceneDescriptor];
      v10 = BUProtocolCast();

      if (!v10)
      {
        sub_10078B5B8();
      }
    }

    else
    {
      v11 = [v6 destinationSceneController];
      v10 = BUProtocolCast();
    }

    v7 = [v10 sceneSupportsMinifiedPresenting];
  }

  return v7;
}

- (void)_updateAssetAfterOpen:(id)a3
{
  v4 = a3;
  if ((+[AEAnnotationSerializationManager managedBooksAllowedToSync]& 1) == 0)
  {
    [(BKBookFlowController *)self libraryAssetProvider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008EE00;
    v7 = v6[3] = &unk_100A044A0;
    v8 = v4;
    v5 = v7;
    [v5 performBlockOnWorkerQueue:v6];
  }
}

- (id)currentAssetPresentersForSingleSceneWithTransaction:(id)a3
{
  v3 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:a3];
  v4 = [v3 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

- (id)_currentAssetPresentersFromAllScenes
{
  v2 = [(BKBookFlowController *)self sceneHosting];
  v3 = [v2 sceneHostingAllViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v3;
}

- (id)_currentPresenterFromAllScenesForAssetID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(BKBookFlowController *)self _currentAssetPresentersFromAllScenes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 assetPresenterAssetID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_dockedAssetViewController
{
  v2 = +[BKAppDelegate sceneManager];
  v3 = [v2 primarySceneController];
  v4 = [v3 rootBarCoordinator];

  v5 = [v4 miniPlayerViewController];
  objc_opt_class();
  v6 = BUClassAndProtocolCast();

  return v6;
}

- (BOOL)_shouldOpenBookUsingLargeCover:(id)a3
{
  v3 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:a3];
  v4 = [v3 presenterShouldOpenBookUsingLargeCover];

  return v4;
}

- (BOOL)_isPresenterAudiobook:(id)a3
{
  v4 = a3;
  v5 = [(BKBookFlowController *)self libraryAssetProvider];
  v6 = [v4 assetPresenterAssetID];

  v7 = [v5 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v6];

  LOBYTE(v5) = [v7 isAudiobook];
  return v5;
}

- (void)_popToPresenterIfNeeded:(id)a3 completion:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 bc_descendentPresentedViewController];

  if (v6)
  {
    v7 = [v9 bc_descendentPresentedViewController];
    [v7 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v8 = objc_retainBlock(v5);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)_replacePresenterWithTransaction:(id)a3 oldPresenter:(id)a4 newPresenter:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:a3];
  if (!v13)
  {
    sub_10078B5F0();
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008F3D4;
  v17[3] = &unk_100A049A0;
  v18 = v13;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v13;
  [v16 presenterDismissModalController:v10 animated:0 completion:v17];
}

- (void)showStoreAsset:(id)a3 asset:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[BKAppDelegate delegate];
  v12 = [v11 appLaunchCoordinator];

  [v12 appLaunchCoordinatorHoldAtConditionAssertion:3];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10008F63C;
  v38 = v37[3] = &unk_100A038D0;
  v13 = v38;
  [v12 appLaunchCoordinatorOnConditionMask:2 blockID:@"showStoreAsset invalidate holdAssertion" performBlock:v37];
  v14 = [v10 objectForKeyedSubscript:@"BKBookPresentingForceOpenBeforeWelcomeCompleted"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10008F644;
    v33[3] = &unk_100A05178;
    v16 = &v34;
    v33[4] = self;
    v34 = v8;
    v17 = &v35;
    v18 = &v36;
    v35 = v9;
    v36 = v10;
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = @"_showStoreAsset forceOpenBeforeWelcome";
    v23 = v33;
    v24 = v12;
    v25 = 2;
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10008F654;
    v29[3] = &unk_100A05178;
    v16 = &v30;
    v29[4] = self;
    v30 = v8;
    v17 = &v31;
    v18 = &v32;
    v31 = v9;
    v32 = v10;
    v26 = v10;
    v27 = v9;
    v28 = v8;
    v22 = @"_showStoreAsset";
    v23 = v29;
    v24 = v12;
    v25 = 10;
  }

  [v24 appLaunchCoordinatorOnConditionMask:v25 blockID:v22 performBlock:v23];
}

- (void)_showStoreAsset:(id)a3 asset:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKBookFlowController *)self minifiedPresenter];

  if (v11)
  {
    v12 = [(BKBookFlowController *)self minifiedPresenter];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008F764;
    v13[3] = &unk_100A051A0;
    v14 = v8;
    v15 = self;
    [v12 minifiedPresenterAssetPresenterForStoreAsset:v9 options:v10 completion:v13];
  }
}

- (CGRect)openAnimationSourceRect
{
  [(BKBookFlowController *)self openAnimationRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isOpeningFromCard:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:a3];
  v8 = [v6 objectForKeyedSubscript:@"BKBookPresentingFromUserActivity"];

  LOBYTE(v6) = [v8 BOOLValue];
  v9 = [v7 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAugmentedExperienceCardPresenting];
  v10 = v9;
  v11 = (v6 & 1) == 0 && [v9 count] != 0;

  return v11;
}

- (id)_prepareOpenFromCardOverlayWithTransaction:(id)a3 assetIdentifier:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100089C18();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 objectForKeyedSubscript:AEAssetLogID];
    *buf = 138412546;
    v57 = v9;
    v58 = 2114;
    v59 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "prepare to open asset %@ from card logID: %{public}@ with transaction", buf, 0x16u);
  }

  v13 = v10;
  v14 = [v13 objectForKeyedSubscript:@"BKBookPresentingOverlayView"];

  v15 = v13;
  if (!v14)
  {
    v53 = v8;
    v16 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v8];
    v17 = [v13 objectForKeyedSubscript:@"BKBookPresentingAnimateFromUid"];
    v18 = [v13 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
    v19 = v18;
    v20 = @"cover";
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [v13 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [v9 permanentOrTemporaryAssetID];
    }

    v25 = v24;

    v26 = [v16 presenterModalPresentingViewController];
    v52 = [v26 presentedViewController];
    v51 = [v52 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost includePresented:1];
    v54 = v17;
    v27 = [v51 coverAnimationHostSourceForUUID:0 uid:v17 refId:v21 refInstance:v25];

    objc_opt_class();
    v55 = v16;
    v28 = BUDynamicCast();
    [v28 setBookOpenAnimationHelper:self];
    [v27 coverAnimationSourceFrame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [v27 coverAnimationSourceReferenceView];
    v62.origin.x = CGRectZero.origin.x;
    v62.origin.y = CGRectZero.origin.y;
    v62.size.width = CGRectZero.size.width;
    v62.size.height = CGRectZero.size.height;
    v61.origin.x = v30;
    v61.origin.y = v32;
    v61.size.width = v34;
    v61.size.height = v36;
    v49 = v37;
    if (!CGRectEqualToRect(v61, v62))
    {
      [v37 convertRect:0 toView:{v30, v32, v34, v36, v37}];
      v30 = v38;
      v32 = v39;
      v34 = v40;
      v36 = v41;
    }

    [(BKBookFlowController *)self setOpenAnimationRect:v30, v32, v34, v36, v49];
    [v27 coverAnimationSourcePrepare];
    v42 = +[UIScreen mainScreen];
    v43 = [v42 snapshotViewAfterScreenUpdates:0];

    [v27 coverAnimationSourceFinalize];
    v44 = [v43 layer];
    [v44 setZPosition:1000.0];

    v45 = [v26 view];
    v46 = [v45 window];
    [v46 addSubview:v43];

    if (v13)
    {
      v47 = [v13 mutableCopy];
    }

    else
    {
      v47 = objc_alloc_init(NSMutableDictionary);
    }

    v15 = v47;
    [v47 setObject:v43 forKeyedSubscript:@"BKBookPresentingOverlayView"];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentWithoutCloseAnimation"];

    v8 = v53;
  }

  return v15;
}

- (void)_removeViewForCardOverlayWithTransaction:(id)a3 options:(id)a4
{
  v6 = a3;
  v9 = [(BKBookFlowController *)self _viewForCardOverlayFromOptions:a4];
  [v9 removeFromSuperview];
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v6];

  objc_opt_class();
  v8 = BUDynamicCast();
  [v8 setBookOpenAnimationHelper:0];
}

- (void)_promptInVCToRestartReadingFromBeginning:(id)a3 completion:(id)a4
{
  v5 = a4;
  v19 = a3;
  v6 = +[NSBundle mainBundle];
  v18 = [v6 localizedStringForKey:@"You Are Reading This Book" value:&stru_100A30A68 table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"The book you selected is already open. Would you like to start from the beginning?" value:&stru_100A30A68 table:0];

  v9 = [UIAlertController alertControllerWithTitle:v18 message:v8 preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100090158;
  v22[3] = &unk_100A051C8;
  v12 = v5;
  v23 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:1 handler:v22];
  [v9 addAction:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Start from Beginning" value:&stru_100A30A68 table:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000901A8;
  v20[3] = &unk_100A051C8;
  v21 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v20];
  [v9 addAction:v17];

  [v19 presentViewController:v9 animated:1 completion:0];
}

- (void)_optionallyCloseCardStack:(id)a3 inPresentedVC:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000902EC;
  v15[3] = &unk_100A05218;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(BKBookFlowController *)self _promptInVCToRestartReadingFromBeginning:v11 completion:v15];
}

- (void)showAssetWithTransaction:(id)a3 assetID:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [BKAssetID identifierWithAssetID:a4];
  [(BKBookFlowController *)self showAssetWithTransaction:v15 assetIdentifier:v16 location:v14 options:v13 completion:v12];
}

- (void)showAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100089C18();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v12 debugDescription];
    v19 = [v15 objectForKeyedSubscript:AEAssetLogID];
    *buf = 138544130;
    v81 = v18;
    v82 = 2160;
    v83 = 1752392040;
    v84 = 2112;
    v85 = v13;
    v86 = 2114;
    v87 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction: %{public}@ assetID: %{mask.hash}@ logID: %{public}@", buf, 0x2Au);
  }

  v56 = v14;
  if ([(BKBookFlowController *)self isOpeningFromCard:v12 options:v15])
  {
    v20 = sub_100089C18();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v15 objectForKeyedSubscript:AEAssetLogID];
      *buf = 141558530;
      v81 = 1752392040;
      v82 = 2112;
      v83 = v13;
      v84 = 2114;
      v85 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 0: open asset %{mask.hash}@ from card logID: %{public}@", buf, 0x20u);
    }

    v22 = [v13 permanentOrTemporaryAssetID];
    v23 = [(BKBookFlowController *)self _currentPresenterFromAllScenesForAssetID:v22];

    v24 = [v23 presentedViewController];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100089C18();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v15 objectForKeyedSubscript:AEAssetLogID];
        *buf = 141558530;
        v81 = 1752392040;
        v82 = 2112;
        v83 = v13;
        v84 = 2114;
        v85 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 0: asset %{mask.hash}@ already open logID: %{public}@", buf, 0x20u);
      }

      objc_opt_class();
      v28 = [v25 presentedViewController];
      v29 = BUDynamicCast();

      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100090CFC;
      v77[3] = &unk_100A04160;
      v78 = v23;
      v79 = v16;
      v30 = v16;
      v31 = v23;
      [(BKBookFlowController *)self _optionallyCloseCardStack:v29 inPresentedVC:v25 completion:v77];

      goto LABEL_19;
    }

    v32 = [(BKBookFlowController *)self _prepareOpenFromCardOverlayWithTransaction:v12 assetIdentifier:v13 options:v15];

    v15 = v32;
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100090D70;
  v71[3] = &unk_100A05268;
  v71[4] = self;
  v55 = v12;
  v72 = v12;
  v33 = v16;
  v76 = v33;
  v54 = v13;
  v34 = v13;
  v73 = v34;
  v74 = v14;
  v35 = v15;
  v75 = v35;
  v36 = objc_retainBlock(v71);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100091034;
  v67[3] = &unk_100A052B8;
  v67[4] = self;
  v37 = v34;
  v68 = v37;
  v15 = v35;
  v69 = v15;
  v38 = v36;
  v70 = v38;
  v39 = objc_retainBlock(v67);
  v40 = +[BKAppDelegate delegate];
  v41 = [v40 appLaunchCoordinator];

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000915EC;
  v62[3] = &unk_100A05308;
  v65 = v39;
  v42 = v41;
  v63 = v42;
  v43 = v37;
  v64 = v43;
  v44 = v33;
  v66 = v44;
  v53 = v39;
  v45 = objc_retainBlock(v62);
  v46 = [v15 objectForKeyedSubscript:@"BKBookPresentingForceOpenBeforeWelcomeCompleted"];
  LODWORD(v39) = [v46 BOOLValue];

  v47 = [v15 objectForKeyedSubscript:AEAssetLogID];
  v48 = sub_100089C18();
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
  if (v39)
  {
    if (v49)
    {
      *buf = 141558530;
      v81 = 1752392040;
      v82 = 2112;
      v83 = v43;
      v84 = 2114;
      v85 = v47;
      v50 = 32;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 2: force open asset %{mask.hash}@ before welcome logID: %{public}@", buf, 0x20u);
    }

    else
    {
      v50 = 32;
    }
  }

  else
  {
    if (v49)
    {
      *buf = 141558274;
      v81 = 1752392040;
      v82 = 2112;
      v83 = v43;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 2: appLaunchCoordinatorOnConditionMask begin. assetID: %{mask.hash}@", buf, 0x16u);
    }

    v50 = 40;
  }

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100091748;
  v57[3] = &unk_100A05330;
  v57[4] = self;
  v58 = v43;
  v59 = v42;
  v60 = v45;
  v61 = v44;
  v25 = v44;
  v51 = v42;
  v52 = v45;
  [v51 appLaunchCoordinatorOnConditionMask:v50 blockID:@"showAsset:onLaunch" performBlock:v57];

  v13 = v54;
  v12 = v55;
LABEL_19:
}

- (void)_showAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100089C18();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v40 = 1752392040;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_showAssetWithTransaction: assetID: %{mask.hash}@", buf, 0x16u);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100091D10;
  v36[3] = &unk_100A05358;
  v18 = v13;
  v37 = v18;
  v19 = v16;
  v38 = v19;
  v20 = objc_retainBlock(v36);
  v21 = [(BKBookFlowController *)self sceneHosting];
  v22 = [v18 permanentOrTemporaryAssetID];
  v23 = [v21 sceneInfoPresentingAssetID:v22];

  if (v23 && ([v23 sceneController], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    v25 = [(BKBookFlowController *)self sceneHosting];
    v26 = sub_100089C18();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        sub_10078B814(v18, v15);
      }

      v28 = [v18 permanentOrTemporaryAssetID];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100091E54;
      v29[3] = &unk_100A05380;
      v30 = v12;
      v31 = self;
      v32 = v18;
      v33 = v14;
      v34 = v15;
      v35 = v20;
      [v25 requestSceneWithAssetID:v28 completion:v29];
    }

    else
    {
      if (v27)
      {
        sub_10078B8E0(v15);
      }

      (v20[2])(v20, 0, 0, 0);
    }
  }

  else
  {
    [(BKBookFlowController *)self _showAssetWithoutStateRestoration:v12 assetIdentifier:v18 location:v14 options:v15 completion:v20];
  }
}

- (void)_openPDFAsset:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091F30;
  block[3] = &unk_100A033C8;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showAssetWithoutStateRestoration:(id)a3 assetIdentifier:(id)a4 location:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v49 = a5;
  v14 = a6;
  v48 = a7;
  v15 = sub_100089C18();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 objectForKeyedSubscript:AEAssetLogID];
    *buf = 141558530;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v79 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Showing asset: %{mask.hash}@ logID: %{public}@", buf, 0x20u);
  }

  v47 = [v12 originatingSceneController];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v79 = sub_100027334;
  v80 = sub_1000275E0;
  v17 = [(BKBookFlowController *)self sceneHosting];
  v18 = [v17 defaultSceneControllerForTransaction:v12];
  v81 = BUProtocolCast();

  v19 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v12];
  if (!v19)
  {
    BCReportAssertionFailureWithMessage();
  }

  v44 = v19;
  v20 = [v13 permanentOrTemporaryAssetID];
  v21 = [(BKBookFlowController *)self _currentPresenterFromAllScenesForAssetID:v20];

  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_100027334;
  v76 = sub_1000275E0;
  v77 = [(BKBookFlowController *)self currentAssetPresentersForSingleSceneWithTransaction:v12];
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_100027334;
  v70[4] = sub_1000275E0;
  v71 = [v73[5] lastObject];
  v22 = [v14 objectForKeyedSubscript:@"BKBookPresentingCloseAndReopenAssetIfNeeded"];
  v46 = [v22 BOOLValue];

  objc_opt_class();
  v23 = [v14 objectForKeyedSubscript:@"BKBookPresentingSecure"];
  v24 = BUDynamicCast();
  v25 = [v24 BOOLValue];

  v26 = [v14 objectForKeyedSubscript:@"BKBookPresentingForceExistingAssetToClose"];
  v27 = v26;
  if (v26)
  {
    v45 = [v26 BOOLValue];
  }

  else
  {
    v45 = 1;
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100092928;
  v68[3] = &unk_100A053D0;
  v68[4] = self;
  v28 = v13;
  v69 = v28;
  v29 = objc_retainBlock(v68);
  v30 = (v29[2])();
  v31 = [(BKBookFlowController *)self _optionsForLibraryAsset:v30 transaction:v12];
  v32 = [v31 mutableCopy];

  v33 = [v30 isAudiobook];
  if (v14)
  {
    [v32 addEntriesFromDictionary:v14];
  }

  if (v49)
  {
    [v32 setObject:v49 forKeyedSubscript:@"BKAssetPresentingOpenLocationKey"];
  }

  v34 = [(BKBookFlowController *)self minifiedPresenter];
  [v34 setShouldIgnoreCurrentBookNotifications:1];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100092980;
  v50[3] = &unk_100A057A0;
  v35 = v28;
  v51 = v35;
  v36 = v14;
  v52 = v36;
  v37 = v12;
  v53 = v37;
  v38 = v32;
  v54 = v38;
  v55 = self;
  v64 = v25;
  v61 = buf;
  v39 = v48;
  v59 = v39;
  v40 = v21;
  v56 = v40;
  v41 = v47;
  v65 = v33;
  v57 = v41;
  v62 = v70;
  v63 = &v72;
  v42 = v29;
  v60 = v42;
  v66 = v46;
  v43 = v49;
  v58 = v43;
  v67 = v45;
  [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:v35 transaction:v37 options:v38 completion:v50];

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(buf, 8);
}

- (void)_closePresenter:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BKBookFlowController *)self sceneHosting];
  v11 = [v10 sceneControllerForViewController:v8];

  if (!v11)
  {
    sub_10078BBEC();
  }

  v12 = [v11 bookFlowAssetPresenting];
  if (!v12)
  {
    sub_10078BC24();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009661C;
  v16[3] = &unk_100A057C8;
  v17 = v12;
  v18 = v8;
  v20 = a4;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v12;
  [v15 presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:v16];
}

- (void)closeAllPresentersForSingleSceneWithTransaction:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(BKBookFlowController *)self currentAssetPresentersForSingleSceneWithTransaction:a3];
  [(BKBookFlowController *)self _closePresenters:v9 animated:v5 completion:v8];
}

- (void)_closePresenters:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 lastObject];
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000967D8;
    v13[3] = &unk_100A057F0;
    v14 = v8;
    v15 = v10;
    v16 = self;
    v18 = v6;
    v17 = v9;
    [(BKBookFlowController *)self _closePresenter:v15 animated:v6 completion:v13];
  }

  else
  {
    v11 = objc_retainBlock(v9);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (void)_closeMinifiedPresenters:(id)a3 excludeAssetID:(id)a4 isAudiobook:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 anyObject];
  if (v13)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100096A90;
    v24[3] = &unk_100A05010;
    v25 = v10;
    v14 = v13;
    v26 = v14;
    v27 = self;
    v15 = v11;
    v28 = v15;
    v30 = v7;
    v29 = v12;
    v16 = objc_retainBlock(v24);
    v17 = [v14 minifiedAssetPresenterAssetID];
    v18 = [v17 isEqualToString:v15];

    if ([v14 minifiedAssetPresenterIsAudiobook] != v7 || (v18 & 1) != 0 || +[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled") || (v7 & 1) != 0)
    {
      (v16[2])(v16);
    }

    else
    {
      v19 = [(BKBookFlowController *)self minifiedPresenter];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100096B00;
      v22[3] = &unk_100A03920;
      v23 = v16;
      [v19 minifiedPresenterClose:v14 completion:v22];
    }
  }

  else
  {
    v20 = objc_retainBlock(v12);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20);
    }
  }
}

- (void)handleFamilyChangeErrorWithTransaction:(id)a3 error:(id)a4 assetIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = self;
  v11 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v8];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"To read it value:you must buy it from the Book Store." table:{&stru_100A30A68, 0}];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"This book is no longer shared with you." value:&stru_100A30A68 table:0];
  v34 = v13;
  v16 = v13;
  v17 = v11;
  v18 = [UIAlertController alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_100A30A68 table:0];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];
  [v18 addAction:v21];

  objc_opt_class();
  v22 = BUDynamicCast();
  v23 = [v22 assetID];

  if (v23)
  {
    v31 = v9;
    v32 = v8;
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Delete Book" value:&stru_100A30A68 table:0];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100096F0C;
    v41[3] = &unk_100A05818;
    v26 = v23;
    v42 = v26;
    v27 = [UIAlertAction actionWithTitle:v25 style:2 handler:v41];
    [v18 addAction:v27];

    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = sub_100027334;
    v39[4] = sub_1000275E0;
    v40 = v33;
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"View in Book Store" value:&stru_100A30A68 table:0];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100096FAC;
    v35[3] = &unk_100A05840;
    v38 = v39;
    v36 = v26;
    v37 = v17;
    v30 = [UIAlertAction actionWithTitle:v29 style:0 handler:v35];
    [v18 addAction:v30];

    _Block_object_dispose(v39, 8);
    v9 = v31;
    v8 = v32;
  }

  [v17 presenterShowAlertController:v18 animated:1];
}

- (void)preflightShowAssetWithTransaction:(id)a3 assetIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(BKBookFlowController *)self libraryAssetProvider];
  v12 = [v11 libraryAssetOnMainQueueWithAssetIdentifier:v10];

  LOBYTE(v10) = [v12 isLocal];
  if ((v10 & 1) != 0 || !+[BKReachability isOffline])
  {
    v23 = objc_retainBlock(v9);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 1);
    }
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"This book can’t be downloaded." value:&stru_100A30A68 table:0];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Apple Books isn’t connected to the internet." value:&stru_100A30A68 table:0];

    v17 = [UIAlertController alertControllerWithTitle:v14 message:v16 preferredStyle:1];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
    v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:0];
    [v17 addAction:v20];

    v21 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v8];
    v22 = [v21 presenterSceneController];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000972B8;
    v25[3] = &unk_100A051F0;
    v26 = v9;
    v27 = 0;
    [v22 presentViewController:v17 animated:1 completion:v25];
  }
}

- (void)handleBookOpenErrorWithTransaction:(id)a3 error:(id)a4 assetIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 code] != 2002 || (objc_msgSend(v9, "domain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", AssetEngineErrorDomain), v11, (v12 & 1) == 0))
  {
    if ([v9 code] == 2003 && (objc_msgSend(v9, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", AssetEngineErrorDomain), v13, v14))
    {
      [(BKBookFlowController *)self handleFamilyChangeErrorWithTransaction:v8 error:v9 assetIdentifier:v10];
    }

    else if ([v9 code] == 3001)
    {
      v15 = [(BKBookFlowController *)self libraryAssetProvider];
      v16 = [v15 libraryAssetOnMainQueueWithAssetIdentifier:v10];

      v17 = [(BKBookFlowController *)self libraryAssetProvider];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10009750C;
      v20[3] = &unk_100A053A8;
      v20[4] = self;
      v21 = v8;
      [v17 assetForLibraryAsset:v16 completion:v20];
    }

    else if ([v9 code] == 1)
    {
      v18 = [v9 domain];
      v19 = [v18 isEqualToString:@"BKAssetLookup"];

      if (v19)
      {
        [(BKBookFlowController *)self showInstallationErrorWithTransaction:v8 assetIdentifier:v10];
      }
    }
  }
}

- (void)showNotEnoughMemAlertWithTransaction:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Unable to Open “%@”" value:&stru_100A30A68 table:0];
  v18 = [NSString stringWithFormat:v9, v6];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Cannot Open Document" value:&stru_100A30A68 table:0];
  v12 = [UIAlertController alertControllerWithTitle:v11 message:v18 preferredStyle:1];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  v16 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v7];

  v17 = [v16 presenterSceneController];
  [v17 presentViewController:v12 animated:1 completion:0];
}

- (void)showInstallationErrorWithTransaction:(id)a3 assetIdentifier:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 libraryAssetOnMainQueueWithAssetIdentifier:v7];

    if (v9)
    {
      v25 = [v9 title];
      v10 = +[NSBundle mainBundle];
      v24 = [v10 localizedStringForKey:@"There is not enough available storage to install this book. You can manage your storage in Settings." value:&stru_100A30A68 table:0];

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Cannot install “%@”" value:&stru_100A30A68 table:0];
      v13 = [NSString stringWithFormat:v12, v25];
      v14 = [UIAlertController alertControllerWithTitle:v13 message:v24 preferredStyle:1];

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100097B54;
      v28[3] = &unk_100A05868;
      v28[4] = self;
      v17 = v9;
      v29 = v17;
      v18 = [UIAlertAction actionWithTitle:v16 style:1 handler:v28];
      [v14 addAction:v18];

      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"Settings" value:&stru_100A30A68 table:0];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100097BF4;
      v26[3] = &unk_100A05868;
      v26[4] = self;
      v27 = v17;
      v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v26];
      [v14 addAction:v21];

      v22 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:v6];
      v23 = [v22 presenterSceneController];
      [v23 presentViewController:v14 animated:1 completion:0];
    }
  }
}

- (void)showAssetWithTransaction:(id)a3 storeID:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 unsignedLongLongValue])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100027334;
    v23 = sub_1000275E0;
    v11 = +[BSUIItemDescriptionCache sharedInstance];
    v25 = v9;
    v12 = [NSArray arrayWithObjects:&v25 count:1];
    v13 = [v11 itemDescriptionsFromIdentifiers:v12];
    v24 = [v13 objectForKeyedSubscript:v9];

    v14 = v20[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097EDC;
    v15[3] = &unk_100A05890;
    v15[4] = self;
    v16 = v8;
    v17 = v10;
    v18 = &v19;
    [v14 get:v15];

    _Block_object_dispose(&v19, 8);
  }
}

- (void)presentItem:(id)a3 transaction:(id)a4 host:(id)a5 source:(id)a6 options:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v17 storeID];
  if (v17 && v16)
  {
    [(BKBookFlowController *)self _presentItem:v17 transaction:v12 host:v13 source:v14 options:v15];
  }
}

- (void)_presentItem:(id)a3 transaction:(id)a4 host:(id)a5 source:(id)a6 options:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 storeID];
  v18 = v17;
  if (v12 && v17)
  {
    if ([(BKBookFlowController *)self isOpeningFromCard:v13 options:v16])
    {
      v19 = [v12 storeID];
      v20 = [BKAssetID identifierWithAssetID:v19];
      v21 = [(BKBookFlowController *)self _prepareOpenFromCardOverlayWithTransaction:v13 assetIdentifier:v20 options:v16];

      v16 = v21;
    }

    v22 = [(BKBookFlowController *)self libraryAssetProvider];
    v23 = [v22 libraryAssetOnMainQueueWithAssetID:v18];

    v24 = [NSMutableDictionary dictionaryWithDictionary:v16];
    [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentingCanPresentOverStore"];
    [v24 setObject:v14 forKeyedSubscript:@"BKBookPresentingCoverAnimationHost"];
    [v24 setObject:v15 forKeyedSubscript:@"BKBookPresentingCoverAnimationSource"];
    if ([v23 canOpen])
    {
      [(BKBookFlowController *)self showAssetWithTransaction:v13 assetID:v18 location:0 options:v24 completion:0];
    }

    else if ([v23 isCloud] && (objc_msgSend(v23, "isPreorderBook") & 1) == 0)
    {
      v38 = [BKAssetID identifierWithAssetID:v18];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100098514;
      v45[3] = &unk_100A058E0;
      v46 = v13;
      v47 = self;
      v48 = v23;
      v49 = v24;
      [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:v38 transaction:v46 completion:v45];
    }

    else
    {
      v25 = [v12 sampleDownloadURL];

      if (v25)
      {
        v35 = v23;
        v26 = [v12 artworkURLTemplate];
        if (v26)
        {
          +[BCCacheManager defaultCacheManager];
          v27 = v36 = v15;
          v28 = [v12 storeID];
          [v27 addURLTemplate:v26 forIdentifier:v28];

          v15 = v36;
        }

        v34 = v26;
        v29 = [v12 title];
        if (v29)
        {
          [v24 setObject:v29 forKeyedSubscript:@"title"];
        }

        v37 = v14;
        v30 = [v12 author];
        if (v30)
        {
          [v24 setObject:v30 forKeyedSubscript:@"author"];
        }

        v31 = +[BKAppDelegate delegate];
        v32 = [v31 isConnectedToInternet];

        if (v32)
        {
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000988C4;
          v39[3] = &unk_100A039C0;
          v40 = v18;
          v41 = self;
          v42 = v24;
          v43 = v13;
          v44 = v16;
          [v43 commit:v39];
        }

        v23 = v35;
        v14 = v37;
      }
    }
  }
}

- (BKSceneHosting)sceneHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHosting);

  return WeakRetained;
}

- (CGRect)openAnimationRect
{
  x = self->_openAnimationRect.origin.x;
  y = self->_openAnimationRect.origin.y;
  width = self->_openAnimationRect.size.width;
  height = self->_openAnimationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end