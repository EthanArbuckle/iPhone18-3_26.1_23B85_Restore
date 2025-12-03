@interface BKBookFlowController
- (BKBookFlowController)initWithLibraryAssetProvider:(id)provider;
- (BKSceneHosting)sceneHosting;
- (BOOL)_isPresenterAudiobook:(id)audiobook;
- (BOOL)_shouldOpenBookUsingLargeCover:(id)cover;
- (BOOL)_wantsMinifiedAssetPresenterToOpenForTransaction:(id)transaction forceOpen:(BOOL)open;
- (BOOL)isOpeningFromCard:(id)card options:(id)options;
- (CGRect)openAnimationRect;
- (CGRect)openAnimationSourceRect;
- (id)_bookFlowAssetPresentingForShowAssetAction:(id)action;
- (id)_currentAssetPresentersFromAllScenes;
- (id)_currentPresenterFromAllScenesForAssetID:(id)d;
- (id)_dockedAssetViewController;
- (id)_largeCoverViewControllerForAssetIdentifier:(id)identifier download:(BOOL)download options:(id)options minifiedPresenter:(id)presenter holdAnimationAssertion:(id)assertion withTransaction:(id)transaction;
- (id)_largeCoverViewControllerForBook:(id)book options:(id)options transaction:(id)transaction minifiedPresenter:(id)presenter holdAnimationAssertion:(id)assertion;
- (id)_optionsForLibraryAsset:(id)asset transaction:(id)transaction;
- (id)_prepareOpenFromCardOverlayWithTransaction:(id)transaction assetIdentifier:(id)identifier options:(id)options;
- (id)_pushLargeCoverAndOpenBook:(id)book options:(id)options minifiedPresenter:(id)presenter animated:(BOOL)animated transaction:(id)transaction completion:(id)completion;
- (id)_removePresenters:(id)presenters thatMustStayOpenWhenOpeningBook:(id)book;
- (id)_storeController;
- (id)bookPresenterCurrentlyOpenBookForSingleScene:(id)scene;
- (id)currentAssetPresentersForSingleSceneWithTransaction:(id)transaction;
- (void)_closeMinifiedPresenters:(id)presenters excludeAssetID:(id)d isAudiobook:(BOOL)audiobook completion:(id)completion;
- (void)_closePresenter:(id)presenter animated:(BOOL)animated completion:(id)completion;
- (void)_closePresenters:(id)presenters animated:(BOOL)animated completion:(id)completion;
- (void)_libraryOwnershipNotification:(id)notification;
- (void)_obtainImageForAsset:(id)asset withAssetIdentifier:(id)identifier options:(id)options withTransaction:(id)transaction completion:(id)completion;
- (void)_openPDFAsset:(id)asset;
- (void)_optionallyCloseCardStack:(id)stack inPresentedVC:(id)c completion:(id)completion;
- (void)_pendingAssetUpdateNotification:(id)notification;
- (void)_popToPresenterIfNeeded:(id)needed completion:(id)completion;
- (void)_prepareMinifiedAssetPresenterForAssetID:(id)d transaction:(id)transaction force:(BOOL)force openBook:(BOOL)book showRestorationScrim:(BOOL)scrim;
- (void)_presentItem:(id)item transaction:(id)transaction host:(id)host source:(id)source options:(id)options;
- (void)_presentViewController:(id)controller bookFlowPresenting:(id)presenting options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)_presentViewController:(id)controller transaction:(id)transaction animated:(BOOL)animated overlayView:(id)view options:(id)options completion:(id)completion;
- (void)_processAndClearReopenAssetIDs:(id)ds options:(id)options assetIDToPresenterMap:(id)map;
- (void)_processNextShowAssetInvocation;
- (void)_promptInVCToRestartReadingFromBeginning:(id)beginning completion:(id)completion;
- (void)_removeViewForCardOverlayWithTransaction:(id)transaction options:(id)options;
- (void)_replacePresenterWithTransaction:(id)transaction oldPresenter:(id)presenter newPresenter:(id)newPresenter completion:(id)completion;
- (void)_showAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion;
- (void)_showAssetWithoutStateRestoration:(id)restoration assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion;
- (void)_showRestorationScrimForAssetID:(id)d transaction:(id)transaction;
- (void)_showStoreAsset:(id)asset asset:(id)a4 options:(id)options;
- (void)_updateAssetAfterOpen:(id)open;
- (void)closeAllPresentersForSingleSceneWithTransaction:(id)transaction animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)enqueueShowAssetWithTransactionProvider:(id)provider assetID:(id)d location:(id)location options:(id)options completion:(id)completion;
- (void)handleBookOpenErrorWithTransaction:(id)transaction error:(id)error assetIdentifier:(id)identifier;
- (void)handleFamilyChangeErrorWithTransaction:(id)transaction error:(id)error assetIdentifier:(id)identifier;
- (void)minifiedAssetPresenterForAssetIdentifier:(id)identifier transaction:(id)transaction completion:(id)completion;
- (void)minifiedAssetPresenterForAssetIdentifier:(id)identifier transaction:(id)transaction options:(id)options completion:(id)completion;
- (void)preflightShowAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier completion:(id)completion;
- (void)presentItem:(id)item transaction:(id)transaction host:(id)host source:(id)source options:(id)options;
- (void)requestOpenLastKnownBookWithTransaction:(id)transaction;
- (void)requestReopenAssetIDs:(id)ds options:(id)options;
- (void)showAssetWithTransaction:(id)transaction assetID:(id)d location:(id)location options:(id)options completion:(id)completion;
- (void)showAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion;
- (void)showAssetWithTransaction:(id)transaction storeID:(id)d options:(id)options;
- (void)showInstallationErrorWithTransaction:(id)transaction assetIdentifier:(id)identifier;
- (void)showNotEnoughMemAlertWithTransaction:(id)transaction name:(id)name;
- (void)showStoreAsset:(id)asset asset:(id)a4 options:(id)options;
@end

@implementation BKBookFlowController

