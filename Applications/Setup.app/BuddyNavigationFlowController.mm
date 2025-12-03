@interface BuddyNavigationFlowController
- (BFFFlowItem)topFlowItem;
- (BOOL)_doesTapFreeSetUpAffectsClass:(Class)class;
- (BOOL)_hasWiFiControllerInNavigationStack;
- (BOOL)_isFlowItemAllowed:(id)allowed;
- (BOOL)_shouldAutoProceedPostUserSpaceReboot;
- (BOOL)_shouldTapFreeSetUpSkipControllerClass:(Class)class;
- (BOOL)_stackHasOnlyCloudConfigurationItems;
- (BOOL)controllerNeedsToRunForClass:(Class)class;
- (BOOL)currentlyShowingActivationFlow;
- (BOOL)isFlowItem:(id)item responsibleForViewController:(id)controller;
- (BOOL)isFlowItemOnTop:(id)top;
- (BOOL)isStartOverAllowed;
- (BuddyFlowCloudConfigDelegate)flowCloudConfigurationDelegate;
- (BuddyFlowDelegate)flowDelegate;
- (BuddyFlowProducer)flowProducer;
- (BuddyLifecycleDelegate)lifecycleDelegate;
- (BuddyNavigationFlowController)initWithNavigationController:(id)controller usingRestoreProvider:(id)provider usingFlowDiverter:(id)diverter environment:(id)environment;
- (BuddyNavigationFlowController)initWithNavigator:(id)navigator usingRestoreProvider:(id)provider usingFlowDiverter:(id)diverter environment:(id)environment;
- (BuddyRestoreProvider)restoreProvider;
- (UIResponder)lastUIResponder;
- (id)_createConditionalFlowItemForClass:(Class)class;
- (id)_createFlowItemForClass:(Class)class;
- (id)_ensureDeviceProximitySetupControllerWithCompletion:(id)completion;
- (id)_ensureDeviceRestoreChoiceControllerWithCompletion:(id)completion;
- (id)_flowForFlowItem:(id)item;
- (id)_flowItemFollowingClass:(Class)class;
- (id)_injectedFlowForClass:(Class)class;
- (id)_lastNonFlowFlowItemRelativeToFlowItem:(id)item;
- (id)_popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated;
- (id)_savedItemForClass:(Class)class;
- (id)_shieldColorForNewTopFlowItemPush;
- (id)_titleForViewController:(id)controller;
- (id)_viewControllerForBuddyController:(id)controller;
- (id)environmentInjector;
- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated;
- (void)_beginEventForNavigationDuration;
- (void)_endEventForNavigationDurationFromFlowItem:(id)item toFlowItem:(id)flowItem;
- (void)_ensureControllerExistsWithTarget:(id)target viewControllerInsertionIndexGenerator:(id)generator buddyControllerInsertionIndexGenerator:(id)indexGenerator withCompletion:(id)completion;
- (void)_flowItemDone:(id)done flow:(id)flow nextItemClass:(Class)class nextItem:(id)item;
- (void)_hideBackButtonIfNecessaryOnFlowItem:(id)item withViewController:(id)controller;
- (void)_injectDependencies:(id)dependencies withEnvironment:(id)environment;
- (void)_insertWiFiControllerAsFirstPane;
- (void)_performExtendedInitializationForFlowItem:(id)item willBegin:(id)begin withCompletion:(id)completion;
- (void)_presentViewControllerForBuddyController:(id)controller animated:(BOOL)animated willPresentViewController:(id)viewController completion:(id)completion;
- (void)_pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem;
- (void)_resumeNavigationQueue;
- (void)_setupInitialFlowFromInitialFlowItem:(id)item debutFlowItemClass:(Class)class completion:(id)completion;
- (void)_startDisablingInteractionForExtendedInitialization;
- (void)_stopDisablingInteractionForExtendedInitialization;
- (void)_unmarkFlowItemAsFinished:(id)finished;
- (void)_updateNavigationBackButtonTitleForViewController:(id)controller;
- (void)beginTapFreeSetUp;
- (void)flow:(id)flow finishedWithLastItem:(id)item nextItem:(id)nextItem;
- (void)flowItemCancelled:(id)cancelled;
- (void)flowItemDone:(id)done;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)handleDebugGesture;
- (void)markFlowItemDone:(id)done;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)presentWiFiPaneForFlow:(id)flow;
- (void)presentWiFiPaneForFlowItem:(id)item;
- (void)proceedPastAppearancePane;
- (void)proceedPastLanguageLocalePane;
- (void)pushFlowItem:(id)item animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem;
- (void)removeViewControllerFromNavHierarchy:(id)hierarchy;
- (void)removeViewControllersOnNextPush:(id)push;
- (void)restartFlow;
- (void)setUpByComputer;
- (void)setupInitialFlowWithCompletion:(id)completion;
@end

@implementation BuddyNavigationFlowController

- (BuddyNavigationFlowController)initWithNavigator:(id)navigator usingRestoreProvider:(id)provider usingFlowDiverter:(id)diverter environment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  obj = 0;
  objc_storeStrong(&obj, provider);
  v26 = 0;
  objc_storeStrong(&v26, diverter);
  v25 = 0;
  objc_storeStrong(&v25, environment);
  v9 = selfCopy;
  selfCopy = 0;
  v24.receiver = v9;
  v24.super_class = BuddyNavigationFlowController;
  v10 = [(BuddyNavigationFlowController *)&v24 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(selfCopy + 10, location[0]);
    [*(selfCopy + 10) addDelegateObserver:selfCopy];
    v11 = objc_alloc_init(BuddyNavigationBarUpdater);
    v12 = *(selfCopy + 12);
    *(selfCopy + 12) = v11;

    [location[0] addDelegateObserver:*(selfCopy + 12)];
    objc_storeWeak(selfCopy + 11, obj);
    v13 = [BFFFlowStarter alloc];
    v14 = [v13 initWithFlowDiverter:v26];
    v15 = *(selfCopy + 13);
    *(selfCopy + 13) = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = *(selfCopy + 14);
    *(selfCopy + 14) = v16;

    v18 = objc_alloc_init(NSMutableArray);
    v19 = *(selfCopy + 20);
    *(selfCopy + 20) = v18;

    objc_storeStrong(selfCopy + 19, v25);
    v20 = dispatch_queue_create("Navigation Queue", 0);
    v21 = *(selfCopy + 23);
    *(selfCopy + 23) = v20;

    dispatch_suspend(*(selfCopy + 23));
  }

  v22 = selfCopy;
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v22;
}

