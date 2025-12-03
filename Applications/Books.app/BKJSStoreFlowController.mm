@interface BKJSStoreFlowController
- (BOOL)storeHandleURL:(id)l sourceApplication:(id)application annotation:(id)annotation isLaunch:(BOOL)launch transaction:(id)transaction;
- (id)_optionsForTransaction:(id)transaction;
- (id)_presentingDelegateForAlertAction:(id)action;
- (id)_presentingDelegateForShowProductCardAction:(id)action;
- (id)_presentingDelegateForStoreURLAction:(id)action;
- (id)_sceneControllerForTransaction:(id)transaction;
- (void)_showStoreWithURL:(id)l tabBarIdentifier:(id)identifier transaction:(id)transaction presentingDelegate:(id)delegate;
- (void)_storeCheckConnectionAndShowStoreURL:(id)l sourceApplication:(id)application annotation:(id)annotation transaction:(id)transaction;
- (void)displayBookUnavailableInStorefrontErrorWithTransaction:(id)transaction;
- (void)displayInternetReachabilityErrorAlert:(BOOL)alert transaction:(id)transaction;
- (void)displayOffineCannotDownloadErrorForContentType:(signed __int16)type transaction:(id)transaction;
- (void)displayStoreConnectionErrorAlert:(BOOL)alert transaction:(id)transaction;
- (void)showAudiobookStoreWithTransaction:(id)transaction;
- (void)showMangaStoreWithTransaction:(id)transaction;
- (void)showReadingNowWithTransaction:(id)transaction;
- (void)showStore:(id)store sourceApplication:(id)application annotation:(id)annotation transaction:(id)transaction;
- (void)showStoreSearchWithTransaction:(id)transaction;
- (void)showStoreWithURL:(id)l transaction:(id)transaction;
- (void)showTabWithIdentifier:(id)identifier transaction:(id)transaction;
- (void)storeShowBookWithStoreID:(id)d resourceType:(int64_t)type transaction:(id)transaction;
- (void)storeShowBooksWithStoreIDs:(id)ds resourceTypes:(id)types focusedIndex:(unint64_t)index transaction:(id)transaction needsAnalyticsLinkData:(BOOL)data;
@end

@implementation BKJSStoreFlowController

- (id)_sceneControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  _sceneManager = [(BKJSStoreFlowController *)self _sceneManager];
  v6 = [_sceneManager defaultSceneControllerForTransaction:transactionCopy];

  return v6;
}

- (id)_presentingDelegateForAlertAction:(id)action
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:action];
  genericPresenting = [v3 genericPresenting];

  return genericPresenting;
}

- (id)_presentingDelegateForStoreURLAction:(id)action
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:action];
  genericPresenting = [v3 genericPresenting];

  return genericPresenting;
}

- (id)_presentingDelegateForShowProductCardAction:(id)action
{
  v3 = [(BKJSStoreFlowController *)self _sceneControllerForTransaction:action];
  storeFlowProductPagePresenting = [v3 storeFlowProductPagePresenting];

  return storeFlowProductPagePresenting;
}

