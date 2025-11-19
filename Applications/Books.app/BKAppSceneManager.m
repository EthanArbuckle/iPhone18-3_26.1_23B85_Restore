@interface BKAppSceneManager
+ (NSArray)supportedAudibleImportTypes;
+ (NSArray)supportedAudiobookImportTypes;
+ (NSArray)supportedFileImportTypes;
- (BKAppSceneManager)initWithLaunchCoordinator:(id)a3 importCoordinator:(id)a4;
- (BKAppStoreReviewManager)appStoreReviewManager;
- (BKBookFlowController)bookFlowController;
- (BKJSStoreFlowController)storeFlowController;
- (BKLibraryCollectionsFlowController)libraryCollectionsFlowController;
- (BOOL)_isRunningWelcomeFlow;
- (BOOL)isPresentingWelcome;
- (BOOL)shouldOpenLastBook;
- (NSString)figaroPageContext;
- (double)minifiedFlowControllerMinibarBottomGuideWithViewController:(id)a3;
- (id)_audibleURLsInURLs:(id)a3;
- (id)_findImportEligibleURLsAtURL:(id)a3;
- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)a3;
- (id)_primarySceneControllerObject;
- (id)_welcomeItems;
- (id)anySceneController;
- (id)appGroupIdentifierForBridge:(id)a3;
- (id)classRegistrations;
- (id)currentSceneController;
- (id)defaultSceneControllerForTransaction:(id)a3;
- (id)flowControllers;
- (id)mainFlowController;
- (id)minifiedFlowControllerMinibarContainingViewController;
- (id)minifiedFlowControllerPresentedAssetID:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)navigationControllerForItem:(id)a3;
- (id)newBookSceneControllerProviderWithRequestAssetID:(id)a3;
- (id)newTransactionWithName:(id)a3 originatingSceneController:(id)a4 targetSceneDescriptor:(id)a5;
- (id)objectRegistrationsForBridge:(id)a3;
- (id)primarySceneController;
- (id)rootBarCoordinatorForSceneController:(id)a3;
- (id)sceneControllerForViewController:(id)a3;
- (id)sceneControllerForWindow:(id)a3;
- (id)sceneInfoPresentingAssetID:(id)a3;
- (id)windowFromSceneType:(unint64_t)a3 assetID:(id)a4;
- (void)_afterSceneWillConnect:(id)a3;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_bagDidUpdate:(id)a3;
- (void)_bridgeDidReload:(id)a3;
- (void)_didFinishSceneStateRestoration:(id)a3;
- (void)_enqueueDismissWelcomePresenter:(id)a3;
- (void)_openExternalURL:(id)a3 sourceApplication:(id)a4;
- (void)_retrieveTabsWithCompletion:(id)a3;
- (void)_setCurrentWelcomePresenterIfNeeded:(id)a3;
- (void)_setWelcomePresenterIfNoneExists:(id)a3 shouldPresent:(BOOL)a4;
- (void)_setupMinibarContainerView;
- (void)_setupURLHandler;
- (void)_setupWelcomeScreenWithPresenterIfNeeded:(id)a3;
- (void)_showMainViewController;
- (void)_showMainViewControllerOrWelcomeScreen;
- (void)_showMainViewControllerOrWelcomeScreenNow;
- (void)_welcomePresenterDidDisconnect:(id)a3;
- (void)analyticsForceEndSession;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)attemptToPresentStoreReview;
- (void)carPlayScene:(id)a3 didConnectInterfaceController:(id)a4;
- (void)dealloc;
- (void)destroySceneForAssetID:(id)a3;
- (void)enumerateSceneController:(id)a3 includeHidden:(BOOL)a4;
- (void)enumerateSceneInfo:(id)a3;
- (void)forceTransaction:(id)a3 ontoPrimarySceneWithContinuation:(id)a4;
- (void)handleApplicationURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 likelyUserInitiated:(id)a6 canImport:(BOOL)a7 openAfterImport:(BOOL)a8 importInPlace:(BOOL)a9 showLibraryAllCollection:(BOOL)a10 switchToLibrary:(BOOL)a11 transaction:(id)a12 completion:(id)a13;
- (void)handleApplicationURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 likelyUserInitiated:(id)a6 transaction:(id)a7;
- (void)handleImportURLs:(id)a3 openAfterImport:(BOOL)a4 importInPlace:(BOOL)a5 showLibraryAllCollection:(BOOL)a6 switchToLibrary:(BOOL)a7 transaction:(id)a8 perURLCompletion:(id)a9 completion:(id)a10;
- (void)minifiedFlowControllerHandleAssetPresentationError:(id)a3 assetID:(id)a4 isRetry:(BOOL)a5;
- (void)minifiedFlowControllerRequestShowStoreForStoreID:(id)a3 fromViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)processAccountSwitchWithCompletion:(id)a3;
- (void)reloadStandardItemsWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)requestAccountInfoScene;
- (void)requestBookSceneWithAssetID:(id)a3 completion:(id)a4;
- (void)requestEndOfBookSceneWithOptions:(id)a3 completion:(id)a4;
- (void)requestPrimaryOrBookScene:(id)a3;
- (void)requestPrimaryScene:(id)a3;
- (void)requestSceneWithAssetID:(id)a3 completion:(id)a4;
- (void)requestTabBarSceneController:(id)a3;
- (void)restrictionsForBookStoreAllowedChanged:(BOOL)a3;
- (void)routeScene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)saveStateClosing:(BOOL)a3;
- (void)setRootBarCoordinator:(id)a3;
- (void)setScriptDataSource:(id)a3 completion:(id)a4;
- (void)startJavascriptAppWithLibrary:(id)a3 libraryItemStateProvider:(id)a4 downloadProgressCenter:(id)a5 serviceCenter:(id)a6 storeController:(id)a7 engagementManager:(id)a8 jetActionHandler:(id)a9 pageHostingControllerProvider:(id)a10;
- (void)viewControllerForItem:(id)a3 completion:(id)a4;
@end

@implementation BKAppSceneManager