- (BuddyNavigationFlowController)initWithNavigationController:(id)controller usingRestoreProvider:(id)provider usingFlowDiverter:(id)diverter environment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, provider);
  v15 = 0;
  objc_storeStrong(&v15, diverter);
  v14 = 0;
  objc_storeStrong(&v14, environment);
  v9 = [BuddyNavigationFlowNavigator alloc];
  v13 = [(BuddyNavigationFlowNavigator *)v9 initWithNavigationController:location[0]];
  v10 = selfCopy;
  selfCopy = 0;
  selfCopy = [v10 initWithNavigator:v13 usingRestoreProvider:v16 usingFlowDiverter:v15 environment:v14];
  v11 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)setupInitialFlowWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = objc_alloc_init(BuddyWiFiController);
  [(BuddyNavigationFlowController *)selfCopy setWifiController:v3];

  v4 = selfCopy;
  wifiController = [(BuddyNavigationFlowController *)selfCopy wifiController];
  [(BuddyWiFiController *)wifiController setDelegate:v4];

  v6 = selfCopy;
  wifiController2 = [(BuddyNavigationFlowController *)selfCopy wifiController];
  environment = [(BuddyNavigationFlowController *)selfCopy environment];
  [(BuddyNavigationFlowController *)v6 _injectDependencies:wifiController2 withEnvironment:environment];

  oslog = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = oslog;
    v10 = v20;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v9, v10, "Preparing flow starter...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  flowStarter = [(BuddyNavigationFlowController *)selfCopy flowStarter];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000A1E4C;
  v16 = &unk_10032AFD0;
  v17 = selfCopy;
  v18 = location[0];
  [(BFFFlowStarter *)flowStarter prepareWithCompletion:&v12];

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)beginTapFreeSetUp
{
  selfCopy = self;
  v8[1] = a2;
  navigationQueue = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A24B0;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(navigationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)proceedPastLanguageLocalePane
{
  selfCopy = self;
  v8[1] = a2;
  navigationQueue = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A289C;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(navigationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)proceedPastAppearancePane
{
  selfCopy = self;
  v8[1] = a2;
  navigationQueue = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2B44;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(navigationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)setUpByComputer
{
  selfCopy = self;
  v8[1] = a2;
  navigationQueue = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2DEC;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(navigationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)handleDebugGesture
{
  buddyControllers = [(BuddyNavigationFlowController *)self buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers lastObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    buddyControllers2 = [(BuddyNavigationFlowController *)self buddyControllers];
    lastObject2 = [(NSMutableArray *)buddyControllers2 lastObject];
    [lastObject2 handleDebugGesture];
  }
}

- (BOOL)currentlyShowingActivationFlow
{
  v2 = [(BuddyNavigationFlowController *)self buddyControllers:a2];
  lastObject = [(NSMutableArray *)v2 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isStartOverAllowed
{
  selfCopy = self;
  v17[1] = a2;
  buddyControllers = [(BuddyNavigationFlowController *)self buddyControllers];
  v17[0] = [(NSMutableArray *)buddyControllers lastObject];

  if (objc_opt_respondsToSelector() & 1) == 0 || ([v17[0] shouldAllowStartOver])
  {
    navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
    location = [(BuddyNavigationFlowNavigator *)navigator topViewController];

    if (objc_opt_respondsToSelector() & 1) == 0 || ([location shouldAllowStartOver])
    {
      v19 = 1;
      v13 = 1;
    }

    else
    {
      v11 = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v11;
        v7 = v10;
        sub_10006AA68(v9);
        _os_log_impl(&_mh_execute_header, v6, v7, "Top view controller does not allow menu", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
      v19 = 0;
      v13 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Top flow item does not allow menu", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v19 = 0;
    v13 = 1;
  }

  objc_storeStrong(v17, 0);
  return v19 & 1;
}

- (BFFFlowItem)topFlowItem
{
  v2 = [(BuddyNavigationFlowController *)self buddyControllers:a2];
  lastObject = [(NSMutableArray *)v2 lastObject];

  return lastObject;
}

- (BOOL)_shouldAutoProceedPostUserSpaceReboot
{
  v3 = ![(BuddyNavigationFlowController *)self didProceedPastFlowSignalCalled];
  [(BuddyNavigationFlowController *)self setDidProceedPastFlowSignalCalled:1];
  return v3 & 1;
}

- (id)_flowItemFollowingClass:(Class)class
{
  selfCopy = self;
  v41 = a2;
  classCopy = class;
  flowProducer = [(BuddyNavigationFlowController *)self flowProducer];
  v39 = [(BuddyFlowProducer *)flowProducer potentialNextFlowItemClassFollowingFlowItemClass:classCopy];

  if ([v39 conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem])
  {
    v38 = [(BuddyNavigationFlowController *)selfCopy _shouldTapFreeSetUpSkipControllerClass:v39];
    if (v38 || ((location = [(BuddyNavigationFlowController *)selfCopy _createConditionalFlowItemForClass:v39]) == 0 ? (v36 = 0) : (v43 = location, v36 = 1), objc_storeStrong(&location, 0), !v36))
    {
      v34 = 0;
      v4 = 0;
      if (objc_opt_respondsToSelector())
      {
        v5 = v39;
        environment = [(BuddyNavigationFlowController *)selfCopy environment];
        v34 = 1;
        v4 = [v5 isTrailingWithEnvironment:?];
      }

      if (v34)
      {
      }

      if (v4)
      {
        v33 = [(BuddyNavigationFlowController *)selfCopy _savedItemForClass:v39];
        trailingControllers = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
        [(NSMutableArray *)trailingControllers addObject:v33];

        objc_storeStrong(&v33, 0);
      }

      if ([v39 isEqual:objc_opt_class()])
      {
        v7 = +[NSPointerArray weakObjectsPointerArray];
        [(BuddyNavigationFlowController *)selfCopy setWeakBuddyControllersPrecedingDeviceRestoreChoiceController:v7];

        v8 = +[NSPointerArray weakObjectsPointerArray];
        [(BuddyNavigationFlowController *)selfCopy setWeakViewControllersPrecedingDeviceRestoreChoiceController:v8];

        memset(__b, 0, sizeof(__b));
        buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        v10 = [(NSMutableArray *)buddyControllers countByEnumeratingWithState:__b objects:v48 count:16];
        if (v10)
        {
          v11 = *__b[2];
          do
          {
            for (i = 0; i < v10; ++i)
            {
              if (*__b[2] != v11)
              {
                objc_enumerationMutation(buddyControllers);
              }

              v32 = *(__b[1] + 8 * i);
              weakBuddyControllersPrecedingDeviceRestoreChoiceController = [(BuddyNavigationFlowController *)selfCopy weakBuddyControllersPrecedingDeviceRestoreChoiceController];
              [(NSPointerArray *)weakBuddyControllersPrecedingDeviceRestoreChoiceController addPointer:v32];
            }

            v10 = [(NSMutableArray *)buddyControllers countByEnumeratingWithState:__b objects:v48 count:16];
          }

          while (v10);
        }

        memset(v29, 0, sizeof(v29));
        navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
        viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];

        v16 = [viewControllers countByEnumeratingWithState:v29 objects:v47 count:16];
        if (v16)
        {
          v17 = *v29[2];
          do
          {
            for (j = 0; j < v16; ++j)
            {
              if (*v29[2] != v17)
              {
                objc_enumerationMutation(viewControllers);
              }

              v30 = *(v29[1] + 8 * j);
              weakViewControllersPrecedingDeviceRestoreChoiceController = [(BuddyNavigationFlowController *)selfCopy weakViewControllersPrecedingDeviceRestoreChoiceController];
              [(NSPointerArray *)weakViewControllersPrecedingDeviceRestoreChoiceController addPointer:v30];
            }

            v16 = [viewControllers countByEnumeratingWithState:v29 objects:v47 count:16];
          }

          while (v16);
        }

        oslog = _BYLoggingFacility();
        v27 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          weakBuddyControllersPrecedingDeviceRestoreChoiceController2 = [(BuddyNavigationFlowController *)selfCopy weakBuddyControllersPrecedingDeviceRestoreChoiceController];
          sub_10006AE18(buf, weakBuddyControllersPrecedingDeviceRestoreChoiceController2);
          _os_log_debug_impl(&_mh_execute_header, oslog, v27, "Skipping DeviceRestoreChoiceController but remembering buddy controllers preceding it: %@", buf, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v26 = _BYLoggingFacility();
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          weakViewControllersPrecedingDeviceRestoreChoiceController2 = [(BuddyNavigationFlowController *)selfCopy weakViewControllersPrecedingDeviceRestoreChoiceController];
          sub_10006AE18(v45, weakViewControllersPrecedingDeviceRestoreChoiceController2);
          _os_log_debug_impl(&_mh_execute_header, v26, v25, "...and view controllers preceding it: %@", v45, 0xCu);
        }

        objc_storeStrong(&v26, 0);
      }

      v43 = [(BuddyNavigationFlowController *)selfCopy _flowItemFollowingClass:v39];
    }
  }

  else
  {
    if (v39)
    {
      v24 = _BYLoggingFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(v44, v39);
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Received a non-flow item class: %{public}@", v44, 0xCu);
      }

      objc_storeStrong(&v24, 0);
    }

    v43 = 0;
  }

  v22 = v43;

  return v22;
}

- (id)_createConditionalFlowItemForClass:(Class)class
{
  selfCopy = self;
  v13 = a2;
  classCopy = class;
  if ([(BuddyNavigationFlowController *)self _shouldTapFreeSetUpSkipControllerClass:class])
  {
    goto LABEL_9;
  }

  flowStarter = [(BuddyNavigationFlowController *)selfCopy flowStarter];
  v4 = [(BFFFlowStarter *)flowStarter controllerNeedsToRunForClass:classCopy];

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  location = [(BuddyNavigationFlowController *)selfCopy _createFlowItemForClass:classCopy];
  [location setDelegate:selfCopy];
  flowStarter2 = [(BuddyNavigationFlowController *)selfCopy flowStarter];
  v6 = [(BFFFlowStarter *)flowStarter2 controllerNeedsToRunForFlowItem:location];

  if (v6)
  {
    v15 = location;
    v9 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [location controllerWillNotRun];
    }

    v9 = 0;
  }

  objc_storeStrong(&location, 0);
  if (!v9)
  {
LABEL_9:
    v15 = 0;
  }

  v7 = v15;

  return v7;
}

- (id)_createFlowItemForClass:(Class)class
{
  selfCopy = self;
  v18 = a2;
  classCopy = class;
  location = [(BuddyNavigationFlowController *)self _savedItemForClass:class];
  if (location)
  {
    v20 = location;
    v15 = 1;
  }

  else
  {
    if (([(objc_class *)classCopy isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v3 = [classCopy alloc];
      navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
      navigationController = [(BuddyNavigationFlowNavigator *)navigator navigationController];
      flowStarter = [(BuddyNavigationFlowController *)selfCopy flowStarter];
      environmentInjector = [(BuddyNavigationFlowController *)selfCopy environmentInjector];
      obj = [v3 initWithNavigationController:navigationController flowDelegate:selfCopy flowStarter:flowStarter dependencyInjector:environmentInjector];

      [obj setFlowItemDelegate:selfCopy];
      objc_storeStrong(&location, obj);
      objc_storeStrong(&obj, 0);
    }

    else
    {
      v8 = objc_alloc_init(classCopy);
      v9 = location;
      location = v8;
    }

    flowProducer = [(BuddyNavigationFlowController *)selfCopy flowProducer];
    [(BuddyFlowProducer *)flowProducer configureFlowItem:location];

    environmentInjector2 = [(BuddyNavigationFlowController *)selfCopy environmentInjector];
    v20 = environmentInjector2[2](environmentInjector2, location);

    v15 = 1;
  }

  objc_storeStrong(&location, 0);
  v12 = v20;

  return v12;
}

- (id)_savedItemForClass:(Class)class
{
  savedItemForClassBlock = [(BuddyNavigationFlowController *)self savedItemForClassBlock];

  if (savedItemForClassBlock)
  {
    savedItemForClassBlock2 = [(BuddyNavigationFlowController *)self savedItemForClassBlock];
    wifiController = savedItemForClassBlock2[2](savedItemForClassBlock2, class);
  }

  else if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    wifiController = [(BuddyNavigationFlowController *)self wifiController];
  }

  else
  {
    wifiController = 0;
  }

  return wifiController;
}

- (BOOL)_doesTapFreeSetUpAffectsClass:(Class)class
{
  v3 = objc_opt_respondsToSelector();
  controllerAffectedByTapFreeSetup = 0;
  if (v3)
  {
    controllerAffectedByTapFreeSetup = [(objc_class *)class controllerAffectedByTapFreeSetup];
  }

  return controllerAffectedByTapFreeSetup & 1;
}

- (BOOL)_shouldTapFreeSetUpSkipControllerClass:(Class)class
{
  isTapFreeSetUp = [(BuddyNavigationFlowController *)self isTapFreeSetUp];
  v4 = 0;
  if (isTapFreeSetUp)
  {
    v4 = [(BuddyNavigationFlowController *)self _doesTapFreeSetUpAffectsClass:class];
  }

  return v4 & 1;
}

- (void)_flowItemDone:(id)done flow:(id)flow nextItemClass:(Class)class nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v51 = 0;
  objc_storeStrong(&v51, flow);
  classCopy = class;
  v49 = 0;
  objc_storeStrong(&v49, item);
  v48 = 1;
  [(BuddyNavigationFlowController *)selfCopy markFlowItemDone:location[0]];
  [(BuddyNavigationFlowController *)selfCopy markFlowItemDone:v51];
  [(BuddyNavigationFlowController *)selfCopy setLastUIResponder:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v49 || classCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      flowCloudConfigurationDelegate = [(BuddyNavigationFlowController *)selfCopy flowCloudConfigurationDelegate];
      [(BuddyFlowCloudConfigDelegate *)flowCloudConfigurationDelegate setNeedsConfigurationUpdate];
    }
  }

  else
  {
    lifecycleDelegate = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
    v10 = [(BuddyLifecycleDelegate *)lifecycleDelegate shouldEndLifecycleForCause:0];

    if (v10)
    {
      v48 = 0;
      lifecycleDelegate2 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
      [(BuddyLifecycleDelegate *)lifecycleDelegate2 willEndLifecycleDueToCause:0 allowDismissal:1];

      lifecycleDelegate3 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
      [(BuddyLifecycleDelegate *)lifecycleDelegate3 endLifecycleDueToCause:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] cdmaSelectionActivation])
      {
        v48 = 0;
        [(BuddyNavigationFlowController *)selfCopy restartFlow];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proximitySetupController = [(BuddyNavigationFlowController *)selfCopy proximitySetupController];
    [(ProximitySetupController *)proximitySetupController endAdvertisingProximitySetup];
  }

  if (v48)
  {
    v47 = v49;
    if (!v47)
    {
      if (classCopy)
      {
        v15 = objc_alloc_init(classCopy);
        v16 = v47;
        v47 = v15;

        if (objc_opt_respondsToSelector())
        {
          [v47 setDelegate:selfCopy];
        }
      }

      else
      {
        v17 = selfCopy;
        v18 = objc_opt_class();
        if (!v18)
        {
          v18 = objc_opt_class();
        }

        v19 = [(BuddyNavigationFlowController *)v17 _flowItemFollowingClass:v18];
        v20 = v47;
        v47 = v19;
      }
    }

    v21 = selfCopy;
    environment = [(BuddyNavigationFlowController *)selfCopy environment];
    [(BuddyNavigationFlowController *)v21 _injectDependencies:v47 withEnvironment:environment];

    v45 = 0;
    v23 = 0;
    if (!v47)
    {
      lifecycleDelegate4 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
      v45 = 1;
      v23 = [lifecycleDelegate4 shouldEndLifecycleForCause:1];
    }

    if (v45)
    {
    }

    if (v23)
    {
      v24 = objc_opt_respondsToSelector();
      v25 = 0;
      if (v24)
      {
        v25 = [v51 allowedTerminationSources] != 0;
      }

      v44 = v25;
      v26 = objc_opt_respondsToSelector();
      v27 = 0;
      if (v26)
      {
        v27 = [location[0] allowedTerminationSources] != 0;
      }

      v43 = v27;
      if (!v27)
      {
        if (v44)
        {
          v42 = ([v51 allowedTerminationSources] & 1) == 1;
          lifecycleDelegate5 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
          [(BuddyLifecycleDelegate *)lifecycleDelegate5 willEndLifecycleDueToCause:1 allowDismissal:v42];
        }

        else
        {
          lifecycleDelegate5 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
          [(BuddyLifecycleDelegate *)lifecycleDelegate5 willEndLifecycleDueToCause:1 allowDismissal:1];
        }
      }

      lifecycleDelegate6 = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
      [(BuddyLifecycleDelegate *)lifecycleDelegate6 endLifecycleDueToCause:1];
    }

    if (![(BuddyNavigationFlowController *)selfCopy _hasWiFiControllerInNavigationStack]&& [(BuddyNavigationFlowController *)selfCopy _stackHasOnlyCloudConfigurationItems])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v31 = 1;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();
        v31 = 1;
        if ((v32 & 1) == 0)
        {
          objc_opt_class();
          v33 = objc_opt_isKindOfClass();
          v31 = 1;
          if ((v33 & 1) == 0)
          {
            objc_opt_class();
            v34 = objc_opt_isKindOfClass();
            v31 = 1;
            if ((v34 & 1) == 0)
            {
              objc_opt_class();
              v31 = objc_opt_isKindOfClass();
            }
          }
        }
      }

      v41 = v31 & 1;
      if (v31)
      {
        [(BuddyNavigationFlowController *)selfCopy setDidInsertWiFiPaneForCloudConfigurationFlow:1];
        [(BuddyNavigationFlowController *)selfCopy _insertWiFiControllerAsFirstPane];
      }
    }

    oslog = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v37 = objc_opt_class();
      sub_100073058(buf, v38, v37);
      _os_log_impl(&_mh_execute_header, oslog, v39, "Following flow %{public}@ => %{public}@", buf, 0x16u);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&oslog, 0);
    navigationStartDate = [(BuddyNavigationFlowController *)selfCopy navigationStartDate];
    v36 = navigationStartDate == 0;

    if (v36)
    {
      [(BuddyNavigationFlowController *)selfCopy _beginEventForNavigationDuration];
    }

    if (v47)
    {
      [(BuddyNavigationFlowController *)selfCopy pushFlowItem:v47 inFlow:0 animated:1];
    }

    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (void)_startDisablingInteractionForExtendedInitialization
{
  selfCopy = self;
  v48 = a2;
  navigator = [(BuddyNavigationFlowController *)self navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];
  v46 = 0;
  v4 = 0;
  if (![viewControllers count])
  {
    buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    v46 = 1;
    v4 = [buddyControllers count] == 0;
  }

  if (v46)
  {
  }

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v44;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Inserting interstitial spinner pane", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    location = [[BFFSpinnerController alloc] initWithSpinnerText:&stru_10032F900];
    buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    [(NSMutableArray *)buddyControllers2 addObject:location];

    navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
    [(BuddyNavigationFlowNavigator *)navigator2 pushViewController:location animated:0];

    objc_storeStrong(&location, 0);
  }

  v41 = 0;
  v40 = 0;
  buddyControllers3 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers3 lastObject];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    buddyControllers4 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    lastObject2 = [(NSMutableArray *)buddyControllers4 lastObject];
    v41 = [lastObject2 shouldSuppressExtendedInitializationActivityIndicator] & 1;
  }

  navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
  viewControllers2 = [(BuddyNavigationFlowNavigator *)navigator3 viewControllers];
  lastObject3 = [viewControllers2 lastObject];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    navigator4 = [(BuddyNavigationFlowController *)selfCopy navigator];
    viewControllers3 = [(BuddyNavigationFlowNavigator *)navigator4 viewControllers];
    lastObject4 = [viewControllers3 lastObject];
    v40 = [lastObject4 shouldSuppressExtendedInitializationActivityIndicator] & 1;
  }

  v21 = 1;
  if ((v41 & 1) == 0)
  {
    v21 = v40;
  }

  v39 = v21;
  if (v21)
  {
    v38 = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      buddyControllers5 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject5 = [(NSMutableArray *)buddyControllers5 lastObject];
      sub_100071CBC(v52, lastObject5);
      _os_log_impl(&_mh_execute_header, v38, v37, "Will suppress spinner over %{public}@", v52, 0xCu);

      objc_storeStrong(&lastObject5, 0);
    }

    objc_storeStrong(&v38, 0);
  }

  else
  {
    v35 = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      buddyControllers6 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject6 = [(NSMutableArray *)buddyControllers6 lastObject];
      sub_100071CBC(v51, lastObject6);
      _os_log_impl(&_mh_execute_header, v35, v34, "Will NOT suppress spinner over %{public}@", v51, 0xCu);

      objc_storeStrong(&lastObject6, 0);
    }

    objc_storeStrong(&v35, 0);
  }

  if ((v39 & 1) == 0)
  {
    navigator5 = [(BuddyNavigationFlowController *)selfCopy navigator];
    topViewController = [(BuddyNavigationFlowNavigator *)navigator5 topViewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController identifier:@"BuddyNavigationFlowController"];
  }

  v32 = _BYLoggingFacility();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    navigator6 = [(BuddyNavigationFlowController *)selfCopy navigator];
    view = [(BuddyNavigationFlowNavigator *)navigator6 view];
    window = [view window];
    sub_1000A4DC0(v50, "[BuddyNavigationFlowController _startDisablingInteractionForExtendedInitialization]", window);
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled NO %p", v50, 0x16u);
  }

  objc_storeStrong(&v32, 0);
  navigator7 = [(BuddyNavigationFlowController *)selfCopy navigator];
  view2 = [(BuddyNavigationFlowNavigator *)navigator7 view];
  window2 = [view2 window];
  [window2 setUserInteractionEnabled:0];
}

