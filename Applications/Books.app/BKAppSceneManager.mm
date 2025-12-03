@interface BKAppSceneManager
+ (NSArray)supportedAudibleImportTypes;
+ (NSArray)supportedAudiobookImportTypes;
+ (NSArray)supportedFileImportTypes;
- (BKAppSceneManager)initWithLaunchCoordinator:(id)coordinator importCoordinator:(id)importCoordinator;
- (BKAppStoreReviewManager)appStoreReviewManager;
- (BKBookFlowController)bookFlowController;
- (BKJSStoreFlowController)storeFlowController;
- (BKLibraryCollectionsFlowController)libraryCollectionsFlowController;
- (BOOL)_isRunningWelcomeFlow;
- (BOOL)isPresentingWelcome;
- (BOOL)shouldOpenLastBook;
- (NSString)figaroPageContext;
- (double)minifiedFlowControllerMinibarBottomGuideWithViewController:(id)controller;
- (id)_audibleURLsInURLs:(id)ls;
- (id)_findImportEligibleURLsAtURL:(id)l;
- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)session;
- (id)_primarySceneControllerObject;
- (id)_welcomeItems;
- (id)anySceneController;
- (id)appGroupIdentifierForBridge:(id)bridge;
- (id)classRegistrations;
- (id)currentSceneController;
- (id)defaultSceneControllerForTransaction:(id)transaction;
- (id)flowControllers;
- (id)mainFlowController;
- (id)minifiedFlowControllerMinibarContainingViewController;
- (id)minifiedFlowControllerPresentedAssetID:(id)d;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)navigationControllerForItem:(id)item;
- (id)newBookSceneControllerProviderWithRequestAssetID:(id)d;
- (id)newTransactionWithName:(id)name originatingSceneController:(id)controller targetSceneDescriptor:(id)descriptor;
- (id)objectRegistrationsForBridge:(id)bridge;
- (id)primarySceneController;
- (id)rootBarCoordinatorForSceneController:(id)controller;
- (id)sceneControllerForViewController:(id)controller;
- (id)sceneControllerForWindow:(id)window;
- (id)sceneInfoPresentingAssetID:(id)d;
- (id)windowFromSceneType:(unint64_t)type assetID:(id)d;
- (void)_afterSceneWillConnect:(id)connect;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_bagDidUpdate:(id)update;
- (void)_bridgeDidReload:(id)reload;
- (void)_didFinishSceneStateRestoration:(id)restoration;
- (void)_enqueueDismissWelcomePresenter:(id)presenter;
- (void)_openExternalURL:(id)l sourceApplication:(id)application;
- (void)_retrieveTabsWithCompletion:(id)completion;
- (void)_setCurrentWelcomePresenterIfNeeded:(id)needed;
- (void)_setWelcomePresenterIfNoneExists:(id)exists shouldPresent:(BOOL)present;
- (void)_setupMinibarContainerView;
- (void)_setupURLHandler;
- (void)_setupWelcomeScreenWithPresenterIfNeeded:(id)needed;
- (void)_showMainViewController;
- (void)_showMainViewControllerOrWelcomeScreen;
- (void)_showMainViewControllerOrWelcomeScreenNow;
- (void)_welcomePresenterDidDisconnect:(id)disconnect;
- (void)analyticsForceEndSession;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)attemptToPresentStoreReview;
- (void)carPlayScene:(id)scene didConnectInterfaceController:(id)controller;
- (void)dealloc;
- (void)destroySceneForAssetID:(id)d;
- (void)enumerateSceneController:(id)controller includeHidden:(BOOL)hidden;
- (void)enumerateSceneInfo:(id)info;
- (void)forceTransaction:(id)transaction ontoPrimarySceneWithContinuation:(id)continuation;
- (void)handleApplicationURL:(id)l sourceApplication:(id)application annotation:(id)annotation likelyUserInitiated:(id)initiated canImport:(BOOL)import openAfterImport:(BOOL)afterImport importInPlace:(BOOL)place showLibraryAllCollection:(BOOL)self0 switchToLibrary:(BOOL)self1 transaction:(id)self2 completion:(id)self3;
- (void)handleApplicationURL:(id)l sourceApplication:(id)application annotation:(id)annotation likelyUserInitiated:(id)initiated transaction:(id)transaction;
- (void)handleImportURLs:(id)ls openAfterImport:(BOOL)import importInPlace:(BOOL)place showLibraryAllCollection:(BOOL)collection switchToLibrary:(BOOL)library transaction:(id)transaction perURLCompletion:(id)completion completion:(id)self0;
- (void)minifiedFlowControllerHandleAssetPresentationError:(id)error assetID:(id)d isRetry:(BOOL)retry;
- (void)minifiedFlowControllerRequestShowStoreForStoreID:(id)d fromViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)processAccountSwitchWithCompletion:(id)completion;
- (void)reloadStandardItemsWithAnimated:(BOOL)animated completion:(id)completion;
- (void)requestAccountInfoScene;
- (void)requestBookSceneWithAssetID:(id)d completion:(id)completion;
- (void)requestEndOfBookSceneWithOptions:(id)options completion:(id)completion;
- (void)requestPrimaryOrBookScene:(id)scene;
- (void)requestPrimaryScene:(id)scene;
- (void)requestSceneWithAssetID:(id)d completion:(id)completion;
- (void)requestTabBarSceneController:(id)controller;
- (void)restrictionsForBookStoreAllowedChanged:(BOOL)changed;
- (void)routeScene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)saveStateClosing:(BOOL)closing;
- (void)setRootBarCoordinator:(id)coordinator;
- (void)setScriptDataSource:(id)source completion:(id)completion;
- (void)startJavascriptAppWithLibrary:(id)library libraryItemStateProvider:(id)provider downloadProgressCenter:(id)center serviceCenter:(id)serviceCenter storeController:(id)controller engagementManager:(id)manager jetActionHandler:(id)handler pageHostingControllerProvider:(id)self0;
- (void)viewControllerForItem:(id)item completion:(id)completion;
@end