- (void)_setupMinibarContainerView
{
  v3 = [(BKAppSceneManager *)self launchCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100198CF8;
  v4[3] = &unk_100A038D0;
  v4[4] = self;
  [v3 appLaunchCoordinatorOnConditionMask:65 blockID:@"_setupMinibarContainerView" performBlock:v4];
}

- (id)_welcomeItems
{
  v2 = objc_opt_new();
  v3 = objc_alloc_init(BKWelcomeGDPRItem);
  [v2 addObject:v3];

  v4 = objc_alloc_init(BKWelcomeNotificationWarmingItem);
  [v2 addObject:v4];

  return v2;
}

- (BOOL)_isRunningWelcomeFlow
{
  if (self->_welcomeScreenManager)
  {
    v2 = [(BKAppSceneManager *)self launchCoordinator];
    v3 = [v2 appLaunchCoordinatorIsConditionSatisfied:2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)currentSceneController
{
  v2 = [(BKAppSceneManager *)self sceneFlowController];
  v3 = [v2 currentSceneController];

  return v3;
}

- (id)primarySceneController
{
  v2 = [(BKAppSceneManager *)self sceneFlowController];
  v3 = [v2 primarySceneController];

  return v3;
}

- (void)setScriptDataSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = byte_100AF7640;
  if (byte_100AF7640 == 1)
  {
    v9 = +[JSAHotReloadController sharedController];
    v10 = [v9 isHotReloading] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = [qword_100AF7638 value];
  v12 = [v11 context];
  v13 = [v12 virtualMachine];
  [v13 removeManagedReference:qword_100AF7638 withOwner:self];

  v14 = [JSManagedValue managedValueWithValue:v6 andOwner:self];
  v15 = qword_100AF7638;
  qword_100AF7638 = v14;

  if ((v8 & 1) == 0)
  {
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:self selector:"_bagDidUpdate:" name:AMSBagChangedNotification object:0];

    byte_100AF7640 = 1;
  }

  if (v10)
  {
    v17 = JSALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446210;
      v21 = "[BKAppSceneManager(BKTabBarControllerJSApp) setScriptDataSource:completion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Reloading RootBarItems due to new JS", &v20, 0xCu);
    }

    [(BKAppSceneManager *)self reloadStandardItemsWithAnimated:1 completion:v7];
  }

  else
  {
    v18 = objc_retainBlock(v7);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }
}

- (void)viewControllerForItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryCollection])
  {
    v8 = [v6 identifier];
    v9 = [BKLibraryBookshelfController libraryViewControllerWithIdentifier:v8];
    v7[2](v7, v9);
  }

  else if (qword_100AF7638)
  {
    v10 = [v6 tabBarTitle];
    v11 = [v6 identifier];
    v12 = +[BKRootBarItemsProvider HomeIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v52[0] = BSUIFeedOptionsKeyContextMenuProvider;
      v14 = +[BKContextMenuProvider sharedProvider];
      v53[0] = v14;
      v52[1] = @"identifier";
      v15 = [v6 identifier];
      v53[1] = v15;
      v53[2] = &__kCFBooleanTrue;
      v52[2] = @"isInitialFeed";
      v52[3] = @"isRootFeed";
      v53[3] = &__kCFBooleanTrue;
      v53[4] = &__kCFBooleanTrue;
      v52[4] = @"deferUIUpdateUntilInitialContentReady";
      v52[5] = @"reading-now-homepage";
      v53[5] = &__kCFBooleanTrue;
      v52[6] = @"tab";
      v16 = [v6 identifier];
      v53[6] = v16;
      v53[7] = v10;
      v17 = v10;
      v52[7] = @"title";
      v52[8] = @"url";
      v18 = [v6 url];
      v19 = v18;
      if (!v18)
      {
        v19 = +[NSNull null];
      }

      v53[8] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:9];
      if (!v18)
      {
      }

      v21 = [[BSUIFeedViewController alloc] initWithOptions:v20];
      v22 = JSALog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v49 = v21;
        v50 = 2114;
        v51 = v6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "VC %{public}@ for %{public}@", buf, 0x16u);
      }

      v7[2](v7, v21);
      v10 = v17;
    }

    else if (qword_100AF7638)
    {
      v40 = v10;
      v24 = [(BKAppSceneManager *)self primarySceneController];
      v25 = [v24 bk_window];

      v26 = [v25 rootViewController];
      v27 = [v26 ba_effectiveAnalyticsTracker];
      v28 = [v6 suggestedTrackerName];
      v29 = [v27 chainWithName:v28];

      v46[0] = @"identifier";
      v30 = [v6 identifier];
      v47[0] = v30;
      v46[1] = @"isDefault";
      v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isPlaceholder]);
      v47[1] = v31;
      v46[2] = @"url";
      v32 = [v6 url];
      v33 = v32;
      if (!v32)
      {
        v33 = +[NSNull null];
      }

      v47[2] = v33;
      v47[3] = v40;
      v46[3] = @"title";
      v46[4] = @"tracker";
      v47[4] = v29;
      v34 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];
      if (!v32)
      {
      }

      v35 = qword_100AF7638;
      v36 = dispatch_get_global_queue(33, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001025C0;
      block[3] = &unk_100A04FE8;
      v42 = v35;
      v43 = v34;
      v44 = v6;
      v45 = v7;
      v37 = v34;
      v38 = v35;
      dispatch_async(v36, block);

      v10 = v40;
    }

    else
    {
      v39 = JSALog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = v6;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No VC for now due to lack of JS data source: %{public}@", buf, 0xCu);
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v23 = JSALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No VC for now due to lack of JS data source: %{public}@", buf, 0xCu);
    }

    v7[2](v7, 0);
  }
}

- (id)navigationControllerForItem:(id)a3
{
  v4 = a3;
  [v4 isLibraryCollection];
  v5 = objc_opt_new();
  [v5 setDelegate:self];
  [v5 setIsRoot:1];
  v6 = [(BKAppSceneManager *)self primarySceneController];
  v7 = [v6 bk_window];

  v8 = [v7 rootViewController];
  v9 = [v8 ba_effectiveAnalyticsTracker];
  v10 = [v4 suggestedTrackerName];
  v11 = [v9 chainWithName:v10];

  [v5 ba_setAnalyticsTracker:v11];
  v12 = [v4 identifier];

  v13 = [BKRootBarItemsProvider tabTypeFor:v12];
  [v11 pushTabDataWithType:v13 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppSceneManager+BKTabBarControllerJSApp.m" line:207];

  return v5;
}

- (void)reloadStandardItemsWithAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100102B10;
  v14[3] = &unk_100A04058;
  objc_copyWeak(&v16, &location);
  v6 = v5;
  v15 = v6;
  v7 = objc_retainBlock(v14);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100102BA8;
  v10[3] = &unk_100A074D0;
  objc_copyWeak(&v13, &location);
  v8 = v7;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  [(BKAppSceneManager *)self _retrieveTabsWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_retrieveTabsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asking bag for tabs", buf, 2u);
  }

  v5 = +[BUBag defaultBag];
  v6 = [v5 booksTabs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100102F7C;
  v8[3] = &unk_100A07520;
  v9 = v3;
  v7 = v3;
  [v6 jsa_valueWithCompletion:v8];
}

- (void)_bagDidUpdate:(id)a3
{
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[BKAppSceneManager(BKTabBarControllerJSApp) _bagDidUpdate:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Reloading RootBarItems due to bag change", &v5, 0xCu);
  }

  [(BKAppSceneManager *)self reloadStandardItemsWithAnimated:1 completion:&stru_100A07540];
}

- (void)restrictionsForBookStoreAllowedChanged:(BOOL)a3
{
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[BKAppSceneManager(BKTabBarControllerJSApp) restrictionsForBookStoreAllowedChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Reloading RootBarItems due to BookStore restriction change", &v5, 0xCu);
  }

  [(BKAppSceneManager *)self reloadStandardItemsWithAnimated:1 completion:&stru_100A07560];
}

- (id)_primarySceneControllerObject
{
  objc_opt_class();
  v3 = [(BKAppSceneManager *)self primarySceneController];
  v4 = BUDynamicCast();

  return v4;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
  v9 = [v16 viewIfLoaded];
  v10 = [v9 window];
  if (v10)
  {
    v11 = v10;
    v12 = [v16 parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v8 transitionCoordinator];

      if (!v13)
      {
        goto LABEL_7;
      }

      v9 = [(BKAppSceneManager *)self rootBarCoordinator];
      [v9 dismissCardStackForCurrentlySelected];
    }

    else
    {
    }
  }

LABEL_7:
  v14 = [(BKAppSceneManager *)self _primarySceneControllerObject];
  v15 = [v14 mainFlowController];
  [v15 navigationController:v16 willShowViewController:v8 animated:v5];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(BKAppSceneManager *)self _primarySceneControllerObject];
  v14 = [v13 mainFlowController];
  v15 = [v14 navigationController:v12 animationControllerForOperation:a4 fromViewController:v11 toViewController:v10];

  return v15;
}