- (void)_stopDisablingInteractionForExtendedInitialization
{
  selfCopy = self;
  oslog[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BuddyNavigationFlowController"];
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
    view = [(BuddyNavigationFlowNavigator *)navigator view];
    window = [view window];
    sub_1000A4DC0(buf, "[BuddyNavigationFlowController _stopDisablingInteractionForExtendedInitialization]", window);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled YES %p", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
  view2 = [(BuddyNavigationFlowNavigator *)navigator2 view];
  window2 = [view2 window];
  [window2 setUserInteractionEnabled:1];
}

- (void)_performExtendedInitializationForFlowItem:(id)item willBegin:(id)begin withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v27 = 0;
  objc_storeStrong(&v27, begin);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  if (objc_opt_respondsToSelector())
  {
    if (v27)
    {
      (*(v27 + 2))();
    }

    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      sub_100071CBC(buf, v22);
      _os_log_impl(&_mh_execute_header, v24, v23, "Running extended initialization for %{public}@", buf, 0xCu);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v24, 0);
    v21 = +[NSDate date];
    v17[0] = 0;
    v17[1] = v17;
    v18 = 0x20000000;
    v19 = 32;
    v20 = 0;
    v7 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000A52F0;
    v12 = &unk_10032BBD8;
    v16[1] = v17;
    v13 = location[0];
    v14 = v21;
    v15 = selfCopy;
    v16[0] = v26;
    [v7 performExtendedInitializationWithCompletion:&v8];
    objc_storeStrong(v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    _Block_object_dispose(v17, 8);
    objc_storeStrong(&v21, 0);
    v25 = 0;
  }

  else
  {
    if (v26)
    {
      (*(v26 + 2))(v26, 1);
    }

    v25 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v90 = 0;
  objc_storeStrong(&v90, flow);
  initializationCopy = initialization;
  animatedCopy = animated;
  v87 = 0;
  objc_storeStrong(&v87, flowItem);
  if (location[0] && ![(BuddyNavigationFlowController *)selfCopy _isFlowItemAllowed:location[0]])
  {
    flowProducer = [(BuddyNavigationFlowController *)selfCopy flowProducer];
    allowedFlowItems = [objc_opt_class() allowedFlowItems];

    v12 = location[0];
    flowProducer2 = [(BuddyNavigationFlowController *)selfCopy flowProducer];
    v85 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"Attempted to push disallowed flow item (%@) from producer (%@) with %ld allowed flow items: %@", v12, flowProducer2, [allowedFlowItems count], allowedFlowItems);

    v84 = _BYLoggingFacility();
    v83 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      sub_10006AE18(buf, v85);
      _os_log_fault_impl(&_mh_execute_header, v84, v83, "%@", buf, 0xCu);
    }

    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&allowedFlowItems, 0);
  }

  navigationStartDate = [(BuddyNavigationFlowController *)selfCopy navigationStartDate];
  v15 = navigationStartDate == 0;

  if (v15)
  {
    [(BuddyNavigationFlowController *)selfCopy _beginEventForNavigationDuration];
  }

  v16 = selfCopy;
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers lastObject];
  v82 = [(BuddyNavigationFlowController *)v16 _lastNonFlowFlowItemRelativeToFlowItem:lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = location[0];
    if (initializationCopy)
    {
      v19 = selfCopy;
      v20 = location[0];
      v75 = _NSConcreteStackBlock;
      v76 = -1073741824;
      v77 = 0;
      v78 = sub_1000A61E4;
      v79 = &unk_10032B0D0;
      v80 = selfCopy;
      v64 = _NSConcreteStackBlock;
      v65 = -1073741824;
      v66 = 0;
      v67 = sub_1000A6210;
      v68 = &unk_10032BC00;
      v73 = v87;
      v69 = selfCopy;
      v70 = v81;
      v74 = animatedCopy;
      v71 = v90;
      v72 = location[0];
      [(BuddyNavigationFlowController *)v19 _performExtendedInitializationForFlowItem:v20 willBegin:&v75 withCompletion:&v64];
      objc_storeStrong(&v72, 0);
      objc_storeStrong(&v71, 0);
      objc_storeStrong(&v70, 0);
      objc_storeStrong(&v69, 0);
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      if (v87)
      {
        (*(v87 + 2))(v87, 1);
      }

      [(BuddyNavigationFlowController *)selfCopy _endEventForNavigationDurationFromFlowItem:v82 toFlowItem:v81];
      buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      [(NSMutableArray *)buddyControllers2 addObject:v81];

      [v81 startFlowAnimated:animatedCopy];
    }

    objc_storeStrong(&v81, 0);
  }

  else if (initializationCopy)
  {
    v22 = selfCopy;
    v23 = location[0];
    v58 = _NSConcreteStackBlock;
    v59 = -1073741824;
    v60 = 0;
    v61 = sub_1000A62D0;
    v62 = &unk_10032B0D0;
    v63 = selfCopy;
    v48 = _NSConcreteStackBlock;
    v49 = -1073741824;
    v50 = 0;
    v51 = sub_1000A62FC;
    v52 = &unk_10032BC28;
    v56 = v87;
    v53 = selfCopy;
    v54 = location[0];
    v55 = v90;
    v57 = animatedCopy;
    [(BuddyNavigationFlowController *)v22 _performExtendedInitializationForFlowItem:v23 willBegin:&v58 withCompletion:&v48];
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v63, 0);
  }

  else
  {
    if (v87)
    {
      (*(v87 + 2))(v87, 1);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
    {
      v24 = location[0];
      navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
      navigationController = [(BuddyNavigationFlowNavigator *)navigator navigationController];
      [v24 setNavigationController:navigationController];
    }

    [(BuddyNavigationFlowController *)selfCopy _stopDisablingInteractionForExtendedInitialization];
    objc_initWeak(&from, selfCopy);
    v27 = selfCopy;
    v28 = location[0];
    v29 = animatedCopy;
    v39 = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_1000A63A0;
    v43 = &unk_10032BB10;
    v44 = selfCopy;
    v45 = v82;
    v46 = location[0];
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_1000A63D8;
    v34 = &unk_10032BC50;
    objc_copyWeak(&v37, &from);
    v35 = location[0];
    v38 = animatedCopy;
    v36 = v90;
    [(BuddyNavigationFlowController *)v27 _presentViewControllerForBuddyController:v28 animated:v29 willPresentViewController:&v39 completion:&v30];
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v35, 0);
    objc_destroyWeak(&v37);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v44, 0);
    objc_destroyWeak(&from);
  }

  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentViewControllerForBuddyController:(id)controller animated:(BOOL)animated willPresentViewController:(id)viewController completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v113 = 0;
  objc_storeStrong(&v113, viewController);
  v112 = 0;
  objc_storeStrong(&v112, completion);
  v111 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:location[0]];
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  topViewController = [(BuddyNavigationFlowNavigator *)navigator topViewController];
  firstResponder = [topViewController firstResponder];

  if (v111)
  {
    [(BuddyNavigationFlowController *)selfCopy _hideBackButtonIfNecessaryOnFlowItem:location[0] withViewController:v111];
    if (v113)
    {
      (*(v113 + 2))();
    }

    buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    [(NSMutableArray *)buddyControllers addObject:location[0]];

    v109 = 0;
    if (objc_opt_respondsToSelector())
    {
      v109 = [location[0] shouldPresentModally] & 1;
    }

    if (v109)
    {
      v108 = [[BFFNavigationController alloc] initWithRootViewController:v111];
      [v108 setModalPresentationStyle:2];
      +[OBWelcomeController preferredContentSize];
      *&v107 = v12;
      *(&v107 + 1) = v13;
      v106 = v107;
      [v108 setForcedPreferredContentSize:{v12, v13}];
      v14 = +[BFFStyle sharedStyle];
      [v14 applyThemeToNavigationController:v108];

      v15 = selfCopy;
      navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
      navigationController = [(BuddyNavigationFlowNavigator *)navigator2 navigationController];
      [(BuddyNavigationFlowController *)v15 navigationController:navigationController willShowViewController:v111 operation:1 animated:1];

      if (firstResponder)
      {
        [(BuddyNavigationFlowController *)selfCopy setLastUIResponder:firstResponder];
        [firstResponder resignFirstResponder];
      }

      navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
      v19 = animatedCopy;
      v98 = _NSConcreteStackBlock;
      v99 = -1073741824;
      v100 = 0;
      v101 = sub_1000A7498;
      v102 = &unk_10032BC78;
      v103 = selfCopy;
      v104 = v111;
      v105 = v112;
      [(BuddyNavigationFlowNavigator *)navigator3 presentViewController:v108 animated:v19 completion:&v98];

      objc_storeStrong(&v105, 0);
      objc_storeStrong(&v104, 0);
      objc_storeStrong(&v103, 0);
      objc_storeStrong(&v108, 0);
    }

    else if (animatedCopy)
    {
      _shieldColorForNewTopFlowItemPush = [(BuddyNavigationFlowController *)selfCopy _shieldColorForNewTopFlowItemPush];
      navigator4 = [(BuddyNavigationFlowController *)selfCopy navigator];
      if (_shieldColorForNewTopFlowItemPush)
      {
        v90 = _NSConcreteStackBlock;
        v91 = -1073741824;
        v92 = 0;
        v93 = sub_1000A7544;
        v94 = &unk_10032BCA0;
        v96 = v112;
        v95 = v111;
        [(BuddyNavigationFlowNavigator *)navigator4 pushViewController:v111 usingShieldColor:_shieldColorForNewTopFlowItemPush completion:&v90];

        objc_storeStrong(&v95, 0);
        objc_storeStrong(&v96, 0);
      }

      else
      {
        v83 = _NSConcreteStackBlock;
        v84 = -1073741824;
        v85 = 0;
        v86 = sub_1000A7588;
        v87 = &unk_10032BCA0;
        v89 = v112;
        v88 = v111;
        [(BuddyNavigationFlowNavigator *)navigator4 pushViewController:v111 completion:&v83];

        objc_storeStrong(&v88, 0);
        objc_storeStrong(&v89, 0);
      }

      objc_storeStrong(&_shieldColorForNewTopFlowItemPush, 0);
    }

    else
    {
      navigator5 = [(BuddyNavigationFlowController *)selfCopy navigator];
      [(BuddyNavigationFlowNavigator *)navigator5 pushViewController:v111 animated:0];

      if (v112)
      {
        (*(v112 + 2))(v112, v111);
      }
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v82 = 0;
    buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    lastObject = [(NSMutableArray *)buddyControllers2 lastObject];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      buddyControllers3 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject2 = [(NSMutableArray *)buddyControllers3 lastObject];
      v82 = [lastObject2 shouldSuppressExtendedInitializationActivityIndicator] & 1;
    }

    oslog = _BYLoggingFacility();
    v80 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      buddyControllers4 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject3 = [(NSMutableArray *)buddyControllers4 lastObject];
      v79 = lastObject3;
      if (v82)
      {
        v29 = @"YEP";
      }

      else
      {
        v29 = @"NERP";
      }

      sub_100073058(buf, lastObject3, v29);
      _os_log_impl(&_mh_execute_header, oslog, v80, "Should suppress spinner over %{public}@: %{public}@", buf, 0x16u);

      objc_storeStrong(&v79, 0);
    }

    objc_storeStrong(&oslog, 0);
    if ((v82 & 1) == 0)
    {
      navigator6 = [(BuddyNavigationFlowController *)selfCopy navigator];
      topViewController2 = [(BuddyNavigationFlowNavigator *)navigator6 topViewController];
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController2 identifier:@"BuddyNavigationFlowController"];
    }

    v78 = _BYLoggingFacility();
    v77 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      navigator7 = [(BuddyNavigationFlowController *)selfCopy navigator];
      view = [(BuddyNavigationFlowNavigator *)navigator7 view];
      window = [view window];
      sub_1000A4DC0(v118, "[BuddyNavigationFlowController _presentViewControllerForBuddyController:animated:willPresentViewController:completion:]", window);
      _os_log_debug_impl(&_mh_execute_header, v78, v77, "%s setUserInteractionEnabled NO %p", v118, 0x16u);
    }

    objc_storeStrong(&v78, 0);
    navigator8 = [(BuddyNavigationFlowController *)selfCopy navigator];
    view2 = [(BuddyNavigationFlowNavigator *)navigator8 view];
    window2 = [view2 window];
    [window2 setUserInteractionEnabled:0];

    v73[0] = 0;
    v73[1] = v73;
    v74 = 0x20000000;
    v75 = 32;
    v76 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v70 = 0x20000000;
    v71 = 32;
    v72 = 0;
    v68 = _BYLoggingFacility();
    v67 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      sub_100071CBC(v117, v66);
      _os_log_impl(&_mh_execute_header, v68, v67, "Running hosted view controller creation for %{public}@", v117, 0xCu);
      objc_storeStrong(&v66, 0);
    }

    objc_storeStrong(&v68, 0);
    v65 = dispatch_semaphore_create(0);
    v64 = +[NSDate date];
    v38 = location[0];
    navigator9 = [(BuddyNavigationFlowController *)selfCopy navigator];
    navigationController2 = [(BuddyNavigationFlowNavigator *)navigator9 navigationController];
    v52 = _NSConcreteStackBlock;
    v53 = -1073741824;
    v54 = 0;
    v55 = sub_1000A75CC;
    v56 = &unk_10032BCC8;
    v57 = selfCopy;
    v63[1] = v73;
    v63[2] = v69;
    v58 = v65;
    v59 = location[0];
    v60 = v64;
    v62 = v113;
    v61 = firstResponder;
    v63[0] = v112;
    [v38 presentHostedViewControllerOnNavigationController:navigationController2 completion:&v52];

    if (objc_opt_respondsToSelector())
    {
      v41 = dispatch_get_global_queue(-2, 0);
      block = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_1000A79F4;
      v46 = &unk_10032BD18;
      v47 = v65;
      v48 = location[0];
      v51[1] = v69;
      v49 = selfCopy;
      v51[2] = v73;
      v51[0] = v112;
      v50 = v111;
      dispatch_async(v41, &block);

      objc_storeStrong(&v50, 0);
      objc_storeStrong(v51, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(v63, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v57, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v73, 8);
  }

  else if (v112)
  {
    (*(v112 + 2))(v112, 0);
  }

  objc_storeStrong(&firstResponder, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(location, 0);
}

- (id)_shieldColorForNewTopFlowItemPush
{
  location[2] = self;
  location[1] = a2;
  buddyControllers = [(BuddyNavigationFlowController *)self buddyControllers];
  location[0] = [(NSMutableArray *)buddyControllers lastObject];

  v3 = objc_opt_respondsToSelector();
  hasBlackBackground = 0;
  if (v3)
  {
    hasBlackBackground = [location[0] hasBlackBackground];
  }

  if (hasBlackBackground)
  {
    v8 = +[UIColor blackColor];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v8;

  return v5;
}

- (id)_viewControllerForBuddyController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    viewController = [location[0] viewController];
    v4 = v7;
    v7 = viewController;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7, location[0]);
    }
  }

  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_hideBackButtonIfNecessaryOnFlowItem:(id)item withViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v26 = 0;
  objc_storeStrong(&v26, controller);
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  reverseObjectEnumerator = [(NSMutableArray *)buddyControllers reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v30 count:16];
  if (v7)
  {
    v8 = *__b[2];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      obj = *(__b[1] + 8 * v9);
      v22 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:obj];
      v10 = objc_opt_respondsToSelector();
      isEphemeral = 0;
      if (v10)
      {
        isEphemeral = [obj isEphemeral];
      }

      v21 = isEphemeral & 1;
      v18 = 0;
      v12 = 0;
      if (v22)
      {
        viewControllersToRemoveOnPush = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
        v18 = 1;
        v12 = [viewControllersToRemoveOnPush containsObject:v22];
      }

      if (v18)
      {
      }

      v20 = v12 & 1;
      if (!v22 || (v21 & 1) != 0 || (v20 & 1) != 0)
      {
        v17 = 0;
      }

      else
      {
        objc_storeStrong(&v25, obj);
        v17 = 2;
      }

      objc_storeStrong(&v22, 0);
      if (v17)
      {
        break;
      }

      if (++v9 >= v7)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    sub_100071CBC(buf, v14);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Considering %{public}@ for back button", buf, 0xCu);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v25 && (objc_opt_respondsToSelector() & 1) != 0 && ([v25 controllerAllowsNavigatingBack] & 1) == 0)
  {
    navigationItem = [v26 navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllerFromNavHierarchy:(id)hierarchy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hierarchy);
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];
  v6 = [viewControllers mutableCopy];

  [v6 removeObject:location[0]];
  navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
  [(BuddyNavigationFlowNavigator *)navigator2 setViewControllers:v6 animated:0];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateNavigationBackButtonTitleForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationItem = [location[0] navigationItem];
  [navigationItem setBackButtonDisplayMode:1];

  navigationItem2 = [location[0] navigationItem];
  backButtonTitle = [navigationItem2 backButtonTitle];

  if (backButtonTitle)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v6 = selfCopy;
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers lastObject];
  v9 = [(BuddyNavigationFlowController *)v6 _viewControllerForBuddyController:lastObject];
  v10 = location[0];

  if (v9 != v10 || ((v11 = -[BuddyNavigationFlowController buddyControllers](selfCopy, "buddyControllers"), v19 = -[NSMutableArray lastObject](v11, "lastObject"), v11, (objc_opt_respondsToSelector() & 1) == 0) || ([v19 isEphemeral] & 1) == 0 ? (v18 = 0) : (v18 = 1), objc_storeStrong(&v19, 0), !v18))
  {
    v17 = [(BuddyNavigationFlowController *)selfCopy _titleForViewController:location[0]];
    if (!v17)
    {
      oslog = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        customDescription = [location[0] customDescription];
        sub_10006AE18(buf, customDescription);
        _os_log_error_impl(&_mh_execute_header, oslog, v15, "Unable to determine title for view controller %@", buf, 0xCu);

        objc_storeStrong(&customDescription, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v12 = v17;
    navigationItem3 = [location[0] navigationItem];
    [navigationItem3 setBackButtonTitle:v12];

    objc_storeStrong(&v17, 0);
    goto LABEL_13;
  }

LABEL_14:
  objc_storeStrong(location, 0);
}

- (id)_titleForViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  title = [location[0] title];

  if (title)
  {
    title2 = [location[0] title];
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = location[0];
      headerView = [v8 headerView];
      title2 = [headerView title];

      v9 = 1;
      objc_storeStrong(&v8, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = location[0];
        title2 = [v7 navTitle];
        v9 = 1;
        objc_storeStrong(&v7, 0);
      }

      else
      {
        title2 = 0;
        v9 = 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  v5 = title2;

  return v5;
}

- (id)_flowForFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  memset(__b, 0, sizeof(__b));
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  reverseObjectEnumerator = [(NSMutableArray *)buddyControllers reverseObjectEnumerator];

  v5 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v19 count:16];
  if (v5)
  {
    v6 = *__b[2];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v15 = *(__b[1] + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v15;
        controllers = [v13 controllers];
        v9 = [controllers containsObject:location[0]];

        if (v9)
        {
          v18 = v13;
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        objc_storeStrong(&v13, 0);
        if (v12)
        {
          break;
        }
      }

      if (++v7 >= v5)
      {
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v12 = 0;
  }

  if (!v12)
  {
    v18 = 0;
  }

  objc_storeStrong(location, 0);
  v10 = v18;

  return v10;
}

- (BOOL)_isFlowItemAllowed:(id)allowed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, allowed);
  flowProducer = [(BuddyNavigationFlowController *)selfCopy flowProducer];
  allowedFlowItems = [objc_opt_class() allowedFlowItems];

  LOBYTE(flowProducer) = [allowedFlowItems containsObject:objc_opt_class()];
  objc_storeStrong(&allowedFlowItems, 0);
  objc_storeStrong(location, 0);
  return flowProducer & 1;
}