- (BKBookFlowController)initWithLibraryAssetProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = BKBookFlowController;
  v5 = [(BKBookFlowController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(BKBookFlowController *)v5 setLibraryAssetProvider:providerCopy];
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

- (void)_pendingAssetUpdateNotification:(id)notification
{
  object = [notification object];
  [object assetID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100089FA8;
  v6[3] = &unk_100A03440;
  v7 = v6[4] = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)_libraryOwnershipNotification:(id)notification
{
  selfCopy = self;
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  objc_opt_class();
  v4 = BCGetUnsafeAppDelegateReference();
  v5 = BUDynamicCast();

  v28 = v5;
  ubiquityStatusMonitor = [v5 ubiquityStatusMonitor];
  [ubiquityStatusMonitor isICloudDriveEnabled];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = userInfo;
  obj = [userInfo objectForKeyedSubscript:BKLibraryOwnershipAssetsKey];
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
        v11 = [v10 objectForKeyedSubscript:{v36, selfCopy}];
        stringValue = [v11 stringValue];

        v13 = [v10 objectForKeyedSubscript:v35];
        stringValue2 = [v13 stringValue];

        v15 = [v10 objectForKeyedSubscript:v34];
        integerValue = [v15 integerValue];

        v17 = [v10 objectForKeyedSubscript:v33];
        integerValue2 = [v17 integerValue];

        v19 = [v10 objectForKeyedSubscript:v32];
        v20 = @"com.apple.iBooks.plist.sample.stashed";
        v21 = @"com.apple.ibooks.plist.untethered";
        if ([stringValue isEqualToString:v20])
        {
          v22 = [stringValue2 isEqualToString:v21];
          if (integerValue == 2)
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

        v24 = [stringValue isEqualToString:v21];
        if (integerValue == 2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v19 && integerValue2 == 1 && (v23 & 1) == 0 && (v25 & 1) == 0)
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
    block[4] = selfCopy;
    v40 = v38;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)_storeController
{
  v2 = +[BKAppDelegate delegate];
  storeController = [v2 storeController];

  return storeController;
}

- (id)_optionsForLibraryAsset:(id)asset transaction:(id)transaction
{
  assetCopy = asset;
  transactionCopy = transaction;
  v8 = +[NSMutableDictionary dictionary];
  if ([assetCopy isPreorderBook])
  {
    [v8 setObject:&__kCFBooleanTrue forKey:AEHelperNumberIsPreorderKey];
  }

  if ([assetCopy isAudiobook])
  {
    lastOpenDate = [assetCopy lastOpenDate];

    if (lastOpenDate)
    {
      lastOpenDate2 = [assetCopy lastOpenDate];
      [v8 setObject:lastOpenDate2 forKey:AEHelperDateLastOpenKey];
    }

    if ([assetCopy isStore])
    {
      supplementalContentAssets = [assetCopy supplementalContentAssets];
      allObjects = [supplementalContentAssets allObjects];
      v13 = [allObjects bu_arrayByInvokingBlock:&stru_100A04EA8];
      bu_arrayByRemovingNSNulls = [v13 bu_arrayByRemovingNSNulls];

      [v8 setObject:bu_arrayByRemovingNSNulls forKeyedSubscript:AEHelperNumberSupplementalContentAssetIDs];
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
    v19 = transactionCopy;
    v20 = assetCopy;
    v15 = objc_retainBlock(v18);
    v16 = [v15 copy];
    [v8 setObject:v16 forKey:AEHelperImageMetadataCoverBlockKey];

    [v8 setObject:&__kCFBooleanFalse forKey:@"BKBookPresentingResetLocationForMiniToFullTransition"];
  }

  return v8;
}

- (id)_largeCoverViewControllerForBook:(id)book options:(id)options transaction:(id)transaction minifiedPresenter:(id)presenter holdAnimationAssertion:(id)assertion
{
  bookCopy = book;
  optionsCopy = options;
  assertionCopy = assertion;
  presenterCopy = presenter;
  transactionCopy = transaction;
  v17 = +[NSMutableDictionary dictionary];
  v18 = v17;
  if (optionsCopy)
  {
    [v17 addEntriesFromDictionary:optionsCopy];
  }

  if (([bookCopy isDownloading] & 1) != 0 || (objc_msgSend(bookCopy, "isLocal") & 1) == 0)
  {
    v19 = [bookCopy streamable] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = BKLibraryAssetIdentifierFromAsset();
  v21 = [(BKBookFlowController *)self _largeCoverViewControllerForAssetIdentifier:v20 download:v19 options:v18 minifiedPresenter:presenterCopy holdAnimationAssertion:assertionCopy withTransaction:transactionCopy];

  return v21;
}

- (void)_obtainImageForAsset:(id)asset withAssetIdentifier:(id)identifier options:(id)options withTransaction:(id)transaction completion:(id)completion
{
  assetCopy = asset;
  identifierCopy = identifier;
  optionsCopy = options;
  transactionCopy = transaction;
  completionCopy = completion;
  permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
  if ([permanentOrTemporaryAssetID length])
  {
    v63 = [optionsCopy objectForKeyedSubscript:@"storeAsset"];
    v18 = [v63 objectForKeyedSubscript:@"artwork"];
    objc_opt_class();
    v19 = BUDynamicCast();
    v64 = completionCopy;
    v67 = v18;
    v62 = v19;
    if (v18)
    {
      v20 = v19;
      if (v19)
      {
        v21 = objc_alloc_init(BICProductProfileData);
        assetID = [v20 assetID];
        [v21 setIdentifier:assetID];

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

    if (assetCopy)
    {
      v29 = [BKLibraryManager processingOptionsFor:assetCopy coverEffectsEnvironment:0];
    }

    else
    {
      v29 = 2;
    }

    v66 = assetCopy;
    objc_opt_class();
    v32 = [optionsCopy objectForKeyedSubscript:@"isRTL"];
    v33 = BUDynamicCast();

    v61 = v33;
    bOOLValue = [v33 BOOLValue];
    v35 = +[UIScreen mainScreen];
    [v35 nativeBounds];
    v37 = v36;
    v39 = v38;

    v65 = transactionCopy;
    v60 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
    v59 = [v60 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
    coverEffectsNightMode = [v59 coverEffectsNightMode];
    v41 = BCImageCacheLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_10078B464();
    }

    if (coverEffectsNightMode)
    {
      v42 = 64;
    }

    else
    {
      v42 = 0;
    }

    if (bOOLValue)
    {
      v43 = 128;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v29 | v42;
    v45 = [BICDescribedImage describedImageWithIdentifier:permanentOrTemporaryAssetID size:v44 | 0x100u processingOptions:v37, v39];
    [v45 setRequestOptions:18];
    [v45 setPriority:6];
    v46 = [optionsCopy objectForKeyedSubscript:@"title"];
    [v45 setTitle:v46];

    v47 = [optionsCopy objectForKeyedSubscript:@"author"];
    [v45 setAuthor:v47];

    v48 = [v45 copy];
    [v48 setRequestOptions:514];
    v49 = [BICDescribedImage describedImageWithIdentifier:permanentOrTemporaryAssetID size:v44 | 0x10u processingOptions:v37, v39];
    [v49 setRequestOptions:18];
    [v49 setPriority:6];
    v50 = [optionsCopy objectForKeyedSubscript:@"title"];
    [v49 setTitle:v50];

    v51 = [optionsCopy objectForKeyedSubscript:@"author"];
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
    completionCopy = v64;
    v69 = v64;
    v72 = v82;
    dispatch_group_notify(v58, &_dispatch_main_q, block);

    _Block_object_dispose(v82, 8);
    _Block_object_dispose(v84, 8);

    _Block_object_dispose(v86, 8);
    transactionCopy = v65;
    assetCopy = v66;
  }

  else
  {
    v30 = objc_retainBlock(completionCopy);
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0, 0, 0);
    }
  }
}

- (id)_largeCoverViewControllerForAssetIdentifier:(id)identifier download:(BOOL)download options:(id)options minifiedPresenter:(id)presenter holdAnimationAssertion:(id)assertion withTransaction:(id)transaction
{
  identifierCopy = identifier;
  optionsCopy = options;
  presenterCopy = presenter;
  assertionCopy = assertion;
  transactionCopy = transaction;
  v19 = objc_opt_new();
  libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
  v21 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

  v22 = sub_100089C18();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558530;
    v48 = 1752392040;
    v49 = 2112;
    v50 = identifierCopy;
    v51 = 2112;
    v52 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _largeCoverViewControllerForAssetIdentifier: %@", buf, 0x20u);
  }

  contentType = [v21 contentType];
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_10008BE44;
  v37 = &unk_100A04FC0;
  v24 = (contentType - 7) != 65534 && (contentType - 7) != 0xFFFF;
  v45 = v24;
  v38 = optionsCopy;
  v39 = identifierCopy;
  v40 = assertionCopy;
  selfCopy = self;
  downloadCopy = download;
  v42 = presenterCopy;
  v43 = transactionCopy;
  v25 = v19;
  v44 = v25;
  v26 = transactionCopy;
  v27 = presenterCopy;
  v28 = assertionCopy;
  v29 = identifierCopy;
  v30 = optionsCopy;
  v31 = objc_retainBlock(&v34);
  [(BKBookFlowController *)self _obtainImageForAsset:v21 withAssetIdentifier:v29 options:v30 withTransaction:v26 completion:v31, v34, v35, v36, v37];
  v32 = v25;

  return v25;
}

- (id)_bookFlowAssetPresentingForShowAssetAction:(id)action
{
  actionCopy = action;
  sceneHosting = [(BKBookFlowController *)self sceneHosting];
  v6 = [sceneHosting defaultSceneControllerForTransaction:actionCopy];

  if (!v6)
  {
    sub_10078B4D8();
  }

  bookFlowAssetPresenting = [v6 bookFlowAssetPresenting];
  if (!bookFlowAssetPresenting)
  {
    sub_10078B510();
  }

  return bookFlowAssetPresenting;
}

- (void)_presentViewController:(id)controller transaction:(id)transaction animated:(BOOL)animated overlayView:(id)view options:(id)options completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  transactionCopy = transaction;
  viewCopy = view;
  optionsCopy = options;
  completionCopy = completion;
  v19 = sub_100089C18();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = controllerCopy;
    v35 = 1024;
    v36 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_presentViewController: %@ animated: %{BOOL}d", buf, 0x12u);
  }

  v20 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
  v21 = v20;
  if (viewCopy)
  {
    presenterModalPresentingViewController = [v20 presenterModalPresentingViewController];
    view = [presenterModalPresentingViewController view];
    [view addSubview:viewCopy];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10008C78C;
    v28 = &unk_100A04FE8;
    selfCopy = self;
    v30 = transactionCopy;
    v31 = optionsCopy;
    v32 = completionCopy;
    v24 = objc_retainBlock(&v25);
  }

  else
  {
    v24 = objc_retainBlock(completionCopy);
  }

  [(BKBookFlowController *)self _presentViewController:controllerCopy bookFlowPresenting:v21 options:optionsCopy animated:animatedCopy completion:v24, v25, v26, v27, v28, selfCopy];
}

- (void)_presentViewController:(id)controller bookFlowPresenting:(id)presenting options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  optionsCopy = options;
  completionCopy = completion;
  presentingCopy = presenting;
  v13 = [presentingCopy presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost];
  ba_effectiveAnalyticsTracker = [v13 ba_effectiveAnalyticsTracker];
  v14 = [ba_effectiveAnalyticsTracker chainWithName:@"ContentReading"];
  objc_opt_class();
  v15 = [optionsCopy objectForKeyedSubscript:@"interimTrackerPathOverride"];
  v16 = BUDynamicCast();

  if (v16)
  {
    v17 = [v14 chainWithName:v16];

    v14 = [v17 chainWithName:@"ContentReading"];
  }

  [controllerCopy ba_setAnalyticsTracker:v14];
  objc_opt_class();
  v18 = [optionsCopy objectForKeyedSubscript:@"rawUpSellData"];
  v19 = BUDynamicCast();

  if (v19)
  {
    v34 = v13;
    objc_opt_class();
    v20 = [v19 valueForKey:BAUpSellLocationKey];
    v21 = BUDynamicCast();
    integerValue = [v21 integerValue];

    objc_opt_class();
    v23 = [v19 valueForKey:BAUpSellVariantKey];
    v24 = BUDynamicCast();
    integerValue2 = [v24 integerValue];

    objc_opt_class();
    v26 = [v19 objectForKeyedSubscript:BAUpSellVariantVersionKey];
    v27 = BUDynamicCast();

    objc_opt_class();
    v28 = BUDynamicCast();
    if (v28)
    {
      v29 = [[BAUpSellData alloc] initWithLocation:integerValue variant:integerValue2 variantVersion:v27];
      [v28 setUpSellData:v29];
    }

    v13 = v34;
  }

  objc_opt_class();
  v30 = [optionsCopy objectForKeyedSubscript:@"rawAppAnalyticsAdditionalData"];
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

  [controllerCopy setModalPresentationStyle:{0, v34}];
  [presentingCopy presenterShowModalController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (id)_removePresenters:(id)presenters thatMustStayOpenWhenOpeningBook:(id)book
{
  bookCopy = book;
  v6 = [presenters mutableCopy];
  v7 = [v6 count];
  if (v7 - 1 >= 0)
  {
    v8 = v7;
    do
    {
      --v8;
      if ([bookCopy isSupplementalContent])
      {
        supplementalContentParent = [bookCopy supplementalContentParent];
        assetID = [supplementalContentParent assetID];
        v11 = [v6 objectAtIndexedSubscript:v8];
        assetPresenterAssetID = [v11 assetPresenterAssetID];
        v13 = [assetID isEqualToString:assetPresenterAssetID];

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

- (id)_pushLargeCoverAndOpenBook:(id)book options:(id)options minifiedPresenter:(id)presenter animated:(BOOL)animated transaction:(id)transaction completion:(id)completion
{
  bookCopy = book;
  optionsCopy = options;
  presenterCopy = presenter;
  transactionCopy = transaction;
  completionCopy = completion;
  v19 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
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
  v30 = bookCopy;
  v31 = optionsCopy;
  v32 = transactionCopy;
  v20 = v33 = presenterCopy;
  animatedCopy = animated;
  v34 = v20;
  v35 = completionCopy;
  v21 = completionCopy;
  v22 = presenterCopy;
  v23 = transactionCopy;
  v24 = optionsCopy;
  v25 = bookCopy;
  [v19 presenterFinishModalTransitionsWithCompletion:v29];
  v26 = v35;
  v27 = v20;

  return v20;
}

- (void)enqueueShowAssetWithTransactionProvider:(id)provider assetID:(id)d location:(id)location options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  locationCopy = location;
  dCopy = d;
  providerCopy = provider;
  v20 = objc_alloc_init(_BKShowAssetInvocation);
  [(_BKShowAssetInvocation *)v20 setTransactionProvider:providerCopy];

  [(_BKShowAssetInvocation *)v20 setAssetID:dCopy];
  [(_BKShowAssetInvocation *)v20 setLocation:locationCopy];

  [(_BKShowAssetInvocation *)v20 setOptions:optionsCopy];
  [(_BKShowAssetInvocation *)v20 setCompletion:completionCopy];

  pendingShowAssetInvocations = [(BKBookFlowController *)self pendingShowAssetInvocations];
  v18 = [pendingShowAssetInvocations arrayByAddingObject:v20];
  [(BKBookFlowController *)self setPendingShowAssetInvocations:v18];

  runningShowAssetInvocation = [(BKBookFlowController *)self runningShowAssetInvocation];

  if (!runningShowAssetInvocation)
  {
    [(BKBookFlowController *)self _processNextShowAssetInvocation];
  }
}

- (void)_processNextShowAssetInvocation
{
  runningShowAssetInvocation = [(BKBookFlowController *)self runningShowAssetInvocation];

  if (runningShowAssetInvocation)
  {
    sub_10078B580();
  }

  pendingShowAssetInvocations = [(BKBookFlowController *)self pendingShowAssetInvocations];
  v5 = [pendingShowAssetInvocations count];

  if (v5)
  {
    pendingShowAssetInvocations2 = [(BKBookFlowController *)self pendingShowAssetInvocations];
    firstObject = [pendingShowAssetInvocations2 firstObject];
    [(BKBookFlowController *)self setRunningShowAssetInvocation:firstObject];

    pendingShowAssetInvocations3 = [(BKBookFlowController *)self pendingShowAssetInvocations];
    v9 = [pendingShowAssetInvocations3 subarrayWithRange:{1, v5 - 1}];
    [(BKBookFlowController *)self setPendingShowAssetInvocations:v9];

    transactionProvider = [firstObject transactionProvider];

    if (transactionProvider)
    {
      transactionProvider2 = [firstObject transactionProvider];
      newShowAssetTransaction = [transactionProvider2 newShowAssetTransaction];

      options = [firstObject options];
      v14 = [options mutableCopy];

      if (!v14)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
      }

      if (+[BKSceneUtilities hasMultiWindowEnabled])
      {
        [v14 setObject:newShowAssetTransaction forKeyedSubscript:BCTransactionOptionsTransactionKey];
      }

      objc_initWeak(&location, self);
      assetID = [firstObject assetID];
      location = [firstObject location];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008D668;
      v17[3] = &unk_100A05088;
      v18 = firstObject;
      objc_copyWeak(&v19, &location);
      [(BKBookFlowController *)self showAssetWithTransaction:newShowAssetTransaction assetID:assetID location:location options:v14 completion:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_processAndClearReopenAssetIDs:(id)ds options:(id)options assetIDToPresenterMap:(id)map
{
  dsCopy = ds;
  optionsCopy = options;
  mapCopy = map;
  if ([dsCopy count])
  {
    firstObject = [dsCopy firstObject];
    v12 = [mapCopy objectForKeyedSubscript:firstObject];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 im_ancestorConformingToProtocol:&OBJC_PROTOCOL___BKTransactionProviding];
      newShowAssetTransaction = [v14 newShowAssetTransaction];
      v16 = [optionsCopy mutableCopy];
      if (!v16)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
      }

      [v16 setObject:newShowAssetTransaction forKeyedSubscript:BCTransactionOptionsTransactionKey];
      objc_initWeak(&location, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008D914;
      v17[3] = &unk_100A050B0;
      v18 = dsCopy;
      objc_copyWeak(&v21, &location);
      v19 = optionsCopy;
      v20 = mapCopy;
      [(BKBookFlowController *)self showAssetWithTransaction:newShowAssetTransaction assetID:firstObject location:0 options:v16 completion:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

- (void)requestReopenAssetIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v7 = optionsCopy;
  if (optionsCopy)
  {
    v8 = [optionsCopy mutableCopy];
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
  _currentAssetPresentersFromAllScenes = [(BKBookFlowController *)self _currentAssetPresentersFromAllScenes];
  v12 = [_currentAssetPresentersFromAllScenes countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(_currentAssetPresentersFromAllScenes);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        assetPresenterAssetID = [v16 assetPresenterAssetID];

        if (assetPresenterAssetID)
        {
          assetPresenterAssetID2 = [v16 assetPresenterAssetID];
          [v10 setObject:v16 forKeyedSubscript:assetPresenterAssetID2];
        }
      }

      v13 = [_currentAssetPresentersFromAllScenes countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [dsCopy mutableCopy];
  [(BKBookFlowController *)self _processAndClearReopenAssetIDs:v19 options:v9 assetIDToPresenterMap:v10];
}

- (void)_prepareMinifiedAssetPresenterForAssetID:(id)d transaction:(id)transaction force:(BOOL)force openBook:(BOOL)book showRestorationScrim:(BOOL)scrim
{
  bookCopy = book;
  dCopy = d;
  transactionCopy = transaction;
  if (![dCopy length])
  {
    goto LABEL_27;
  }

  if (bookCopy)
  {
    v12 = BCCurrentBookLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Requesting opening of the last known open book %@.", buf, 0xCu);
    }
  }

  v13 = BCCurrentBookLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = dCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Requesting minified opening of book %@.", buf, 0xCu);
  }

  libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
  v15 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:dCopy];

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

  isExplicit = [v15 isExplicit];
  bOOLValue = [isExplicit BOOLValue];

  if (!bOOLValue)
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

  libraryAssetProvider2 = [(BKBookFlowController *)self libraryAssetProvider];
  isExplicitMaterialAllowed = [libraryAssetProvider2 isExplicitMaterialAllowed];

  if ((isExplicitMaterialAllowed & 1) == 0)
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
  assetID = [v15 assetID];
  if (assetID)
  {
    libraryAssetProvider3 = [(BKBookFlowController *)self libraryAssetProvider];
    v24 = [libraryAssetProvider3 libraryAssetOnMainQueueWithAssetID:assetID];

    minifiedPresenter = [(BKBookFlowController *)self minifiedPresenter];
    [minifiedPresenter setShouldIgnoreCurrentBookNotifications:1];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10008E03C;
    v38[3] = &unk_100A05128;
    v38[4] = self;
    v26 = v24;
    v39 = v26;
    v40 = assetID;
    v27 = transactionCopy;
    v41 = v27;
    v42 = bookCopy;
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
        [(BKBookFlowController *)self _showRestorationScrimForAssetID:dCopy transaction:v27];
      }

      v32 = +[BKAppDelegate delegate];
      appLaunchCoordinator = [v32 appLaunchCoordinator];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10008E798;
      v34[3] = &unk_100A05150;
      v37 = v28;
      v34[4] = self;
      v35 = v26;
      v36 = v27;
      [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:0x4000 blockID:@"minifiedAssetPresenter resolveAndShowAsset" performBlock:v34];

      v30 = v37;
    }
  }

LABEL_27:
}

- (void)_showRestorationScrimForAssetID:(id)d transaction:(id)transaction
{
  dCopy = d;
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transaction];
  presenterModalPresentingViewController = [v7 presenterModalPresentingViewController];
  view = [presenterModalPresentingViewController view];
  window = [view window];

  if (window)
  {
    v11 = [[BKRestorationScrimView alloc] initWithAssetID:dCopy window:window];
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

- (void)requestOpenLastKnownBookWithTransaction:(id)transaction
{
  transactionCopy = transaction;
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

    [(BKBookFlowController *)self _prepareMinifiedAssetPresenterForAssetID:v5 transaction:transactionCopy force:0 openBook:1 showRestorationScrim:1];
  }
}

- (id)bookPresenterCurrentlyOpenBookForSingleScene:(id)scene
{
  bookFlowAssetPresenting = [scene bookFlowAssetPresenting];
  v4 = [bookFlowAssetPresenting presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

- (void)minifiedAssetPresenterForAssetIdentifier:(id)identifier transaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  identifierCopy = identifier;
  libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
  v13 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

  v12 = [(BKBookFlowController *)self _optionsForLibraryAsset:v13 transaction:transactionCopy];
  [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:identifierCopy transaction:transactionCopy options:v12 completion:completionCopy];
}

- (void)minifiedAssetPresenterForAssetIdentifier:(id)identifier transaction:(id)transaction options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  minifiedPresenter = [(BKBookFlowController *)self minifiedPresenter];

  if (minifiedPresenter)
  {
    minifiedPresenter2 = [(BKBookFlowController *)self minifiedPresenter];
    [minifiedPresenter2 minifiedPresenterAssetPresenterForAssetIdentifier:identifierCopy options:optionsCopy completion:completionCopy];
  }

  else
  {
    v13 = objc_retainBlock(completionCopy);
    minifiedPresenter2 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

- (BOOL)_wantsMinifiedAssetPresenterToOpenForTransaction:(id)transaction forceOpen:(BOOL)open
{
  transactionCopy = transaction;
  v6 = transactionCopy;
  if (open)
  {
    sceneSupportsMinifiedPresenting = 1;
  }

  else
  {
    targetSceneDescriptor = [transactionCopy targetSceneDescriptor];

    if (targetSceneDescriptor)
    {
      targetSceneDescriptor2 = [v6 targetSceneDescriptor];
      v10 = BUProtocolCast();

      if (!v10)
      {
        sub_10078B5B8();
      }
    }

    else
    {
      destinationSceneController = [v6 destinationSceneController];
      v10 = BUProtocolCast();
    }

    sceneSupportsMinifiedPresenting = [v10 sceneSupportsMinifiedPresenting];
  }

  return sceneSupportsMinifiedPresenting;
}

- (void)_updateAssetAfterOpen:(id)open
{
  openCopy = open;
  if ((+[AEAnnotationSerializationManager managedBooksAllowedToSync]& 1) == 0)
  {
    [(BKBookFlowController *)self libraryAssetProvider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008EE00;
    v7 = v6[3] = &unk_100A044A0;
    v8 = openCopy;
    v5 = v7;
    [v5 performBlockOnWorkerQueue:v6];
  }
}

- (id)currentAssetPresentersForSingleSceneWithTransaction:(id)transaction
{
  v3 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transaction];
  v4 = [v3 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v4;
}

- (id)_currentAssetPresentersFromAllScenes
{
  sceneHosting = [(BKBookFlowController *)self sceneHosting];
  v3 = [sceneHosting sceneHostingAllViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  return v3;
}

- (id)_currentPresenterFromAllScenesForAssetID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _currentAssetPresentersFromAllScenes = [(BKBookFlowController *)self _currentAssetPresentersFromAllScenes];
  v6 = [_currentAssetPresentersFromAllScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_currentAssetPresentersFromAllScenes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        assetPresenterAssetID = [v9 assetPresenterAssetID];
        v11 = [assetPresenterAssetID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_currentAssetPresentersFromAllScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  primarySceneController = [v2 primarySceneController];
  rootBarCoordinator = [primarySceneController rootBarCoordinator];

  miniPlayerViewController = [rootBarCoordinator miniPlayerViewController];
  objc_opt_class();
  v6 = BUClassAndProtocolCast();

  return v6;
}

- (BOOL)_shouldOpenBookUsingLargeCover:(id)cover
{
  v3 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:cover];
  presenterShouldOpenBookUsingLargeCover = [v3 presenterShouldOpenBookUsingLargeCover];

  return presenterShouldOpenBookUsingLargeCover;
}

- (BOOL)_isPresenterAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
  assetPresenterAssetID = [audiobookCopy assetPresenterAssetID];

  v7 = [libraryAssetProvider libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:assetPresenterAssetID];

  LOBYTE(libraryAssetProvider) = [v7 isAudiobook];
  return libraryAssetProvider;
}

- (void)_popToPresenterIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  bc_descendentPresentedViewController = [neededCopy bc_descendentPresentedViewController];

  if (bc_descendentPresentedViewController)
  {
    bc_descendentPresentedViewController2 = [neededCopy bc_descendentPresentedViewController];
    [bc_descendentPresentedViewController2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);
    bc_descendentPresentedViewController2 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)_replacePresenterWithTransaction:(id)transaction oldPresenter:(id)presenter newPresenter:(id)newPresenter completion:(id)completion
{
  presenterCopy = presenter;
  newPresenterCopy = newPresenter;
  completionCopy = completion;
  v13 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transaction];
  if (!v13)
  {
    sub_10078B5F0();
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008F3D4;
  v17[3] = &unk_100A049A0;
  v18 = v13;
  v19 = newPresenterCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = newPresenterCopy;
  v16 = v13;
  [v16 presenterDismissModalController:presenterCopy animated:0 completion:v17];
}

- (void)showStoreAsset:(id)asset asset:(id)a4 options:(id)options
{
  assetCopy = asset;
  v9 = a4;
  optionsCopy = options;
  v11 = +[BKAppDelegate delegate];
  appLaunchCoordinator = [v11 appLaunchCoordinator];

  [appLaunchCoordinator appLaunchCoordinatorHoldAtConditionAssertion:3];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10008F63C;
  v38 = v37[3] = &unk_100A038D0;
  v13 = v38;
  [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:2 blockID:@"showStoreAsset invalidate holdAssertion" performBlock:v37];
  v14 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingForceOpenBeforeWelcomeCompleted"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10008F644;
    v33[3] = &unk_100A05178;
    v16 = &v34;
    v33[4] = self;
    v34 = assetCopy;
    v17 = &v35;
    v18 = &v36;
    v35 = v9;
    v36 = optionsCopy;
    v19 = optionsCopy;
    v20 = v9;
    v21 = assetCopy;
    v22 = @"_showStoreAsset forceOpenBeforeWelcome";
    v23 = v33;
    v24 = appLaunchCoordinator;
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
    v30 = assetCopy;
    v17 = &v31;
    v18 = &v32;
    v31 = v9;
    v32 = optionsCopy;
    v26 = optionsCopy;
    v27 = v9;
    v28 = assetCopy;
    v22 = @"_showStoreAsset";
    v23 = v29;
    v24 = appLaunchCoordinator;
    v25 = 10;
  }

  [v24 appLaunchCoordinatorOnConditionMask:v25 blockID:v22 performBlock:v23];
}

- (void)_showStoreAsset:(id)asset asset:(id)a4 options:(id)options
{
  assetCopy = asset;
  v9 = a4;
  optionsCopy = options;
  minifiedPresenter = [(BKBookFlowController *)self minifiedPresenter];

  if (minifiedPresenter)
  {
    minifiedPresenter2 = [(BKBookFlowController *)self minifiedPresenter];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008F764;
    v13[3] = &unk_100A051A0;
    v14 = assetCopy;
    selfCopy = self;
    [minifiedPresenter2 minifiedPresenterAssetPresenterForStoreAsset:v9 options:optionsCopy completion:v13];
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

- (BOOL)isOpeningFromCard:(id)card options:(id)options
{
  optionsCopy = options;
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:card];
  v8 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingFromUserActivity"];

  LOBYTE(optionsCopy) = [v8 BOOLValue];
  v9 = [v7 presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAugmentedExperienceCardPresenting];
  v10 = v9;
  v11 = (optionsCopy & 1) == 0 && [v9 count] != 0;

  return v11;
}

- (id)_prepareOpenFromCardOverlayWithTransaction:(id)transaction assetIdentifier:(id)identifier options:(id)options
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  optionsCopy = options;
  v11 = sub_100089C18();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
    *buf = 138412546;
    v57 = identifierCopy;
    v58 = 2114;
    v59 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "prepare to open asset %@ from card logID: %{public}@ with transaction", buf, 0x16u);
  }

  v13 = optionsCopy;
  v14 = [v13 objectForKeyedSubscript:@"BKBookPresentingOverlayView"];

  v15 = v13;
  if (!v14)
  {
    v53 = transactionCopy;
    v16 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
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
      permanentOrTemporaryAssetID = v22;
    }

    else
    {
      permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
    }

    v25 = permanentOrTemporaryAssetID;

    presenterModalPresentingViewController = [v16 presenterModalPresentingViewController];
    presentedViewController = [presenterModalPresentingViewController presentedViewController];
    v51 = [presentedViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost includePresented:1];
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
    coverAnimationSourceReferenceView = [v27 coverAnimationSourceReferenceView];
    v62.origin.x = CGRectZero.origin.x;
    v62.origin.y = CGRectZero.origin.y;
    v62.size.width = CGRectZero.size.width;
    v62.size.height = CGRectZero.size.height;
    v61.origin.x = v30;
    v61.origin.y = v32;
    v61.size.width = v34;
    v61.size.height = v36;
    v49 = coverAnimationSourceReferenceView;
    if (!CGRectEqualToRect(v61, v62))
    {
      [coverAnimationSourceReferenceView convertRect:0 toView:{v30, v32, v34, v36, coverAnimationSourceReferenceView}];
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
    layer = [v43 layer];
    [layer setZPosition:1000.0];

    view = [presenterModalPresentingViewController view];
    window = [view window];
    [window addSubview:v43];

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

    transactionCopy = v53;
  }

  return v15;
}

- (void)_removeViewForCardOverlayWithTransaction:(id)transaction options:(id)options
{
  transactionCopy = transaction;
  v9 = [(BKBookFlowController *)self _viewForCardOverlayFromOptions:options];
  [v9 removeFromSuperview];
  v7 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];

  objc_opt_class();
  v8 = BUDynamicCast();
  [v8 setBookOpenAnimationHelper:0];
}

- (void)_promptInVCToRestartReadingFromBeginning:(id)beginning completion:(id)completion
{
  completionCopy = completion;
  beginningCopy = beginning;
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
  v12 = completionCopy;
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

  [beginningCopy presentViewController:v9 animated:1 completion:0];
}

- (void)_optionallyCloseCardStack:(id)stack inPresentedVC:(id)c completion:(id)completion
{
  stackCopy = stack;
  cCopy = c;
  completionCopy = completion;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000902EC;
  v15[3] = &unk_100A05218;
  if (stackCopy)
  {
    v11 = stackCopy;
  }

  else
  {
    v11 = cCopy;
  }

  v16 = stackCopy;
  v17 = cCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = cCopy;
  v14 = stackCopy;
  [(BKBookFlowController *)self _promptInVCToRestartReadingFromBeginning:v11 completion:v15];
}

- (void)showAssetWithTransaction:(id)transaction assetID:(id)d location:(id)location options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  locationCopy = location;
  transactionCopy = transaction;
  v16 = [BKAssetID identifierWithAssetID:d];
  [(BKBookFlowController *)self showAssetWithTransaction:transactionCopy assetIdentifier:v16 location:locationCopy options:optionsCopy completion:completionCopy];
}

- (void)showAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  locationCopy = location;
  optionsCopy = options;
  completionCopy = completion;
  v17 = sub_100089C18();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [transactionCopy debugDescription];
    v19 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
    *buf = 138544130;
    v81 = v18;
    v82 = 2160;
    v83 = 1752392040;
    v84 = 2112;
    v85 = identifierCopy;
    v86 = 2114;
    v87 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction: %{public}@ assetID: %{mask.hash}@ logID: %{public}@", buf, 0x2Au);
  }

  v56 = locationCopy;
  if ([(BKBookFlowController *)self isOpeningFromCard:transactionCopy options:optionsCopy])
  {
    v20 = sub_100089C18();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
      *buf = 141558530;
      v81 = 1752392040;
      v82 = 2112;
      v83 = identifierCopy;
      v84 = 2114;
      v85 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 0: open asset %{mask.hash}@ from card logID: %{public}@", buf, 0x20u);
    }

    permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
    v23 = [(BKBookFlowController *)self _currentPresenterFromAllScenesForAssetID:permanentOrTemporaryAssetID];

    presentedViewController = [v23 presentedViewController];
    if (presentedViewController)
    {
      v25 = presentedViewController;
      v26 = sub_100089C18();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
        *buf = 141558530;
        v81 = 1752392040;
        v82 = 2112;
        v83 = identifierCopy;
        v84 = 2114;
        v85 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 0: asset %{mask.hash}@ already open logID: %{public}@", buf, 0x20u);
      }

      objc_opt_class();
      presentedViewController2 = [v25 presentedViewController];
      v29 = BUDynamicCast();

      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100090CFC;
      v77[3] = &unk_100A04160;
      v78 = v23;
      v79 = completionCopy;
      v30 = completionCopy;
      v31 = v23;
      [(BKBookFlowController *)self _optionallyCloseCardStack:v29 inPresentedVC:v25 completion:v77];

      goto LABEL_19;
    }

    v32 = [(BKBookFlowController *)self _prepareOpenFromCardOverlayWithTransaction:transactionCopy assetIdentifier:identifierCopy options:optionsCopy];

    optionsCopy = v32;
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100090D70;
  v71[3] = &unk_100A05268;
  v71[4] = self;
  v55 = transactionCopy;
  v72 = transactionCopy;
  v33 = completionCopy;
  v76 = v33;
  v54 = identifierCopy;
  v34 = identifierCopy;
  v73 = v34;
  v74 = locationCopy;
  v35 = optionsCopy;
  v75 = v35;
  v36 = objc_retainBlock(v71);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100091034;
  v67[3] = &unk_100A052B8;
  v67[4] = self;
  v37 = v34;
  v68 = v37;
  optionsCopy = v35;
  v69 = optionsCopy;
  v38 = v36;
  v70 = v38;
  v39 = objc_retainBlock(v67);
  v40 = +[BKAppDelegate delegate];
  appLaunchCoordinator = [v40 appLaunchCoordinator];

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000915EC;
  v62[3] = &unk_100A05308;
  v65 = v39;
  v42 = appLaunchCoordinator;
  v63 = v42;
  v43 = v37;
  v64 = v43;
  v44 = v33;
  v66 = v44;
  v53 = v39;
  v45 = objc_retainBlock(v62);
  v46 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingForceOpenBeforeWelcomeCompleted"];
  LODWORD(v39) = [v46 BOOLValue];

  v47 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
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

  identifierCopy = v54;
  transactionCopy = v55;
LABEL_19:
}

- (void)_showAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  locationCopy = location;
  optionsCopy = options;
  completionCopy = completion;
  v17 = sub_100089C18();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v40 = 1752392040;
    v41 = 2112;
    v42 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_showAssetWithTransaction: assetID: %{mask.hash}@", buf, 0x16u);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100091D10;
  v36[3] = &unk_100A05358;
  v18 = identifierCopy;
  v37 = v18;
  v19 = completionCopy;
  v38 = v19;
  v20 = objc_retainBlock(v36);
  sceneHosting = [(BKBookFlowController *)self sceneHosting];
  permanentOrTemporaryAssetID = [v18 permanentOrTemporaryAssetID];
  v23 = [sceneHosting sceneInfoPresentingAssetID:permanentOrTemporaryAssetID];

  if (v23 && ([v23 sceneController], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    sceneHosting2 = [(BKBookFlowController *)self sceneHosting];
    v26 = sub_100089C18();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (sceneHosting2)
    {
      if (v27)
      {
        sub_10078B814(v18, optionsCopy);
      }

      permanentOrTemporaryAssetID2 = [v18 permanentOrTemporaryAssetID];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100091E54;
      v29[3] = &unk_100A05380;
      v30 = transactionCopy;
      selfCopy = self;
      v32 = v18;
      v33 = locationCopy;
      v34 = optionsCopy;
      v35 = v20;
      [sceneHosting2 requestSceneWithAssetID:permanentOrTemporaryAssetID2 completion:v29];
    }

    else
    {
      if (v27)
      {
        sub_10078B8E0(optionsCopy);
      }

      (v20[2])(v20, 0, 0, 0);
    }
  }

  else
  {
    [(BKBookFlowController *)self _showAssetWithoutStateRestoration:transactionCopy assetIdentifier:v18 location:locationCopy options:optionsCopy completion:v20];
  }
}

- (void)_openPDFAsset:(id)asset
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091F30;
  block[3] = &unk_100A033C8;
  assetCopy = asset;
  v3 = assetCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showAssetWithoutStateRestoration:(id)restoration assetIdentifier:(id)identifier location:(id)location options:(id)options completion:(id)completion
{
  restorationCopy = restoration;
  identifierCopy = identifier;
  locationCopy = location;
  optionsCopy = options;
  completionCopy = completion;
  v15 = sub_100089C18();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [optionsCopy objectForKeyedSubscript:AEAssetLogID];
    *buf = 141558530;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2114;
    v79 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Showing asset: %{mask.hash}@ logID: %{public}@", buf, 0x20u);
  }

  originatingSceneController = [restorationCopy originatingSceneController];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v79 = sub_100027334;
  v80 = sub_1000275E0;
  sceneHosting = [(BKBookFlowController *)self sceneHosting];
  v18 = [sceneHosting defaultSceneControllerForTransaction:restorationCopy];
  v81 = BUProtocolCast();

  v19 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:restorationCopy];
  if (!v19)
  {
    BCReportAssertionFailureWithMessage();
  }

  v44 = v19;
  permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
  v21 = [(BKBookFlowController *)self _currentPresenterFromAllScenesForAssetID:permanentOrTemporaryAssetID];

  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_100027334;
  v76 = sub_1000275E0;
  v77 = [(BKBookFlowController *)self currentAssetPresentersForSingleSceneWithTransaction:restorationCopy];
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_100027334;
  v70[4] = sub_1000275E0;
  lastObject = [v73[5] lastObject];
  v22 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingCloseAndReopenAssetIfNeeded"];
  bOOLValue = [v22 BOOLValue];

  objc_opt_class();
  v23 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingSecure"];
  v24 = BUDynamicCast();
  bOOLValue2 = [v24 BOOLValue];

  v26 = [optionsCopy objectForKeyedSubscript:@"BKBookPresentingForceExistingAssetToClose"];
  v27 = v26;
  if (v26)
  {
    bOOLValue3 = [v26 BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100092928;
  v68[3] = &unk_100A053D0;
  v68[4] = self;
  v28 = identifierCopy;
  v69 = v28;
  v29 = objc_retainBlock(v68);
  v30 = (v29[2])();
  v31 = [(BKBookFlowController *)self _optionsForLibraryAsset:v30 transaction:restorationCopy];
  v32 = [v31 mutableCopy];

  isAudiobook = [v30 isAudiobook];
  if (optionsCopy)
  {
    [v32 addEntriesFromDictionary:optionsCopy];
  }

  if (locationCopy)
  {
    [v32 setObject:locationCopy forKeyedSubscript:@"BKAssetPresentingOpenLocationKey"];
  }

  minifiedPresenter = [(BKBookFlowController *)self minifiedPresenter];
  [minifiedPresenter setShouldIgnoreCurrentBookNotifications:1];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100092980;
  v50[3] = &unk_100A057A0;
  v35 = v28;
  v51 = v35;
  v36 = optionsCopy;
  v52 = v36;
  v37 = restorationCopy;
  v53 = v37;
  v38 = v32;
  v54 = v38;
  selfCopy = self;
  v64 = bOOLValue2;
  v61 = buf;
  v39 = completionCopy;
  v59 = v39;
  v40 = v21;
  v56 = v40;
  v41 = originatingSceneController;
  v65 = isAudiobook;
  v57 = v41;
  v62 = v70;
  v63 = &v72;
  v42 = v29;
  v60 = v42;
  v66 = bOOLValue;
  v43 = locationCopy;
  v58 = v43;
  v67 = bOOLValue3;
  [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:v35 transaction:v37 options:v38 completion:v50];

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(buf, 8);
}

- (void)_closePresenter:(id)presenter animated:(BOOL)animated completion:(id)completion
{
  presenterCopy = presenter;
  completionCopy = completion;
  sceneHosting = [(BKBookFlowController *)self sceneHosting];
  v11 = [sceneHosting sceneControllerForViewController:presenterCopy];

  if (!v11)
  {
    sub_10078BBEC();
  }

  bookFlowAssetPresenting = [v11 bookFlowAssetPresenting];
  if (!bookFlowAssetPresenting)
  {
    sub_10078BC24();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009661C;
  v16[3] = &unk_100A057C8;
  v17 = bookFlowAssetPresenting;
  v18 = presenterCopy;
  animatedCopy = animated;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = presenterCopy;
  v15 = bookFlowAssetPresenting;
  [v15 presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:v16];
}

- (void)closeAllPresentersForSingleSceneWithTransaction:(id)transaction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = [(BKBookFlowController *)self currentAssetPresentersForSingleSceneWithTransaction:transaction];
  [(BKBookFlowController *)self _closePresenters:v9 animated:animatedCopy completion:completionCopy];
}

- (void)_closePresenters:(id)presenters animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  presentersCopy = presenters;
  completionCopy = completion;
  lastObject = [presentersCopy lastObject];
  if (lastObject)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000967D8;
    v13[3] = &unk_100A057F0;
    v14 = presentersCopy;
    v15 = lastObject;
    selfCopy = self;
    v18 = animatedCopy;
    v17 = completionCopy;
    [(BKBookFlowController *)self _closePresenter:v15 animated:animatedCopy completion:v13];
  }

  else
  {
    v11 = objc_retainBlock(completionCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }
}

- (void)_closeMinifiedPresenters:(id)presenters excludeAssetID:(id)d isAudiobook:(BOOL)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  presentersCopy = presenters;
  dCopy = d;
  completionCopy = completion;
  anyObject = [presentersCopy anyObject];
  if (anyObject)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100096A90;
    v24[3] = &unk_100A05010;
    v25 = presentersCopy;
    v14 = anyObject;
    v26 = v14;
    selfCopy = self;
    v15 = dCopy;
    v28 = v15;
    v30 = audiobookCopy;
    v29 = completionCopy;
    v16 = objc_retainBlock(v24);
    minifiedAssetPresenterAssetID = [v14 minifiedAssetPresenterAssetID];
    v18 = [minifiedAssetPresenterAssetID isEqualToString:v15];

    if ([v14 minifiedAssetPresenterIsAudiobook] != audiobookCopy || (v18 & 1) != 0 || +[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled") || (audiobookCopy & 1) != 0)
    {
      (v16[2])(v16);
    }

    else
    {
      minifiedPresenter = [(BKBookFlowController *)self minifiedPresenter];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100096B00;
      v22[3] = &unk_100A03920;
      v23 = v16;
      [minifiedPresenter minifiedPresenterClose:v14 completion:v22];
    }
  }

  else
  {
    v20 = objc_retainBlock(completionCopy);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20);
    }
  }
}