- (void)requestAccountInfoScene
{
  v2 = [(BKAppSceneManager *)self sceneFlowController];
  [v2 requestAccountScene:0];
}

- (void)_setupURLHandler
{
  v3 = [BKAppURLHandler alloc];
  v4 = [(BKAppSceneManager *)self mainLibrary];
  v6 = [(BKAppURLHandler *)v3 initWithLibraryAssetProvider:v4];

  [(BKAppURLHandler *)v6 setDelegate:self];
  [(BKAppSceneManager *)self setUrlHandler:v6];
  v5 = [(BKAppSceneManager *)self urlHandlingQueue];
  dispatch_activate(v5);
}

- (void)handleApplicationURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 likelyUserInitiated:(id)a6 transaction:(id)a7
{
  BYTE2(v7) = 1;
  LOWORD(v7) = 0;
  [BKAppSceneManager handleApplicationURL:"handleApplicationURL:sourceApplication:annotation:likelyUserInitiated:canImport:openAfterImport:importInPlace:showLibraryAllCollection:switchToLibrary:transaction:completion:" sourceApplication:a3 annotation:a4 likelyUserInitiated:a5 canImport:a6 openAfterImport:0 importInPlace:1 showLibraryAllCollection:v7 switchToLibrary:a7 transaction:0 completion:?];
}

- (void)handleApplicationURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 likelyUserInitiated:(id)a6 canImport:(BOOL)a7 openAfterImport:(BOOL)a8 importInPlace:(BOOL)a9 showLibraryAllCollection:(BOOL)a10 switchToLibrary:(BOOL)a11 transaction:(id)a12 completion:(id)a13
{
  v31 = a3;
  v30 = a4;
  v28 = a5;
  v25 = a6;
  v26 = a12;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100114894;
  v48[3] = &unk_100A07A98;
  v32 = a13;
  v49 = v32;
  v17 = objc_retainBlock(v48);
  objc_initWeak(&location, self);
  v18 = [(BKAppSceneManager *)self urlHandlingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114910;
  block[3] = &unk_100A07B38;
  objc_copyWeak(&v41, &location);
  v34 = v31;
  v35 = v30;
  v36 = v28;
  v37 = v26;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v38 = self;
  v39 = v25;
  v40 = v17;
  v19 = v25;
  v20 = v17;
  v21 = v26;
  v22 = v28;
  v23 = v30;
  v24 = v31;
  dispatch_async(v18, block);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)handleImportURLs:(id)a3 openAfterImport:(BOOL)a4 importInPlace:(BOOL)a5 showLibraryAllCollection:(BOOL)a6 switchToLibrary:(BOOL)a7 transaction:(id)a8 perURLCompletion:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = [(BKAppSceneManager *)self urlHandlingQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100115354;
  v25[3] = &unk_100A07B88;
  v26 = v16;
  v27 = self;
  v31 = a7;
  v32 = a6;
  v33 = a4;
  v34 = a5;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  dispatch_async(v20, v25);
}

+ (NSArray)supportedFileImportTypes
{
  if (qword_100AF7678 != -1)
  {
    sub_10078FF10();
  }

  v3 = qword_100AF7670;

  return v3;
}

+ (NSArray)supportedAudiobookImportTypes
{
  if (qword_100AF7688 != -1)
  {
    sub_10078FF24();
  }

  v3 = qword_100AF7680;

  return v3;
}

+ (NSArray)supportedAudibleImportTypes
{
  if (qword_100AF7698 != -1)
  {
    sub_10078FF38();
  }

  v3 = qword_100AF7690;

  return v3;
}

- (id)_audibleURLsInURLs:(id)a3
{
  v3 = a3;
  v23 = +[NSMutableArray array];
  v45 = NSURLContentTypeKey;
  v4 = [NSArray arrayWithObjects:&v45 count:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v34;
    *&v6 = 141558530;
    v22 = v6;
    v24 = *v34;
    v25 = v4;
    do
    {
      v9 = 0;
      v26 = v7;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [v10 startAccessingSecurityScopedResource];
        v32 = 0;
        v12 = [v10 resourceValuesForKeys:v4 error:&v32];
        v13 = v32;
        if (v13)
        {
          v14 = BKLibraryBookImportLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v39 = 1752392040;
            v40 = 2112;
            v41 = v10;
            v42 = 2112;
            v43 = v13;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "_audibleURLsinURLs: resourceValuesForKeys failed. url: %{mask.hash}@ error: %@", buf, 0x20u);
          }
        }

        else
        {
          v14 = [v12 objectForKeyedSubscript:NSURLContentTypeKey];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v15 = +[BKAppSceneManager supportedAudibleImportTypes];
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v29;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v29 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([v14 conformsToType:*(*(&v28 + 1) + 8 * i)])
                {
                  [v23 addObject:v10];
                  goto LABEL_19;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v8 = v24;
          v4 = v25;
          v7 = v26;
        }

        if (v11)
        {
          [v10 stopAccessingSecurityScopedResource];
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v7);
  }

  v20 = [v23 copy];

  return v20;
}

- (id)_findImportEligibleURLsAtURL:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 startAccessingSecurityScopedResource];
  v6 = v5;
  if (sub_100116288(v5, v3))
  {
    [v4 addObject:v3];
  }

  else if ([v3 bu_isFolder])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 enumeratorAtURL:v3 includingPropertiesForKeys:&__NSArray0__struct options:2 errorHandler:&stru_100A07C28];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 startAccessingSecurityScopedResource];
          v16 = v15;
          if (sub_100116288(v15, v14))
          {
            [v4 addObject:v14];
          }

          if (v16)
          {
            [v14 stopAccessingSecurityScopedResource];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  if (v6)
  {
    [v3 stopAccessingSecurityScopedResource];
  }

  v17 = [v4 copy];

  return v17;
}