- (id)_optionsForTransaction:(id)transaction
{
  if (transaction)
  {
    v6 = BCTransactionOptionsTransactionKey;
    transactionCopy = transaction;
    transactionCopy2 = transaction;
    v4 = [NSDictionary dictionaryWithObjects:&transactionCopy forKeys:&v6 count:1];
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  return v4;
}

- (void)showStore:(id)store sourceApplication:(id)application annotation:(id)annotation transaction:(id)transaction
{
  transactionCopy = transaction;
  v11 = [BSUIURL URLWithURL:store sourceApplication:application annotation:annotation];
  [(BKJSStoreFlowController *)self showStoreWithURL:v11 transaction:transactionCopy];
}

- (void)showStoreWithURL:(id)l transaction:(id)transaction
{
  lCopy = l;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100188874;
  v12[3] = &unk_100A03A30;
  v12[4] = self;
  transactionCopy = transaction;
  v13 = transactionCopy;
  v8 = lCopy;
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

- (void)_showStoreWithURL:(id)l tabBarIdentifier:(id)identifier transaction:(id)transaction presentingDelegate:(id)delegate
{
  lCopy = l;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100188AD8;
  v17[3] = &unk_100A039C0;
  delegateCopy = delegate;
  v19 = transactionCopy;
  v20 = lCopy;
  selfCopy = self;
  v22 = identifierCopy;
  v13 = identifierCopy;
  v14 = lCopy;
  v15 = transactionCopy;
  v16 = delegateCopy;
  [v15 commit:v17];
}

- (void)showStoreSearchWithTransaction:(id)transaction
{
  _sceneManager = [(BKJSStoreFlowController *)self _sceneManager];
  [_sceneManager requestPrimaryScene:&stru_100A098A0];
}

- (void)showReadingNowWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v4 isBookStoreAllowed];

  if (isBookStoreAllowed)
  {
    v6 = +[BKRootBarItemsProvider HomeIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:transactionCopy];
  }
}

- (void)showAudiobookStoreWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v4 isBookStoreAllowed];

  if (isBookStoreAllowed)
  {
    v6 = +[BKRootBarItemsProvider AudiobooksIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:transactionCopy];
  }
}

- (void)showMangaStoreWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v4 isBookStoreAllowed];

  if (isBookStoreAllowed)
  {
    v6 = +[BKRootBarItemsProvider MangaIdentifier];
    [(BKJSStoreFlowController *)self showTabWithIdentifier:v6 transaction:transactionCopy];
  }
}

- (void)showTabWithIdentifier:(id)identifier transaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  if ([identifierCopy length])
  {
    [(BKJSStoreFlowController *)self _sceneManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189330;
    v10 = v9[3] = &unk_100A03C78;
    selfCopy = self;
    v12 = identifierCopy;
    v13 = transactionCopy;
    v8 = v10;
    [v8 forceTransaction:v13 ontoPrimarySceneWithContinuation:v9];
  }
}

- (void)_storeCheckConnectionAndShowStoreURL:(id)l sourceApplication:(id)application annotation:(id)annotation transaction:(id)transaction
{
  lCopy = l;
  transactionCopy = transaction;
  v12 = [BSUIURL URLWithURL:lCopy sourceApplication:application annotation:annotation];
  v13 = +[BKAppDelegate delegate];
  appLaunchCoordinator = [v13 appLaunchCoordinator];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001894DC;
  v18[3] = &unk_100A05178;
  v19 = lCopy;
  selfCopy = self;
  v21 = v12;
  v22 = transactionCopy;
  v15 = transactionCopy;
  v16 = v12;
  v17 = lCopy;
  [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:32 blockID:@"showStoreURL" performBlock:v18];
}