@implementation BKAppSceneManager

- (void)_setupMinibarContainerView
{
  launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100198CF8;
  v4[3] = &unk_100A038D0;
  v4[4] = self;
  [launchCoordinator appLaunchCoordinatorOnConditionMask:65 blockID:@"_setupMinibarContainerView" performBlock:v4];
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
    launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
    v3 = [launchCoordinator appLaunchCoordinatorIsConditionSatisfied:2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)currentSceneController
{
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  currentSceneController = [sceneFlowController currentSceneController];

  return currentSceneController;
}

- (id)primarySceneController
{
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  primarySceneController = [sceneFlowController primarySceneController];

  return primarySceneController;
}

- (void)setScriptDataSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
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

  value = [qword_100AF7638 value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:qword_100AF7638 withOwner:self];

  v14 = [JSManagedValue managedValueWithValue:sourceCopy andOwner:self];
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

    [(BKAppSceneManager *)self reloadStandardItemsWithAnimated:1 completion:completionCopy];
  }

  else
  {
    v18 = objc_retainBlock(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }
}

- (void)viewControllerForItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if ([itemCopy isLibraryCollection])
  {
    identifier = [itemCopy identifier];
    v9 = [BKLibraryBookshelfController libraryViewControllerWithIdentifier:identifier];
    completionCopy[2](completionCopy, v9);
  }

  else if (qword_100AF7638)
  {
    tabBarTitle = [itemCopy tabBarTitle];
    identifier2 = [itemCopy identifier];
    v12 = +[BKRootBarItemsProvider HomeIdentifier];
    v13 = [identifier2 isEqualToString:v12];

    if (v13)
    {
      v52[0] = BSUIFeedOptionsKeyContextMenuProvider;
      v14 = +[BKContextMenuProvider sharedProvider];
      v53[0] = v14;
      v52[1] = @"identifier";
      identifier3 = [itemCopy identifier];
      v53[1] = identifier3;
      v53[2] = &__kCFBooleanTrue;
      v52[2] = @"isInitialFeed";
      v52[3] = @"isRootFeed";
      v53[3] = &__kCFBooleanTrue;
      v53[4] = &__kCFBooleanTrue;
      v52[4] = @"deferUIUpdateUntilInitialContentReady";
      v52[5] = @"reading-now-homepage";
      v53[5] = &__kCFBooleanTrue;
      v52[6] = @"tab";
      identifier4 = [itemCopy identifier];
      v53[6] = identifier4;
      v53[7] = tabBarTitle;
      v17 = tabBarTitle;
      v52[7] = @"title";
      v52[8] = @"url";
      v18 = [itemCopy url];
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
        v51 = itemCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "VC %{public}@ for %{public}@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, v21);
      tabBarTitle = v17;
    }

    else if (qword_100AF7638)
    {
      v40 = tabBarTitle;
      primarySceneController = [(BKAppSceneManager *)self primarySceneController];
      bk_window = [primarySceneController bk_window];

      rootViewController = [bk_window rootViewController];
      ba_effectiveAnalyticsTracker = [rootViewController ba_effectiveAnalyticsTracker];
      suggestedTrackerName = [itemCopy suggestedTrackerName];
      v29 = [ba_effectiveAnalyticsTracker chainWithName:suggestedTrackerName];

      v46[0] = @"identifier";
      identifier5 = [itemCopy identifier];
      v47[0] = identifier5;
      v46[1] = @"isDefault";
      v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemCopy isPlaceholder]);
      v47[1] = v31;
      v46[2] = @"url";
      v32 = [itemCopy url];
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
      v44 = itemCopy;
      v45 = completionCopy;
      v37 = v34;
      v38 = v35;
      dispatch_async(v36, block);

      tabBarTitle = v40;
    }

    else
    {
      v39 = JSALog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = itemCopy;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No VC for now due to lack of JS data source: %{public}@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v23 = JSALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = itemCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No VC for now due to lack of JS data source: %{public}@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (id)navigationControllerForItem:(id)item
{
  itemCopy = item;
  [itemCopy isLibraryCollection];
  v5 = objc_opt_new();
  [v5 setDelegate:self];
  [v5 setIsRoot:1];
  primarySceneController = [(BKAppSceneManager *)self primarySceneController];
  bk_window = [primarySceneController bk_window];

  rootViewController = [bk_window rootViewController];
  ba_effectiveAnalyticsTracker = [rootViewController ba_effectiveAnalyticsTracker];
  suggestedTrackerName = [itemCopy suggestedTrackerName];
  v11 = [ba_effectiveAnalyticsTracker chainWithName:suggestedTrackerName];

  [v5 ba_setAnalyticsTracker:v11];
  identifier = [itemCopy identifier];

  v13 = [BKRootBarItemsProvider tabTypeFor:identifier];
  [v11 pushTabDataWithType:v13 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppSceneManager+BKTabBarControllerJSApp.m" line:207];

  return v5;
}

- (void)reloadStandardItemsWithAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100102B10;
  v14[3] = &unk_100A04058;
  objc_copyWeak(&v16, &location);
  v6 = completionCopy;
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

- (void)_retrieveTabsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asking bag for tabs", buf, 2u);
  }

  v5 = +[BUBag defaultBag];
  booksTabs = [v5 booksTabs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100102F7C;
  v8[3] = &unk_100A07520;
  v9 = completionCopy;
  v7 = completionCopy;
  [booksTabs jsa_valueWithCompletion:v8];
}

- (void)_bagDidUpdate:(id)update
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

- (void)restrictionsForBookStoreAllowedChanged:(BOOL)changed
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
  primarySceneController = [(BKAppSceneManager *)self primarySceneController];
  v4 = BUDynamicCast();

  return v4;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  if (window)
  {
    v11 = window;
    parentViewController = [controllerCopy parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitionCoordinator = [viewControllerCopy transitionCoordinator];

      if (!transitionCoordinator)
      {
        goto LABEL_7;
      }

      viewIfLoaded = [(BKAppSceneManager *)self rootBarCoordinator];
      [viewIfLoaded dismissCardStackForCurrentlySelected];
    }

    else
    {
    }
  }

LABEL_7:
  _primarySceneControllerObject = [(BKAppSceneManager *)self _primarySceneControllerObject];
  mainFlowController = [_primarySceneControllerObject mainFlowController];
  [mainFlowController navigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy];
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  toViewControllerCopy = toViewController;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  _primarySceneControllerObject = [(BKAppSceneManager *)self _primarySceneControllerObject];
  mainFlowController = [_primarySceneControllerObject mainFlowController];
  v15 = [mainFlowController navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];

  return v15;
}