- (void)_openExternalURL:(id)a3 sourceApplication:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v16)
  {
    v7 = [v16 scheme];
    v8 = [v7 lowercaseString];

    if (v8 && (([v8 isEqualToString:@"itms-books"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"itms-bookss") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ibooks") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"prefs") & 1) != 0))
    {
      if (![v6 isEqualToString:@"com.apple.iBooks.BooksWidget"])
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = +[LSApplicationWorkspace defaultWorkspace];
      [v9 openSensitiveURL:v16 withOptions:0];
    }

    else
    {
      v10 = [(BKAppSceneManager *)self currentSceneController];
      v9 = [v10 bk_window];

      if (!v9)
      {
        sub_100790040();
      }

      v11 = [v9 rootViewController];
      v12 = [v11 bc_deepestVisibleChildViewControllerIncludePresented:1];

      v13 = [v12 ba_effectiveAnalyticsTracker];
      v14 = +[BAEventReporter sharedReporter];
      [v14 emitExitLinkTapEventWithTracker:v13 url:v16];

      v15 = +[UIApplication sharedApplication];
      [v15 openURL:v16 options:&__NSDictionary0__struct completionHandler:0];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)startJavascriptAppWithLibrary:(id)a3 libraryItemStateProvider:(id)a4 downloadProgressCenter:(id)a5 serviceCenter:(id)a6 storeController:(id)a7 engagementManager:(id)a8 jetActionHandler:(id)a9 pageHostingControllerProvider:(id)a10
{
  v42 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = JSALog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting JS App", buf, 2u);
  }

  [(BKAppSceneManager *)self setServiceCenter:v20];
  kdebug_trace();
  v25 = +[BSUITemplate manager];
  v26 = [v25 dynamicRegistry];
  v27 = [v22 stateCenter];

  [v26 registerStateProvider:v27 forKind:@"libraryItem"];
  v28 = [v25 resourceRegistry];
  v29 = +[BKCoverResourceProvider sharedInstance];
  [v28 registerImageProvider:v29 forKind:@"libraryItem"];

  v30 = [v25 resourceRegistry];
  v31 = [(BKAppSceneManager *)self minifiedFlowController];
  v32 = [v31 currentBookProvider];
  [v30 registerImageProvider:v32 forKind:@"currentBookSnapshot"];

  v33 = [v25 dynamicRegistry];
  [v33 registerProgressProvider:v21 forKind:@"downloadProgress"];

  v34 = [v25 dynamicRegistry];
  v35 = objc_alloc_init(BKLibraryAudiobookProgressCenter);
  [v34 registerProgressProvider:v35 forKind:@"audiobookProgress"];

  kdebug_trace();
  [(BKAppSceneManager *)self _setupURLHandler];
  v36 = +[JSABridge sharedInstance];
  v37 = [(BKAppSceneManager *)self classRegistrations];
  [v36 bootstrapWithObjectRegistrations:v37];

  v38 = [[BKJSAAppWindowProvider alloc] initWithSceneManager:self];
  [(BKAppSceneManager *)self setWindowProvider:v38];

  v39 = [[BKJSALibraryManager alloc] initWithLibraryAssetProvider:v23 presentersProvider:self storeController:v19];
  [(BKAppSceneManager *)self setJsaLibraryManager:v39];

  [(BKAppSceneManager *)self setEngagementManager:v18];
  [(BKAppSceneManager *)self setJetActionHandler:v17];

  [(BKAppSceneManager *)self setPageHostingControllerProvider:v42];
  v40 = +[JSABridge sharedInstance];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100117E20;
  v43[3] = &unk_100A033C8;
  v43[4] = self;
  [v40 initializeEnvironmentWithDataSource:self completion:v43];

  v41 = +[NSNotificationCenter defaultCenter];
  [v41 addObserver:self selector:"_bridgeDidReload:" name:JSABridgeDidReloadNotification object:0];
}

- (void)_bridgeDidReload:(id)a3
{
  v3 = +[BRCConfigurationManager sharedInstance];
  [v3 resetForJavascript];

  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_get_global_queue(9, 0);
  dispatch_after(v4, v5, &stru_100A07C90);
}

- (id)appGroupIdentifierForBridge:(id)a3
{
  v3 = +[BUAppGroup books];
  v4 = [v3 identifier];

  return v4;
}

- (id)objectRegistrationsForBridge:(id)a3
{
  v4 = [BKJSAAppController alloc];
  v5 = [(BKAppSceneManager *)self jetActionHandler];
  v6 = [(BKJSAAppController *)v4 initWithSceneManager:self jetActionHandler:v5];

  v7 = [(BKAppSceneManager *)self minifiedPresenter];
  v8 = [v7 currentBookProvider];

  v9 = [(BKAppSceneManager *)self jsaLibraryManager];
  v10 = [(BKAppSceneManager *)self serviceCenter];
  v36 = [v10 priceTrackingService];

  v11 = [(BKAppSceneManager *)self serviceCenter];
  v35 = [v11 readingActivityService];

  v34 = +[BCRCDataContainer defaultContainer];
  v12 = [(BKAppSceneManager *)self serviceCenter];
  v32 = [v12 yearInReviewEligibilityService];

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("TransactionController+JS.workQueue", v14);

  v31 = v15;
  v33 = [[TUITransactionController alloc] initWithQueue:v15];
  v16 = objc_alloc_init(BKBookRecommendationProvider);
  v17 = objc_alloc_init(BKGenreRecommendationProvider);
  v18 = objc_alloc_init(BKMediaTypeRecommendationProvider);
  v30 = +[BKTVAppService shared];
  if (!v6 || !v8 || !v9 || !v36 || !v35 || !v34 || !v33 || !v16 || !v17 || !v18 || !v32)
  {
    v19 = JSALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138414082;
      v40 = v6;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v36;
      v47 = 2112;
      v48 = v35;
      v49 = 2112;
      v50 = v34;
      v51 = 2112;
      v52 = v33;
      v53 = 2112;
      v54 = v32;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Some of the JS native objects are nil. appController: %@, currentBookProvider: %@, jsaLibraryManager: %@,, priceTrackingService: %@ readingActivityService: %@, remoteConfigDataContainer: %@, transactionController: %@, yearInReviewEligibilityService: %@", buf, 0x52u);
    }
  }

  v37[0] = @"appController";
  v37[1] = @"bookRecommendationProvider";
  v28 = v6;
  v38[0] = v6;
  v38[1] = v16;
  v38[2] = v8;
  v37[2] = @"currentBookProvider";
  v37[3] = @"engagementEventController";
  v20 = [(BKAppSceneManager *)self engagementManager];
  [v20 eventController];
  v21 = v29 = v8;
  v38[3] = v21;
  v38[4] = v17;
  v37[4] = @"genreRecommendationProvider";
  v37[5] = @"libraryInterface";
  v38[5] = v9;
  v38[6] = v18;
  v37[6] = @"mediaTypeRecommendationProvider";
  v37[7] = @"PageHostingControllerProvider";
  v22 = [(BKAppSceneManager *)self pageHostingControllerProvider];
  v38[7] = v22;
  v38[8] = v36;
  v37[8] = @"priceTrackingService";
  v37[9] = @"readingActivityStateProvider";
  v38[9] = v35;
  v38[10] = v34;
  v37[10] = @"remoteConfigDataContainer";
  v37[11] = @"sessionDonor";
  [(BKAppSceneManager *)self engagementManager];
  v23 = v27 = v9;
  v24 = [v23 sessionDonor];
  v38[11] = v24;
  v38[12] = v33;
  v37[12] = @"transactionController";
  v37[13] = @"TVAppService";
  v37[14] = @"yearInReviewEligibilityService";
  v38[13] = v30;
  v38[14] = v32;
  v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:15];

  return v26;
}

- (id)classRegistrations
{
  v4[0] = @"AdjustGoalModalViewController";
  v5[0] = objc_opt_class();
  v4[1] = @"AlertController";
  v5[1] = objc_opt_class();
  v4[2] = @"CloudRatingsManager";
  v5[2] = objc_opt_class();
  v4[3] = @"ContentTasteController";
  v5[3] = objc_opt_class();
  v4[4] = @"ContextMenuProvider";
  v5[4] = objc_opt_class();
  v4[5] = @"ContinueReadingBooksProvider";
  v5[5] = objc_opt_class();
  v4[6] = @"DynamicArray";
  v5[6] = objc_opt_class();
  v4[7] = @"DynamicValue";
  v5[7] = objc_opt_class();
  v4[8] = @"FeedDataRequest";
  v5[8] = objc_opt_class();
  v4[9] = @"FeedViewController";
  v5[9] = objc_opt_class();
  v4[10] = @"GoalPickerViewController";
  v5[10] = objc_opt_class();
  v4[11] = @"LanguageUtilities";
  v5[11] = objc_opt_class();
  v4[12] = @"LibraryProvider";
  v5[12] = objc_opt_class();
  v4[13] = @"NoticeViewController";
  v5[13] = objc_opt_class();
  v4[14] = @"NotificationManager";
  v5[14] = objc_opt_class();
  v4[15] = @"OSFeatureFlags";
  v5[15] = objc_opt_class();
  v4[16] = @"PPT";
  v5[16] = objc_opt_class();
  v4[17] = @"PreviouslyReadBooksProvider";
  v5[17] = objc_opt_class();
  v4[18] = @"PurchaseManager";
  v5[18] = objc_opt_class();
  v4[19] = @"QueryableLibraryItemStateWorker";
  v5[19] = objc_opt_class();
  v4[20] = @"ReadingNowConfiguration";
  v5[20] = objc_opt_class();
  v4[21] = @"RecentBooksProvider";
  v5[21] = objc_opt_class();
  v4[22] = @"RemoteConfigurationManager";
  v5[22] = objc_opt_class();
  v4[23] = @"SearchFeedViewController";
  v5[23] = objc_opt_class();
  v4[24] = @"ScreenShotViewController";
  v5[24] = objc_opt_class();
  v4[25] = @"SharedWithYouProvider";
  v5[25] = objc_opt_class();
  v4[26] = @"StoreServices";
  v5[26] = objc_opt_class();
  v4[27] = @"Transaction";
  v5[27] = objc_opt_class();
  v4[28] = @"VCStack";
  v5[28] = objc_opt_class();
  v4[29] = @"VideoStateProvider";
  v5[29] = objc_opt_class();
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:30];

  return v2;
}