- (id)_lastNonFlowFlowItemRelativeToFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers lastObject];

  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    firstObject = [(NSMutableArray *)buddyControllers2 firstObject];

    if (lastObject == firstObject)
    {
      objc_storeStrong(&lastObject, 0);
      break;
    }

    buddyControllers3 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    v7 = [(NSMutableArray *)buddyControllers3 indexOfObject:lastObject]- 1;

    buddyControllers4 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    v9 = [(NSMutableArray *)buddyControllers4 objectAtIndex:v7];
    v10 = lastObject;
    lastObject = v9;
  }

  v11 = lastObject;
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)_beginEventForNavigationDuration
{
  v2 = +[NSDate date];
  [(BuddyNavigationFlowController *)self setNavigationStartDate:v2];
}

- (void)_endEventForNavigationDurationFromFlowItem:(id)item toFlowItem:(id)flowItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v15 = 0;
  objc_storeStrong(&v15, flowItem);
  navigationStartDate = [(BuddyNavigationFlowController *)selfCopy navigationStartDate];
  LOBYTE(flowItem) = navigationStartDate == 0;

  if (flowItem)
  {
    objc_exception_throw([NSException exceptionWithName:@"Attempted to add event for navigation duration without navigation start date" reason:0 userInfo:0]);
  }

  v6 = objc_opt_class();
  v14 = NSStringFromClass(v6);
  if (!v14)
  {
    objc_storeStrong(&v14, @"(null)");
  }

  analyticsManager = [(BuddyNavigationFlowController *)selfCopy analyticsManager];
  v18[0] = @"startClass";
  v19[0] = v14;
  v18[1] = @"endClass";
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v19[1] = v9;
  v18[2] = @"duration";
  navigationStartDate2 = [(BuddyNavigationFlowController *)selfCopy navigationStartDate];
  [(NSDate *)navigationStartDate2 timeIntervalSinceNow];
  v12 = [NSNumber numberWithDouble:-v11];
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.navigation.duration" withPayload:v13 persist:1];

  [(BuddyNavigationFlowController *)selfCopy setNavigationStartDate:0];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_resumeNavigationQueue
{
  v2 = [(BuddyNavigationFlowController *)self navigationQueue:a2];
  dispatch_resume(v2);
}

- (void)_setupInitialFlowFromInitialFlowItem:(id)item debutFlowItemClass:(Class)class completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  classCopy = class;
  v49 = 0;
  objc_storeStrong(&v49, completion);
  v48 = objc_alloc_init(NSMutableArray);
  [v48 addObject:location[0]];
  lastObject = [v48 lastObject];
  v47 = objc_opt_class();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = location[0];
    [v46 startFlowWithAllFlowItems];
    controllers = [v46 controllers];
    [v48 addObjectsFromArray:controllers];

    objc_storeStrong(&v46, 0);
  }

  v45 = objc_opt_class() == classCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = classCopy;
  if (v9 != objc_opt_class())
  {
    goto LABEL_9;
  }

  v44 = [(BuddyNavigationFlowController *)selfCopy _createConditionalFlowItemForClass:classCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v48 addObject:v44];
    v43 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:location[0]];
    [(BuddyNavigationFlowController *)selfCopy setBuddyControllers:v48];
    navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
    v55 = v43;
    v11 = [NSArray arrayWithObjects:&v55 count:1];
    [(BuddyNavigationFlowNavigator *)navigator setViewControllers:v11 animated:0];

    [v44 startFlowAnimated:0];
    (*(v49 + 2))();
    v42 = 1;
    objc_storeStrong(&v43, 0);
  }

  else
  {
    v42 = 0;
  }

  objc_storeStrong(&v44, 0);
  if (!v42)
  {
LABEL_9:
    while (!v45)
    {
      flowProducer = [(BuddyNavigationFlowController *)selfCopy flowProducer];
      v41 = [(BuddyFlowProducer *)flowProducer potentialNextFlowItemClassFollowingFlowItemClass:v47];

      if (!v41)
      {
        classCopy = [NSString stringWithFormat:@"failedToFindDebutFlowItem.%@.%@", objc_opt_class(), classCopy];
        classCopy2 = [NSString stringWithFormat:@"Unable to find debut flow item (%@)", classCopy];
        v38 = [NSException exceptionWithName:classCopy2 reason:0 userInfo:0];
        diagnosticsThreadDecorator = [(BYEnvironment *)selfCopy->_environment diagnosticsThreadDecorator];
        [diagnosticsThreadDecorator addDiagnostics:classCopy thenThrowException:v38];

        objc_storeStrong(&v38, 0);
        objc_storeStrong(&classCopy2, 0);
        objc_storeStrong(&classCopy, 0);
      }

      v37 = [(BuddyNavigationFlowController *)selfCopy _createConditionalFlowItemForClass:v41];
      if (v37)
      {
        [v48 addObject:v37];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v37;
          [v33 startFlowWithAllFlowItems];
          v15 = v48;
          controllers2 = [v33 controllers];
          [v15 addObjectsFromArray:controllers2];

          objc_storeStrong(&v33, 0);
        }

        v47 = v41;
        v45 = v41 == classCopy;
        v42 = 0;
      }

      else
      {
        if (classCopy == v41)
        {
          classCopy3 = [NSString stringWithFormat:@"debutFlowItemCreationFailed.%@.%@", objc_opt_class(), classCopy];
          classCopy4 = [NSString stringWithFormat:@"Debut flow item (%@) could not be created", classCopy];
          v34 = [NSException exceptionWithName:classCopy4 reason:0 userInfo:0];
          diagnosticsThreadDecorator2 = [(BYEnvironment *)selfCopy->_environment diagnosticsThreadDecorator];
          [diagnosticsThreadDecorator2 addDiagnostics:classCopy3 thenThrowException:v34];

          objc_storeStrong(&v34, 0);
          objc_storeStrong(&classCopy4, 0);
          objc_storeStrong(&classCopy3, 0);
        }

        v47 = v41;
        v42 = 2;
      }

      objc_storeStrong(&v37, 0);
    }

    v32 = objc_alloc_init(NSMutableArray);
    memset(__b, 0, sizeof(__b));
    v17 = v48;
    v18 = [v17 countByEnumeratingWithState:__b objects:v54 count:16];
    if (v18)
    {
      v19 = *__b[2];
      do
      {
        for (i = 0; i < v18; ++i)
        {
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(v17);
          }

          v31 = *(__b[1] + 8 * i);
          buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
          [(NSMutableArray *)buddyControllers addObject:v31];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:v31];
            if (v29)
            {
              [v32 addObject:v29];
            }

            else
            {
              v22 = objc_opt_class();
              v28 = [NSString stringWithFormat:@"noViewControllerForDebut.%@.%@.%@", v22, classCopy, objc_opt_class()];
              v27 = [NSString stringWithFormat:@"No view controller found for flow item (%@) while making our debut", v31];
              v26 = [NSException exceptionWithName:v27 reason:0 userInfo:0];
              diagnosticsThreadDecorator3 = [(BYEnvironment *)selfCopy->_environment diagnosticsThreadDecorator];
              [diagnosticsThreadDecorator3 addDiagnostics:v28 thenThrowException:v26];

              objc_storeStrong(&v26, 0);
              objc_storeStrong(&v27, 0);
              objc_storeStrong(&v28, 0);
            }

            objc_storeStrong(&v29, 0);
          }
        }

        v18 = [v17 countByEnumeratingWithState:__b objects:v54 count:16];
      }

      while (v18);
    }

    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, classCopy, v48);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Making debut to %@ with the flow items: %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyNavigationFlowController *)selfCopy setBuddyControllers:v48];
    navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
    [(BuddyNavigationFlowNavigator *)navigator2 setViewControllers:v32 animated:0];

    if (v49)
    {
      (*(v49 + 2))();
    }

    objc_storeStrong(&v32, 0);
    v42 = 0;
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