- (void)requestAccountInfoScene
{
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestAccountScene:0];
}

- (void)_setupURLHandler
{
  v3 = [BKAppURLHandler alloc];
  mainLibrary = [(BKAppSceneManager *)self mainLibrary];
  v6 = [(BKAppURLHandler *)v3 initWithLibraryAssetProvider:mainLibrary];

  [(BKAppURLHandler *)v6 setDelegate:self];
  [(BKAppSceneManager *)self setUrlHandler:v6];
  urlHandlingQueue = [(BKAppSceneManager *)self urlHandlingQueue];
  dispatch_activate(urlHandlingQueue);
}

- (void)handleApplicationURL:(id)l sourceApplication:(id)application annotation:(id)annotation likelyUserInitiated:(id)initiated transaction:(id)transaction
{
  BYTE2(v7) = 1;
  LOWORD(v7) = 0;
  [BKAppSceneManager handleApplicationURL:"handleApplicationURL:sourceApplication:annotation:likelyUserInitiated:canImport:openAfterImport:importInPlace:showLibraryAllCollection:switchToLibrary:transaction:completion:" sourceApplication:l annotation:application likelyUserInitiated:annotation canImport:initiated openAfterImport:0 importInPlace:1 showLibraryAllCollection:v7 switchToLibrary:transaction transaction:0 completion:?];
}