- (void)handleFamilyChangeErrorWithTransaction:(id)transaction error:(id)error assetIdentifier:(id)identifier
{
  transactionCopy = transaction;
  errorCopy = error;
  identifierCopy = identifier;
  selfCopy = self;
  v11 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
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
  assetID = [v22 assetID];

  if (assetID)
  {
    v31 = errorCopy;
    v32 = transactionCopy;
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Delete Book" value:&stru_100A30A68 table:0];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100096F0C;
    v41[3] = &unk_100A05818;
    v26 = assetID;
    v42 = v26;
    v27 = [UIAlertAction actionWithTitle:v25 style:2 handler:v41];
    [v18 addAction:v27];

    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = sub_100027334;
    v39[4] = sub_1000275E0;
    v40 = selfCopy;
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
    errorCopy = v31;
    transactionCopy = v32;
  }

  [v17 presenterShowAlertController:v18 animated:1];
}

- (void)preflightShowAssetWithTransaction:(id)transaction assetIdentifier:(id)identifier completion:(id)completion
{
  transactionCopy = transaction;
  completionCopy = completion;
  identifierCopy = identifier;
  libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
  v12 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

  LOBYTE(identifierCopy) = [v12 isLocal];
  if ((identifierCopy & 1) != 0 || !+[BKReachability isOffline])
  {
    v23 = objc_retainBlock(completionCopy);
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

    v21 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
    presenterSceneController = [v21 presenterSceneController];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000972B8;
    v25[3] = &unk_100A051F0;
    v26 = completionCopy;
    v27 = 0;
    [presenterSceneController presentViewController:v17 animated:1 completion:v25];
  }
}