- (void)_insertWiFiControllerAsFirstPane
{
  selfCopy = self;
  location[1] = a2;
  navigator = [(BuddyNavigationFlowController *)self navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];
  location[0] = [viewControllers mutableCopy];

  wifiController = [(BuddyNavigationFlowController *)selfCopy wifiController];
  viewController = [(BuddyWiFiController *)wifiController viewController];
  [location[0] insertObject:viewController atIndex:0];

  wifiController2 = [(BuddyNavigationFlowController *)selfCopy wifiController];
  [(BuddyWiFiController *)wifiController2 updateNextButton];

  wifiController3 = [(BuddyNavigationFlowController *)selfCopy wifiController];
  navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
  navigationController = [(BuddyNavigationFlowNavigator *)navigator2 navigationController];
  [(BuddyWiFiController *)wifiController3 setNavigationController:navigationController];

  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  wifiController4 = [(BuddyNavigationFlowController *)selfCopy wifiController];
  [(NSMutableArray *)buddyControllers insertObject:wifiController4 atIndex:0];

  navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
  [(BuddyNavigationFlowNavigator *)navigator3 setViewControllers:location[0] animated:0];

  objc_storeStrong(location, 0);
}

- (BOOL)_hasWiFiControllerInNavigationStack
{
  selfCopy = self;
  __b[9] = a2;
  memset(__b, 0, 0x40uLL);
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:__b objects:v12 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        __b[8] = *(__b[1] + 8 * i);
        sub_1000A9C6C();
        if (objc_opt_isKindOfClass())
        {
          v11 = 1;
          v8 = 1;
          goto LABEL_11;
        }
      }

      v4 = [viewControllers countByEnumeratingWithState:__b objects:v12 count:16];
    }

    while (v4);
  }

  v8 = 0;
LABEL_11:

  if (!v8)
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)restartFlow
{
  selfCopy = self;
  v45 = a2;
  flowDelegate = [(BuddyNavigationFlowController *)self flowDelegate];
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];
  firstObject = [viewControllers firstObject];
  v6 = [(BuddyFlowDelegate *)flowDelegate willRestartFlowToViewController:firstObject]& 1;

  if (v6)
  {
    memset(__b, 0, sizeof(__b));
    buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    v8 = [(NSMutableArray *)buddyControllers countByEnumeratingWithState:__b objects:v59 count:16];
    if (v8)
    {
      v9 = *__b[2];
      do
      {
        for (i = 0; i < v8; ++i)
        {
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(buddyControllers);
          }

          v44 = *(__b[1] + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v44 startOver];
          }
        }

        v8 = [(NSMutableArray *)buddyControllers countByEnumeratingWithState:__b objects:v59 count:16];
      }

      while (v8);
    }

    navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
    presentedViewController = [(BuddyNavigationFlowNavigator *)navigator2 presentedViewController];

    if (presentedViewController)
    {
      navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
      [(BuddyNavigationFlowNavigator *)navigator3 dismissViewControllerAnimated:0 completion:0];
    }

    else
    {
      navigator4 = [(BuddyNavigationFlowController *)selfCopy navigator];
      viewControllers2 = [(BuddyNavigationFlowNavigator *)navigator4 viewControllers];
      v16 = [viewControllers2 count];

      if (v16 > 1)
      {
        buddyPreferences = [(BuddyNavigationFlowController *)selfCopy buddyPreferences];
        [(BYPreferencesController *)buddyPreferences reset];
      }
    }

    navigator5 = [(BuddyNavigationFlowController *)selfCopy navigator];
    v19 = [(BuddyNavigationFlowNavigator *)navigator5 popToRootViewControllerAnimated:1];

    buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    v42 = [(NSMutableArray *)buddyControllers2 objectAtIndexedSubscript:0];

    [v42 setDelegate:selfCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      buddyControllers3 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      v41 = [(NSMutableArray *)buddyControllers3 objectAtIndexedSubscript:0];

      buddyControllers4 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      location = [(NSMutableArray *)buddyControllers4 objectAtIndexedSubscript:1];

      controllers = [v41 controllers];
      v24 = [controllers containsObject:location];

      if (v24)
      {
        [location setDelegate:v41];
        buddyControllers5 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        buddyControllers6 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        v56 = 0;
        v55 = 2;
        v57 = 0;
        v58 = 2;
        oslog[2] = 2;
        oslog[1] = 0;
        v27 = [(NSMutableArray *)buddyControllers6 subarrayWithRange:0, 2];
        [(NSMutableArray *)buddyControllers5 setArray:v27];
      }

      else
      {
        oslog[0] = _BYLoggingFacility();
        v38 = 17;
        if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
        {
          v28 = oslog[0];
          v29 = v38;
          sub_10006AA68(buf);
          _os_log_fault_impl(&_mh_execute_header, v28, v29, "Second controller in controllers array is not a flow item belonging to a flow", buf, 2u);
        }

        objc_storeStrong(oslog, 0);
        buddyControllers7 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        buddyControllers8 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        v52 = 0;
        v51 = 1;
        v53 = 0;
        v54 = 1;
        v32 = [(NSMutableArray *)buddyControllers8 subarrayWithRange:0, 1];
        [(NSMutableArray *)buddyControllers7 setArray:v32];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v41, 0);
    }

    else
    {
      buddyControllers9 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      buddyControllers10 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      v48 = 0;
      v47 = 1;
      v49 = 0;
      v50 = 1;
      v35 = [(NSMutableArray *)buddyControllers10 subarrayWithRange:0, 1, 0, 1];
      [(NSMutableArray *)buddyControllers9 setArray:v35];
    }

    flowDelegate2 = [(BuddyNavigationFlowController *)selfCopy flowDelegate];
    [(BuddyFlowDelegate *)flowDelegate2 didRestartFlow];

    objc_storeStrong(&v42, 0);
  }
}

- (BOOL)_stackHasOnlyCloudConfigurationItems
{
  selfCopy = self;
  location[1] = a2;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v14[6] = objc_opt_class();
  location[0] = [NSArray arrayWithObjects:v14 count:7];
  memset(__b, 0, 0x40uLL);
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:__b objects:v13 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        __b[8] = *(__b[1] + 8 * i);
        if (([location[0] containsObject:objc_opt_class()] & 1) == 0)
        {
          v12 = 0;
          v8 = 1;
          goto LABEL_11;
        }
      }

      v4 = [viewControllers countByEnumeratingWithState:__b objects:v13 count:16];
    }

    while (v4);
  }

  v8 = 0;
LABEL_11:

  if (!v8)
  {
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (BOOL)controllerNeedsToRunForClass:(Class)class
{
  flowStarter = [(BuddyNavigationFlowController *)self flowStarter];
  v4 = [(BFFFlowStarter *)flowStarter controllerNeedsToRunForClass:class];

  return v4 & 1;
}

- (void)markFlowItemDone:(id)done
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Into the pit you shall fall: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = location[0];
  v4 = +[BuddyNavigationPit shared];
  [v3 setDelegate:v4];

  objc_storeStrong(location, 0);
}

- (void)_unmarkFlowItemAsFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v6, "Rise again chosen flowItem: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyNavigationFlowController *)selfCopy _flowForFlowItem:location[0]];
  if (v5)
  {
    delegate = [v5 delegate];
    v4 = +[BuddyNavigationPit shared];

    if (delegate == v4)
    {
      [(BuddyNavigationFlowController *)selfCopy _unmarkFlowItemAsFinished:v5];
    }

    [location[0] setDelegate:{v5, v5}];
  }

  else
  {
    [location[0] setDelegate:selfCopy];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isFlowItemOnTop:(id)top
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, top);
  buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  lastObject = [(NSMutableArray *)buddyControllers lastObject];
  v5 = lastObject == location[0];

  objc_storeStrong(location, 0);
  return v5;
}

- (void)pushFlowItem:(id)item animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  [(BuddyNavigationFlowController *)selfCopy pushFlowItem:location[0] inFlow:0 animated:1];
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v7 = 0;
  objc_storeStrong(&v7, flow);
  [(BuddyNavigationFlowController *)selfCopy pushFlowItem:location[0] inFlow:v7 withExtendedInitialization:1 animated:animated];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v9 = 0;
  objc_storeStrong(&v9, flow);
  [(BuddyNavigationFlowController *)selfCopy pushFlowItem:location[0] inFlow:v9 withExtendedInitialization:initialization animated:animated willPushFlowItem:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v14 = 0;
  objc_storeStrong(&v14, flow);
  initializationCopy = initialization;
  animatedCopy = animated;
  v11 = 0;
  objc_storeStrong(&v11, flowItem);
  [(BuddyNavigationFlowController *)selfCopy _pushFlowItem:location[0] inFlow:v14 withExtendedInitialization:initializationCopy animated:animatedCopy willPushFlowItem:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllersOnNextPush:(id)push
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, push);
  viewControllersToRemoveOnPush = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
  v4 = [(NSArray *)viewControllersToRemoveOnPush count];

  if (v4)
  {
    viewControllersToRemoveOnPush2 = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
    v6 = [(NSArray *)viewControllersToRemoveOnPush2 arrayByAddingObjectsFromArray:location[0]];
    [(BuddyNavigationFlowController *)selfCopy setViewControllersToRemoveOnPush:v6];
  }

  else
  {
    [(BuddyNavigationFlowController *)selfCopy setViewControllersToRemoveOnPush:location[0]];
  }

  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  topViewController = [(BuddyNavigationFlowNavigator *)navigator topViewController];
  [(BuddyNavigationFlowController *)selfCopy setTopViewControllerForRemoving:topViewController];

  objc_storeStrong(location, 0);
}

- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated
{
  selfCopy = self;
  v47 = a2;
  classCopy = class;
  offsetCopy = offset;
  animatedCopy = animated;
  v37 = _NSConcreteStackBlock;
  v38 = -1073741824;
  v39 = 0;
  v40 = sub_1000AB1BC;
  v41 = &unk_10032BD40;
  selfCopy2 = self;
  v43 = objc_retainBlock(&v37);
  if (offsetCopy || ([(objc_class *)classCopy isEqual:objc_opt_class()]& 1) == 0 || (v5 = v43, v6 = objc_opt_class(), (v36 = v5[2](v5, v6) & 1) != 0))
  {
    if (offsetCopy || ([(objc_class *)classCopy isEqual:objc_opt_class()]& 1) == 0 || ((v8 = v43, v9 = objc_opt_class(), v27 = v8[2](v8, v9) & 1, v20 = _NSConcreteStackBlock, v21 = -1073741824, v22 = 0, v23 = sub_1000AB444, v24 = &unk_10032B0D0, v25 = selfCopy, location = objc_retainBlock(&v20), (v27 & 1) != 0) ? ((*(location + 2))(), v28 = 0) : (v10 = selfCopy, v13 = _NSConcreteStackBlock, v14 = 3221225472, v15 = sub_1000AB4DC, v16 = &unk_10032BD90, v18[0] = location, v17 = selfCopy, v18[1] = classCopy, v18[2] = offsetCopy, v19 = animatedCopy, v49 = [(BuddyNavigationFlowController *)v10 _ensureDeviceProximitySetupControllerWithCompletion:&v13], objc_storeStrong(&v17, 0), objc_storeStrong(v18, 0), v28 = 1), objc_storeStrong(&location, 0), objc_storeStrong(&v25, 0), !v28))
    {
      v49 = [(BuddyNavigationFlowController *)selfCopy _popToBuddyControllerWithClass:classCopy withOffset:offsetCopy animated:animatedCopy, v13, v14, v15, v16];
      v28 = 1;
    }
  }

  else
  {
    v7 = selfCopy;
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_1000AB3F0;
    v33 = &unk_10032BD68;
    v34[0] = selfCopy;
    v34[1] = classCopy;
    v34[2] = offsetCopy;
    v35 = animatedCopy;
    v49 = [(BuddyNavigationFlowController *)v7 _ensureDeviceRestoreChoiceControllerWithCompletion:&v29];
    objc_storeStrong(v34, 0);
    v28 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&selfCopy2, 0);
  v11 = v49;

  return v11;
}