- (void)handleApplicationURL:(id)l sourceApplication:(id)application annotation:(id)annotation likelyUserInitiated:(id)initiated canImport:(BOOL)import openAfterImport:(BOOL)afterImport importInPlace:(BOOL)place showLibraryAllCollection:(BOOL)self0 switchToLibrary:(BOOL)self1 transaction:(id)self2 completion:(id)self3
{
  lCopy = l;
  applicationCopy = application;
  annotationCopy = annotation;
  initiatedCopy = initiated;
  transactionCopy = transaction;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100114894;
  v48[3] = &unk_100A07A98;
  completionCopy = completion;
  v49 = completionCopy;
  v17 = objc_retainBlock(v48);
  objc_initWeak(&location, self);
  urlHandlingQueue = [(BKAppSceneManager *)self urlHandlingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114910;
  block[3] = &unk_100A07B38;
  objc_copyWeak(&v41, &location);
  v34 = lCopy;
  v35 = applicationCopy;
  v36 = annotationCopy;
  v37 = transactionCopy;
  importCopy = import;
  afterImportCopy = afterImport;
  placeCopy = place;
  collectionCopy = collection;
  libraryCopy = library;
  selfCopy = self;
  v39 = initiatedCopy;
  v40 = v17;
  v19 = initiatedCopy;
  v20 = v17;
  v21 = transactionCopy;
  v22 = annotationCopy;
  v23 = applicationCopy;
  v24 = lCopy;
  dispatch_async(urlHandlingQueue, block);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)handleImportURLs:(id)ls openAfterImport:(BOOL)import importInPlace:(BOOL)place showLibraryAllCollection:(BOOL)collection switchToLibrary:(BOOL)library transaction:(id)transaction perURLCompletion:(id)completion completion:(id)self0
{
  lsCopy = ls;
  transactionCopy = transaction;
  completionCopy = completion;
  v19 = a10;
  urlHandlingQueue = [(BKAppSceneManager *)self urlHandlingQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100115354;
  v25[3] = &unk_100A07B88;
  v26 = lsCopy;
  selfCopy = self;
  libraryCopy = library;
  collectionCopy = collection;
  importCopy = import;
  placeCopy = place;
  v28 = transactionCopy;
  v29 = completionCopy;
  v30 = v19;
  v21 = v19;
  v22 = completionCopy;
  v23 = transactionCopy;
  v24 = lsCopy;
  dispatch_async(urlHandlingQueue, v25);
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

- (id)_audibleURLsInURLs:(id)ls
{
  lsCopy = ls;
  v23 = +[NSMutableArray array];
  v45 = NSURLContentTypeKey;
  v4 = [NSArray arrayWithObjects:&v45 count:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = lsCopy;
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
        startAccessingSecurityScopedResource = [v10 startAccessingSecurityScopedResource];
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

        if (startAccessingSecurityScopedResource)
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

- (id)_findImportEligibleURLsAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSMutableArray array];
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v6 = startAccessingSecurityScopedResource;
  if (sub_100116288(startAccessingSecurityScopedResource, lCopy))
  {
    [v4 addObject:lCopy];
  }

  else if ([lCopy bu_isFolder])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 enumeratorAtURL:lCopy includingPropertiesForKeys:&__NSArray0__struct options:2 errorHandler:&stru_100A07C28];

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
          startAccessingSecurityScopedResource2 = [v14 startAccessingSecurityScopedResource];
          v16 = startAccessingSecurityScopedResource2;
          if (sub_100116288(startAccessingSecurityScopedResource2, v14))
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
    [lCopy stopAccessingSecurityScopedResource];
  }

  v17 = [v4 copy];

  return v17;
}

- (void)_openExternalURL:(id)l sourceApplication:(id)application
{
  lCopy = l;
  applicationCopy = application;
  if (lCopy)
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if (lowercaseString && (([lowercaseString isEqualToString:@"itms-books"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"itms-bookss") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"ibooks") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"prefs") & 1) != 0))
    {
      if (![applicationCopy isEqualToString:@"com.apple.iBooks.BooksWidget"])
      {
LABEL_13:

        goto LABEL_14;
      }

      bk_window = +[LSApplicationWorkspace defaultWorkspace];
      [bk_window openSensitiveURL:lCopy withOptions:0];
    }

    else
    {
      currentSceneController = [(BKAppSceneManager *)self currentSceneController];
      bk_window = [currentSceneController bk_window];

      if (!bk_window)
      {
        sub_100790040();
      }

      rootViewController = [bk_window rootViewController];
      v12 = [rootViewController bc_deepestVisibleChildViewControllerIncludePresented:1];

      ba_effectiveAnalyticsTracker = [v12 ba_effectiveAnalyticsTracker];
      v14 = +[BAEventReporter sharedReporter];
      [v14 emitExitLinkTapEventWithTracker:ba_effectiveAnalyticsTracker url:lCopy];

      v15 = +[UIApplication sharedApplication];
      [v15 openURL:lCopy options:&__NSDictionary0__struct completionHandler:0];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)startJavascriptAppWithLibrary:(id)library libraryItemStateProvider:(id)provider downloadProgressCenter:(id)center serviceCenter:(id)serviceCenter storeController:(id)controller engagementManager:(id)manager jetActionHandler:(id)handler pageHostingControllerProvider:(id)self0
{
  controllerProviderCopy = controllerProvider;
  handlerCopy = handler;
  managerCopy = manager;
  controllerCopy = controller;
  serviceCenterCopy = serviceCenter;
  centerCopy = center;
  providerCopy = provider;
  libraryCopy = library;
  v24 = JSALog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting JS App", buf, 2u);
  }

  [(BKAppSceneManager *)self setServiceCenter:serviceCenterCopy];
  kdebug_trace();
  v25 = +[BSUITemplate manager];
  dynamicRegistry = [v25 dynamicRegistry];
  stateCenter = [providerCopy stateCenter];

  [dynamicRegistry registerStateProvider:stateCenter forKind:@"libraryItem"];
  resourceRegistry = [v25 resourceRegistry];
  v29 = +[BKCoverResourceProvider sharedInstance];
  [resourceRegistry registerImageProvider:v29 forKind:@"libraryItem"];

  resourceRegistry2 = [v25 resourceRegistry];
  minifiedFlowController = [(BKAppSceneManager *)self minifiedFlowController];
  currentBookProvider = [minifiedFlowController currentBookProvider];
  [resourceRegistry2 registerImageProvider:currentBookProvider forKind:@"currentBookSnapshot"];

  dynamicRegistry2 = [v25 dynamicRegistry];
  [dynamicRegistry2 registerProgressProvider:centerCopy forKind:@"downloadProgress"];

  dynamicRegistry3 = [v25 dynamicRegistry];
  v35 = objc_alloc_init(BKLibraryAudiobookProgressCenter);
  [dynamicRegistry3 registerProgressProvider:v35 forKind:@"audiobookProgress"];

  kdebug_trace();
  [(BKAppSceneManager *)self _setupURLHandler];
  v36 = +[JSABridge sharedInstance];
  classRegistrations = [(BKAppSceneManager *)self classRegistrations];
  [v36 bootstrapWithObjectRegistrations:classRegistrations];

  v38 = [[BKJSAAppWindowProvider alloc] initWithSceneManager:self];
  [(BKAppSceneManager *)self setWindowProvider:v38];

  v39 = [[BKJSALibraryManager alloc] initWithLibraryAssetProvider:libraryCopy presentersProvider:self storeController:controllerCopy];
  [(BKAppSceneManager *)self setJsaLibraryManager:v39];

  [(BKAppSceneManager *)self setEngagementManager:managerCopy];
  [(BKAppSceneManager *)self setJetActionHandler:handlerCopy];

  [(BKAppSceneManager *)self setPageHostingControllerProvider:controllerProviderCopy];
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

- (void)_bridgeDidReload:(id)reload
{
  v3 = +[BRCConfigurationManager sharedInstance];
  [v3 resetForJavascript];

  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_get_global_queue(9, 0);
  dispatch_after(v4, v5, &stru_100A07C90);
}

- (id)appGroupIdentifierForBridge:(id)bridge
{
  v3 = +[BUAppGroup books];
  identifier = [v3 identifier];

  return identifier;
}

