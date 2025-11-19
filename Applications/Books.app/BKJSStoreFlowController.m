@interface BKJSStoreFlowController
- (BOOL)storeHandleURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 isLaunch:(BOOL)a6 transaction:(id)a7;
- (id)_optionsForTransaction:(id)a3;
- (id)_presentingDelegateForAlertAction:(id)a3;
- (id)_presentingDelegateForShowProductCardAction:(id)a3;
- (id)_presentingDelegateForStoreURLAction:(id)a3;
- (id)_sceneControllerForTransaction:(id)a3;
- (void)_showStoreWithURL:(id)a3 tabBarIdentifier:(id)a4 transaction:(id)a5 presentingDelegate:(id)a6;
- (void)_storeCheckConnectionAndShowStoreURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 transaction:(id)a6;
- (void)displayBookUnavailableInStorefrontErrorWithTransaction:(id)a3;
- (void)displayInternetReachabilityErrorAlert:(BOOL)a3 transaction:(id)a4;
- (void)displayOffineCannotDownloadErrorForContentType:(signed __int16)a3 transaction:(id)a4;
- (void)displayStoreConnectionErrorAlert:(BOOL)a3 transaction:(id)a4;
- (void)showAudiobookStoreWithTransaction:(id)a3;
- (void)showMangaStoreWithTransaction:(id)a3;
- (void)showReadingNowWithTransaction:(id)a3;
- (void)showStore:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 transaction:(id)a6;
- (void)showStoreSearchWithTransaction:(id)a3;
- (void)showStoreWithURL:(id)a3 transaction:(id)a4;
- (void)showTabWithIdentifier:(id)a3 transaction:(id)a4;
- (void)storeShowBookWithStoreID:(id)a3 resourceType:(int64_t)a4 transaction:(id)a5;
- (void)storeShowBooksWithStoreIDs:(id)a3 resourceTypes:(id)a4 focusedIndex:(unint64_t)a5 transaction:(id)a6 needsAnalyticsLinkData:(BOOL)a7;
@end

@implementation BKJSStoreFlowController

- (id)_sceneControllerForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKJSStoreFlowController *)self _sceneManager];
  v6 = [v5 defaultSceneControllerForTransaction:v4];

  return v6;
}

- (id)_presentingDelegateForAlertAction:(id)a3
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:a3];
  v4 = [v3 genericPresenting];

  return v4;
}

- (id)_presentingDelegateForStoreURLAction:(id)a3
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:a3];
  v4 = [v3 genericPresenting];

  return v4;
}

- (id)_presentingDelegateForShowProductCardAction:(id)a3
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:a3];
  v4 = [v3 storeFlowProductPagePresenting];

  return v4;
}

- (id)_optionsForTransaction:(id)a3
{
  if (a3)
  {
    v6 = BCTransactionOptionsTransactionKey;
    v7 = a3;
    v3 = a3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  return v4;
}

- (void)showStore:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 transaction:(id)a6
{
  v10 = a6;
  v11 = [BSUIURL URLWithURL:a3 sourceApplication:a4 annotation:a5];
  [(BKJSStoreFlowController *)self showStoreWithURL:v11 transaction:v10];
}

- (void)showStoreWithURL:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100188874;
  v12[3] = &unk_100A03A30;
  v12[4] = self;
  v7 = a4;
  v13 = v7;
  v8 = v6;
  v14 = v8;
  v9 = objc_retainBlock(v12);
  if (v9)
  {
    if (+[NSThread isMainThread])
    {
      (v9[2])(v9);
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001889B8;
      v10[3] = &unk_100A03920;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }
}

- (void)_showStoreWithURL:(id)a3 tabBarIdentifier:(id)a4 transaction:(id)a5 presentingDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100188AD8;
  v17[3] = &unk_100A039C0;
  v18 = a6;
  v19 = v12;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  v16 = v18;
  [v15 commit:v17];
}

- (void)showStoreSearchWithTransaction:(id)a3
{
  v3 = [(BKJSStoreFlowController *)self _sceneManager];
  [v3 requestPrimaryScene:&stru_100A098A0];
}

- (void)showReadingNowWithTransaction:(id)a3
{
  v7 = a3;
  v4 = +[BURestrictionsProvider sharedInstance];
  v5 = [v4 isBookStoreAllowed];

  if (v5)
  {
    v6 = +[BKRootBarItemsProvider HomeIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:v7];
  }
}

- (void)showAudiobookStoreWithTransaction:(id)a3
{
  v7 = a3;
  v4 = +[BURestrictionsProvider sharedInstance];
  v5 = [v4 isBookStoreAllowed];

  if (v5)
  {
    v6 = +[BKRootBarItemsProvider AudiobooksIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:v7];
  }
}

- (void)showMangaStoreWithTransaction:(id)a3
{
  v7 = a3;
  v4 = +[BURestrictionsProvider sharedInstance];
  v5 = [v4 isBookStoreAllowed];

  if (v5)
  {
    v6 = +[BKRootBarItemsProvider MangaIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:v7];
  }
}

- (void)showTabWithIdentifier:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    [(BKJSStoreFlowController *)self _sceneManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189330;
    v10 = v9[3] = &unk_100A03C78;
    v11 = self;
    v12 = v6;
    v13 = v7;
    v8 = v10;
    [v8 forceTransaction:v13 ontoPrimarySceneWithContinuation:v9];
  }
}