- (void)handleBookOpenErrorWithTransaction:(id)transaction error:(id)error assetIdentifier:(id)identifier
{
  transactionCopy = transaction;
  errorCopy = error;
  identifierCopy = identifier;
  if ([errorCopy code] != 2002 || (objc_msgSend(errorCopy, "domain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", AssetEngineErrorDomain), v11, (v12 & 1) == 0))
  {
    if ([errorCopy code] == 2003 && (objc_msgSend(errorCopy, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", AssetEngineErrorDomain), v13, v14))
    {
      [(BKBookFlowController *)self handleFamilyChangeErrorWithTransaction:transactionCopy error:errorCopy assetIdentifier:identifierCopy];
    }

    else if ([errorCopy code] == 3001)
    {
      libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
      v16 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

      libraryAssetProvider2 = [(BKBookFlowController *)self libraryAssetProvider];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10009750C;
      v20[3] = &unk_100A053A8;
      v20[4] = self;
      v21 = transactionCopy;
      [libraryAssetProvider2 assetForLibraryAsset:v16 completion:v20];
    }

    else if ([errorCopy code] == 1)
    {
      domain = [errorCopy domain];
      v19 = [domain isEqualToString:@"BKAssetLookup"];

      if (v19)
      {
        [(BKBookFlowController *)self showInstallationErrorWithTransaction:transactionCopy assetIdentifier:identifierCopy];
      }
    }
  }
}

- (void)showNotEnoughMemAlertWithTransaction:(id)transaction name:(id)name
{
  nameCopy = name;
  transactionCopy = transaction;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Unable to Open “%@”" value:&stru_100A30A68 table:0];
  nameCopy = [NSString stringWithFormat:v9, nameCopy];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Cannot Open Document" value:&stru_100A30A68 table:0];
  v12 = [UIAlertController alertControllerWithTitle:v11 message:nameCopy preferredStyle:1];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  v16 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];

  presenterSceneController = [v16 presenterSceneController];
  [presenterSceneController presentViewController:v12 animated:1 completion:0];
}

- (void)showInstallationErrorWithTransaction:(id)transaction assetIdentifier:(id)identifier
{
  transactionCopy = transaction;
  if (identifier)
  {
    identifierCopy = identifier;
    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

    if (v9)
    {
      title = [v9 title];
      v10 = +[NSBundle mainBundle];
      v24 = [v10 localizedStringForKey:@"There is not enough available storage to install this book. You can manage your storage in Settings." value:&stru_100A30A68 table:0];

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Cannot install “%@”" value:&stru_100A30A68 table:0];
      v13 = [NSString stringWithFormat:v12, title];
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

      v22 = [(BKBookFlowController *)self _bookFlowAssetPresentingForShowAssetAction:transactionCopy];
      presenterSceneController = [v22 presenterSceneController];
      [presenterSceneController presentViewController:v14 animated:1 completion:0];
    }
  }
}

- (void)showAssetWithTransaction:(id)transaction storeID:(id)d options:(id)options
{
  transactionCopy = transaction;
  dCopy = d;
  optionsCopy = options;
  if (dCopy && [dCopy unsignedLongLongValue])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100027334;
    v23 = sub_1000275E0;
    v11 = +[BSUIItemDescriptionCache sharedInstance];
    v25 = dCopy;
    v12 = [NSArray arrayWithObjects:&v25 count:1];
    v13 = [v11 itemDescriptionsFromIdentifiers:v12];
    v24 = [v13 objectForKeyedSubscript:dCopy];

    v14 = v20[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100097EDC;
    v15[3] = &unk_100A05890;
    v15[4] = self;
    v16 = transactionCopy;
    v17 = optionsCopy;
    v18 = &v19;
    [v14 get:v15];

    _Block_object_dispose(&v19, 8);
  }
}

- (void)presentItem:(id)item transaction:(id)transaction host:(id)host source:(id)source options:(id)options
{
  itemCopy = item;
  transactionCopy = transaction;
  hostCopy = host;
  sourceCopy = source;
  optionsCopy = options;
  storeID = [itemCopy storeID];
  if (itemCopy && storeID)
  {
    [(BKBookFlowController *)self _presentItem:itemCopy transaction:transactionCopy host:hostCopy source:sourceCopy options:optionsCopy];
  }
}

- (void)_presentItem:(id)item transaction:(id)transaction host:(id)host source:(id)source options:(id)options
{
  itemCopy = item;
  transactionCopy = transaction;
  hostCopy = host;
  sourceCopy = source;
  optionsCopy = options;
  storeID = [itemCopy storeID];
  v18 = storeID;
  if (itemCopy && storeID)
  {
    if ([(BKBookFlowController *)self isOpeningFromCard:transactionCopy options:optionsCopy])
    {
      storeID2 = [itemCopy storeID];
      v20 = [BKAssetID identifierWithAssetID:storeID2];
      v21 = [(BKBookFlowController *)self _prepareOpenFromCardOverlayWithTransaction:transactionCopy assetIdentifier:v20 options:optionsCopy];

      optionsCopy = v21;
    }

    libraryAssetProvider = [(BKBookFlowController *)self libraryAssetProvider];
    v23 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:v18];

    v24 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
    [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentingCanPresentOverStore"];
    [v24 setObject:hostCopy forKeyedSubscript:@"BKBookPresentingCoverAnimationHost"];
    [v24 setObject:sourceCopy forKeyedSubscript:@"BKBookPresentingCoverAnimationSource"];
    if ([v23 canOpen])
    {
      [(BKBookFlowController *)self showAssetWithTransaction:transactionCopy assetID:v18 location:0 options:v24 completion:0];
    }

    else if ([v23 isCloud] && (objc_msgSend(v23, "isPreorderBook") & 1) == 0)
    {
      v38 = [BKAssetID identifierWithAssetID:v18];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100098514;
      v45[3] = &unk_100A058E0;
      v46 = transactionCopy;
      selfCopy = self;
      v48 = v23;
      v49 = v24;
      [(BKBookFlowController *)self minifiedAssetPresenterForAssetIdentifier:v38 transaction:v46 completion:v45];
    }

    else
    {
      sampleDownloadURL = [itemCopy sampleDownloadURL];

      if (sampleDownloadURL)
      {
        v35 = v23;
        artworkURLTemplate = [itemCopy artworkURLTemplate];
        if (artworkURLTemplate)
        {
          +[BCCacheManager defaultCacheManager];
          v27 = v36 = sourceCopy;
          storeID3 = [itemCopy storeID];
          [v27 addURLTemplate:artworkURLTemplate forIdentifier:storeID3];

          sourceCopy = v36;
        }

        v34 = artworkURLTemplate;
        title = [itemCopy title];
        if (title)
        {
          [v24 setObject:title forKeyedSubscript:@"title"];
        }

        v37 = hostCopy;
        author = [itemCopy author];
        if (author)
        {
          [v24 setObject:author forKeyedSubscript:@"author"];
        }

        v31 = +[BKAppDelegate delegate];
        isConnectedToInternet = [v31 isConnectedToInternet];

        if (isConnectedToInternet)
        {
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000988C4;
          v39[3] = &unk_100A039C0;
          v40 = v18;
          selfCopy2 = self;
          v42 = v24;
          v43 = transactionCopy;
          v44 = optionsCopy;
          [v43 commit:v39];
        }

        v23 = v35;
        hostCopy = v37;
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