- (BKAppSceneManager)initWithLaunchCoordinator:(id)a3 importCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v33.receiver = self;
  v33.super_class = BKAppSceneManager;
  v9 = [(BKAppSceneManager *)&v33 init];
  if (v9)
  {
    v10 = objc_alloc_init(BKCriticalAlertCoordinator);
    criticalAlertCoordinator = v9->_criticalAlertCoordinator;
    v9->_criticalAlertCoordinator = v10;

    v12 = [[BKSceneFlowController alloc] initWithLaunchCoordinator:v7 criticalAlertCoordinator:v9->_criticalAlertCoordinator];
    sceneFlowController = v9->_sceneFlowController;
    v9->_sceneFlowController = v12;

    v14 = objc_alloc_init(BKMinifiedFlowController);
    minifiedFlowController = v9->_minifiedFlowController;
    v9->_minifiedFlowController = v14;

    v16 = [(BKAppSceneManager *)v9 sceneFlowController];
    [(BKMinifiedFlowController *)v9->_minifiedFlowController setSceneHosting:v16];

    [(BKMinifiedFlowController *)v9->_minifiedFlowController setDelegate:v9];
    objc_storeStrong(&v9->_launchCoordinator, a3);
    objc_storeStrong(&v9->_importCoordinator, a4);
    v17 = [BCTransactionQueue newWithOptions:1 queue:&_dispatch_main_q];
    userTransactionQueue = v9->_userTransactionQueue;
    v9->_userTransactionQueue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_initially_inactive(v19);
    v21 = dispatch_queue_create("BKAppSceneManager.urlHandlingQueue", v20);
    urlHandlingQueue = v9->_urlHandlingQueue;
    v9->_urlHandlingQueue = v21;

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v9 selector:"_applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v9 selector:"_applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];

    *&v9->_pushLargeCoverForInitialHandleURLBookOpen = 257;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001976C8;
    block[3] = &unk_100A033C8;
    v25 = v9;
    v32 = v25;
    dispatch_async(&_dispatch_main_q, block);

    v26 = objc_alloc_init(NSMutableArray);
    pendingWelcomePresenterDismissCompletionBlocks = v25->_pendingWelcomePresenterDismissCompletionBlocks;
    v25->_pendingWelcomePresenterDismissCompletionBlocks = v26;

    v28 = +[BURestrictionsProvider sharedInstance];
    [v28 addObserver:v25];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v25 selector:"_afterSceneWillConnect:" name:UISceneWillConnectNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(BKAppSceneManager *)self pendingCriticalAlertAssertion];
  [v3 invalidate];

  v4 = +[BURestrictionsProvider sharedInstance];
  [v4 removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  dispatch_activate(self->_urlHandlingQueue);
  v6 = +[BKReachability sharedReachabilityForInternetConnection];
  [v6 stopNotifier];

  v7 = [(BKAppSceneManager *)self bookFlowController];
  [v7 setStorePresenter:0];

  v8 = [(BKAppSceneManager *)self bookFlowController];
  [v8 setMinifiedPresenter:0];

  v9.receiver = self;
  v9.super_class = BKAppSceneManager;
  [(BKAppSceneManager *)&v9 dealloc];
}