- (id)_popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated
{
  selfCopy = self;
  v18 = a2;
  classCopy = class;
  offsetCopy = offset;
  animatedCopy = animated;
  navigator = [(BuddyNavigationFlowController *)self navigator];
  viewControllers = [(BuddyNavigationFlowNavigator *)navigator viewControllers];

  for (i = [viewControllers count] - 1; (i & 0x8000000000000000) == 0; --i)
  {
    v12 = [viewControllers objectAtIndexedSubscript:i];
    if (objc_opt_isKindOfClass())
    {
      location = [viewControllers objectAtIndexedSubscript:i + offsetCopy];
      navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
      v7 = [(BuddyNavigationFlowNavigator *)navigator2 popToViewController:location animated:animatedCopy];

      v20 = location;
      v10 = 1;
      objc_storeStrong(&location, 0);
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&v12, 0);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  objc_storeStrong(&viewControllers, 0);
  v8 = v20;

  return v8;
}

- (id)_ensureDeviceRestoreChoiceControllerWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (!selfCopy->_weakViewControllersPrecedingDeviceRestoreChoiceController || !selfCopy->_weakBuddyControllersPrecedingDeviceRestoreChoiceController)
  {
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v24 = +[NSThread callStackSymbols];
      sub_10006AE18(buf, v24);
      _os_log_error_impl(&_mh_execute_header, v26, v25, "Cannot insert DeviceRestoreChoiceController. Call stack: %@", buf, 0xCu);

      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
    abort();
  }

  oslog = _BYLoggingFacility();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v22;
    sub_10006AA68(v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "Will insert DeviceRestoreChoiceController", v21, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v20 = [(BuddyNavigationFlowController *)selfCopy _createFlowItemForClass:objc_opt_class()];
  [v20 setDelegate:selfCopy];
  v5 = selfCopy;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000AB9D4;
  v18 = &unk_10032BDB8;
  v19 = selfCopy;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000ABBCC;
  v12 = &unk_10032BDB8;
  v13 = selfCopy;
  [(BuddyNavigationFlowController *)v5 _ensureControllerExistsWithTarget:v20 viewControllerInsertionIndexGenerator:&v14 buddyControllerInsertionIndexGenerator:&v8 withCompletion:location[0]];
  v6 = v20;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)_ensureDeviceProximitySetupControllerWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v23 = _BYLoggingFacility();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v23;
    v4 = v22;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Will insert ProximitySetupController", buf, 2u);
  }

  objc_storeStrong(&v23, 0);
  v20 = [(BuddyNavigationFlowController *)selfCopy _createFlowItemForClass:objc_opt_class()];
  v5 = selfCopy;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000ABF90;
  v18 = &unk_10032BDB8;
  v19 = selfCopy;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000AC0AC;
  v12 = &unk_10032BDB8;
  v13 = selfCopy;
  [(BuddyNavigationFlowController *)v5 _ensureControllerExistsWithTarget:v20 viewControllerInsertionIndexGenerator:&v14 buddyControllerInsertionIndexGenerator:&v8 withCompletion:location[0]];
  v6 = v20;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_ensureControllerExistsWithTarget:(id)target viewControllerInsertionIndexGenerator:(id)generator buddyControllerInsertionIndexGenerator:(id)indexGenerator withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  v31 = 0;
  objc_storeStrong(&v31, generator);
  v30 = 0;
  objc_storeStrong(&v30, indexGenerator);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  [location[0] setDelegate:selfCopy];
  v28 = objc_retainBlock(&stru_10032BE78);
  v9 = selfCopy;
  v10 = location[0];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_1000AC604;
  v26 = &unk_10032B0D0;
  v27 = selfCopy;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000AC630;
  v15 = &unk_10032BEA0;
  v16 = selfCopy;
  v17 = location[0];
  v18 = v31;
  v19 = v28;
  v20 = v30;
  v21 = v29;
  [(BuddyNavigationFlowController *)v9 _performExtendedInitializationForFlowItem:v10 willBegin:&v22 withCompletion:&v11];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)flow:(id)flow finishedWithLastItem:(id)item nextItem:(id)nextItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  v9 = 0;
  objc_storeStrong(&v9, item);
  v8 = 0;
  objc_storeStrong(&v8, nextItem);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Flow finished: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyNavigationFlowController *)selfCopy _flowItemDone:v9 flow:location[0] nextItemClass:0 nextItem:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)presentWiFiPaneForFlow:(id)flow
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, flow);
  flowDelegate = [(BuddyNavigationFlowController *)selfCopy flowDelegate];
  [(BuddyFlowDelegate *)flowDelegate presentWiFiSettingsModally];

  objc_storeStrong(location, 0);
}

- (void)flowItemCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Cancelling flow item %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyNavigationFlowController *)selfCopy markFlowItemDone:location[0]];
  navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
  presentedViewController = [(BuddyNavigationFlowNavigator *)navigator presentedViewController];

  if (presentedViewController)
  {
    navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000ACC34;
    v10 = &unk_10032B0D0;
    v11 = selfCopy;
    [(BuddyNavigationFlowNavigator *)navigator2 dismissViewControllerAnimated:1 completion:&v6];

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  [(BuddyNavigationFlowController *)selfCopy _flowItemDone:location[0] flow:0 nextItemClass:0 nextItem:0];
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v5 = 0;
  objc_storeStrong(&v5, item);
  [(BuddyNavigationFlowController *)selfCopy _flowItemDone:location[0] flow:0 nextItemClass:0 nextItem:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  [(BuddyNavigationFlowController *)selfCopy _flowItemDone:location[0] flow:0 nextItemClass:class nextItem:0, class];
  objc_storeStrong(location, 0);
}

- (void)presentWiFiPaneForFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = selfCopy;
  sub_1000A9C6C();
  v4 = [(BuddyNavigationFlowController *)v3 popToBuddyControllerWithClass:objc_opt_class() animated:1];

  if (!v4)
  {
    [(BuddyNavigationFlowController *)selfCopy _insertWiFiControllerAsFirstPane];
    v5 = selfCopy;
    sub_1000A9C6C();
    v6 = [(BuddyNavigationFlowController *)v5 popToBuddyControllerWithClass:objc_opt_class() animated:1];
  }

  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v40 = 0;
  objc_storeStrong(&v40, viewController);
  operationCopy = operation;
  animatedCopy = animated;
  if (operation == 1)
  {
    oslog = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      customDescription = [v40 customDescription];
      sub_100071CBC(buf, customDescription);
      _os_log_impl(&_mh_execute_header, oslog, v36, "Pushing to %{public}@", buf, 0xCu);

      objc_storeStrong(&customDescription, 0);
    }

    objc_storeStrong(&oslog, 0);
    v34 = _BYLoggingFacility();
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
      view = [(BuddyNavigationFlowNavigator *)navigator view];
      window = [view window];
      sub_1000A4DC0(v45, "[BuddyNavigationFlowController navigationController:willShowViewController:operation:animated:]", window);
      _os_log_debug_impl(&_mh_execute_header, v34, v33, "%s setUserInteractionEnabled NO %p", v45, 0x16u);
    }

    objc_storeStrong(&v34, 0);
    navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
    navigationController = [(BuddyNavigationFlowNavigator *)navigator2 navigationController];
    view2 = [(BFFNavigationController *)navigationController view];
    [view2 setUserInteractionEnabled:0];
  }

  else if (operationCopy == 2)
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      customDescription2 = [v40 customDescription];
      sub_100071CBC(v44, customDescription2);
      _os_log_impl(&_mh_execute_header, v32, v31, "Popping to %{public}@", v44, 0xCu);

      objc_storeStrong(&customDescription2, 0);
    }

    objc_storeStrong(&v32, 0);
    if ([location[0] _builtinTransitionStyle] == 1)
    {
      navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
      navigationController2 = [(BuddyNavigationFlowNavigator *)navigator3 navigationController];
      view3 = [(BFFNavigationController *)navigationController2 view];
      [view3 setUserInteractionEnabled:0];
    }

    lastUIResponder = [(BuddyNavigationFlowController *)selfCopy lastUIResponder];

    if (lastUIResponder)
    {
      v19 = v40;
      lastUIResponder2 = [(BuddyNavigationFlowController *)selfCopy lastUIResponder];
      LOBYTE(v19) = [v19 _containsResponder:lastUIResponder2];

      if (v19)
      {
        v29 = _BYLoggingFacility();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v29;
          v22 = v28;
          sub_10006AA68(v27);
          _os_log_impl(&_mh_execute_header, v21, v22, "Restoring first responder", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        lastUIResponder3 = [(BuddyNavigationFlowController *)selfCopy lastUIResponder];
        [(UIResponder *)lastUIResponder3 becomeFirstResponder];
      }
    }
  }

  else
  {
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      customDescription3 = [v40 customDescription];
      sub_1000A57DC(v43, customDescription3, operationCopy);
      _os_log_impl(&_mh_execute_header, v26, v25, "Moving to %{public}@ via operation %i", v43, 0x12u);

      objc_storeStrong(&customDescription3, 0);
    }

    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v208 = 0;
  objc_storeStrong(&v208, viewController);
  operationCopy = operation;
  animatedCopy = animated;
  wifiController = [(BuddyNavigationFlowController *)selfCopy wifiController];
  v203 = 0;
  v201 = 0;
  v199 = 0;
  v197 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0;
  v10 = 0;
  if (wifiController)
  {
    wifiController2 = [(BuddyNavigationFlowController *)selfCopy wifiController];
    v203 = 1;
    v10 = 0;
    if (objc_opt_respondsToSelector())
    {
      navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
      v201 = 1;
      topViewController = [(BuddyNavigationFlowNavigator *)navigator topViewController];
      v199 = 1;
      wifiController3 = [(BuddyNavigationFlowController *)selfCopy wifiController];
      v197 = 1;
      viewController = [(BuddyWiFiController *)wifiController3 viewController];
      v195 = 1;
      v10 = 0;
      if (topViewController == viewController)
      {
        navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
        v193 = 1;
        presentedViewController = [(BuddyNavigationFlowNavigator *)navigator2 presentedViewController];
        v191 = 1;
        v10 = presentedViewController == 0;
      }
    }
  }

  if (v191)
  {
  }

  if (v193)
  {
  }

  if (v195)
  {
  }

  if (v197)
  {
  }

  if (v199)
  {
  }

  if (v201)
  {
  }

  if (v203)
  {
  }

  v205 = v10;
  if ([(BuddyNavigationFlowController *)selfCopy _hasWiFiControllerInNavigationStack]&& ![(BuddyNavigationFlowController *)selfCopy didInsertWiFiPaneForCloudConfigurationFlow]&& !v205)
  {
    flowDelegate = [(BuddyNavigationFlowController *)selfCopy flowDelegate];
    [(BuddyFlowDelegate *)flowDelegate disableTapFreeSetUp];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v190 = _BYLoggingFacility();
    v189 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      pageID = [v208 pageID];
      navTitle = [v208 navTitle];
      sub_1000AF00C(buf, pageID, navTitle, v208, operationCopy);
      _os_log_impl(&_mh_execute_header, v190, v189, "Setup showing RUIPage %{public}@ %@ (%p) via operation %i", buf, 0x26u);

      objc_storeStrong(&navTitle, 0);
      objc_storeStrong(&pageID, 0);
    }

    objc_storeStrong(&v190, 0);
  }

  else
  {
    v186 = _BYLoggingFacility();
    v185 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
    {
      customDescription = [v208 customDescription];
      sub_1000AF044(v219, customDescription, v208, operationCopy);
      _os_log_impl(&_mh_execute_header, v186, v185, "Setup showing controller %{public}@ (%p) via operation %i", v219, 0x1Cu);

      objc_storeStrong(&customDescription, 0);
    }

    objc_storeStrong(&v186, 0);
  }

  [(BuddyNavigationFlowController *)selfCopy _updateNavigationBackButtonTitleForViewController:v208];
  v183 = 0x7FFFFFFFFFFFFFFFLL;
  for (i = 0; ; ++i)
  {
    v12 = i;
    if (v12 >= [(NSMutableArray *)selfCopy->_buddyControllers count])
    {
      break;
    }

    v181 = [(NSMutableArray *)selfCopy->_buddyControllers objectAtIndexedSubscript:i];
    v180 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:v181];
    if (v208 == v180)
    {
      v183 = i;
      v179 = 2;
    }

    else
    {
      v179 = 0;
    }

    objc_storeStrong(&v180, 0);
    objc_storeStrong(&v181, 0);
    if (v179)
    {
      break;
    }
  }

  if (v183 == 0x7FFFFFFFFFFFFFFFLL)
  {
    for (j = 0; ; ++j)
    {
      v13 = j;
      if (v13 >= [(NSMutableArray *)selfCopy->_buddyControllers count])
      {
        break;
      }

      v177 = [(NSMutableArray *)selfCopy->_buddyControllers objectAtIndexedSubscript:j];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v177 responsibleForViewController:v208])
      {
        v183 = j;
        v176 = _BYLoggingFacility();
        v175 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v176;
          v15 = v175;
          v16 = v177;
          customDescription2 = [v208 customDescription];
          v174 = customDescription2;
          sub_1000AF070(v218, v16, customDescription2, v208);
          _os_log_impl(&_mh_execute_header, v14, v15, "%@ claimed responsibility for %{public}@ (%p)", v218, 0x20u);

          objc_storeStrong(&v174, 0);
        }

        objc_storeStrong(&v176, 0);
        v179 = 5;
      }

      else
      {
        v179 = 0;
      }

      objc_storeStrong(&v177, 0);
      if (v179)
      {
        if (v179 == 5)
        {
          break;
        }

LABEL_184:
        __break(1u);
        return;
      }
    }
  }

  if (operationCopy == 2)
  {
    if (v183 == 0x7FFFFFFFFFFFFFFFLL)
    {
      buddyControllers = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      v19 = [(NSMutableArray *)buddyControllers count]- 1;

      for (k = v19; (k & 0x8000000000000000) == 0; --k)
      {
        buddyControllers2 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        v172 = [(NSMutableArray *)buddyControllers2 objectAtIndexedSubscript:k];

        v171 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:v172];
        navigator3 = [(BuddyNavigationFlowController *)selfCopy navigator];
        viewControllers = [(BuddyNavigationFlowNavigator *)navigator3 viewControllers];
        v23 = [viewControllers containsObject:v171] ^ 1;

        if (v23)
        {
          if (objc_opt_respondsToSelector())
          {
            [v172 controllerWasPopped];
          }

          buddyControllers3 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
          [(NSMutableArray *)buddyControllers3 removeObjectAtIndex:k];

          v179 = 0;
        }

        else
        {
          v179 = 8;
        }

        objc_storeStrong(&v171, 0);
        objc_storeStrong(&v172, 0);
        if (v179)
        {
          if (v179 == 8)
          {
            break;
          }

          goto LABEL_184;
        }
      }
    }

    else
    {
      buddyControllers4 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      v26 = [(NSMutableArray *)buddyControllers4 count]- 1;

      for (m = v26; m > v183; --m)
      {
        buddyControllers5 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        lastObject = [(NSMutableArray *)buddyControllers5 lastObject];

        if (objc_opt_respondsToSelector())
        {
          [lastObject controllerWasPopped];
        }

        buddyControllers6 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        [(NSMutableArray *)buddyControllers6 removeLastObject];

        objc_storeStrong(&lastObject, 0);
      }
    }
  }

  if (operationCopy == 1)
  {
    navigator4 = [(BuddyNavigationFlowController *)selfCopy navigator];
    viewControllers2 = [(BuddyNavigationFlowNavigator *)navigator4 viewControllers];
    v168 = [viewControllers2 mutableCopy];

    v167 = objc_opt_new();
    viewControllersToRemoveOnPush = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
    v165 = 0;
    v163 = 0;
    v161 = 0;
    v32 = 0;
    if ([(NSArray *)viewControllersToRemoveOnPush count])
    {
      navigator5 = [(BuddyNavigationFlowController *)selfCopy navigator];
      v165 = 1;
      viewControllers3 = [(BuddyNavigationFlowNavigator *)navigator5 viewControllers];
      v163 = 1;
      topViewControllerForRemoving = [(BuddyNavigationFlowController *)selfCopy topViewControllerForRemoving];
      v161 = 1;
      v32 = [viewControllers3 containsObject:?];
    }

    if (v161)
    {
    }

    if (v163)
    {
    }

    if (v165)
    {
    }

    if (v32)
    {
      viewControllersToRemoveOnPush2 = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
      navigator6 = [(BuddyNavigationFlowController *)selfCopy navigator];
      topViewController2 = [(BuddyNavigationFlowNavigator *)navigator6 topViewController];
      v36 = [(NSArray *)viewControllersToRemoveOnPush2 containsObject:topViewController2];

      v160 = v36 & 1;
      v159 = 0;
      navigator7 = [(BuddyNavigationFlowController *)selfCopy navigator];
      presentedViewController2 = [(BuddyNavigationFlowNavigator *)navigator7 presentedViewController];
      objc_opt_class();
      LOBYTE(topViewController2) = objc_opt_isKindOfClass();

      if (topViewController2)
      {
        navigator8 = [(BuddyNavigationFlowController *)selfCopy navigator];
        presentedViewController3 = [(BuddyNavigationFlowNavigator *)navigator8 presentedViewController];

        viewControllers4 = [presentedViewController3 viewControllers];
        firstObject = [viewControllers4 firstObject];
        v42 = selfCopy;
        buddyControllers7 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        lastObject2 = [(NSMutableArray *)buddyControllers7 lastObject];
        v45 = [(BuddyNavigationFlowController *)v42 _viewControllerForBuddyController:lastObject2];
        v159 = firstObject == v45;

        objc_storeStrong(&presentedViewController3, 0);
      }

      if ((v160 & 1) == 0 || v159)
      {
        v46 = v167;
        viewControllersToRemoveOnPush3 = [(BuddyNavigationFlowController *)selfCopy viewControllersToRemoveOnPush];
        [v46 addObjectsFromArray:viewControllersToRemoveOnPush3];

        [(BuddyNavigationFlowController *)selfCopy setViewControllersToRemoveOnPush:0];
      }
    }

    else
    {
      [(BuddyNavigationFlowController *)selfCopy setViewControllersToRemoveOnPush:0];
      [(BuddyNavigationFlowController *)selfCopy setTopViewControllerForRemoving:0];
    }

    memset(__b, 0, sizeof(__b));
    v48 = v168;
    v49 = [v48 countByEnumeratingWithState:__b objects:v217 count:16];
    if (v49)
    {
      v50 = *__b[2];
      do
      {
        for (n = 0; n < v49; ++n)
        {
          if (*__b[2] != v50)
          {
            objc_enumerationMutation(v48);
          }

          v157 = *(__b[1] + 8 * n);
          v52 = objc_opt_respondsToSelector();
          isEphemeral = 0;
          if (v52)
          {
            isEphemeral = [v157 isEphemeral];
          }

          v155 = isEphemeral & 1;
          v153 = 0;
          v54 = 0;
          if (isEphemeral)
          {
            v54 = 0;
            if (v157 != v208)
            {
              v55 = v157;
              lastObject3 = [v168 lastObject];
              v153 = 1;
              v56 = v55 == lastObject3;
              v54 = 0;
              if (!v56)
              {
                v54 = [v168 containsObject:v157];
              }
            }
          }

          if (v153)
          {
          }

          if (v54)
          {
            [v167 addObject:v157];
          }
        }

        v49 = [v48 countByEnumeratingWithState:__b objects:v217 count:16];
      }

      while (v49);
    }

    if ([v167 count])
    {
      v152 = [v168 mutableCopy];
      [v152 removeObjectsInArray:v167];
      buddyControllers8 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      v58 = [(NSMutableArray *)buddyControllers8 count]- 1;

      for (ii = v58; (ii & 0x8000000000000000) == 0; --ii)
      {
        buddyControllers9 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
        v150 = [(NSMutableArray *)buddyControllers9 objectAtIndexedSubscript:ii];

        v149 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:v150];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v61 = 1;
        if ((isKindOfClass & 1) == 0)
        {
          v61 = [v167 containsObject:v149];
        }

        v148 = v61 & 1;
        [(BuddyNavigationFlowController *)selfCopy _unmarkFlowItemAsFinished:v150];
        if (v148)
        {
          v147 = 1;
          if (objc_opt_respondsToSelector())
          {
            memset(v145, 0, sizeof(v145));
            v62 = v152;
            v63 = [v62 countByEnumeratingWithState:v145 objects:v216 count:16];
            if (v63)
            {
              v64 = *v145[2];
              do
              {
                for (jj = 0; jj < v63; ++jj)
                {
                  if (*v145[2] != v64)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v146 = *(v145[1] + 8 * jj);
                  if ([v150 responsibleForViewController:v146])
                  {
                    v147 = 0;
                    v179 = 19;
                    goto LABEL_120;
                  }
                }

                v63 = [v62 countByEnumeratingWithState:v145 objects:v216 count:16];
              }

              while (v63);
            }

            v179 = 0;
LABEL_120:

            if (v179)
            {
              if (v179 != 19)
              {
                goto LABEL_184;
              }
            }
          }

          if (v147)
          {
            v144 = _BYLoggingFacility();
            v143 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v144;
              buddyControllers10 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
              v68 = [(NSMutableArray *)buddyControllers10 objectAtIndexedSubscript:ii];
              sub_10006AE18(v215, v68);
              _os_log_impl(&_mh_execute_header, v66, v143, "Removing %@ from the controllers list; it is not responsible for any existing view controllers", v215, 0xCu);
            }

            objc_storeStrong(&v144, 0);
            buddyControllers11 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
            [(NSMutableArray *)buddyControllers11 removeObjectAtIndex:ii];
          }
        }

        objc_storeStrong(&v149, 0);
        objc_storeStrong(&v150, 0);
      }

      navigator9 = [(BuddyNavigationFlowController *)selfCopy navigator];
      [(BuddyNavigationFlowNavigator *)navigator9 setViewControllers:v152 animated:0];

      objc_storeStrong(&v152, 0);
    }

    v71 = v208;
    v72 = selfCopy;
    buddyControllers12 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    lastObject4 = [(NSMutableArray *)buddyControllers12 lastObject];
    v75 = [(BuddyNavigationFlowController *)v72 _viewControllerForBuddyController:lastObject4];

    if (v71 == v75)
    {
      buddyControllers13 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject5 = [(NSMutableArray *)buddyControllers13 lastObject];

      if ((objc_opt_respondsToSelector() & 1) != 0 && [lastObject5 allowedTerminationSources])
      {
        v141 = ([lastObject5 allowedTerminationSources] & 1) == 1;
        lifecycleDelegate = [(BuddyNavigationFlowController *)selfCopy lifecycleDelegate];
        [(BuddyLifecycleDelegate *)lifecycleDelegate willEndLifecycleDueToCause:1 allowDismissal:v141];
      }

      objc_storeStrong(&lastObject5, 0);
    }

    objc_storeStrong(&v167, 0);
    objc_storeStrong(&v168, 0);
  }

  sub_1000A9C6C();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !selfCopy->_wifiController)
  {
    v140 = [(NSMutableArray *)selfCopy->_buddyControllers indexOfObjectPassingTest:&stru_10032BEE0];
    if (v140 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = [(NSMutableArray *)selfCopy->_buddyControllers objectAtIndexedSubscript:v140];
      wifiController = selfCopy->_wifiController;
      selfCopy->_wifiController = v78;
    }
  }

  trailingControllers = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
  v81 = [(NSMutableArray *)trailingControllers count];

  if (v81)
  {
    v139 = objc_alloc_init(NSMutableArray);
    memset(v137, 0, sizeof(v137));
    reverseObjectEnumerator = [(NSMutableArray *)selfCopy->_buddyControllers reverseObjectEnumerator];
    v83 = [reverseObjectEnumerator countByEnumeratingWithState:v137 objects:v214 count:16];
    if (v83)
    {
      v84 = *v137[2];
      while (2)
      {
        for (kk = 0; kk < v83; ++kk)
        {
          if (*v137[2] != v84)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v138 = *(v137[1] + 8 * kk);
          if ([v139 count] == 1)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v139 insertObject:v138 atIndex:0];
            }

            v179 = 21;
            goto LABEL_151;
          }

          [v139 addObject:v138];
        }

        v83 = [reverseObjectEnumerator countByEnumeratingWithState:v137 objects:v214 count:16];
        if (v83)
        {
          continue;
        }

        break;
      }
    }

    v179 = 0;