- (id)objectRegistrationsForBridge:(id)bridge
{
  v4 = [BKJSAAppController alloc];
  jetActionHandler = [(BKAppSceneManager *)self jetActionHandler];
  v6 = [(BKJSAAppController *)v4 initWithSceneManager:self jetActionHandler:jetActionHandler];

  minifiedPresenter = [(BKAppSceneManager *)self minifiedPresenter];
  currentBookProvider = [minifiedPresenter currentBookProvider];

  jsaLibraryManager = [(BKAppSceneManager *)self jsaLibraryManager];
  serviceCenter = [(BKAppSceneManager *)self serviceCenter];
  priceTrackingService = [serviceCenter priceTrackingService];

  serviceCenter2 = [(BKAppSceneManager *)self serviceCenter];
  readingActivityService = [serviceCenter2 readingActivityService];

  v34 = +[BCRCDataContainer defaultContainer];
  serviceCenter3 = [(BKAppSceneManager *)self serviceCenter];
  yearInReviewEligibilityService = [serviceCenter3 yearInReviewEligibilityService];

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("TransactionController+JS.workQueue", v14);

  v31 = v15;
  v33 = [[TUITransactionController alloc] initWithQueue:v15];
  v16 = objc_alloc_init(BKBookRecommendationProvider);
  v17 = objc_alloc_init(BKGenreRecommendationProvider);
  v18 = objc_alloc_init(BKMediaTypeRecommendationProvider);
  v30 = +[BKTVAppService shared];
  if (!v6 || !currentBookProvider || !jsaLibraryManager || !priceTrackingService || !readingActivityService || !v34 || !v33 || !v16 || !v17 || !v18 || !yearInReviewEligibilityService)
  {
    v19 = JSALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138414082;
      v40 = v6;
      v41 = 2112;
      v42 = currentBookProvider;
      v43 = 2112;
      v44 = jsaLibraryManager;
      v45 = 2112;
      v46 = priceTrackingService;
      v47 = 2112;
      v48 = readingActivityService;
      v49 = 2112;
      v50 = v34;
      v51 = 2112;
      v52 = v33;
      v53 = 2112;
      v54 = yearInReviewEligibilityService;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Some of the JS native objects are nil. appController: %@, currentBookProvider: %@, jsaLibraryManager: %@,, priceTrackingService: %@ readingActivityService: %@, remoteConfigDataContainer: %@, transactionController: %@, yearInReviewEligibilityService: %@", buf, 0x52u);
    }
  }

  v37[0] = @"appController";
  v37[1] = @"bookRecommendationProvider";
  v28 = v6;
  v38[0] = v6;
  v38[1] = v16;
  v38[2] = currentBookProvider;
  v37[2] = @"currentBookProvider";
  v37[3] = @"engagementEventController";
  engagementManager = [(BKAppSceneManager *)self engagementManager];
  [engagementManager eventController];
  v21 = v29 = currentBookProvider;
  v38[3] = v21;
  v38[4] = v17;
  v37[4] = @"genreRecommendationProvider";
  v37[5] = @"libraryInterface";
  v38[5] = jsaLibraryManager;
  v38[6] = v18;
  v37[6] = @"mediaTypeRecommendationProvider";
  v37[7] = @"PageHostingControllerProvider";
  pageHostingControllerProvider = [(BKAppSceneManager *)self pageHostingControllerProvider];
  v38[7] = pageHostingControllerProvider;
  v38[8] = priceTrackingService;
  v37[8] = @"priceTrackingService";
  v37[9] = @"readingActivityStateProvider";
  v38[9] = readingActivityService;
  v38[10] = v34;
  v37[10] = @"remoteConfigDataContainer";
  v37[11] = @"sessionDonor";
  [(BKAppSceneManager *)self engagementManager];
  v23 = v27 = jsaLibraryManager;
  sessionDonor = [v23 sessionDonor];
  v38[11] = sessionDonor;
  v38[12] = v33;
  v37[12] = @"transactionController";
  v37[13] = @"TVAppService";
  v37[14] = @"yearInReviewEligibilityService";
  v38[13] = v30;
  v38[14] = yearInReviewEligibilityService;
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

- (BKAppSceneManager)initWithLaunchCoordinator:(id)coordinator importCoordinator:(id)importCoordinator
{
  coordinatorCopy = coordinator;
  importCoordinatorCopy = importCoordinator;
  v33.receiver = self;
  v33.super_class = BKAppSceneManager;
  v9 = [(BKAppSceneManager *)&v33 init];
  if (v9)
  {
    v10 = objc_alloc_init(BKCriticalAlertCoordinator);
    criticalAlertCoordinator = v9->_criticalAlertCoordinator;
    v9->_criticalAlertCoordinator = v10;

    v12 = [[BKSceneFlowController alloc] initWithLaunchCoordinator:coordinatorCopy criticalAlertCoordinator:v9->_criticalAlertCoordinator];
    sceneFlowController = v9->_sceneFlowController;
    v9->_sceneFlowController = v12;

    v14 = objc_alloc_init(BKMinifiedFlowController);
    minifiedFlowController = v9->_minifiedFlowController;
    v9->_minifiedFlowController = v14;

    sceneFlowController = [(BKAppSceneManager *)v9 sceneFlowController];
    [(BKMinifiedFlowController *)v9->_minifiedFlowController setSceneHosting:sceneFlowController];

    [(BKMinifiedFlowController *)v9->_minifiedFlowController setDelegate:v9];
    objc_storeStrong(&v9->_launchCoordinator, coordinator);
    objc_storeStrong(&v9->_importCoordinator, importCoordinator);
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
  pendingCriticalAlertAssertion = [(BKAppSceneManager *)self pendingCriticalAlertAssertion];
  [pendingCriticalAlertAssertion invalidate];

  v4 = +[BURestrictionsProvider sharedInstance];
  [v4 removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  dispatch_activate(self->_urlHandlingQueue);
  v6 = +[BKReachability sharedReachabilityForInternetConnection];
  [v6 stopNotifier];

  bookFlowController = [(BKAppSceneManager *)self bookFlowController];
  [bookFlowController setStorePresenter:0];

  bookFlowController2 = [(BKAppSceneManager *)self bookFlowController];
  [bookFlowController2 setMinifiedPresenter:0];

  v9.receiver = self;
  v9.super_class = BKAppSceneManager;
  [(BKAppSceneManager *)&v9 dealloc];
}

- (id)rootBarCoordinatorForSceneController:(id)controller
{
  controllerCopy = controller;
  rootBarCoordinator = [(BKAppSceneManager *)self rootBarCoordinator];

  if (!rootBarCoordinator)
  {
    v6 = [BKRootBarCoordinator alloc];
    viewControllerProvider = [(BKAppSceneManager *)self viewControllerProvider];
    v8 = [(BKRootBarCoordinator *)v6 initWithSceneController:controllerCopy presentersProvider:self viewControllerProvider:viewControllerProvider];
    [(BKAppSceneManager *)self setRootBarCoordinator:v8];

    v9 = +[JSABridge sharedInstance];
    [JSAMetricsAppLaunchEvent updateRequiredBlockingBagLoad:0];
  }

  rootBarCoordinator2 = [(BKAppSceneManager *)self rootBarCoordinator];

  return rootBarCoordinator2;
}

- (void)setRootBarCoordinator:(id)coordinator
{
  objc_storeStrong(&self->_rootBarCoordinator, coordinator);

  [(BKAppSceneManager *)self _setupMinibarContainerView];
}

- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)session
{
  sessionCopy = session;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [sceneFlowController _lastKnownStateRestorationUserInfoForSceneSession:sessionCopy];

  return v6;
}

- (id)newTransactionWithName:(id)name originatingSceneController:(id)controller targetSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  nameCopy = name;
  userTransactionQueue = [(BKAppSceneManager *)self userTransactionQueue];
  v12 = [userTransactionQueue newTransactionWithName:nameCopy info:0 context:0 originatingSceneController:controllerCopy targetSceneDescriptor:descriptorCopy];

  return v12;
}