- (void)_storeCheckConnectionAndShowStoreURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 transaction:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [BSUIURL URLWithURL:v10 sourceApplication:a4 annotation:a5];
  v13 = +[BKAppDelegate delegate];
  v14 = [v13 appLaunchCoordinator];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001894DC;
  v18[3] = &unk_100A05178;
  v19 = v10;
  v20 = self;
  v21 = v12;
  v22 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  [v14 appLaunchCoordinatorOnConditionMask:32 blockID:@"showStoreURL" performBlock:v18];
}

- (BOOL)storeHandleURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 isLaunch:(BOOL)a6 transaction:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v11)
  {
    v15 = [(BKJSStoreFlowController *)self _presentingDelegateForShowProductCardAction:v14];
    v16 = +[BKAppDelegate delegate];
    v17 = [v16 appLaunchCoordinator];

    v18 = [v17 appLaunchCoordinatorHoldAtLaunchingAssertion];
    v19 = v18;
    if (v18)
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100189B50;
      v38[3] = &unk_100A038D0;
      v20 = v18;
      v39 = v20;
      [v17 appLaunchCoordinatorOnConditionMask:1024 blockID:@"invalidate holdAtLaunchScreen" performBlock:v38];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100189B58;
      v36[3] = &unk_100A033C8;
      v37 = v20;
      [v14 whenCancelled:v36];
    }

    if ([v15 presenterCanShowStoreProductOnCurrentContent])
    {
      v26 = [v11 httpURL];
      v21 = [v17 appLaunchCoordinatorHoldAtLaunchingAssertion];
      v22 = +[BSUIStoreServices sharedInstance];
      v23 = [BSUIURL URLWithURL:v26];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100189B60;
      v27[3] = &unk_100A09940;
      v28 = v14;
      v29 = v17;
      v30 = v11;
      v31 = v12;
      v32 = v13;
      v33 = self;
      v34 = v15;
      v35 = v21;
      v24 = v21;
      [v22 canHandleURLAsProductPage:v23 completion:v27];
    }

    else
    {
      [(BKJSStoreFlowController *)self _storeCheckConnectionAndShowStoreURL:v11 sourceApplication:v12 annotation:v13 transaction:v14];
    }
  }

  return v11 != 0;
}

- (void)displayInternetReachabilityErrorAlert:(BOOL)a3 transaction:(id)a4
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:a4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A1CC;
  v9[3] = &unk_100A044C8;
  v5 = v11 = a3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (v6)
  {
    if (+[NSThread isMainThread])
    {
      (v6[2])(v6);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018A368;
      block[3] = &unk_100A03920;
      v8 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)displayOffineCannotDownloadErrorForContentType:(signed __int16)a3 transaction:(id)a4
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:a4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A4A8;
  v9[3] = &unk_100A04030;
  v5 = v11 = a3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (v6)
  {
    if (+[NSThread isMainThread])
    {
      (v6[2])(v6);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018A628;
      block[3] = &unk_100A03920;
      v8 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)displayStoreConnectionErrorAlert:(BOOL)a3 transaction:(id)a4
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:a4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A768;
  v9[3] = &unk_100A044C8;
  v5 = v11 = a3;
  v10 = v5;
  v6 = objc_retainBlock(v9);
  if (v6)
  {
    if (+[NSThread isMainThread])
    {
      (v6[2])(v6);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018A8D4;
      block[3] = &unk_100A03920;
      v8 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)storeShowBookWithStoreID:(id)a3 resourceType:(int64_t)a4 transaction:(id)a5
{
  v12 = a3;
  v8 = a5;
  if (v12)
  {
    v9 = +[BKAppDelegate delegate];
    v10 = [v9 isConnectedToInternet];

    if (v10)
    {
      v11 = +[BSUIStoreServices sharedInstance];
      [v11 showProductPageForStoreID:v12 resourceType:a4 transaction:v8 needsAnalyticsLinkData:0];
    }

    else
    {
      [(BKJSStoreFlowController *)self displayInternetReachabilityErrorAlert:1 transaction:v8];
    }
  }
}

- (void)storeShowBooksWithStoreIDs:(id)a3 resourceTypes:(id)a4 focusedIndex:(unint64_t)a5 transaction:(id)a6 needsAnalyticsLinkData:(BOOL)a7
{
  v7 = a7;
  v17 = a3;
  v12 = a4;
  v13 = a6;
  if ([v17 count])
  {
    v14 = +[BKAppDelegate delegate];
    v15 = [v14 isConnectedToInternet];

    if (v15)
    {
      v16 = +[BSUIStoreServices sharedInstance];
      [v16 showProductPagesForStoreIDs:v17 resourceTypes:v12 focusedIndex:a5 transaction:v13 needsAnalyticsLinkData:v7];
    }

    else
    {
      [(BKJSStoreFlowController *)self displayInternetReachabilityErrorAlert:1 transaction:v13];
    }
  }
}

- (void)displayBookUnavailableInStorefrontErrorWithTransaction:(id)a3
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:a3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018ABD4;
  v3 = v7[3] = &unk_100A033C8;
  v8 = v3;
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10018ACF8;
      v5[3] = &unk_100A03920;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }
}

@end