- (BOOL)storeHandleURL:(id)l sourceApplication:(id)application annotation:(id)annotation isLaunch:(BOOL)launch transaction:(id)transaction
{
  lCopy = l;
  applicationCopy = application;
  annotationCopy = annotation;
  transactionCopy = transaction;
  if (lCopy)
  {
    v15 = [(BKJSStoreFlowController *)self _presentingDelegateForShowProductCardAction:transactionCopy];
    v16 = +[BKAppDelegate delegate];
    appLaunchCoordinator = [v16 appLaunchCoordinator];

    appLaunchCoordinatorHoldAtLaunchingAssertion = [appLaunchCoordinator appLaunchCoordinatorHoldAtLaunchingAssertion];
    v19 = appLaunchCoordinatorHoldAtLaunchingAssertion;
    if (appLaunchCoordinatorHoldAtLaunchingAssertion)
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100189B50;
      v38[3] = &unk_100A038D0;
      v20 = appLaunchCoordinatorHoldAtLaunchingAssertion;
      v39 = v20;
      [appLaunchCoordinator appLaunchCoordinatorOnConditionMask:1024 blockID:@"invalidate holdAtLaunchScreen" performBlock:v38];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100189B58;
      v36[3] = &unk_100A033C8;
      v37 = v20;
      [transactionCopy whenCancelled:v36];
    }

    if ([v15 presenterCanShowStoreProductOnCurrentContent])
    {
      httpURL = [lCopy httpURL];
      appLaunchCoordinatorHoldAtLaunchingAssertion2 = [appLaunchCoordinator appLaunchCoordinatorHoldAtLaunchingAssertion];
      v22 = +[BSUIStoreServices sharedInstance];
      v23 = [BSUIURL URLWithURL:httpURL];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100189B60;
      v27[3] = &unk_100A09940;
      v28 = transactionCopy;
      v29 = appLaunchCoordinator;
      v30 = lCopy;
      v31 = applicationCopy;
      v32 = annotationCopy;
      selfCopy = self;
      v34 = v15;
      v35 = appLaunchCoordinatorHoldAtLaunchingAssertion2;
      v24 = appLaunchCoordinatorHoldAtLaunchingAssertion2;
      [v22 canHandleURLAsProductPage:v23 completion:v27];
    }

    else
    {
      [(BKJSStoreFlowController *)self _storeCheckConnectionAndShowStoreURL:lCopy sourceApplication:applicationCopy annotation:annotationCopy transaction:transactionCopy];
    }
  }

  return lCopy != 0;
}

- (void)displayInternetReachabilityErrorAlert:(BOOL)alert transaction:(id)transaction
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:transaction];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A1CC;
  v9[3] = &unk_100A044C8;
  v5 = v11 = alert;
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

- (void)displayOffineCannotDownloadErrorForContentType:(signed __int16)type transaction:(id)transaction
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:transaction];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A4A8;
  v9[3] = &unk_100A04030;
  v5 = v11 = type;
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

- (void)displayStoreConnectionErrorAlert:(BOOL)alert transaction:(id)transaction
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:transaction];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018A768;
  v9[3] = &unk_100A044C8;
  v5 = v11 = alert;
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

- (void)storeShowBookWithStoreID:(id)d resourceType:(int64_t)type transaction:(id)transaction
{
  dCopy = d;
  transactionCopy = transaction;
  if (dCopy)
  {
    v9 = +[BKAppDelegate delegate];
    isConnectedToInternet = [v9 isConnectedToInternet];

    if (isConnectedToInternet)
    {
      v11 = +[BSUIStoreServices sharedInstance];
      [v11 showProductPageForStoreID:dCopy resourceType:type transaction:transactionCopy needsAnalyticsLinkData:0];
    }

    else
    {
      [(BKJSStoreFlowController *)self displayInternetReachabilityErrorAlert:1 transaction:transactionCopy];
    }
  }
}

- (void)storeShowBooksWithStoreIDs:(id)ds resourceTypes:(id)types focusedIndex:(unint64_t)index transaction:(id)transaction needsAnalyticsLinkData:(BOOL)data
{
  dataCopy = data;
  dsCopy = ds;
  typesCopy = types;
  transactionCopy = transaction;
  if ([dsCopy count])
  {
    v14 = +[BKAppDelegate delegate];
    isConnectedToInternet = [v14 isConnectedToInternet];

    if (isConnectedToInternet)
    {
      v16 = +[BSUIStoreServices sharedInstance];
      [v16 showProductPagesForStoreIDs:dsCopy resourceTypes:typesCopy focusedIndex:index transaction:transactionCopy needsAnalyticsLinkData:dataCopy];
    }

    else
    {
      [(BKJSStoreFlowController *)self displayInternetReachabilityErrorAlert:1 transaction:transactionCopy];
    }
  }
}

- (void)displayBookUnavailableInStorefrontErrorWithTransaction:(id)transaction
{
  [(BKJSStoreFlowController *)self _presentingDelegateForAlertAction:transaction];
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