- (id)defaultSceneControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [sceneFlowController defaultSceneControllerForTransaction:transactionCopy];

  return v6;
}

- (id)anySceneController
{
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  anySceneController = [sceneFlowController anySceneController];

  return anySceneController;
}

- (id)sceneControllerForViewController:(id)controller
{
  controllerCopy = controller;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [sceneFlowController sceneControllerForViewController:controllerCopy];

  return v6;
}

- (id)sceneControllerForWindow:(id)window
{
  windowCopy = window;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [sceneFlowController sceneControllerForWindow:windowCopy];

  return v6;
}

- (void)enumerateSceneInfo:(id)info
{
  infoCopy = info;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController enumerateSceneInfo:infoCopy];
}

- (void)enumerateSceneController:(id)controller includeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  controllerCopy = controller;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController enumerateSceneController:controllerCopy includeHidden:hiddenCopy];
}

- (id)mainFlowController
{
  objc_opt_class();
  primarySceneController = [(BKAppSceneManager *)self primarySceneController];
  v4 = BUDynamicCast();

  mainFlowController = [v4 mainFlowController];

  return mainFlowController;
}

- (void)requestTabBarSceneController:(id)controller
{
  controllerCopy = controller;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100197DBC;
  v7[3] = &unk_100A07828;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [sceneFlowController requestTabBarSceneController:v7];
}

- (void)requestPrimaryScene:(id)scene
{
  sceneCopy = scene;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestPrimaryScene:sceneCopy];
}

- (void)forceTransaction:(id)transaction ontoPrimarySceneWithContinuation:(id)continuation
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100197F44;
  v8[3] = &unk_100A07788;
  transactionCopy = transaction;
  continuationCopy = continuation;
  v6 = continuationCopy;
  v7 = transactionCopy;
  [(BKAppSceneManager *)self requestPrimaryScene:v8];
}

- (void)requestBookSceneWithAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestBookSceneWithAssetID:dCopy completion:completionCopy];
}

- (void)requestSceneWithAssetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestSceneWithAssetID:dCopy completion:completionCopy];
}

- (void)requestEndOfBookSceneWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestEndOfBookSceneWithOptions:optionsCopy completion:completionCopy];
}

- (void)requestPrimaryOrBookScene:(id)scene
{
  sceneCopy = scene;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController requestPrimaryOrBookScene:sceneCopy];
}

- (id)newBookSceneControllerProviderWithRequestAssetID:(id)d
{
  dCopy = d;
  v5 = [[_BKBookSceneControllerProvider alloc] initWithSceneManager:self requestAssetID:dCopy];

  return v5;
}

- (id)sceneInfoPresentingAssetID:(id)d
{
  dCopy = d;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v6 = [sceneFlowController sceneInfoPresentingAssetID:dCopy];

  return v6;
}

- (void)destroySceneForAssetID:(id)d
{
  v5 = [(BKAppSceneManager *)self sceneInfoPresentingAssetID:d];
  v3 = +[BKSceneUtilities sharedInstance];
  sceneSession = [v5 sceneSession];
  [v3 destroySceneWithSceneSession:sceneSession withAnimationType:1];
}

- (id)windowFromSceneType:(unint64_t)type assetID:(id)d
{
  dCopy = d;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  v8 = [sceneFlowController sceneControllerForSceneType:type assetID:dCopy];

  bk_window = [v8 bk_window];

  return bk_window;
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

    sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
    [(BKBookFlowController *)self->_bookFlowController setSceneHosting:sceneFlowController];

    minifiedFlowController = [(BKAppSceneManager *)self minifiedFlowController];
    [(BKBookFlowController *)self->_bookFlowController setMinifiedPresenter:minifiedFlowController];

    storePresenter = [(BKAppSceneManager *)self storePresenter];
    [(BKBookFlowController *)self->_bookFlowController setStorePresenter:storePresenter];

    bookFlowController = self->_bookFlowController;
  }

  return bookFlowController;
}

- (void)saveStateClosing:(BOOL)closing
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100198614;
  v3[3] = &unk_100A09E08;
  closingCopy = closing;
  [(BKAppSceneManager *)self enumerateSceneController:v3 includeHidden:1];
}