- (id)rootBarCoordinatorForSceneController:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self rootBarCoordinator];

  if (!v5)
  {
    v6 = [BKRootBarCoordinator alloc];
    v7 = [(BKAppSceneManager *)self viewControllerProvider];
    v8 = [(BKRootBarCoordinator *)v6 initWithSceneController:v4 presentersProvider:self viewControllerProvider:v7];
    [(BKAppSceneManager *)self setRootBarCoordinator:v8];

    v9 = +[JSABridge sharedInstance];
    [JSAMetricsAppLaunchEvent updateRequiredBlockingBagLoad:0];
  }

  v10 = [(BKAppSceneManager *)self rootBarCoordinator];

  return v10;
}

- (void)setRootBarCoordinator:(id)a3
{
  objc_storeStrong(&self->_rootBarCoordinator, a3);

  [(BKAppSceneManager *)self _setupMinibarContainerView];
}

- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [v5 _lastKnownStateRestorationUserInfoForSceneSession:v4];

  return v6;
}

- (id)newTransactionWithName:(id)a3 originatingSceneController:(id)a4 targetSceneDescriptor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKAppSceneManager *)self userTransactionQueue];
  v12 = [v11 newTransactionWithName:v10 info:0 context:0 originatingSceneController:v9 targetSceneDescriptor:v8];

  return v12;
}

- (id)defaultSceneControllerForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [v5 defaultSceneControllerForTransaction:v4];

  return v6;
}

- (id)anySceneController
{
  v2 = [(BKAppSceneManager *)self sceneFlowController];
  v3 = [v2 anySceneController];

  return v3;
}

- (id)sceneControllerForViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [v5 sceneControllerForViewController:v4];

  return v6;
}

- (id)sceneControllerForWindow:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [v5 sceneControllerForWindow:v4];

  return v6;
}

- (void)enumerateSceneInfo:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  [v5 enumerateSceneInfo:v4];
}

- (void)enumerateSceneController:(id)a3 includeHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKAppSceneManager *)self sceneFlowController];
  [v7 enumerateSceneController:v6 includeHidden:v4];
}

- (id)mainFlowController
{
  objc_opt_class();
  v3 = [(BKAppSceneManager *)self primarySceneController];
  v4 = BUDynamicCast();

  v5 = [v4 mainFlowController];

  return v5;
}

- (void)requestTabBarSceneController:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100197DBC;
  v7[3] = &unk_100A07828;
  v8 = v4;
  v6 = v4;
  [v5 requestTabBarSceneController:v7];
}

- (void)requestPrimaryScene:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  [v5 requestPrimaryScene:v4];
}

- (void)forceTransaction:(id)a3 ontoPrimarySceneWithContinuation:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100197F44;
  v8[3] = &unk_100A07788;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BKAppSceneManager *)self requestPrimaryScene:v8];
}

- (void)requestBookSceneWithAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppSceneManager *)self sceneFlowController];
  [v8 requestBookSceneWithAssetID:v7 completion:v6];
}

- (void)requestSceneWithAssetID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppSceneManager *)self sceneFlowController];
  [v8 requestSceneWithAssetID:v7 completion:v6];
}

- (void)requestEndOfBookSceneWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppSceneManager *)self sceneFlowController];
  [v8 requestEndOfBookSceneWithOptions:v7 completion:v6];
}

- (void)requestPrimaryOrBookScene:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  [v5 requestPrimaryOrBookScene:v4];
}

- (id)newBookSceneControllerProviderWithRequestAssetID:(id)a3
{
  v4 = a3;
  v5 = [[_BKBookSceneControllerProvider alloc] initWithSceneManager:self requestAssetID:v4];

  return v5;
}

- (id)sceneInfoPresentingAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [v5 sceneInfoPresentingAssetID:v4];

  return v6;
}

- (void)destroySceneForAssetID:(id)a3
{
  v5 = [(BKAppSceneManager *)self sceneInfoPresentingAssetID:a3];
  v3 = +[BKSceneUtilities sharedInstance];
  v4 = [v5 sceneSession];
  [v3 destroySceneWithSceneSession:v4 withAnimationType:1];
}

- (id)windowFromSceneType:(unint64_t)a3 assetID:(id)a4
{
  v6 = a4;
  v7 = [(BKAppSceneManager *)self sceneFlowController];
  v8 = [v7 sceneControllerForSceneType:a3 assetID:v6];

  v9 = [v8 bk_window];

  return v9;
}

- (BKJSStoreFlowController)storeFlowController
{
  storeFlowController = self->_storeFlowController;
  if (!storeFlowController)
  {
    v4 = objc_alloc_init(BKJSStoreFlowController);
    v5 = self->_storeFlowController;
    self->_storeFlowController = v4;

    storeFlowController = self->_storeFlowController;
  }

  return storeFlowController;
}

- (BKAppStoreReviewManager)appStoreReviewManager
{
  appStoreReviewManager = self->_appStoreReviewManager;
  if (!appStoreReviewManager)
  {
    v4 = objc_alloc_init(BKAppStoreReviewManager);
    v5 = self->_appStoreReviewManager;
    self->_appStoreReviewManager = v4;

    appStoreReviewManager = self->_appStoreReviewManager;
  }

  return appStoreReviewManager;
}

- (BKLibraryCollectionsFlowController)libraryCollectionsFlowController
{
  libraryCollectionsFlowController = self->_libraryCollectionsFlowController;
  if (!libraryCollectionsFlowController)
  {
    v4 = [BKLibraryCollectionsFlowController alloc];
    v5 = +[BKLibraryManager defaultManager];
    v6 = [(BKLibraryCollectionsFlowController *)v4 initWithLibraryAssetProvider:v5];
    v7 = self->_libraryCollectionsFlowController;
    self->_libraryCollectionsFlowController = v6;

    libraryCollectionsFlowController = self->_libraryCollectionsFlowController;
  }

  return libraryCollectionsFlowController;
}

- (BKBookFlowController)bookFlowController
{
  bookFlowController = self->_bookFlowController;
  if (!bookFlowController)
  {
    v4 = [BKBookFlowController alloc];
    v5 = +[BKLibraryManager defaultManager];
    v6 = [(BKBookFlowController *)v4 initWithLibraryAssetProvider:v5];
    v7 = self->_bookFlowController;
    self->_bookFlowController = v6;

    v8 = [(BKAppSceneManager *)self sceneFlowController];
    [(BKBookFlowController *)self->_bookFlowController setSceneHosting:v8];

    v9 = [(BKAppSceneManager *)self minifiedFlowController];
    [(BKBookFlowController *)self->_bookFlowController setMinifiedPresenter:v9];

    v10 = [(BKAppSceneManager *)self storePresenter];
    [(BKBookFlowController *)self->_bookFlowController setStorePresenter:v10];

    bookFlowController = self->_bookFlowController;
  }

  return bookFlowController;
}