LABEL_151:

    trailingControllers2 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
    v87 = [(NSMutableArray *)trailingControllers2 count]- 1;

    for (mm = v87; (mm & 0x80000000) == 0; --mm)
    {
      trailingControllers3 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
      v135 = [(NSMutableArray *)trailingControllers3 objectAtIndexedSubscript:mm];

      if (v135 && ([(NSMutableArray *)selfCopy->_buddyControllers containsObject:v135]& 1) != 0)
      {
        trailingControllers4 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
        [(NSMutableArray *)trailingControllers4 removeObjectAtIndex:mm];
      }

      objc_storeStrong(&v135, 0);
    }

    [(NSMutableArray *)selfCopy->_buddyControllers removeObjectsInArray:v139];
    buddyControllers = selfCopy->_buddyControllers;
    trailingControllers5 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
    [(NSMutableArray *)buddyControllers addObjectsFromArray:trailingControllers5];

    [(NSMutableArray *)selfCopy->_buddyControllers addObjectsFromArray:v139];
    navigator10 = [(BuddyNavigationFlowController *)selfCopy navigator];
    viewControllers5 = [(BuddyNavigationFlowNavigator *)navigator10 viewControllers];
    v134 = [viewControllers5 mutableCopy];

    navigator11 = [(BuddyNavigationFlowController *)selfCopy navigator];
    viewControllers6 = [(BuddyNavigationFlowNavigator *)navigator11 viewControllers];
    lastObject6 = [viewControllers6 lastObject];

    [v134 removeLastObject];
    memset(v131, 0, sizeof(v131));
    trailingControllers6 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
    v97 = [(NSMutableArray *)trailingControllers6 countByEnumeratingWithState:v131 objects:v213 count:16];
    if (v97)
    {
      v98 = *v131[2];
      do
      {
        for (nn = 0; nn < v97; ++nn)
        {
          if (*v131[2] != v98)
          {
            objc_enumerationMutation(trailingControllers6);
          }

          v132 = *(v131[1] + 8 * nn);
          v130 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:v132];
          if (v130 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v100 = v132;
            navigator12 = [(BuddyNavigationFlowController *)selfCopy navigator];
            navigationController = [(BuddyNavigationFlowNavigator *)navigator12 navigationController];
            [v100 setNavigationController:navigationController];
          }

          [v134 addObject:v130];
          objc_storeStrong(&v130, 0);
        }

        v97 = [(NSMutableArray *)trailingControllers6 countByEnumeratingWithState:v131 objects:v213 count:16];
      }

      while (v97);
    }

    [v134 addObject:lastObject6];
    navigator13 = [(BuddyNavigationFlowController *)selfCopy navigator];
    [(BuddyNavigationFlowNavigator *)navigator13 setViewControllers:v134 animated:0];

    oslog = _BYLoggingFacility();
    v128 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      trailingControllers7 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
      v105 = [(NSMutableArray *)trailingControllers7 count];
      v106 = lastObject6;
      trailingControllers8 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
      sub_10008FCD8(v212, v105, v106, trailingControllers8);
      _os_log_impl(&_mh_execute_header, oslog, v128, "Inserting %ld controller(s) before %@: %@", v212, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    trailingControllers9 = [(BuddyNavigationFlowController *)selfCopy trailingControllers];
    [(NSMutableArray *)trailingControllers9 removeAllObjects];

    objc_storeStrong(&lastObject6, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v139, 0);
  }

  buddyControllers14 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
  v110 = [(NSMutableArray *)buddyControllers14 count];

  if (v110)
  {
    buddyControllers15 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
    lastObject7 = [(NSMutableArray *)buddyControllers15 lastObject];

    v112 = [(BuddyNavigationFlowController *)selfCopy _viewControllerForBuddyController:lastObject7];
    v113 = v208;

    if (v112 == v113)
    {
      buddyControllers16 = [(BuddyNavigationFlowController *)selfCopy buddyControllers];
      lastObject8 = [(NSMutableArray *)buddyControllers16 lastObject];

      [(BuddyNavigationFlowController *)selfCopy _unmarkFlowItemAsFinished:lastObject8];
      if (objc_opt_respondsToSelector())
      {
        [lastObject8 flowItemDidAppear:animatedCopy];
      }

      objc_storeStrong(&lastObject8, 0);
    }

    else if (operationCopy == 2 && [(BuddyNavigationFlowController *)selfCopy isFlowItem:lastObject7 responsibleForViewController:v208])
    {
      [(BuddyNavigationFlowController *)selfCopy _unmarkFlowItemAsFinished:lastObject7];
    }

    objc_storeStrong(&lastObject7, 0);
  }

  navigator14 = [(BuddyNavigationFlowController *)selfCopy navigator];
  navigationController2 = [(BuddyNavigationFlowNavigator *)navigator14 navigationController];
  view = [(BFFNavigationController *)navigationController2 view];
  v118 = [view isUserInteractionEnabled] ^ 1;

  if (v118)
  {
    v125 = _BYLoggingFacility();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      navigator15 = [(BuddyNavigationFlowController *)selfCopy navigator];
      view2 = [(BuddyNavigationFlowNavigator *)navigator15 view];
      window = [view2 window];
      sub_1000A4DC0(v211, "[BuddyNavigationFlowController navigationController:didShowViewController:operation:animated:]", window);
      _os_log_debug_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled YES %p", v211, 0x16u);
    }

    objc_storeStrong(&v125, 0);
    navigator16 = [(BuddyNavigationFlowController *)selfCopy navigator];
    navigationController3 = [(BuddyNavigationFlowNavigator *)navigator16 navigationController];
    view3 = [(BFFNavigationController *)navigationController3 view];
    [view3 setUserInteractionEnabled:1];
  }

  objc_storeStrong(&v208, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isFlowItem:(id)item responsibleForViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v7 = 0;
  objc_storeStrong(&v7, controller);
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [location[0] responsibleForViewController:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_injectDependencies:(id)dependencies withEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dependencies);
  v72 = 0;
  objc_storeStrong(&v72, environment);
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BYEnvironmentDependencyReceiver])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] isViewLoaded])
    {
      oslog = _BYLoggingFacility();
      v70 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        customDescription = [location[0] customDescription];
        sub_10006AE18(buf, customDescription);
        _os_log_fault_impl(&_mh_execute_header, oslog, v70, "Precondition failed item cannot be injected as item:(%@)'s loadView has been called", buf, 0xCu);

        objc_storeStrong(&customDescription, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v68 = location[0];
    if (objc_opt_respondsToSelector())
    {
      deviceProvider = [v72 deviceProvider];
      [v68 setDeviceProvider:deviceProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      suspendTask = [v72 suspendTask];
      [v68 setSuspendTask:suspendTask];
    }

    if (objc_opt_respondsToSelector())
    {
      pendingRestoreState = [v72 pendingRestoreState];
      [v68 setPendingRestoreState:pendingRestoreState];
    }

    if (objc_opt_respondsToSelector())
    {
      chronicle = [v72 chronicle];
      [v68 setChronicle:chronicle];
    }

    if (objc_opt_respondsToSelector())
    {
      miscState = [v72 miscState];
      [v68 setMiscState:miscState];
    }

    if (objc_opt_respondsToSelector())
    {
      proximitySetupController = [v72 proximitySetupController];
      [v68 setProximitySetupController:proximitySetupController];
    }

    if (objc_opt_respondsToSelector())
    {
      proximityAutomatedDeviceEnrollmentController = [v72 proximityAutomatedDeviceEnrollmentController];
      [v68 setProximityAutomatedDeviceEnrollmentController:proximityAutomatedDeviceEnrollmentController];
    }

    if (objc_opt_respondsToSelector())
    {
      backupDeviceController = [v72 backupDeviceController];
      [v68 setBackupDeviceController:backupDeviceController];
    }

    if (objc_opt_respondsToSelector())
    {
      systemTimeUpdateManager = [v72 systemTimeUpdateManager];
      [v68 setSystemTimeUpdateManager:systemTimeUpdateManager];
    }

    if (objc_opt_respondsToSelector())
    {
      enrollmentCoordinator = [v72 enrollmentCoordinator];
      [v68 setEnrollmentCoordinator:enrollmentCoordinator];
    }

    if (objc_opt_respondsToSelector())
    {
      menuButtonPressedBlock = [v72 menuButtonPressedBlock];
      [v68 setMenuButtonPressedBlock:menuButtonPressedBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      showModalWiFiSettingsBlock = [v72 showModalWiFiSettingsBlock];
      [v68 setShowModalWiFiSettingsBlock:showModalWiFiSettingsBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      writeGreenInformedDefaultPlistIfNecessaryBlock = [v72 writeGreenInformedDefaultPlistIfNecessaryBlock];
      [v68 setWriteGreenInformedDefaultPlistIfNecessaryBlock:writeGreenInformedDefaultPlistIfNecessaryBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      doesRestartFlowCauseEraseBlock = [v72 doesRestartFlowCauseEraseBlock];
      [v68 setDoesRestartFlowCauseEraseBlock:doesRestartFlowCauseEraseBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      prepareForCloudRestoreRebootBlock = [v72 prepareForCloudRestoreRebootBlock];
      [v68 setPrepareForCloudRestoreRebootBlock:prepareForCloudRestoreRebootBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      exitBuddyForDemoSetUpBlock = [v72 exitBuddyForDemoSetUpBlock];
      [v68 setExitBuddyForDemoSetUpBlock:exitBuddyForDemoSetUpBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      prepareForDeviceMigrationBlock = [v72 prepareForDeviceMigrationBlock];
      [v68 setPrepareForDeviceMigrationBlock:prepareForDeviceMigrationBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      startDeviceMigrationBlock = [v72 startDeviceMigrationBlock];
      [v68 setStartDeviceMigrationBlock:startDeviceMigrationBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      existingSettings = [v72 existingSettings];
      [v68 setExistingSettings:existingSettings];
    }

    if (objc_opt_respondsToSelector())
    {
      displayZoomExecutor = [v72 displayZoomExecutor];
      [v68 setDisplayZoomExecutor:displayZoomExecutor];
    }

    if (objc_opt_respondsToSelector())
    {
      seedProgramManager = [v72 seedProgramManager];
      [v68 setSeedProgramManager:seedProgramManager];
    }

    if (objc_opt_respondsToSelector())
    {
      networkProvider = [v72 networkProvider];
      [v68 setNetworkProvider:networkProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      buddyPreferences = [v72 buddyPreferences];
      [v68 setBuddyPreferences:buddyPreferences];
    }

    if (objc_opt_respondsToSelector())
    {
      buddyPreferencesExcludedFromBackup = [v72 buddyPreferencesExcludedFromBackup];
      [v68 setBuddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup];
    }

    if (objc_opt_respondsToSelector())
    {
      setupMethod = [v72 setupMethod];
      [v68 setSetupMethod:setupMethod];
    }

    if (objc_opt_respondsToSelector())
    {
      willPerformSoftwareUpdateBlock = [v72 willPerformSoftwareUpdateBlock];
      [v68 setWillPerformSoftwareUpdateBlock:willPerformSoftwareUpdateBlock];
    }

    if (objc_opt_respondsToSelector())
    {
      betaEnrollmentStateManager = [v72 betaEnrollmentStateManager];
      [v68 setBetaEnrollmentStateManager:betaEnrollmentStateManager];
    }

    if (objc_opt_respondsToSelector())
    {
      capabilities = [v72 capabilities];
      [v68 setCapabilities:capabilities];
    }

    if (objc_opt_respondsToSelector())
    {
      softwareUpdateCache = [v72 softwareUpdateCache];
      [v68 setSoftwareUpdateCache:softwareUpdateCache];
    }

    if (objc_opt_respondsToSelector())
    {
      settingsManager = [v72 settingsManager];
      [v68 setSettingsManager:settingsManager];
    }

    if (objc_opt_respondsToSelector())
    {
      passcodeCacheManager = [v72 passcodeCacheManager];
      [v68 setPasscodeCacheManager:passcodeCacheManager];
    }

    if (objc_opt_respondsToSelector())
    {
      runState = [v72 runState];
      [v68 setRunState:runState];
    }

    if (objc_opt_respondsToSelector())
    {
      analyticsManager = [v72 analyticsManager];
      [v68 setAnalyticsManager:analyticsManager];
    }

    if (objc_opt_respondsToSelector())
    {
      paneFeatureAnalyticsManager = [v72 paneFeatureAnalyticsManager];
      [v68 setPaneFeatureAnalyticsManager:paneFeatureAnalyticsManager];
    }

    if (objc_opt_respondsToSelector())
    {
      managedConfiguration = [v72 managedConfiguration];
      [v68 setManagedConfiguration:managedConfiguration];
    }

    if (objc_opt_respondsToSelector())
    {
      activationRecord = [v72 activationRecord];
      [v68 setActivationRecord:activationRecord];
    }

    if (objc_opt_respondsToSelector())
    {
      combinedTermsProvider = [v72 combinedTermsProvider];
      [v68 setCombinedTermsProvider:combinedTermsProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      featureFlags = [v72 featureFlags];
      [v68 setFeatureFlags:featureFlags];
    }

    if (objc_opt_respondsToSelector())
    {
      buttonMonitor = [v72 buttonMonitor];
      [v68 setButtonMonitor:buttonMonitor];
    }

    if (objc_opt_respondsToSelector())
    {
      emergencyExecutor = [v72 emergencyExecutor];
      [v68 setEmergencyExecutor:emergencyExecutor];
    }

    if (objc_opt_respondsToSelector())
    {
      activationState = [v72 activationState];
      [v68 setActivationState:activationState];
    }

    if (objc_opt_respondsToSelector())
    {
      flowSkipController = [v72 flowSkipController];
      [v68 setFlowSkipController:flowSkipController];
    }

    if (objc_opt_respondsToSelector())
    {
      appearanceModeProvider = [v72 appearanceModeProvider];
      [v68 setAppearanceModeProvider:appearanceModeProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      userDispositionProvider = [v72 userDispositionProvider];
      [v68 setUserDispositionProvider:userDispositionProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      deviceConfiguration = [v72 deviceConfiguration];
      [v68 setDeviceConfiguration:deviceConfiguration];
    }

    if (objc_opt_respondsToSelector())
    {
      flowItemDispositionProvider = [v72 flowItemDispositionProvider];
      [v68 setFlowItemDispositionProvider:flowItemDispositionProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      lockdownModeProvider = [v72 lockdownModeProvider];
      [v68 setLockdownModeProvider:lockdownModeProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      analyticsEventAppearance = [v72 analyticsEventAppearance];
      [v68 setAnalyticsEventAppearance:analyticsEventAppearance];
    }

    if (objc_opt_respondsToSelector())
    {
      childSetupPresenter = [v72 childSetupPresenter];
      [v68 setChildSetupPresenter:childSetupPresenter];
    }

    if (objc_opt_respondsToSelector())
    {
      buddyBackgroundViewController = [v72 buddyBackgroundViewController];
      [v68 setBuddyBackgroundViewController:buddyBackgroundViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      intelligenceProvider = [v72 intelligenceProvider];
      [v68 setIntelligenceProvider:intelligenceProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      multilingualFlowManager = [v72 multilingualFlowManager];
      [v68 setMultilingualFlowManager:multilingualFlowManager];
    }

    if (objc_opt_respondsToSelector())
    {
      expressSettingsCache = [v72 expressSettingsCache];
      [v68 setExpressSettingsCache:expressSettingsCache];
    }

    if (objc_opt_respondsToSelector())
    {
      diagnosticsThreadDecorator = [v72 diagnosticsThreadDecorator];
      [v68 setDiagnosticsThreadDecorator:diagnosticsThreadDecorator];
    }

    if (objc_opt_respondsToSelector())
    {
      safetyAndHandlingManager = [v72 safetyAndHandlingManager];
      [v68 setSafetyAndHandlingManager:safetyAndHandlingManager];
    }

    if (objc_opt_respondsToSelector())
    {
      threatNotificationProvider = [v72 threatNotificationProvider];
      [v68 setThreatNotificationProvider:threatNotificationProvider];
    }

    if (objc_opt_respondsToSelector())
    {
      iPadMultitaskingModeManager = [v72 iPadMultitaskingModeManager];
      [v68 setIPadMultitaskingModeManager:iPadMultitaskingModeManager];
    }

    if (objc_opt_respondsToSelector())
    {
      safetySettingsUIProvider = [v72 safetySettingsUIProvider];
      [v68 setSafetySettingsUIProvider:safetySettingsUIProvider];
    }

    if ([v68 conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem])
    {
      v67 = v68;
      navigator = [(BuddyNavigationFlowController *)selfCopy navigator];
      navigationController = [(BuddyNavigationFlowNavigator *)navigator navigationController];
      [(BFFNavigationController *)navigationController setCustomAnimatorProviderBlock:0];

      if (objc_opt_respondsToSelector())
      {
        navigator2 = [(BuddyNavigationFlowController *)selfCopy navigator];
        navigationController2 = [(BuddyNavigationFlowNavigator *)navigator2 navigationController];
        [v67 setNavigationController:navigationController2];
      }

      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
}

- (id)_injectedFlowForClass:(Class)class
{
  selfCopy = self;
  v8 = a2;
  classCopy = class;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    location = [(BuddyNavigationFlowController *)selfCopy _createFlowItemForClass:classCopy];
    environment = [(BuddyNavigationFlowController *)selfCopy environment];
    [(BuddyNavigationFlowController *)selfCopy _injectDependencies:location withEnvironment:environment];

    v10 = location;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v10 = 0;
  }

  v4 = v10;

  return v4;
}

- (id)environmentInjector
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000B054C;
  v8 = &unk_10032BF08;
  objc_copyWeak(&v9, location);
  v10 = objc_retainBlock(&v4);
  v2 = objc_retainBlock(v10);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v9);
  objc_destroyWeak(location);

  return v2;
}

- (BuddyFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (BuddyLifecycleDelegate)lifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lifecycleDelegate);

  return WeakRetained;
}

- (BuddyFlowCloudConfigDelegate)flowCloudConfigurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowCloudConfigurationDelegate);

  return WeakRetained;
}

- (BuddyFlowProducer)flowProducer
{
  WeakRetained = objc_loadWeakRetained(&self->_flowProducer);

  return WeakRetained;
}

- (BuddyRestoreProvider)restoreProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_restoreProvider);

  return WeakRetained;
}

- (UIResponder)lastUIResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_lastUIResponder);

  return WeakRetained;
}

@end