- (void)analyticsForceEndSession
{
  [(BKAppSceneManager *)self enumerateSceneController:&stru_100A09E48 includeHidden:0];
  minifiedPresenter = [(BKAppSceneManager *)self minifiedPresenter];
  minifiedPresenterAssetCurrentPresenters = [minifiedPresenter minifiedPresenterAssetCurrentPresenters];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = minifiedPresenterAssetCurrentPresenters;
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

        minifiedAssetPresenterAssetViewControllerFuture = [*(*(&v12 + 1) + 8 * v9) minifiedAssetPresenterAssetViewControllerFuture];
        v11 = [minifiedAssetPresenterAssetViewControllerFuture getNonBlockingError:0];
        [v11 bc_analyticsSubtreeForceEndSession];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019898C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)routeScene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  sceneCopy = scene;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController routeScene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];

  launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
  LOBYTE(sceneCopy) = [launchCoordinator appLaunchCoordinatorIsConditionSatisfied:6];

  if ((sceneCopy & 1) == 0)
  {
    launchCoordinator2 = [(BKAppSceneManager *)self launchCoordinator];
    [launchCoordinator2 signalConditionSatisfied:6];
  }
}

- (void)carPlayScene:(id)scene didConnectInterfaceController:(id)controller
{
  v5 = [(BKAppSceneManager *)self launchCoordinator:scene];
  v6 = [v5 appLaunchCoordinatorIsConditionSatisfied:8];

  if ((v6 & 1) == 0)
  {
    launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
    [launchCoordinator signalConditionSatisfied:8];
  }
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  applicationCopy = application;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController application:applicationCopy didDiscardSceneSessions:sessionsCopy];
}

- (void)_afterSceneWillConnect:(id)connect
{
  object = [connect object];
  session = [object session];
  persistentIdentifier = [session persistentIdentifier];

  v6 = BCSceneLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [object delegate];
    v8 = 138543618;
    v9 = persistentIdentifier;
    v10 = 2114;
    v11 = delegate;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_afterSceneWillConnect: sceneIdentifier: %{public}@, sceneDelegate: %{public}@", &v8, 0x16u);
  }
}

- (void)_didFinishSceneStateRestoration:(id)restoration
{
  restorationCopy = restoration;
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  [sceneFlowController _didFinishSceneStateRestoration:restorationCopy];
}

- (id)minifiedFlowControllerMinibarContainingViewController
{
  rootBarCoordinator = [(BKAppSceneManager *)self rootBarCoordinator];
  rootViewController = [rootBarCoordinator rootViewController];

  return rootViewController;
}

- (double)minifiedFlowControllerMinibarBottomGuideWithViewController:(id)controller
{
  controllerCopy = controller;
  rootBarCoordinator = [(BKAppSceneManager *)self rootBarCoordinator];
  hostingViewController = [rootBarCoordinator hostingViewController];

  view = [hostingViewController view];
  [view bounds];
  Height = CGRectGetHeight(v18);
  view2 = [hostingViewController view];
  [view2 safeAreaInsets];
  v11 = v10;

  if (!controllerCopy)
  {
    rootBarCoordinator2 = [(BKAppSceneManager *)self rootBarCoordinator];
    controllerCopy = [rootBarCoordinator2 selectedTopViewController];
  }

  MinY = Height - v11;
  objc_opt_class();
  v14 = BUDynamicCast();
  v15 = v14;
  if (v14 && (v14 == controllerCopy || [v14 im_isAncestorOfChildViewController:controllerCopy]))
  {
    tabBar = [v15 tabBar];
    [tabBar frame];
    MinY = CGRectGetMinY(v19);
  }

  return MinY;
}

- (void)minifiedFlowControllerRequestShowStoreForStoreID:(id)d fromViewController:(id)controller
{
  dCopy = d;
  v9 = [(BKAppSceneManager *)self sceneControllerForViewController:controller];
  newShowURLTransaction = [v9 newShowURLTransaction];
  storePresenter = [(BKAppSceneManager *)self storePresenter];
  [storePresenter storeShowBookWithStoreID:dCopy resourceType:3 transaction:newShowURLTransaction];
}

- (id)minifiedFlowControllerPresentedAssetID:(id)d
{
  primarySceneController = [(BKAppSceneManager *)self primarySceneController];
  bookFlowController = [(BKAppSceneManager *)self bookFlowController];
  v6 = [bookFlowController bookPresenterCurrentlyOpenBookForSingleScene:primarySceneController];
  assetPresenterAssetID = [v6 assetPresenterAssetID];

  return assetPresenterAssetID;
}

- (void)minifiedFlowControllerHandleAssetPresentationError:(id)error assetID:(id)d isRetry:(BOOL)retry
{
  retryCopy = retry;
  errorCopy = error;
  dCopy = d;
  selfCopy = self;
  objc_initWeak(&location, self);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_1000274A0;
  v57[4] = sub_100027688;
  v58 = 0;
  v29 = +[BKLibraryManager defaultManager];
  v10 = [v29 libraryAssetOnMainQueueWithAssetID:dCopy];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100199608;
  v53[3] = &unk_100A09EF8;
  v55 = v57;
  objc_copyWeak(&v56, &location);
  v11 = dCopy;
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
  v15 = errorCopy;
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
    v65 = retryCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset %@ did not open, error=%@ retry=%{BOOL}d.  Fetching scene controller", buf, 0x1Cu);
  }

  contentType = [v18 contentType];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10019A338;
  v32[3] = &unk_100A09FE0;
  objc_copyWeak(&v37, &location);
  v36 = v57;
  v26 = v20;
  v33 = v26;
  v38 = retryCopy;
  v27 = v22;
  v34 = v27;
  v28 = v23;
  v35 = v28;
  [(BKAppSceneManager *)selfCopy _sceneForReportingErrorWithContentType:contentType assetID:v11 completion:v32];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v56);

  _Block_object_dispose(v57, 8);
  objc_destroyWeak(&location);
}