- (void)saveStateClosing:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100198614;
  v3[3] = &unk_100A09E08;
  v4 = a3;
  [(BKAppSceneManager *)self enumerateSceneController:v3 includeHidden:1];
}

- (void)analyticsForceEndSession
{
  [(BKAppSceneManager *)self enumerateSceneController:&stru_100A09E48 includeHidden:0];
  v3 = [(BKAppSceneManager *)self minifiedPresenter];
  v4 = [v3 minifiedPresenterAssetCurrentPresenters];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) minifiedAssetPresenterAssetViewControllerFuture];
        v11 = [v10 getNonBlockingError:0];
        [v11 bc_analyticsSubtreeForceEndSession];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019898C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)routeScene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKAppSceneManager *)self sceneFlowController];
  [v11 routeScene:v10 willConnectToSession:v9 options:v8];

  v12 = [(BKAppSceneManager *)self launchCoordinator];
  LOBYTE(v10) = [v12 appLaunchCoordinatorIsConditionSatisfied:6];

  if ((v10 & 1) == 0)
  {
    v13 = [(BKAppSceneManager *)self launchCoordinator];
    [v13 signalConditionSatisfied:6];
  }
}

- (void)carPlayScene:(id)a3 didConnectInterfaceController:(id)a4
{
  v5 = [(BKAppSceneManager *)self launchCoordinator:a3];
  v6 = [v5 appLaunchCoordinatorIsConditionSatisfied:8];

  if ((v6 & 1) == 0)
  {
    v7 = [(BKAppSceneManager *)self launchCoordinator];
    [v7 signalConditionSatisfied:8];
  }
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppSceneManager *)self sceneFlowController];
  [v8 application:v7 didDiscardSceneSessions:v6];
}

- (void)_afterSceneWillConnect:(id)a3
{
  v3 = [a3 object];
  v4 = [v3 session];
  v5 = [v4 persistentIdentifier];

  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 delegate];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_afterSceneWillConnect: sceneIdentifier: %{public}@, sceneDelegate: %{public}@", &v8, 0x16u);
  }
}

- (void)_didFinishSceneStateRestoration:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self sceneFlowController];
  [v5 _didFinishSceneStateRestoration:v4];
}

- (id)minifiedFlowControllerMinibarContainingViewController
{
  v2 = [(BKAppSceneManager *)self rootBarCoordinator];
  v3 = [v2 rootViewController];

  return v3;
}

- (double)minifiedFlowControllerMinibarBottomGuideWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKAppSceneManager *)self rootBarCoordinator];
  v6 = [v5 hostingViewController];

  v7 = [v6 view];
  [v7 bounds];
  Height = CGRectGetHeight(v18);
  v9 = [v6 view];
  [v9 safeAreaInsets];
  v11 = v10;

  if (!v4)
  {
    v12 = [(BKAppSceneManager *)self rootBarCoordinator];
    v4 = [v12 selectedTopViewController];
  }

  MinY = Height - v11;
  objc_opt_class();
  v14 = BUDynamicCast();
  v15 = v14;
  if (v14 && (v14 == v4 || [v14 im_isAncestorOfChildViewController:v4]))
  {
    v16 = [v15 tabBar];
    [v16 frame];
    MinY = CGRectGetMinY(v19);
  }

  return MinY;
}

- (void)minifiedFlowControllerRequestShowStoreForStoreID:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v9 = [(BKAppSceneManager *)self sceneControllerForViewController:a4];
  v7 = [v9 newShowURLTransaction];
  v8 = [(BKAppSceneManager *)self storePresenter];
  [v8 storeShowBookWithStoreID:v6 resourceType:3 transaction:v7];
}

- (id)minifiedFlowControllerPresentedAssetID:(id)a3
{
  v4 = [(BKAppSceneManager *)self primarySceneController];
  v5 = [(BKAppSceneManager *)self bookFlowController];
  v6 = [v5 bookPresenterCurrentlyOpenBookForSingleScene:v4];
  v7 = [v6 assetPresenterAssetID];

  return v7;
}

- (void)minifiedFlowControllerHandleAssetPresentationError:(id)a3 assetID:(id)a4 isRetry:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v31 = self;
  objc_initWeak(&location, self);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_1000274A0;
  v57[4] = sub_100027688;
  v58 = 0;
  v29 = +[BKLibraryManager defaultManager];
  v10 = [v29 libraryAssetOnMainQueueWithAssetID:v9];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100199608;
  v53[3] = &unk_100A09EF8;
  v55 = v57;
  objc_copyWeak(&v56, &location);
  v11 = v9;
  v54 = v11;
  v12 = objc_retainBlock(v53);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1001998E8;
  v50[3] = &unk_100A03788;
  v13 = v10;
  v51 = v13;
  v30 = v12;
  v52 = v30;
  v14 = objc_retainBlock(v50);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100199B98;
  v46[3] = &unk_100A09F68;
  v48 = &stru_100A09F18;
  v15 = v8;
  v47 = v15;
  v16 = v14;
  v49 = v16;
  v17 = objc_retainBlock(v46);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100199F08;
  v40[3] = &unk_100A09FB8;
  v18 = v13;
  v41 = v18;
  v19 = v17;
  v43 = v19;
  v44 = &stru_100A09F18;
  v20 = v15;
  v42 = v20;
  v21 = v16;
  v45 = v21;
  v22 = objc_retainBlock(v40);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10019A160;
  v39[3] = &unk_100A03CF0;
  v39[4] = v57;
  v23 = objc_retainBlock(v39);
  v24 = BCSceneLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v61 = v11;
    v62 = 2112;
    v63 = v20;
    v64 = 1024;
    v65 = v5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset %@ did not open, error=%@ retry=%{BOOL}d.  Fetching scene controller", buf, 0x1Cu);
  }

  v25 = [v18 contentType];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10019A338;
  v32[3] = &unk_100A09FE0;
  objc_copyWeak(&v37, &location);
  v36 = v57;
  v26 = v20;
  v33 = v26;
  v38 = v5;
  v27 = v22;
  v34 = v27;
  v28 = v23;
  v35 = v28;
  [(BKAppSceneManager *)v31 _sceneForReportingErrorWithContentType:v25 assetID:v11 completion:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v56);

  _Block_object_dispose(v57, 8);
  objc_destroyWeak(&location);
}