- (id)flowControllers
{
  v3 = objc_alloc_init(NSMutableArray);
  sceneFlowController = [(BKAppSceneManager *)self sceneFlowController];
  if (sceneFlowController)
  {
    [v3 addObject:sceneFlowController];
  }

  storeFlowController = [(BKAppSceneManager *)self storeFlowController];
  if (storeFlowController)
  {
    [v3 addObject:storeFlowController];
  }

  minifiedFlowController = [(BKAppSceneManager *)self minifiedFlowController];
  if (minifiedFlowController)
  {
    [v3 addObject:minifiedFlowController];
  }

  bookFlowController = [(BKAppSceneManager *)self bookFlowController];
  if (bookFlowController)
  {
    [v3 addObject:bookFlowController];
  }

  libraryCollectionsFlowController = [(BKAppSceneManager *)self libraryCollectionsFlowController];
  if (libraryCollectionsFlowController)
  {
    [v3 addObject:libraryCollectionsFlowController];
  }

  jetActionHandler = [(BKAppSceneManager *)self jetActionHandler];
  if (jetActionHandler)
  {
    [v3 addObject:jetActionHandler];
  }

  return v3;
}

- (BOOL)isPresentingWelcome
{
  welcomePresenter = [(BKAppSceneManager *)self welcomePresenter];
  welcomePresenterIsPresentingWelcome = [welcomePresenter welcomePresenterIsPresentingWelcome];

  return welcomePresenterIsPresentingWelcome;
}

- (void)_setupWelcomeScreenWithPresenterIfNeeded:(id)needed
{
  neededCopy = needed;
  if (!self->_welcomeScreenManager)
  {
    launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
    v6 = [launchCoordinator appLaunchCoordinatorIsConditionSatisfied:2];

    if ((v6 & 1) == 0)
    {
      v7 = BCSceneLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = neededCopy;
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
      v13 = neededCopy;
      v10 = objc_retainBlock(v12);
      _welcomeItems = [(BKAppSceneManager *)self _welcomeItems];
      (v10[2])(v10, _welcomeItems);
    }
  }
}

- (void)_enqueueDismissWelcomePresenter:(id)presenter
{
  presenterCopy = presenter;
  v5 = BCSceneLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_enqueueDismissWelcomePresenter", buf, 2u);
  }

  pendingWelcomePresenterDismissCompletionBlocks = [(BKAppSceneManager *)self pendingWelcomePresenterDismissCompletionBlocks];
  v7 = [pendingWelcomePresenterDismissCompletionBlocks count];

  pendingWelcomePresenterDismissCompletionBlocks2 = [(BKAppSceneManager *)self pendingWelcomePresenterDismissCompletionBlocks];
  v9 = objc_retainBlock(presenterCopy);

  [pendingWelcomePresenterDismissCompletionBlocks2 addObject:v9];
  if (!v7)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10019AA48;
    v17[3] = &unk_100A033C8;
    v17[4] = self;
    v10 = objc_retainBlock(v17);
    welcomePresenter = [(BKAppSceneManager *)self welcomePresenter];

    if (welcomePresenter)
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

- (void)_setWelcomePresenterIfNoneExists:(id)exists shouldPresent:(BOOL)present
{
  presentCopy = present;
  existsCopy = exists;
  welcomePresenter = [(BKAppSceneManager *)self welcomePresenter];

  if (!welcomePresenter)
  {
    [(BKAppSceneManager *)self setWelcomePresenter:existsCopy];
    if (presentCopy)
    {
      welcomePresenter2 = [(BKAppSceneManager *)self welcomePresenter];
      navigationController = [(BKWelcomeScreenManager *)self->_welcomeScreenManager navigationController];
      [welcomePresenter2 presentWelcomeViewController:navigationController completion:0];
    }
  }
}

- (void)_setCurrentWelcomePresenterIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(BKAppSceneManager *)self _isRunningWelcomeFlow])
  {
    welcomePresenter = [(BKAppSceneManager *)self welcomePresenter];

    if (welcomePresenter != neededCopy)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10019ADC0;
      v6[3] = &unk_100A03440;
      v6[4] = self;
      v7 = neededCopy;
      [(BKAppSceneManager *)self _enqueueDismissWelcomePresenter:v6];
    }
  }
}

- (void)_welcomePresenterDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if ([(BKAppSceneManager *)self _isRunningWelcomeFlow])
  {
    welcomePresenter = [(BKAppSceneManager *)self welcomePresenter];

    if (welcomePresenter == disconnectCopy)
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
    launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10019AF14;
    v4[3] = &unk_100A038D0;
    v4[4] = self;
    [launchCoordinator appLaunchCoordinatorOnConditionMask:2112 blockID:@"_showMainViewControllerOrWelcomeScreen" performBlock:v4];
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
      primarySceneController = [(BKAppSceneManager *)self primarySceneController];
      v4 = [primarySceneController willAttemptBookReopen] ^ 1;
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
  currentAudiobook = [v3 currentAudiobook];

  if (!currentAudiobook)
  {
    anySceneController = [(BKAppSceneManager *)self anySceneController];
    v5 = +[BKAppDelegate delegate];
    keyWindowAnalyticsTracker = [v5 keyWindowAnalyticsTracker];

    appStoreReviewManager = [(BKAppSceneManager *)self appStoreReviewManager];
    scene = [anySceneController scene];
    [appStoreReviewManager attemptToPresentStoreReviewIn:scene tracker:keyWindowAnalyticsTracker];
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
  didShowWelcome = [(BKWelcomeScreenManager *)self->_welcomeScreenManager didShowWelcome];
  launchCoordinator = [(BKAppSceneManager *)self launchCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019B4B4;
  v6[3] = &unk_100A05D78;
  v6[4] = self;
  v7 = didShowWelcome;
  [launchCoordinator signalConditionSatisfied:2 notifyWithTimeout:@"showMainViewController" blockID:v6 block:3.0];
}

- (void)processAccountSwitchWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10051D1F8(sub_1002427EC, v5);
}

- (NSString)figaroPageContext
{
  selfCopy = self;
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