- (id)flowControllers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(BKAppSceneManager *)self sceneFlowController];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(BKAppSceneManager *)self storeFlowController];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(BKAppSceneManager *)self minifiedFlowController];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [(BKAppSceneManager *)self bookFlowController];
  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [(BKAppSceneManager *)self libraryCollectionsFlowController];
  if (v8)
  {
    [v3 addObject:v8];
  }

  v9 = [(BKAppSceneManager *)self jetActionHandler];
  if (v9)
  {
    [v3 addObject:v9];
  }

  return v3;
}

- (BOOL)isPresentingWelcome
{
  v2 = [(BKAppSceneManager *)self welcomePresenter];
  v3 = [v2 welcomePresenterIsPresentingWelcome];

  return v3;
}

- (void)_setupWelcomeScreenWithPresenterIfNeeded:(id)a3
{
  v4 = a3;
  if (!self->_welcomeScreenManager)
  {
    v5 = [(BKAppSceneManager *)self launchCoordinator];
    v6 = [v5 appLaunchCoordinatorIsConditionSatisfied:2];

    if ((v6 & 1) == 0)
    {
      v7 = BCSceneLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_setupWelcomeScreenWithPresenterIfNeeded: welcomePresenter: %{public}@", buf, 0xCu);
      }

      v8 = +[UIApplication sharedApplication];
      v9 = [v8 userInterfaceLayoutDirection] == 1;

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10019A734;
      v12[3] = &unk_100A0A008;
      v12[4] = self;
      v14 = v9;
      v13 = v4;
      v10 = objc_retainBlock(v12);
      v11 = [(BKAppSceneManager *)self _welcomeItems];
      (v10[2])(v10, v11);
    }
  }
}

- (void)_enqueueDismissWelcomePresenter:(id)a3
{
  v4 = a3;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_enqueueDismissWelcomePresenter", buf, 2u);
  }

  v6 = [(BKAppSceneManager *)self pendingWelcomePresenterDismissCompletionBlocks];
  v7 = [v6 count];

  v8 = [(BKAppSceneManager *)self pendingWelcomePresenterDismissCompletionBlocks];
  v9 = objc_retainBlock(v4);

  [v8 addObject:v9];
  if (!v7)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10019AA48;
    v17[3] = &unk_100A033C8;
    v17[4] = self;
    v10 = objc_retainBlock(v17);
    v11 = [(BKAppSceneManager *)self welcomePresenter];

    if (v11)
    {
      [(BKAppSceneManager *)self welcomePresenter];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10019AB94;
      v15 = v14[3] = &unk_100A03788;
      v16 = v10;
      v12 = v15;
      [v12 welcomePresenterFinishOngoingModalTransitionAnimations:v14];
    }

    else
    {
      v13 = objc_retainBlock(v10);
      v12 = v13;
      if (v13)
      {
        (v13[2])(v13);
      }
    }
  }
}

- (void)_setWelcomePresenterIfNoneExists:(id)a3 shouldPresent:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(BKAppSceneManager *)self welcomePresenter];

  if (!v6)
  {
    [(BKAppSceneManager *)self setWelcomePresenter:v9];
    if (v4)
    {
      v7 = [(BKAppSceneManager *)self welcomePresenter];
      v8 = [(BKWelcomeScreenManager *)self->_welcomeScreenManager navigationController];
      [v7 presentWelcomeViewController:v8 completion:0];
    }
  }
}

- (void)_setCurrentWelcomePresenterIfNeeded:(id)a3
{
  v4 = a3;
  if ([(BKAppSceneManager *)self _isRunningWelcomeFlow])
  {
    v5 = [(BKAppSceneManager *)self welcomePresenter];

    if (v5 != v4)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10019ADC0;
      v6[3] = &unk_100A03440;
      v6[4] = self;
      v7 = v4;
      [(BKAppSceneManager *)self _enqueueDismissWelcomePresenter:v6];
    }
  }
}

- (void)_welcomePresenterDidDisconnect:(id)a3
{
  v5 = a3;
  if ([(BKAppSceneManager *)self _isRunningWelcomeFlow])
  {
    v4 = [(BKAppSceneManager *)self welcomePresenter];

    if (v4 == v5)
    {
      [(BKAppSceneManager *)self _setCurrentWelcomePresenterIfNeeded:0];
    }
  }
}

- (void)_showMainViewControllerOrWelcomeScreen
{
  if (self->_welcomeScreenManager)
  {

    [(BKAppSceneManager *)self _showMainViewControllerOrWelcomeScreenNow];
  }

  else
  {
    v3 = [(BKAppSceneManager *)self launchCoordinator];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10019AF14;
    v4[3] = &unk_100A038D0;
    v4[4] = self;
    [v3 appLaunchCoordinatorOnConditionMask:2112 blockID:@"_showMainViewControllerOrWelcomeScreen" performBlock:v4];
  }
}

- (BOOL)shouldOpenLastBook
{
  if ([UIApp launchedToTest])
  {

    return +[BCPPTConfig extendedLaunchTestDestinationIsBook];
  }

  else
  {
    v3 = +[BKAppDelegate delegate];
    if ([v3 suppressOpenLastBook])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v5 = [(BKAppSceneManager *)self primarySceneController];
      v4 = [v5 willAttemptBookReopen] ^ 1;
    }

    return v4;
  }
}

- (void)_showMainViewControllerOrWelcomeScreenNow
{
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_showMainViewControllerOrWelcomeScreenNow", buf, 2u);
  }

  kdebug_trace();
  welcomeScreenManager = self->_welcomeScreenManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019B0A4;
  v5[3] = &unk_100A0A030;
  v5[4] = self;
  [(BKWelcomeScreenManager *)welcomeScreenManager runWithCompletion:v5];
}

- (void)attemptToPresentStoreReview
{
  v3 = +[BKAudiobookPlayer sharedInstance];
  v4 = [v3 currentAudiobook];

  if (!v4)
  {
    v9 = [(BKAppSceneManager *)self anySceneController];
    v5 = +[BKAppDelegate delegate];
    v6 = [v5 keyWindowAnalyticsTracker];

    v7 = [(BKAppSceneManager *)self appStoreReviewManager];
    v8 = [v9 scene];
    [v7 attemptToPresentStoreReviewIn:v8 tracker:v6];
  }
}

- (void)_showMainViewController
{
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_showMainViewController", buf, 2u);
  }

  kdebug_trace();
  v4 = [(BKWelcomeScreenManager *)self->_welcomeScreenManager didShowWelcome];
  v5 = [(BKAppSceneManager *)self launchCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019B4B4;
  v6[3] = &unk_100A05D78;
  v6[4] = self;
  v7 = v4;
  [v5 signalConditionSatisfied:2 notifyWithTimeout:@"showMainViewController" blockID:v6 block:3.0];
}

- (void)processAccountSwitchWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10051D1F8(sub_1002427EC, v5);
}

- (NSString)figaroPageContext
{
  v2 = self;
  BKAppSceneManager.figaroPageContext.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1007A2214();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end