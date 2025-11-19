@interface BuddyNavigationFlowController
- (BFFFlowItem)topFlowItem;
- (BOOL)_doesTapFreeSetUpAffectsClass:(Class)a3;
- (BOOL)_hasWiFiControllerInNavigationStack;
- (BOOL)_isFlowItemAllowed:(id)a3;
- (BOOL)_shouldAutoProceedPostUserSpaceReboot;
- (BOOL)_shouldTapFreeSetUpSkipControllerClass:(Class)a3;
- (BOOL)_stackHasOnlyCloudConfigurationItems;
- (BOOL)controllerNeedsToRunForClass:(Class)a3;
- (BOOL)currentlyShowingActivationFlow;
- (BOOL)isFlowItem:(id)a3 responsibleForViewController:(id)a4;
- (BOOL)isFlowItemOnTop:(id)a3;
- (BOOL)isStartOverAllowed;
- (BuddyFlowCloudConfigDelegate)flowCloudConfigurationDelegate;
- (BuddyFlowDelegate)flowDelegate;
- (BuddyFlowProducer)flowProducer;
- (BuddyLifecycleDelegate)lifecycleDelegate;
- (BuddyNavigationFlowController)initWithNavigationController:(id)a3 usingRestoreProvider:(id)a4 usingFlowDiverter:(id)a5 environment:(id)a6;
- (BuddyNavigationFlowController)initWithNavigator:(id)a3 usingRestoreProvider:(id)a4 usingFlowDiverter:(id)a5 environment:(id)a6;
- (BuddyRestoreProvider)restoreProvider;
- (UIResponder)lastUIResponder;
- (id)_createConditionalFlowItemForClass:(Class)a3;
- (id)_createFlowItemForClass:(Class)a3;
- (id)_ensureDeviceProximitySetupControllerWithCompletion:(id)a3;
- (id)_ensureDeviceRestoreChoiceControllerWithCompletion:(id)a3;
- (id)_flowForFlowItem:(id)a3;
- (id)_flowItemFollowingClass:(Class)a3;
- (id)_injectedFlowForClass:(Class)a3;
- (id)_lastNonFlowFlowItemRelativeToFlowItem:(id)a3;
- (id)_popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5;
- (id)_savedItemForClass:(Class)a3;
- (id)_shieldColorForNewTopFlowItemPush;
- (id)_titleForViewController:(id)a3;
- (id)_viewControllerForBuddyController:(id)a3;
- (id)environmentInjector;
- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5;
- (void)_beginEventForNavigationDuration;
- (void)_endEventForNavigationDurationFromFlowItem:(id)a3 toFlowItem:(id)a4;
- (void)_ensureControllerExistsWithTarget:(id)a3 viewControllerInsertionIndexGenerator:(id)a4 buddyControllerInsertionIndexGenerator:(id)a5 withCompletion:(id)a6;
- (void)_flowItemDone:(id)a3 flow:(id)a4 nextItemClass:(Class)a5 nextItem:(id)a6;
- (void)_hideBackButtonIfNecessaryOnFlowItem:(id)a3 withViewController:(id)a4;
- (void)_injectDependencies:(id)a3 withEnvironment:(id)a4;
- (void)_insertWiFiControllerAsFirstPane;
- (void)_performExtendedInitializationForFlowItem:(id)a3 willBegin:(id)a4 withCompletion:(id)a5;
- (void)_presentViewControllerForBuddyController:(id)a3 animated:(BOOL)a4 willPresentViewController:(id)a5 completion:(id)a6;
- (void)_pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7;
- (void)_resumeNavigationQueue;
- (void)_setupInitialFlowFromInitialFlowItem:(id)a3 debutFlowItemClass:(Class)a4 completion:(id)a5;
- (void)_startDisablingInteractionForExtendedInitialization;
- (void)_stopDisablingInteractionForExtendedInitialization;
- (void)_unmarkFlowItemAsFinished:(id)a3;
- (void)_updateNavigationBackButtonTitleForViewController:(id)a3;
- (void)beginTapFreeSetUp;
- (void)flow:(id)a3 finishedWithLastItem:(id)a4 nextItem:(id)a5;
- (void)flowItemCancelled:(id)a3;
- (void)flowItemDone:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4;
- (void)handleDebugGesture;
- (void)markFlowItemDone:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)presentWiFiPaneForFlow:(id)a3;
- (void)presentWiFiPaneForFlowItem:(id)a3;
- (void)proceedPastAppearancePane;
- (void)proceedPastLanguageLocalePane;
- (void)pushFlowItem:(id)a3 animated:(BOOL)a4;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7;
- (void)removeViewControllerFromNavHierarchy:(id)a3;
- (void)removeViewControllersOnNextPush:(id)a3;
- (void)restartFlow;
- (void)setUpByComputer;
- (void)setupInitialFlowWithCompletion:(id)a3;
@end

@implementation BuddyNavigationFlowController

- (BuddyNavigationFlowController)initWithNavigator:(id)a3 usingRestoreProvider:(id)a4 usingFlowDiverter:(id)a5 environment:(id)a6
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v9 = v29;
  v29 = 0;
  v24.receiver = v9;
  v24.super_class = BuddyNavigationFlowController;
  v10 = [(BuddyNavigationFlowController *)&v24 init];
  v29 = v10;
  objc_storeStrong(&v29, v10);
  if (v10)
  {
    objc_storeStrong(v29 + 10, location[0]);
    [*(v29 + 10) addDelegateObserver:v29];
    v11 = objc_alloc_init(BuddyNavigationBarUpdater);
    v12 = *(v29 + 12);
    *(v29 + 12) = v11;

    [location[0] addDelegateObserver:*(v29 + 12)];
    objc_storeWeak(v29 + 11, obj);
    v13 = [BFFFlowStarter alloc];
    v14 = [v13 initWithFlowDiverter:v26];
    v15 = *(v29 + 13);
    *(v29 + 13) = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = *(v29 + 14);
    *(v29 + 14) = v16;

    v18 = objc_alloc_init(NSMutableArray);
    v19 = *(v29 + 20);
    *(v29 + 20) = v18;

    objc_storeStrong(v29 + 19, v25);
    v20 = dispatch_queue_create("Navigation Queue", 0);
    v21 = *(v29 + 23);
    *(v29 + 23) = v20;

    dispatch_suspend(*(v29 + 23));
  }

  v22 = v29;
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v22;
}

- (BuddyNavigationFlowController)initWithNavigationController:(id)a3 usingRestoreProvider:(id)a4 usingFlowDiverter:(id)a5 environment:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = [BuddyNavigationFlowNavigator alloc];
  v13 = [(BuddyNavigationFlowNavigator *)v9 initWithNavigationController:location[0]];
  v10 = v18;
  v18 = 0;
  v18 = [v10 initWithNavigator:v13 usingRestoreProvider:v16 usingFlowDiverter:v15 environment:v14];
  v11 = v18;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

- (void)setupInitialFlowWithCompletion:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc_init(BuddyWiFiController);
  [(BuddyNavigationFlowController *)v23 setWifiController:v3];

  v4 = v23;
  v5 = [(BuddyNavigationFlowController *)v23 wifiController];
  [(BuddyWiFiController *)v5 setDelegate:v4];

  v6 = v23;
  v7 = [(BuddyNavigationFlowController *)v23 wifiController];
  v8 = [(BuddyNavigationFlowController *)v23 environment];
  [(BuddyNavigationFlowController *)v6 _injectDependencies:v7 withEnvironment:v8];

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
  v11 = [(BuddyNavigationFlowController *)v23 flowStarter];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_1000A1E4C;
  v16 = &unk_10032AFD0;
  v17 = v23;
  v18 = location[0];
  [(BFFFlowStarter *)v11 prepareWithCompletion:&v12];

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)beginTapFreeSetUp
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A24B0;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)proceedPastLanguageLocalePane
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A289C;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)proceedPastAppearancePane
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2B44;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)setUpByComputer
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self navigationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000A2DEC;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)handleDebugGesture
{
  v2 = [(BuddyNavigationFlowController *)self buddyControllers];
  v3 = [(NSMutableArray *)v2 lastObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BuddyNavigationFlowController *)self buddyControllers];
    v6 = [(NSMutableArray *)v5 lastObject];
    [v6 handleDebugGesture];
  }
}

- (BOOL)currentlyShowingActivationFlow
{
  v2 = [(BuddyNavigationFlowController *)self buddyControllers:a2];
  v3 = [(NSMutableArray *)v2 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isStartOverAllowed
{
  v18 = self;
  v17[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self buddyControllers];
  v17[0] = [(NSMutableArray *)v2 lastObject];

  if (objc_opt_respondsToSelector() & 1) == 0 || ([v17[0] shouldAllowStartOver])
  {
    v5 = [(BuddyNavigationFlowController *)v18 navigator];
    location = [(BuddyNavigationFlowNavigator *)v5 topViewController];

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
  v3 = [(NSMutableArray *)v2 lastObject];

  return v3;
}

- (BOOL)_shouldAutoProceedPostUserSpaceReboot
{
  v3 = ![(BuddyNavigationFlowController *)self didProceedPastFlowSignalCalled];
  [(BuddyNavigationFlowController *)self setDidProceedPastFlowSignalCalled:1];
  return v3 & 1;
}

- (id)_flowItemFollowingClass:(Class)a3
{
  v42 = self;
  v41 = a2;
  v40 = a3;
  v3 = [(BuddyNavigationFlowController *)self flowProducer];
  v39 = [(BuddyFlowProducer *)v3 potentialNextFlowItemClassFollowingFlowItemClass:v40];

  if ([v39 conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem])
  {
    v38 = [(BuddyNavigationFlowController *)v42 _shouldTapFreeSetUpSkipControllerClass:v39];
    if (v38 || ((location = [(BuddyNavigationFlowController *)v42 _createConditionalFlowItemForClass:v39]) == 0 ? (v36 = 0) : (v43 = location, v36 = 1), objc_storeStrong(&location, 0), !v36))
    {
      v34 = 0;
      v4 = 0;
      if (objc_opt_respondsToSelector())
      {
        v5 = v39;
        v35 = [(BuddyNavigationFlowController *)v42 environment];
        v34 = 1;
        v4 = [v5 isTrailingWithEnvironment:?];
      }

      if (v34)
      {
      }

      if (v4)
      {
        v33 = [(BuddyNavigationFlowController *)v42 _savedItemForClass:v39];
        v6 = [(BuddyNavigationFlowController *)v42 trailingControllers];
        [(NSMutableArray *)v6 addObject:v33];

        objc_storeStrong(&v33, 0);
      }

      if ([v39 isEqual:objc_opt_class()])
      {
        v7 = +[NSPointerArray weakObjectsPointerArray];
        [(BuddyNavigationFlowController *)v42 setWeakBuddyControllersPrecedingDeviceRestoreChoiceController:v7];

        v8 = +[NSPointerArray weakObjectsPointerArray];
        [(BuddyNavigationFlowController *)v42 setWeakViewControllersPrecedingDeviceRestoreChoiceController:v8];

        memset(__b, 0, sizeof(__b));
        v9 = [(BuddyNavigationFlowController *)v42 buddyControllers];
        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:__b objects:v48 count:16];
        if (v10)
        {
          v11 = *__b[2];
          do
          {
            for (i = 0; i < v10; ++i)
            {
              if (*__b[2] != v11)
              {
                objc_enumerationMutation(v9);
              }

              v32 = *(__b[1] + 8 * i);
              v13 = [(BuddyNavigationFlowController *)v42 weakBuddyControllersPrecedingDeviceRestoreChoiceController];
              [(NSPointerArray *)v13 addPointer:v32];
            }

            v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:__b objects:v48 count:16];
          }

          while (v10);
        }

        memset(v29, 0, sizeof(v29));
        v14 = [(BuddyNavigationFlowController *)v42 navigator];
        v15 = [(BuddyNavigationFlowNavigator *)v14 viewControllers];

        v16 = [v15 countByEnumeratingWithState:v29 objects:v47 count:16];
        if (v16)
        {
          v17 = *v29[2];
          do
          {
            for (j = 0; j < v16; ++j)
            {
              if (*v29[2] != v17)
              {
                objc_enumerationMutation(v15);
              }

              v30 = *(v29[1] + 8 * j);
              v19 = [(BuddyNavigationFlowController *)v42 weakViewControllersPrecedingDeviceRestoreChoiceController];
              [(NSPointerArray *)v19 addPointer:v30];
            }

            v16 = [v15 countByEnumeratingWithState:v29 objects:v47 count:16];
          }

          while (v16);
        }

        oslog = _BYLoggingFacility();
        v27 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(BuddyNavigationFlowController *)v42 weakBuddyControllersPrecedingDeviceRestoreChoiceController];
          sub_10006AE18(buf, v20);
          _os_log_debug_impl(&_mh_execute_header, oslog, v27, "Skipping DeviceRestoreChoiceController but remembering buddy controllers preceding it: %@", buf, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v26 = _BYLoggingFacility();
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v21 = [(BuddyNavigationFlowController *)v42 weakViewControllersPrecedingDeviceRestoreChoiceController];
          sub_10006AE18(v45, v21);
          _os_log_debug_impl(&_mh_execute_header, v26, v25, "...and view controllers preceding it: %@", v45, 0xCu);
        }

        objc_storeStrong(&v26, 0);
      }

      v43 = [(BuddyNavigationFlowController *)v42 _flowItemFollowingClass:v39];
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

- (id)_createConditionalFlowItemForClass:(Class)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  if ([(BuddyNavigationFlowController *)self _shouldTapFreeSetUpSkipControllerClass:a3])
  {
    goto LABEL_9;
  }

  v3 = [(BuddyNavigationFlowController *)v14 flowStarter];
  v4 = [(BFFFlowStarter *)v3 controllerNeedsToRunForClass:v12];

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  location = [(BuddyNavigationFlowController *)v14 _createFlowItemForClass:v12];
  [location setDelegate:v14];
  v5 = [(BuddyNavigationFlowController *)v14 flowStarter];
  v6 = [(BFFFlowStarter *)v5 controllerNeedsToRunForFlowItem:location];

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

- (id)_createFlowItemForClass:(Class)a3
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  location = [(BuddyNavigationFlowController *)self _savedItemForClass:a3];
  if (location)
  {
    v20 = location;
    v15 = 1;
  }

  else
  {
    if (([(objc_class *)v17 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      v3 = [v17 alloc];
      v4 = [(BuddyNavigationFlowController *)v19 navigator];
      v5 = [(BuddyNavigationFlowNavigator *)v4 navigationController];
      v6 = [(BuddyNavigationFlowController *)v19 flowStarter];
      v7 = [(BuddyNavigationFlowController *)v19 environmentInjector];
      obj = [v3 initWithNavigationController:v5 flowDelegate:v19 flowStarter:v6 dependencyInjector:v7];

      [obj setFlowItemDelegate:v19];
      objc_storeStrong(&location, obj);
      objc_storeStrong(&obj, 0);
    }

    else
    {
      v8 = objc_alloc_init(v17);
      v9 = location;
      location = v8;
    }

    v10 = [(BuddyNavigationFlowController *)v19 flowProducer];
    [(BuddyFlowProducer *)v10 configureFlowItem:location];

    v11 = [(BuddyNavigationFlowController *)v19 environmentInjector];
    v20 = v11[2](v11, location);

    v15 = 1;
  }

  objc_storeStrong(&location, 0);
  v12 = v20;

  return v12;
}

- (id)_savedItemForClass:(Class)a3
{
  v3 = [(BuddyNavigationFlowController *)self savedItemForClassBlock];

  if (v3)
  {
    v4 = [(BuddyNavigationFlowController *)self savedItemForClassBlock];
    v8 = v4[2](v4, a3);
  }

  else if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v8 = [(BuddyNavigationFlowController *)self wifiController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_doesTapFreeSetUpAffectsClass:(Class)a3
{
  v3 = objc_opt_respondsToSelector();
  v4 = 0;
  if (v3)
  {
    v4 = [(objc_class *)a3 controllerAffectedByTapFreeSetup];
  }

  return v4 & 1;
}

- (BOOL)_shouldTapFreeSetUpSkipControllerClass:(Class)a3
{
  v3 = [(BuddyNavigationFlowController *)self isTapFreeSetUp];
  v4 = 0;
  if (v3)
  {
    v4 = [(BuddyNavigationFlowController *)self _doesTapFreeSetUpAffectsClass:a3];
  }

  return v4 & 1;
}

- (void)_flowItemDone:(id)a3 flow:(id)a4 nextItemClass:(Class)a5 nextItem:(id)a6
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v51 = 0;
  objc_storeStrong(&v51, a4);
  v50 = a5;
  v49 = 0;
  objc_storeStrong(&v49, a6);
  v48 = 1;
  [(BuddyNavigationFlowController *)v53 markFlowItemDone:location[0]];
  [(BuddyNavigationFlowController *)v53 markFlowItemDone:v51];
  [(BuddyNavigationFlowController *)v53 setLastUIResponder:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v49 || v50)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(BuddyNavigationFlowController *)v53 flowCloudConfigurationDelegate];
      [(BuddyFlowCloudConfigDelegate *)v13 setNeedsConfigurationUpdate];
    }
  }

  else
  {
    v9 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
    v10 = [(BuddyLifecycleDelegate *)v9 shouldEndLifecycleForCause:0];

    if (v10)
    {
      v48 = 0;
      v11 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
      [(BuddyLifecycleDelegate *)v11 willEndLifecycleDueToCause:0 allowDismissal:1];

      v12 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
      [(BuddyLifecycleDelegate *)v12 endLifecycleDueToCause:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] cdmaSelectionActivation])
      {
        v48 = 0;
        [(BuddyNavigationFlowController *)v53 restartFlow];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(BuddyNavigationFlowController *)v53 proximitySetupController];
    [(ProximitySetupController *)v14 endAdvertisingProximitySetup];
  }

  if (v48)
  {
    v47 = v49;
    if (!v47)
    {
      if (v50)
      {
        v15 = objc_alloc_init(v50);
        v16 = v47;
        v47 = v15;

        if (objc_opt_respondsToSelector())
        {
          [v47 setDelegate:v53];
        }
      }

      else
      {
        v17 = v53;
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

    v21 = v53;
    v22 = [(BuddyNavigationFlowController *)v53 environment];
    [(BuddyNavigationFlowController *)v21 _injectDependencies:v47 withEnvironment:v22];

    v45 = 0;
    v23 = 0;
    if (!v47)
    {
      v46 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
      v45 = 1;
      v23 = [v46 shouldEndLifecycleForCause:1];
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
          v28 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
          [(BuddyLifecycleDelegate *)v28 willEndLifecycleDueToCause:1 allowDismissal:v42];
        }

        else
        {
          v28 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
          [(BuddyLifecycleDelegate *)v28 willEndLifecycleDueToCause:1 allowDismissal:1];
        }
      }

      v29 = [(BuddyNavigationFlowController *)v53 lifecycleDelegate];
      [(BuddyLifecycleDelegate *)v29 endLifecycleDueToCause:1];
    }

    if (![(BuddyNavigationFlowController *)v53 _hasWiFiControllerInNavigationStack]&& [(BuddyNavigationFlowController *)v53 _stackHasOnlyCloudConfigurationItems])
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
        [(BuddyNavigationFlowController *)v53 setDidInsertWiFiPaneForCloudConfigurationFlow:1];
        [(BuddyNavigationFlowController *)v53 _insertWiFiControllerAsFirstPane];
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
    v35 = [(BuddyNavigationFlowController *)v53 navigationStartDate];
    v36 = v35 == 0;

    if (v36)
    {
      [(BuddyNavigationFlowController *)v53 _beginEventForNavigationDuration];
    }

    if (v47)
    {
      [(BuddyNavigationFlowController *)v53 pushFlowItem:v47 inFlow:0 animated:1];
    }

    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (void)_startDisablingInteractionForExtendedInitialization
{
  v49 = self;
  v48 = a2;
  v2 = [(BuddyNavigationFlowController *)self navigator];
  v3 = [(BuddyNavigationFlowNavigator *)v2 viewControllers];
  v46 = 0;
  v4 = 0;
  if (![v3 count])
  {
    v47 = [(BuddyNavigationFlowController *)v49 buddyControllers];
    v46 = 1;
    v4 = [v47 count] == 0;
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
    v7 = [(BuddyNavigationFlowController *)v49 buddyControllers];
    [(NSMutableArray *)v7 addObject:location];

    v8 = [(BuddyNavigationFlowController *)v49 navigator];
    [(BuddyNavigationFlowNavigator *)v8 pushViewController:location animated:0];

    objc_storeStrong(&location, 0);
  }

  v41 = 0;
  v40 = 0;
  v9 = [(BuddyNavigationFlowController *)v49 buddyControllers];
  v10 = [(NSMutableArray *)v9 lastObject];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(BuddyNavigationFlowController *)v49 buddyControllers];
    v13 = [(NSMutableArray *)v12 lastObject];
    v41 = [v13 shouldSuppressExtendedInitializationActivityIndicator] & 1;
  }

  v14 = [(BuddyNavigationFlowController *)v49 navigator];
  v15 = [(BuddyNavigationFlowNavigator *)v14 viewControllers];
  v16 = [v15 lastObject];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(BuddyNavigationFlowController *)v49 navigator];
    v19 = [(BuddyNavigationFlowNavigator *)v18 viewControllers];
    v20 = [v19 lastObject];
    v40 = [v20 shouldSuppressExtendedInitializationActivityIndicator] & 1;
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
      v22 = [(BuddyNavigationFlowController *)v49 buddyControllers];
      v36 = [(NSMutableArray *)v22 lastObject];
      sub_100071CBC(v52, v36);
      _os_log_impl(&_mh_execute_header, v38, v37, "Will suppress spinner over %{public}@", v52, 0xCu);

      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
  }

  else
  {
    v35 = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(BuddyNavigationFlowController *)v49 buddyControllers];
      v33 = [(NSMutableArray *)v23 lastObject];
      sub_100071CBC(v51, v33);
      _os_log_impl(&_mh_execute_header, v35, v34, "Will NOT suppress spinner over %{public}@", v51, 0xCu);

      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
  }

  if ((v39 & 1) == 0)
  {
    v24 = [(BuddyNavigationFlowController *)v49 navigator];
    v25 = [(BuddyNavigationFlowNavigator *)v24 topViewController];
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v25 identifier:@"BuddyNavigationFlowController"];
  }

  v32 = _BYLoggingFacility();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v26 = [(BuddyNavigationFlowController *)v49 navigator];
    v27 = [(BuddyNavigationFlowNavigator *)v26 view];
    v28 = [v27 window];
    sub_1000A4DC0(v50, "[BuddyNavigationFlowController _startDisablingInteractionForExtendedInitialization]", v28);
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled NO %p", v50, 0x16u);
  }

  objc_storeStrong(&v32, 0);
  v29 = [(BuddyNavigationFlowController *)v49 navigator];
  v30 = [(BuddyNavigationFlowNavigator *)v29 view];
  v31 = [v30 window];
  [v31 setUserInteractionEnabled:0];
}

- (void)_stopDisablingInteractionForExtendedInitialization
{
  v9 = self;
  oslog[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BuddyNavigationFlowController"];
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = [(BuddyNavigationFlowController *)v9 navigator];
    v3 = [(BuddyNavigationFlowNavigator *)v2 view];
    v4 = [v3 window];
    sub_1000A4DC0(buf, "[BuddyNavigationFlowController _stopDisablingInteractionForExtendedInitialization]", v4);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled YES %p", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(BuddyNavigationFlowController *)v9 navigator];
  v6 = [(BuddyNavigationFlowNavigator *)v5 view];
  v7 = [v6 window];
  [v7 setUserInteractionEnabled:1];
}

- (void)_performExtendedInitializationForFlowItem:(id)a3 willBegin:(id)a4 withCompletion:(id)a5
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
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
    v15 = v29;
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

- (void)_pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7
{
  v92 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v90 = 0;
  objc_storeStrong(&v90, a4);
  v89 = a5;
  v88 = a6;
  v87 = 0;
  objc_storeStrong(&v87, a7);
  if (location[0] && ![(BuddyNavigationFlowController *)v92 _isFlowItemAllowed:location[0]])
  {
    v11 = [(BuddyNavigationFlowController *)v92 flowProducer];
    v86 = [objc_opt_class() allowedFlowItems];

    v12 = location[0];
    v13 = [(BuddyNavigationFlowController *)v92 flowProducer];
    v85 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"Attempted to push disallowed flow item (%@) from producer (%@) with %ld allowed flow items: %@", v12, v13, [v86 count], v86);

    v84 = _BYLoggingFacility();
    v83 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      sub_10006AE18(buf, v85);
      _os_log_fault_impl(&_mh_execute_header, v84, v83, "%@", buf, 0xCu);
    }

    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
  }

  v14 = [(BuddyNavigationFlowController *)v92 navigationStartDate];
  v15 = v14 == 0;

  if (v15)
  {
    [(BuddyNavigationFlowController *)v92 _beginEventForNavigationDuration];
  }

  v16 = v92;
  v17 = [(BuddyNavigationFlowController *)v92 buddyControllers];
  v18 = [(NSMutableArray *)v17 lastObject];
  v82 = [(BuddyNavigationFlowController *)v16 _lastNonFlowFlowItemRelativeToFlowItem:v18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = location[0];
    if (v89)
    {
      v19 = v92;
      v20 = location[0];
      v75 = _NSConcreteStackBlock;
      v76 = -1073741824;
      v77 = 0;
      v78 = sub_1000A61E4;
      v79 = &unk_10032B0D0;
      v80 = v92;
      v64 = _NSConcreteStackBlock;
      v65 = -1073741824;
      v66 = 0;
      v67 = sub_1000A6210;
      v68 = &unk_10032BC00;
      v73 = v87;
      v69 = v92;
      v70 = v81;
      v74 = v88;
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

      [(BuddyNavigationFlowController *)v92 _endEventForNavigationDurationFromFlowItem:v82 toFlowItem:v81];
      v21 = [(BuddyNavigationFlowController *)v92 buddyControllers];
      [(NSMutableArray *)v21 addObject:v81];

      [v81 startFlowAnimated:v88];
    }

    objc_storeStrong(&v81, 0);
  }

  else if (v89)
  {
    v22 = v92;
    v23 = location[0];
    v58 = _NSConcreteStackBlock;
    v59 = -1073741824;
    v60 = 0;
    v61 = sub_1000A62D0;
    v62 = &unk_10032B0D0;
    v63 = v92;
    v48 = _NSConcreteStackBlock;
    v49 = -1073741824;
    v50 = 0;
    v51 = sub_1000A62FC;
    v52 = &unk_10032BC28;
    v56 = v87;
    v53 = v92;
    v54 = location[0];
    v55 = v90;
    v57 = v88;
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
      v25 = [(BuddyNavigationFlowController *)v92 navigator];
      v26 = [(BuddyNavigationFlowNavigator *)v25 navigationController];
      [v24 setNavigationController:v26];
    }

    [(BuddyNavigationFlowController *)v92 _stopDisablingInteractionForExtendedInitialization];
    objc_initWeak(&from, v92);
    v27 = v92;
    v28 = location[0];
    v29 = v88;
    v39 = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_1000A63A0;
    v43 = &unk_10032BB10;
    v44 = v92;
    v45 = v82;
    v46 = location[0];
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_1000A63D8;
    v34 = &unk_10032BC50;
    objc_copyWeak(&v37, &from);
    v35 = location[0];
    v38 = v88;
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

- (void)_presentViewControllerForBuddyController:(id)a3 animated:(BOOL)a4 willPresentViewController:(id)a5 completion:(id)a6
{
  v116 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v114 = a4;
  v113 = 0;
  objc_storeStrong(&v113, a5);
  v112 = 0;
  objc_storeStrong(&v112, a6);
  v111 = [(BuddyNavigationFlowController *)v116 _viewControllerForBuddyController:location[0]];
  v9 = [(BuddyNavigationFlowController *)v116 navigator];
  v10 = [(BuddyNavigationFlowNavigator *)v9 topViewController];
  v110 = [v10 firstResponder];

  if (v111)
  {
    [(BuddyNavigationFlowController *)v116 _hideBackButtonIfNecessaryOnFlowItem:location[0] withViewController:v111];
    if (v113)
    {
      (*(v113 + 2))();
    }

    v11 = [(BuddyNavigationFlowController *)v116 buddyControllers];
    [(NSMutableArray *)v11 addObject:location[0]];

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

      v15 = v116;
      v16 = [(BuddyNavigationFlowController *)v116 navigator];
      v17 = [(BuddyNavigationFlowNavigator *)v16 navigationController];
      [(BuddyNavigationFlowController *)v15 navigationController:v17 willShowViewController:v111 operation:1 animated:1];

      if (v110)
      {
        [(BuddyNavigationFlowController *)v116 setLastUIResponder:v110];
        [v110 resignFirstResponder];
      }

      v18 = [(BuddyNavigationFlowController *)v116 navigator];
      v19 = v114;
      v98 = _NSConcreteStackBlock;
      v99 = -1073741824;
      v100 = 0;
      v101 = sub_1000A7498;
      v102 = &unk_10032BC78;
      v103 = v116;
      v104 = v111;
      v105 = v112;
      [(BuddyNavigationFlowNavigator *)v18 presentViewController:v108 animated:v19 completion:&v98];

      objc_storeStrong(&v105, 0);
      objc_storeStrong(&v104, 0);
      objc_storeStrong(&v103, 0);
      objc_storeStrong(&v108, 0);
    }

    else if (v114)
    {
      v97 = [(BuddyNavigationFlowController *)v116 _shieldColorForNewTopFlowItemPush];
      v20 = [(BuddyNavigationFlowController *)v116 navigator];
      if (v97)
      {
        v90 = _NSConcreteStackBlock;
        v91 = -1073741824;
        v92 = 0;
        v93 = sub_1000A7544;
        v94 = &unk_10032BCA0;
        v96 = v112;
        v95 = v111;
        [(BuddyNavigationFlowNavigator *)v20 pushViewController:v111 usingShieldColor:v97 completion:&v90];

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
        [(BuddyNavigationFlowNavigator *)v20 pushViewController:v111 completion:&v83];

        objc_storeStrong(&v88, 0);
        objc_storeStrong(&v89, 0);
      }

      objc_storeStrong(&v97, 0);
    }

    else
    {
      v21 = [(BuddyNavigationFlowController *)v116 navigator];
      [(BuddyNavigationFlowNavigator *)v21 pushViewController:v111 animated:0];

      if (v112)
      {
        (*(v112 + 2))(v112, v111);
      }
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v82 = 0;
    v22 = [(BuddyNavigationFlowController *)v116 buddyControllers];
    v23 = [(NSMutableArray *)v22 lastObject];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(BuddyNavigationFlowController *)v116 buddyControllers];
      v26 = [(NSMutableArray *)v25 lastObject];
      v82 = [v26 shouldSuppressExtendedInitializationActivityIndicator] & 1;
    }

    oslog = _BYLoggingFacility();
    v80 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(BuddyNavigationFlowController *)v116 buddyControllers];
      v28 = [(NSMutableArray *)v27 lastObject];
      v79 = v28;
      if (v82)
      {
        v29 = @"YEP";
      }

      else
      {
        v29 = @"NERP";
      }

      sub_100073058(buf, v28, v29);
      _os_log_impl(&_mh_execute_header, oslog, v80, "Should suppress spinner over %{public}@: %{public}@", buf, 0x16u);

      objc_storeStrong(&v79, 0);
    }

    objc_storeStrong(&oslog, 0);
    if ((v82 & 1) == 0)
    {
      v30 = [(BuddyNavigationFlowController *)v116 navigator];
      v31 = [(BuddyNavigationFlowNavigator *)v30 topViewController];
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v31 identifier:@"BuddyNavigationFlowController"];
    }

    v78 = _BYLoggingFacility();
    v77 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(BuddyNavigationFlowController *)v116 navigator];
      v33 = [(BuddyNavigationFlowNavigator *)v32 view];
      v34 = [v33 window];
      sub_1000A4DC0(v118, "[BuddyNavigationFlowController _presentViewControllerForBuddyController:animated:willPresentViewController:completion:]", v34);
      _os_log_debug_impl(&_mh_execute_header, v78, v77, "%s setUserInteractionEnabled NO %p", v118, 0x16u);
    }

    objc_storeStrong(&v78, 0);
    v35 = [(BuddyNavigationFlowController *)v116 navigator];
    v36 = [(BuddyNavigationFlowNavigator *)v35 view];
    v37 = [v36 window];
    [v37 setUserInteractionEnabled:0];

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
    v39 = [(BuddyNavigationFlowController *)v116 navigator];
    v40 = [(BuddyNavigationFlowNavigator *)v39 navigationController];
    v52 = _NSConcreteStackBlock;
    v53 = -1073741824;
    v54 = 0;
    v55 = sub_1000A75CC;
    v56 = &unk_10032BCC8;
    v57 = v116;
    v63[1] = v73;
    v63[2] = v69;
    v58 = v65;
    v59 = location[0];
    v60 = v64;
    v62 = v113;
    v61 = v110;
    v63[0] = v112;
    [v38 presentHostedViewControllerOnNavigationController:v40 completion:&v52];

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
      v49 = v116;
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

  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(location, 0);
}

- (id)_shieldColorForNewTopFlowItemPush
{
  location[2] = self;
  location[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self buddyControllers];
  location[0] = [(NSMutableArray *)v2 lastObject];

  v3 = objc_opt_respondsToSelector();
  v4 = 0;
  if (v3)
  {
    v4 = [location[0] hasBlackBackground];
  }

  if (v4)
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

- (id)_viewControllerForBuddyController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [location[0] viewController];
    v4 = v7;
    v7 = v3;
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

- (void)_hideBackButtonIfNecessaryOnFlowItem:(id)a3 withViewController:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v5 = [(BuddyNavigationFlowController *)v28 buddyControllers];
  v6 = [(NSMutableArray *)v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:__b objects:v30 count:16];
  if (v7)
  {
    v8 = *__b[2];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v6);
      }

      obj = *(__b[1] + 8 * v9);
      v22 = [(BuddyNavigationFlowController *)v28 _viewControllerForBuddyController:obj];
      v10 = objc_opt_respondsToSelector();
      v11 = 0;
      if (v10)
      {
        v11 = [obj isEphemeral];
      }

      v21 = v11 & 1;
      v18 = 0;
      v12 = 0;
      if (v22)
      {
        v19 = [(BuddyNavigationFlowController *)v28 viewControllersToRemoveOnPush];
        v18 = 1;
        v12 = [v19 containsObject:v22];
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
        v7 = [v6 countByEnumeratingWithState:__b objects:v30 count:16];
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
    v13 = [v26 navigationItem];
    [v13 setHidesBackButton:1];
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllerFromNavHierarchy:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v8 navigator];
  v4 = [(BuddyNavigationFlowNavigator *)v3 viewControllers];
  v6 = [v4 mutableCopy];

  [v6 removeObject:location[0]];
  v5 = [(BuddyNavigationFlowController *)v8 navigator];
  [(BuddyNavigationFlowNavigator *)v5 setViewControllers:v6 animated:0];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateNavigationBackButtonTitleForViewController:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] navigationItem];
  [v3 setBackButtonDisplayMode:1];

  v4 = [location[0] navigationItem];
  v5 = [v4 backButtonTitle];

  if (v5)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v6 = v21;
  v7 = [(BuddyNavigationFlowController *)v21 buddyControllers];
  v8 = [(NSMutableArray *)v7 lastObject];
  v9 = [(BuddyNavigationFlowController *)v6 _viewControllerForBuddyController:v8];
  v10 = location[0];

  if (v9 != v10 || ((v11 = -[BuddyNavigationFlowController buddyControllers](v21, "buddyControllers"), v19 = -[NSMutableArray lastObject](v11, "lastObject"), v11, (objc_opt_respondsToSelector() & 1) == 0) || ([v19 isEphemeral] & 1) == 0 ? (v18 = 0) : (v18 = 1), objc_storeStrong(&v19, 0), !v18))
  {
    v17 = [(BuddyNavigationFlowController *)v21 _titleForViewController:location[0]];
    if (!v17)
    {
      oslog = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v14 = [location[0] customDescription];
        sub_10006AE18(buf, v14);
        _os_log_error_impl(&_mh_execute_header, oslog, v15, "Unable to determine title for view controller %@", buf, 0xCu);

        objc_storeStrong(&v14, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v12 = v17;
    v13 = [location[0] navigationItem];
    [v13 setBackButtonTitle:v12];

    objc_storeStrong(&v17, 0);
    goto LABEL_13;
  }

LABEL_14:
  objc_storeStrong(location, 0);
}

- (id)_titleForViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] title];

  if (v3)
  {
    v11 = [location[0] title];
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = location[0];
      v4 = [v8 headerView];
      v11 = [v4 title];

      v9 = 1;
      objc_storeStrong(&v8, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = location[0];
        v11 = [v7 navTitle];
        v9 = 1;
        objc_storeStrong(&v7, 0);
      }

      else
      {
        v11 = 0;
        v9 = 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  v5 = v11;

  return v5;
}

- (id)_flowForFlowItem:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  v3 = [(BuddyNavigationFlowController *)v17 buddyControllers];
  v4 = [(NSMutableArray *)v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v5)
  {
    v6 = *__b[2];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v4);
      }

      v15 = *(__b[1] + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v15;
        v8 = [v13 controllers];
        v9 = [v8 containsObject:location[0]];

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
        v5 = [v4 countByEnumeratingWithState:__b objects:v19 count:16];
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

- (BOOL)_isFlowItemAllowed:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v7 flowProducer];
  v5 = [objc_opt_class() allowedFlowItems];

  LOBYTE(v3) = [v5 containsObject:objc_opt_class()];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (id)_lastNonFlowFlowItemRelativeToFlowItem:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v15 buddyControllers];
  v13 = [(NSMutableArray *)v3 lastObject];

  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v4 = [(BuddyNavigationFlowController *)v15 buddyControllers];
    v5 = [(NSMutableArray *)v4 firstObject];

    if (v13 == v5)
    {
      objc_storeStrong(&v13, 0);
      break;
    }

    v6 = [(BuddyNavigationFlowController *)v15 buddyControllers];
    v7 = [(NSMutableArray *)v6 indexOfObject:v13]- 1;

    v8 = [(BuddyNavigationFlowController *)v15 buddyControllers];
    v9 = [(NSMutableArray *)v8 objectAtIndex:v7];
    v10 = v13;
    v13 = v9;
  }

  v11 = v13;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)_beginEventForNavigationDuration
{
  v2 = +[NSDate date];
  [(BuddyNavigationFlowController *)self setNavigationStartDate:v2];
}

- (void)_endEventForNavigationDurationFromFlowItem:(id)a3 toFlowItem:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v5 = [(BuddyNavigationFlowController *)v17 navigationStartDate];
  LOBYTE(a4) = v5 == 0;

  if (a4)
  {
    objc_exception_throw([NSException exceptionWithName:@"Attempted to add event for navigation duration without navigation start date" reason:0 userInfo:0]);
  }

  v6 = objc_opt_class();
  v14 = NSStringFromClass(v6);
  if (!v14)
  {
    objc_storeStrong(&v14, @"(null)");
  }

  v7 = [(BuddyNavigationFlowController *)v17 analyticsManager];
  v18[0] = @"startClass";
  v19[0] = v14;
  v18[1] = @"endClass";
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v19[1] = v9;
  v18[2] = @"duration";
  v10 = [(BuddyNavigationFlowController *)v17 navigationStartDate];
  [(NSDate *)v10 timeIntervalSinceNow];
  v12 = [NSNumber numberWithDouble:-v11];
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(BYAnalyticsManager *)v7 addEvent:@"com.apple.setupassistant.ios.navigation.duration" withPayload:v13 persist:1];

  [(BuddyNavigationFlowController *)v17 setNavigationStartDate:0];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_resumeNavigationQueue
{
  v2 = [(BuddyNavigationFlowController *)self navigationQueue:a2];
  dispatch_resume(v2);
}

- (void)_setupInitialFlowFromInitialFlowItem:(id)a3 debutFlowItemClass:(Class)a4 completion:(id)a5
{
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v50 = a4;
  v49 = 0;
  objc_storeStrong(&v49, a5);
  v48 = objc_alloc_init(NSMutableArray);
  [v48 addObject:location[0]];
  v7 = [v48 lastObject];
  v47 = objc_opt_class();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = location[0];
    [v46 startFlowWithAllFlowItems];
    v8 = [v46 controllers];
    [v48 addObjectsFromArray:v8];

    objc_storeStrong(&v46, 0);
  }

  v45 = objc_opt_class() == v50;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = v50;
  if (v9 != objc_opt_class())
  {
    goto LABEL_9;
  }

  v44 = [(BuddyNavigationFlowController *)v52 _createConditionalFlowItemForClass:v50];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v48 addObject:v44];
    v43 = [(BuddyNavigationFlowController *)v52 _viewControllerForBuddyController:location[0]];
    [(BuddyNavigationFlowController *)v52 setBuddyControllers:v48];
    v10 = [(BuddyNavigationFlowController *)v52 navigator];
    v55 = v43;
    v11 = [NSArray arrayWithObjects:&v55 count:1];
    [(BuddyNavigationFlowNavigator *)v10 setViewControllers:v11 animated:0];

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
      v12 = [(BuddyNavigationFlowController *)v52 flowProducer];
      v41 = [(BuddyFlowProducer *)v12 potentialNextFlowItemClassFollowingFlowItemClass:v47];

      if (!v41)
      {
        v40 = [NSString stringWithFormat:@"failedToFindDebutFlowItem.%@.%@", objc_opt_class(), v50];
        v39 = [NSString stringWithFormat:@"Unable to find debut flow item (%@)", v50];
        v38 = [NSException exceptionWithName:v39 reason:0 userInfo:0];
        v13 = [(BYEnvironment *)v52->_environment diagnosticsThreadDecorator];
        [v13 addDiagnostics:v40 thenThrowException:v38];

        objc_storeStrong(&v38, 0);
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v40, 0);
      }

      v37 = [(BuddyNavigationFlowController *)v52 _createConditionalFlowItemForClass:v41];
      if (v37)
      {
        [v48 addObject:v37];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v37;
          [v33 startFlowWithAllFlowItems];
          v15 = v48;
          v16 = [v33 controllers];
          [v15 addObjectsFromArray:v16];

          objc_storeStrong(&v33, 0);
        }

        v47 = v41;
        v45 = v41 == v50;
        v42 = 0;
      }

      else
      {
        if (v50 == v41)
        {
          v36 = [NSString stringWithFormat:@"debutFlowItemCreationFailed.%@.%@", objc_opt_class(), v50];
          v35 = [NSString stringWithFormat:@"Debut flow item (%@) could not be created", v50];
          v34 = [NSException exceptionWithName:v35 reason:0 userInfo:0];
          v14 = [(BYEnvironment *)v52->_environment diagnosticsThreadDecorator];
          [v14 addDiagnostics:v36 thenThrowException:v34];

          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v36, 0);
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
          v21 = [(BuddyNavigationFlowController *)v52 buddyControllers];
          [(NSMutableArray *)v21 addObject:v31];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = [(BuddyNavigationFlowController *)v52 _viewControllerForBuddyController:v31];
            if (v29)
            {
              [v32 addObject:v29];
            }

            else
            {
              v22 = objc_opt_class();
              v28 = [NSString stringWithFormat:@"noViewControllerForDebut.%@.%@.%@", v22, v50, objc_opt_class()];
              v27 = [NSString stringWithFormat:@"No view controller found for flow item (%@) while making our debut", v31];
              v26 = [NSException exceptionWithName:v27 reason:0 userInfo:0];
              v23 = [(BYEnvironment *)v52->_environment diagnosticsThreadDecorator];
              [v23 addDiagnostics:v28 thenThrowException:v26];

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
      sub_100078180(buf, v50, v48);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Making debut to %@ with the flow items: %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyNavigationFlowController *)v52 setBuddyControllers:v48];
    v24 = [(BuddyNavigationFlowController *)v52 navigator];
    [(BuddyNavigationFlowNavigator *)v24 setViewControllers:v32 animated:0];

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
  v14 = self;
  location[1] = a2;
  v2 = [(BuddyNavigationFlowController *)self navigator];
  v3 = [(BuddyNavigationFlowNavigator *)v2 viewControllers];
  location[0] = [v3 mutableCopy];

  v4 = [(BuddyNavigationFlowController *)v14 wifiController];
  v5 = [(BuddyWiFiController *)v4 viewController];
  [location[0] insertObject:v5 atIndex:0];

  v6 = [(BuddyNavigationFlowController *)v14 wifiController];
  [(BuddyWiFiController *)v6 updateNextButton];

  v7 = [(BuddyNavigationFlowController *)v14 wifiController];
  v8 = [(BuddyNavigationFlowController *)v14 navigator];
  v9 = [(BuddyNavigationFlowNavigator *)v8 navigationController];
  [(BuddyWiFiController *)v7 setNavigationController:v9];

  v10 = [(BuddyNavigationFlowController *)v14 buddyControllers];
  v11 = [(BuddyNavigationFlowController *)v14 wifiController];
  [(NSMutableArray *)v10 insertObject:v11 atIndex:0];

  v12 = [(BuddyNavigationFlowController *)v14 navigator];
  [(BuddyNavigationFlowNavigator *)v12 setViewControllers:location[0] animated:0];

  objc_storeStrong(location, 0);
}

- (BOOL)_hasWiFiControllerInNavigationStack
{
  v10 = self;
  __b[9] = a2;
  memset(__b, 0, 0x40uLL);
  v2 = [(BuddyNavigationFlowController *)v10 navigator];
  v3 = [(BuddyNavigationFlowNavigator *)v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:__b objects:v12 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:__b objects:v12 count:16];
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
  v46 = self;
  v45 = a2;
  v2 = [(BuddyNavigationFlowController *)self flowDelegate];
  v3 = [(BuddyNavigationFlowController *)v46 navigator];
  v4 = [(BuddyNavigationFlowNavigator *)v3 viewControllers];
  v5 = [v4 firstObject];
  v6 = [(BuddyFlowDelegate *)v2 willRestartFlowToViewController:v5]& 1;

  if (v6)
  {
    memset(__b, 0, sizeof(__b));
    v7 = [(BuddyNavigationFlowController *)v46 buddyControllers];
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:__b objects:v59 count:16];
    if (v8)
    {
      v9 = *__b[2];
      do
      {
        for (i = 0; i < v8; ++i)
        {
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v44 = *(__b[1] + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v44 startOver];
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:__b objects:v59 count:16];
      }

      while (v8);
    }

    v11 = [(BuddyNavigationFlowController *)v46 navigator];
    v12 = [(BuddyNavigationFlowNavigator *)v11 presentedViewController];

    if (v12)
    {
      v13 = [(BuddyNavigationFlowController *)v46 navigator];
      [(BuddyNavigationFlowNavigator *)v13 dismissViewControllerAnimated:0 completion:0];
    }

    else
    {
      v14 = [(BuddyNavigationFlowController *)v46 navigator];
      v15 = [(BuddyNavigationFlowNavigator *)v14 viewControllers];
      v16 = [v15 count];

      if (v16 > 1)
      {
        v17 = [(BuddyNavigationFlowController *)v46 buddyPreferences];
        [(BYPreferencesController *)v17 reset];
      }
    }

    v18 = [(BuddyNavigationFlowController *)v46 navigator];
    v19 = [(BuddyNavigationFlowNavigator *)v18 popToRootViewControllerAnimated:1];

    v20 = [(BuddyNavigationFlowController *)v46 buddyControllers];
    v42 = [(NSMutableArray *)v20 objectAtIndexedSubscript:0];

    [v42 setDelegate:v46];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(BuddyNavigationFlowController *)v46 buddyControllers];
      v41 = [(NSMutableArray *)v21 objectAtIndexedSubscript:0];

      v22 = [(BuddyNavigationFlowController *)v46 buddyControllers];
      location = [(NSMutableArray *)v22 objectAtIndexedSubscript:1];

      v23 = [v41 controllers];
      v24 = [v23 containsObject:location];

      if (v24)
      {
        [location setDelegate:v41];
        v25 = [(BuddyNavigationFlowController *)v46 buddyControllers];
        v26 = [(BuddyNavigationFlowController *)v46 buddyControllers];
        v56 = 0;
        v55 = 2;
        v57 = 0;
        v58 = 2;
        oslog[2] = 2;
        oslog[1] = 0;
        v27 = [(NSMutableArray *)v26 subarrayWithRange:0, 2];
        [(NSMutableArray *)v25 setArray:v27];
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
        v30 = [(BuddyNavigationFlowController *)v46 buddyControllers];
        v31 = [(BuddyNavigationFlowController *)v46 buddyControllers];
        v52 = 0;
        v51 = 1;
        v53 = 0;
        v54 = 1;
        v32 = [(NSMutableArray *)v31 subarrayWithRange:0, 1];
        [(NSMutableArray *)v30 setArray:v32];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v41, 0);
    }

    else
    {
      v33 = [(BuddyNavigationFlowController *)v46 buddyControllers];
      v34 = [(BuddyNavigationFlowController *)v46 buddyControllers];
      v48 = 0;
      v47 = 1;
      v49 = 0;
      v50 = 1;
      v35 = [(NSMutableArray *)v34 subarrayWithRange:0, 1, 0, 1];
      [(NSMutableArray *)v33 setArray:v35];
    }

    v36 = [(BuddyNavigationFlowController *)v46 flowDelegate];
    [(BuddyFlowDelegate *)v36 didRestartFlow];

    objc_storeStrong(&v42, 0);
  }
}

- (BOOL)_stackHasOnlyCloudConfigurationItems
{
  v11 = self;
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
  v2 = [(BuddyNavigationFlowController *)v11 navigator];
  v3 = [(BuddyNavigationFlowNavigator *)v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        __b[8] = *(__b[1] + 8 * i);
        if (([location[0] containsObject:objc_opt_class()] & 1) == 0)
        {
          v12 = 0;
          v8 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
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

- (BOOL)controllerNeedsToRunForClass:(Class)a3
{
  v3 = [(BuddyNavigationFlowController *)self flowStarter];
  v4 = [(BFFFlowStarter *)v3 controllerNeedsToRunForClass:a3];

  return v4 & 1;
}

- (void)markFlowItemDone:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)_unmarkFlowItemAsFinished:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v6, "Rise again chosen flowItem: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyNavigationFlowController *)v9 _flowForFlowItem:location[0]];
  if (v5)
  {
    v3 = [v5 delegate];
    v4 = +[BuddyNavigationPit shared];

    if (v3 == v4)
    {
      [(BuddyNavigationFlowController *)v9 _unmarkFlowItemAsFinished:v5];
    }

    [location[0] setDelegate:{v5, v5}];
  }

  else
  {
    [location[0] setDelegate:v9];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isFlowItemOnTop:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v8 buddyControllers];
  v4 = [(NSMutableArray *)v3 lastObject];
  v5 = v4 == location[0];

  objc_storeStrong(location, 0);
  return v5;
}

- (void)pushFlowItem:(id)a3 animated:(BOOL)a4
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyNavigationFlowController *)v5 pushFlowItem:location[0] inFlow:0 animated:1];
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [(BuddyNavigationFlowController *)v9 pushFlowItem:location[0] inFlow:v7 withExtendedInitialization:1 animated:a5];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [(BuddyNavigationFlowController *)v11 pushFlowItem:location[0] inFlow:v9 withExtendedInitialization:a5 animated:a6 willPushFlowItem:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = a5;
  v12 = a6;
  v11 = 0;
  objc_storeStrong(&v11, a7);
  [(BuddyNavigationFlowController *)v16 _pushFlowItem:location[0] inFlow:v14 withExtendedInitialization:v13 animated:v12 willPushFlowItem:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllersOnNextPush:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v10 viewControllersToRemoveOnPush];
  v4 = [(NSArray *)v3 count];

  if (v4)
  {
    v5 = [(BuddyNavigationFlowController *)v10 viewControllersToRemoveOnPush];
    v6 = [(NSArray *)v5 arrayByAddingObjectsFromArray:location[0]];
    [(BuddyNavigationFlowController *)v10 setViewControllersToRemoveOnPush:v6];
  }

  else
  {
    [(BuddyNavigationFlowController *)v10 setViewControllersToRemoveOnPush:location[0]];
  }

  v7 = [(BuddyNavigationFlowController *)v10 navigator];
  v8 = [(BuddyNavigationFlowNavigator *)v7 topViewController];
  [(BuddyNavigationFlowController *)v10 setTopViewControllerForRemoving:v8];

  objc_storeStrong(location, 0);
}

- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5
{
  v48 = self;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v37 = _NSConcreteStackBlock;
  v38 = -1073741824;
  v39 = 0;
  v40 = sub_1000AB1BC;
  v41 = &unk_10032BD40;
  v42 = self;
  v43 = objc_retainBlock(&v37);
  if (v45 || ([(objc_class *)v46 isEqual:objc_opt_class()]& 1) == 0 || (v5 = v43, v6 = objc_opt_class(), (v36 = v5[2](v5, v6) & 1) != 0))
  {
    if (v45 || ([(objc_class *)v46 isEqual:objc_opt_class()]& 1) == 0 || ((v8 = v43, v9 = objc_opt_class(), v27 = v8[2](v8, v9) & 1, v20 = _NSConcreteStackBlock, v21 = -1073741824, v22 = 0, v23 = sub_1000AB444, v24 = &unk_10032B0D0, v25 = v48, location = objc_retainBlock(&v20), (v27 & 1) != 0) ? ((*(location + 2))(), v28 = 0) : (v10 = v48, v13 = _NSConcreteStackBlock, v14 = 3221225472, v15 = sub_1000AB4DC, v16 = &unk_10032BD90, v18[0] = location, v17 = v48, v18[1] = v46, v18[2] = v45, v19 = v44, v49 = [(BuddyNavigationFlowController *)v10 _ensureDeviceProximitySetupControllerWithCompletion:&v13], objc_storeStrong(&v17, 0), objc_storeStrong(v18, 0), v28 = 1), objc_storeStrong(&location, 0), objc_storeStrong(&v25, 0), !v28))
    {
      v49 = [(BuddyNavigationFlowController *)v48 _popToBuddyControllerWithClass:v46 withOffset:v45 animated:v44, v13, v14, v15, v16];
      v28 = 1;
    }
  }

  else
  {
    v7 = v48;
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_1000AB3F0;
    v33 = &unk_10032BD68;
    v34[0] = v48;
    v34[1] = v46;
    v34[2] = v45;
    v35 = v44;
    v49 = [(BuddyNavigationFlowController *)v7 _ensureDeviceRestoreChoiceControllerWithCompletion:&v29];
    objc_storeStrong(v34, 0);
    v28 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v42, 0);
  v11 = v49;

  return v11;
}

- (id)_popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v5 = [(BuddyNavigationFlowController *)self navigator];
  v14 = [(BuddyNavigationFlowNavigator *)v5 viewControllers];

  for (i = [v14 count] - 1; (i & 0x8000000000000000) == 0; --i)
  {
    v12 = [v14 objectAtIndexedSubscript:i];
    if (objc_opt_isKindOfClass())
    {
      location = [v14 objectAtIndexedSubscript:i + v16];
      v6 = [(BuddyNavigationFlowController *)v19 navigator];
      v7 = [(BuddyNavigationFlowNavigator *)v6 popToViewController:location animated:v15];

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
  objc_storeStrong(&v14, 0);
  v8 = v20;

  return v8;
}

- (id)_ensureDeviceRestoreChoiceControllerWithCompletion:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v28->_weakViewControllersPrecedingDeviceRestoreChoiceController || !v28->_weakBuddyControllersPrecedingDeviceRestoreChoiceController)
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
  v20 = [(BuddyNavigationFlowController *)v28 _createFlowItemForClass:objc_opt_class()];
  [v20 setDelegate:v28];
  v5 = v28;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000AB9D4;
  v18 = &unk_10032BDB8;
  v19 = v28;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000ABBCC;
  v12 = &unk_10032BDB8;
  v13 = v28;
  [(BuddyNavigationFlowController *)v5 _ensureControllerExistsWithTarget:v20 viewControllerInsertionIndexGenerator:&v14 buddyControllerInsertionIndexGenerator:&v8 withCompletion:location[0]];
  v6 = v20;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)_ensureDeviceProximitySetupControllerWithCompletion:(id)a3
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v20 = [(BuddyNavigationFlowController *)v25 _createFlowItemForClass:objc_opt_class()];
  v5 = v25;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1000ABF90;
  v18 = &unk_10032BDB8;
  v19 = v25;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000AC0AC;
  v12 = &unk_10032BDB8;
  v13 = v25;
  [(BuddyNavigationFlowController *)v5 _ensureControllerExistsWithTarget:v20 viewControllerInsertionIndexGenerator:&v14 buddyControllerInsertionIndexGenerator:&v8 withCompletion:location[0]];
  v6 = v20;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_ensureControllerExistsWithTarget:(id)a3 viewControllerInsertionIndexGenerator:(id)a4 buddyControllerInsertionIndexGenerator:(id)a5 withCompletion:(id)a6
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = 0;
  objc_storeStrong(&v29, a6);
  [location[0] setDelegate:v33];
  v28 = objc_retainBlock(&stru_10032BE78);
  v9 = v33;
  v10 = location[0];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_1000AC604;
  v26 = &unk_10032B0D0;
  v27 = v33;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000AC630;
  v15 = &unk_10032BEA0;
  v16 = v33;
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

- (void)flow:(id)a3 finishedWithLastItem:(id)a4 nextItem:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Flow finished: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyNavigationFlowController *)v11 _flowItemDone:v9 flow:location[0] nextItemClass:0 nextItem:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)presentWiFiPaneForFlow:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyNavigationFlowController *)v5 flowDelegate];
  [(BuddyFlowDelegate *)v3 presentWiFiSettingsModally];

  objc_storeStrong(location, 0);
}

- (void)flowItemCancelled:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Cancelling flow item %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyNavigationFlowController *)v15 markFlowItemDone:location[0]];
  v3 = [(BuddyNavigationFlowController *)v15 navigator];
  v4 = [(BuddyNavigationFlowNavigator *)v3 presentedViewController];

  if (v4)
  {
    v5 = [(BuddyNavigationFlowController *)v15 navigator];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1000ACC34;
    v10 = &unk_10032B0D0;
    v11 = v15;
    [(BuddyNavigationFlowNavigator *)v5 dismissViewControllerAnimated:1 completion:&v6];

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyNavigationFlowController *)v4 _flowItemDone:location[0] flow:0 nextItemClass:0 nextItem:0];
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyNavigationFlowController *)v7 _flowItemDone:location[0] flow:0 nextItemClass:0 nextItem:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyNavigationFlowController *)v6 _flowItemDone:location[0] flow:0 nextItemClass:a4 nextItem:0, a4];
  objc_storeStrong(location, 0);
}

- (void)presentWiFiPaneForFlowItem:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  sub_1000A9C6C();
  v4 = [(BuddyNavigationFlowController *)v3 popToBuddyControllerWithClass:objc_opt_class() animated:1];

  if (!v4)
  {
    [(BuddyNavigationFlowController *)v8 _insertWiFiControllerAsFirstPane];
    v5 = v8;
    sub_1000A9C6C();
    v6 = [(BuddyNavigationFlowController *)v5 popToBuddyControllerWithClass:objc_opt_class() animated:1];
  }

  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = a5;
  v38 = a6;
  if (a5 == 1)
  {
    oslog = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v40 customDescription];
      sub_100071CBC(buf, v35);
      _os_log_impl(&_mh_execute_header, oslog, v36, "Pushing to %{public}@", buf, 0xCu);

      objc_storeStrong(&v35, 0);
    }

    objc_storeStrong(&oslog, 0);
    v34 = _BYLoggingFacility();
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(BuddyNavigationFlowController *)v42 navigator];
      v10 = [(BuddyNavigationFlowNavigator *)v9 view];
      v11 = [v10 window];
      sub_1000A4DC0(v45, "[BuddyNavigationFlowController navigationController:willShowViewController:operation:animated:]", v11);
      _os_log_debug_impl(&_mh_execute_header, v34, v33, "%s setUserInteractionEnabled NO %p", v45, 0x16u);
    }

    objc_storeStrong(&v34, 0);
    v12 = [(BuddyNavigationFlowController *)v42 navigator];
    v13 = [(BuddyNavigationFlowNavigator *)v12 navigationController];
    v14 = [(BFFNavigationController *)v13 view];
    [v14 setUserInteractionEnabled:0];
  }

  else if (v39 == 2)
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v40 customDescription];
      sub_100071CBC(v44, v30);
      _os_log_impl(&_mh_execute_header, v32, v31, "Popping to %{public}@", v44, 0xCu);

      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&v32, 0);
    if ([location[0] _builtinTransitionStyle] == 1)
    {
      v15 = [(BuddyNavigationFlowController *)v42 navigator];
      v16 = [(BuddyNavigationFlowNavigator *)v15 navigationController];
      v17 = [(BFFNavigationController *)v16 view];
      [v17 setUserInteractionEnabled:0];
    }

    v18 = [(BuddyNavigationFlowController *)v42 lastUIResponder];

    if (v18)
    {
      v19 = v40;
      v20 = [(BuddyNavigationFlowController *)v42 lastUIResponder];
      LOBYTE(v19) = [v19 _containsResponder:v20];

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
        v23 = [(BuddyNavigationFlowController *)v42 lastUIResponder];
        [(UIResponder *)v23 becomeFirstResponder];
      }
    }
  }

  else
  {
    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v40 customDescription];
      sub_1000A57DC(v43, v24, v39);
      _os_log_impl(&_mh_execute_header, v26, v25, "Moving to %{public}@ via operation %i", v43, 0x12u);

      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v210 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v208 = 0;
  objc_storeStrong(&v208, a4);
  v207 = a5;
  v206 = a6;
  v9 = [(BuddyNavigationFlowController *)v210 wifiController];
  v203 = 0;
  v201 = 0;
  v199 = 0;
  v197 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0;
  v10 = 0;
  if (v9)
  {
    v204 = [(BuddyNavigationFlowController *)v210 wifiController];
    v203 = 1;
    v10 = 0;
    if (objc_opt_respondsToSelector())
    {
      v202 = [(BuddyNavigationFlowController *)v210 navigator];
      v201 = 1;
      v200 = [(BuddyNavigationFlowNavigator *)v202 topViewController];
      v199 = 1;
      v198 = [(BuddyNavigationFlowController *)v210 wifiController];
      v197 = 1;
      v196 = [(BuddyWiFiController *)v198 viewController];
      v195 = 1;
      v10 = 0;
      if (v200 == v196)
      {
        v194 = [(BuddyNavigationFlowController *)v210 navigator];
        v193 = 1;
        v192 = [(BuddyNavigationFlowNavigator *)v194 presentedViewController];
        v191 = 1;
        v10 = v192 == 0;
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
  if ([(BuddyNavigationFlowController *)v210 _hasWiFiControllerInNavigationStack]&& ![(BuddyNavigationFlowController *)v210 didInsertWiFiPaneForCloudConfigurationFlow]&& !v205)
  {
    v11 = [(BuddyNavigationFlowController *)v210 flowDelegate];
    [(BuddyFlowDelegate *)v11 disableTapFreeSetUp];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v190 = _BYLoggingFacility();
    v189 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
    {
      v188 = [v208 pageID];
      v187 = [v208 navTitle];
      sub_1000AF00C(buf, v188, v187, v208, v207);
      _os_log_impl(&_mh_execute_header, v190, v189, "Setup showing RUIPage %{public}@ %@ (%p) via operation %i", buf, 0x26u);

      objc_storeStrong(&v187, 0);
      objc_storeStrong(&v188, 0);
    }

    objc_storeStrong(&v190, 0);
  }

  else
  {
    v186 = _BYLoggingFacility();
    v185 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
    {
      v184 = [v208 customDescription];
      sub_1000AF044(v219, v184, v208, v207);
      _os_log_impl(&_mh_execute_header, v186, v185, "Setup showing controller %{public}@ (%p) via operation %i", v219, 0x1Cu);

      objc_storeStrong(&v184, 0);
    }

    objc_storeStrong(&v186, 0);
  }

  [(BuddyNavigationFlowController *)v210 _updateNavigationBackButtonTitleForViewController:v208];
  v183 = 0x7FFFFFFFFFFFFFFFLL;
  for (i = 0; ; ++i)
  {
    v12 = i;
    if (v12 >= [(NSMutableArray *)v210->_buddyControllers count])
    {
      break;
    }

    v181 = [(NSMutableArray *)v210->_buddyControllers objectAtIndexedSubscript:i];
    v180 = [(BuddyNavigationFlowController *)v210 _viewControllerForBuddyController:v181];
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
      if (v13 >= [(NSMutableArray *)v210->_buddyControllers count])
      {
        break;
      }

      v177 = [(NSMutableArray *)v210->_buddyControllers objectAtIndexedSubscript:j];
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
          v17 = [v208 customDescription];
          v174 = v17;
          sub_1000AF070(v218, v16, v17, v208);
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

  if (v207 == 2)
  {
    if (v183 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(BuddyNavigationFlowController *)v210 buddyControllers];
      v19 = [(NSMutableArray *)v18 count]- 1;

      for (k = v19; (k & 0x8000000000000000) == 0; --k)
      {
        v20 = [(BuddyNavigationFlowController *)v210 buddyControllers];
        v172 = [(NSMutableArray *)v20 objectAtIndexedSubscript:k];

        v171 = [(BuddyNavigationFlowController *)v210 _viewControllerForBuddyController:v172];
        v21 = [(BuddyNavigationFlowController *)v210 navigator];
        v22 = [(BuddyNavigationFlowNavigator *)v21 viewControllers];
        v23 = [v22 containsObject:v171] ^ 1;

        if (v23)
        {
          if (objc_opt_respondsToSelector())
          {
            [v172 controllerWasPopped];
          }

          v24 = [(BuddyNavigationFlowController *)v210 buddyControllers];
          [(NSMutableArray *)v24 removeObjectAtIndex:k];

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
      v25 = [(BuddyNavigationFlowController *)v210 buddyControllers];
      v26 = [(NSMutableArray *)v25 count]- 1;

      for (m = v26; m > v183; --m)
      {
        v27 = [(BuddyNavigationFlowController *)v210 buddyControllers];
        v169 = [(NSMutableArray *)v27 lastObject];

        if (objc_opt_respondsToSelector())
        {
          [v169 controllerWasPopped];
        }

        v28 = [(BuddyNavigationFlowController *)v210 buddyControllers];
        [(NSMutableArray *)v28 removeLastObject];

        objc_storeStrong(&v169, 0);
      }
    }
  }

  if (v207 == 1)
  {
    v29 = [(BuddyNavigationFlowController *)v210 navigator];
    v30 = [(BuddyNavigationFlowNavigator *)v29 viewControllers];
    v168 = [v30 mutableCopy];

    v167 = objc_opt_new();
    v31 = [(BuddyNavigationFlowController *)v210 viewControllersToRemoveOnPush];
    v165 = 0;
    v163 = 0;
    v161 = 0;
    v32 = 0;
    if ([(NSArray *)v31 count])
    {
      v166 = [(BuddyNavigationFlowController *)v210 navigator];
      v165 = 1;
      v164 = [(BuddyNavigationFlowNavigator *)v166 viewControllers];
      v163 = 1;
      v162 = [(BuddyNavigationFlowController *)v210 topViewControllerForRemoving];
      v161 = 1;
      v32 = [v164 containsObject:?];
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
      v33 = [(BuddyNavigationFlowController *)v210 viewControllersToRemoveOnPush];
      v34 = [(BuddyNavigationFlowController *)v210 navigator];
      v35 = [(BuddyNavigationFlowNavigator *)v34 topViewController];
      v36 = [(NSArray *)v33 containsObject:v35];

      v160 = v36 & 1;
      v159 = 0;
      v37 = [(BuddyNavigationFlowController *)v210 navigator];
      v38 = [(BuddyNavigationFlowNavigator *)v37 presentedViewController];
      objc_opt_class();
      LOBYTE(v35) = objc_opt_isKindOfClass();

      if (v35)
      {
        v39 = [(BuddyNavigationFlowController *)v210 navigator];
        v158 = [(BuddyNavigationFlowNavigator *)v39 presentedViewController];

        v40 = [v158 viewControllers];
        v41 = [v40 firstObject];
        v42 = v210;
        v43 = [(BuddyNavigationFlowController *)v210 buddyControllers];
        v44 = [(NSMutableArray *)v43 lastObject];
        v45 = [(BuddyNavigationFlowController *)v42 _viewControllerForBuddyController:v44];
        v159 = v41 == v45;

        objc_storeStrong(&v158, 0);
      }

      if ((v160 & 1) == 0 || v159)
      {
        v46 = v167;
        v47 = [(BuddyNavigationFlowController *)v210 viewControllersToRemoveOnPush];
        [v46 addObjectsFromArray:v47];

        [(BuddyNavigationFlowController *)v210 setViewControllersToRemoveOnPush:0];
      }
    }

    else
    {
      [(BuddyNavigationFlowController *)v210 setViewControllersToRemoveOnPush:0];
      [(BuddyNavigationFlowController *)v210 setTopViewControllerForRemoving:0];
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
          v53 = 0;
          if (v52)
          {
            v53 = [v157 isEphemeral];
          }

          v155 = v53 & 1;
          v153 = 0;
          v54 = 0;
          if (v53)
          {
            v54 = 0;
            if (v157 != v208)
            {
              v55 = v157;
              v154 = [v168 lastObject];
              v153 = 1;
              v56 = v55 == v154;
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
      v57 = [(BuddyNavigationFlowController *)v210 buddyControllers];
      v58 = [(NSMutableArray *)v57 count]- 1;

      for (ii = v58; (ii & 0x8000000000000000) == 0; --ii)
      {
        v59 = [(BuddyNavigationFlowController *)v210 buddyControllers];
        v150 = [(NSMutableArray *)v59 objectAtIndexedSubscript:ii];

        v149 = [(BuddyNavigationFlowController *)v210 _viewControllerForBuddyController:v150];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v61 = 1;
        if ((isKindOfClass & 1) == 0)
        {
          v61 = [v167 containsObject:v149];
        }

        v148 = v61 & 1;
        [(BuddyNavigationFlowController *)v210 _unmarkFlowItemAsFinished:v150];
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
              v67 = [(BuddyNavigationFlowController *)v210 buddyControllers];
              v68 = [(NSMutableArray *)v67 objectAtIndexedSubscript:ii];
              sub_10006AE18(v215, v68);
              _os_log_impl(&_mh_execute_header, v66, v143, "Removing %@ from the controllers list; it is not responsible for any existing view controllers", v215, 0xCu);
            }

            objc_storeStrong(&v144, 0);
            v69 = [(BuddyNavigationFlowController *)v210 buddyControllers];
            [(NSMutableArray *)v69 removeObjectAtIndex:ii];
          }
        }

        objc_storeStrong(&v149, 0);
        objc_storeStrong(&v150, 0);
      }

      v70 = [(BuddyNavigationFlowController *)v210 navigator];
      [(BuddyNavigationFlowNavigator *)v70 setViewControllers:v152 animated:0];

      objc_storeStrong(&v152, 0);
    }

    v71 = v208;
    v72 = v210;
    v73 = [(BuddyNavigationFlowController *)v210 buddyControllers];
    v74 = [(NSMutableArray *)v73 lastObject];
    v75 = [(BuddyNavigationFlowController *)v72 _viewControllerForBuddyController:v74];

    if (v71 == v75)
    {
      v76 = [(BuddyNavigationFlowController *)v210 buddyControllers];
      v142 = [(NSMutableArray *)v76 lastObject];

      if ((objc_opt_respondsToSelector() & 1) != 0 && [v142 allowedTerminationSources])
      {
        v141 = ([v142 allowedTerminationSources] & 1) == 1;
        v77 = [(BuddyNavigationFlowController *)v210 lifecycleDelegate];
        [(BuddyLifecycleDelegate *)v77 willEndLifecycleDueToCause:1 allowDismissal:v141];
      }

      objc_storeStrong(&v142, 0);
    }

    objc_storeStrong(&v167, 0);
    objc_storeStrong(&v168, 0);
  }

  sub_1000A9C6C();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v210->_wifiController)
  {
    v140 = [(NSMutableArray *)v210->_buddyControllers indexOfObjectPassingTest:&stru_10032BEE0];
    if (v140 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = [(NSMutableArray *)v210->_buddyControllers objectAtIndexedSubscript:v140];
      wifiController = v210->_wifiController;
      v210->_wifiController = v78;
    }
  }

  v80 = [(BuddyNavigationFlowController *)v210 trailingControllers];
  v81 = [(NSMutableArray *)v80 count];

  if (v81)
  {
    v139 = objc_alloc_init(NSMutableArray);
    memset(v137, 0, sizeof(v137));
    v82 = [(NSMutableArray *)v210->_buddyControllers reverseObjectEnumerator];
    v83 = [v82 countByEnumeratingWithState:v137 objects:v214 count:16];
    if (v83)
    {
      v84 = *v137[2];
      while (2)
      {
        for (kk = 0; kk < v83; ++kk)
        {
          if (*v137[2] != v84)
          {
            objc_enumerationMutation(v82);
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

        v83 = [v82 countByEnumeratingWithState:v137 objects:v214 count:16];
        if (v83)
        {
          continue;
        }

        break;
      }
    }

    v179 = 0;
LABEL_151:

    v86 = [(BuddyNavigationFlowController *)v210 trailingControllers];
    v87 = [(NSMutableArray *)v86 count]- 1;

    for (mm = v87; (mm & 0x80000000) == 0; --mm)
    {
      v88 = [(BuddyNavigationFlowController *)v210 trailingControllers];
      v135 = [(NSMutableArray *)v88 objectAtIndexedSubscript:mm];

      if (v135 && ([(NSMutableArray *)v210->_buddyControllers containsObject:v135]& 1) != 0)
      {
        v89 = [(BuddyNavigationFlowController *)v210 trailingControllers];
        [(NSMutableArray *)v89 removeObjectAtIndex:mm];
      }

      objc_storeStrong(&v135, 0);
    }

    [(NSMutableArray *)v210->_buddyControllers removeObjectsInArray:v139];
    buddyControllers = v210->_buddyControllers;
    v91 = [(BuddyNavigationFlowController *)v210 trailingControllers];
    [(NSMutableArray *)buddyControllers addObjectsFromArray:v91];

    [(NSMutableArray *)v210->_buddyControllers addObjectsFromArray:v139];
    v92 = [(BuddyNavigationFlowController *)v210 navigator];
    v93 = [(BuddyNavigationFlowNavigator *)v92 viewControllers];
    v134 = [v93 mutableCopy];

    v94 = [(BuddyNavigationFlowController *)v210 navigator];
    v95 = [(BuddyNavigationFlowNavigator *)v94 viewControllers];
    v133 = [v95 lastObject];

    [v134 removeLastObject];
    memset(v131, 0, sizeof(v131));
    v96 = [(BuddyNavigationFlowController *)v210 trailingControllers];
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:v131 objects:v213 count:16];
    if (v97)
    {
      v98 = *v131[2];
      do
      {
        for (nn = 0; nn < v97; ++nn)
        {
          if (*v131[2] != v98)
          {
            objc_enumerationMutation(v96);
          }

          v132 = *(v131[1] + 8 * nn);
          v130 = [(BuddyNavigationFlowController *)v210 _viewControllerForBuddyController:v132];
          if (v130 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v100 = v132;
            v101 = [(BuddyNavigationFlowController *)v210 navigator];
            v102 = [(BuddyNavigationFlowNavigator *)v101 navigationController];
            [v100 setNavigationController:v102];
          }

          [v134 addObject:v130];
          objc_storeStrong(&v130, 0);
        }

        v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:v131 objects:v213 count:16];
      }

      while (v97);
    }

    [v134 addObject:v133];
    v103 = [(BuddyNavigationFlowController *)v210 navigator];
    [(BuddyNavigationFlowNavigator *)v103 setViewControllers:v134 animated:0];

    oslog = _BYLoggingFacility();
    v128 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [(BuddyNavigationFlowController *)v210 trailingControllers];
      v105 = [(NSMutableArray *)v104 count];
      v106 = v133;
      v107 = [(BuddyNavigationFlowController *)v210 trailingControllers];
      sub_10008FCD8(v212, v105, v106, v107);
      _os_log_impl(&_mh_execute_header, oslog, v128, "Inserting %ld controller(s) before %@: %@", v212, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v108 = [(BuddyNavigationFlowController *)v210 trailingControllers];
    [(NSMutableArray *)v108 removeAllObjects];

    objc_storeStrong(&v133, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v139, 0);
  }

  v109 = [(BuddyNavigationFlowController *)v210 buddyControllers];
  v110 = [(NSMutableArray *)v109 count];

  if (v110)
  {
    v111 = [(BuddyNavigationFlowController *)v210 buddyControllers];
    v127 = [(NSMutableArray *)v111 lastObject];

    v112 = [(BuddyNavigationFlowController *)v210 _viewControllerForBuddyController:v127];
    v113 = v208;

    if (v112 == v113)
    {
      v114 = [(BuddyNavigationFlowController *)v210 buddyControllers];
      v126 = [(NSMutableArray *)v114 lastObject];

      [(BuddyNavigationFlowController *)v210 _unmarkFlowItemAsFinished:v126];
      if (objc_opt_respondsToSelector())
      {
        [v126 flowItemDidAppear:v206];
      }

      objc_storeStrong(&v126, 0);
    }

    else if (v207 == 2 && [(BuddyNavigationFlowController *)v210 isFlowItem:v127 responsibleForViewController:v208])
    {
      [(BuddyNavigationFlowController *)v210 _unmarkFlowItemAsFinished:v127];
    }

    objc_storeStrong(&v127, 0);
  }

  v115 = [(BuddyNavigationFlowController *)v210 navigator];
  v116 = [(BuddyNavigationFlowNavigator *)v115 navigationController];
  v117 = [(BFFNavigationController *)v116 view];
  v118 = [v117 isUserInteractionEnabled] ^ 1;

  if (v118)
  {
    v125 = _BYLoggingFacility();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      v119 = [(BuddyNavigationFlowController *)v210 navigator];
      v120 = [(BuddyNavigationFlowNavigator *)v119 view];
      v121 = [v120 window];
      sub_1000A4DC0(v211, "[BuddyNavigationFlowController navigationController:didShowViewController:operation:animated:]", v121);
      _os_log_debug_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEBUG, "%s setUserInteractionEnabled YES %p", v211, 0x16u);
    }

    objc_storeStrong(&v125, 0);
    v122 = [(BuddyNavigationFlowController *)v210 navigator];
    v123 = [(BuddyNavigationFlowNavigator *)v122 navigationController];
    v124 = [(BFFNavigationController *)v123 view];
    [v124 setUserInteractionEnabled:1];
  }

  objc_storeStrong(&v208, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isFlowItem:(id)a3 responsibleForViewController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [location[0] responsibleForViewController:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_injectDependencies:(id)a3 withEnvironment:(id)a4
{
  v74 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v72 = 0;
  objc_storeStrong(&v72, a4);
  if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___BYEnvironmentDependencyReceiver])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] isViewLoaded])
    {
      oslog = _BYLoggingFacility();
      v70 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        v69 = [location[0] customDescription];
        sub_10006AE18(buf, v69);
        _os_log_fault_impl(&_mh_execute_header, oslog, v70, "Precondition failed item cannot be injected as item:(%@)'s loadView has been called", buf, 0xCu);

        objc_storeStrong(&v69, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v68 = location[0];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v72 deviceProvider];
      [v68 setDeviceProvider:v5];
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [v72 suspendTask];
      [v68 setSuspendTask:v6];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v72 pendingRestoreState];
      [v68 setPendingRestoreState:v7];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v72 chronicle];
      [v68 setChronicle:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v72 miscState];
      [v68 setMiscState:v9];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v72 proximitySetupController];
      [v68 setProximitySetupController:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v72 proximityAutomatedDeviceEnrollmentController];
      [v68 setProximityAutomatedDeviceEnrollmentController:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v72 backupDeviceController];
      [v68 setBackupDeviceController:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v72 systemTimeUpdateManager];
      [v68 setSystemTimeUpdateManager:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v72 enrollmentCoordinator];
      [v68 setEnrollmentCoordinator:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v72 menuButtonPressedBlock];
      [v68 setMenuButtonPressedBlock:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v72 showModalWiFiSettingsBlock];
      [v68 setShowModalWiFiSettingsBlock:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v72 writeGreenInformedDefaultPlistIfNecessaryBlock];
      [v68 setWriteGreenInformedDefaultPlistIfNecessaryBlock:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v72 doesRestartFlowCauseEraseBlock];
      [v68 setDoesRestartFlowCauseEraseBlock:v18];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v72 prepareForCloudRestoreRebootBlock];
      [v68 setPrepareForCloudRestoreRebootBlock:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v72 exitBuddyForDemoSetUpBlock];
      [v68 setExitBuddyForDemoSetUpBlock:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v72 prepareForDeviceMigrationBlock];
      [v68 setPrepareForDeviceMigrationBlock:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v72 startDeviceMigrationBlock];
      [v68 setStartDeviceMigrationBlock:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v72 existingSettings];
      [v68 setExistingSettings:v23];
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v72 displayZoomExecutor];
      [v68 setDisplayZoomExecutor:v24];
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v72 seedProgramManager];
      [v68 setSeedProgramManager:v25];
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v72 networkProvider];
      [v68 setNetworkProvider:v26];
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [v72 buddyPreferences];
      [v68 setBuddyPreferences:v27];
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = [v72 buddyPreferencesExcludedFromBackup];
      [v68 setBuddyPreferencesExcludedFromBackup:v28];
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [v72 setupMethod];
      [v68 setSetupMethod:v29];
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [v72 willPerformSoftwareUpdateBlock];
      [v68 setWillPerformSoftwareUpdateBlock:v30];
    }

    if (objc_opt_respondsToSelector())
    {
      v31 = [v72 betaEnrollmentStateManager];
      [v68 setBetaEnrollmentStateManager:v31];
    }

    if (objc_opt_respondsToSelector())
    {
      v32 = [v72 capabilities];
      [v68 setCapabilities:v32];
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [v72 softwareUpdateCache];
      [v68 setSoftwareUpdateCache:v33];
    }

    if (objc_opt_respondsToSelector())
    {
      v34 = [v72 settingsManager];
      [v68 setSettingsManager:v34];
    }

    if (objc_opt_respondsToSelector())
    {
      v35 = [v72 passcodeCacheManager];
      [v68 setPasscodeCacheManager:v35];
    }

    if (objc_opt_respondsToSelector())
    {
      v36 = [v72 runState];
      [v68 setRunState:v36];
    }

    if (objc_opt_respondsToSelector())
    {
      v37 = [v72 analyticsManager];
      [v68 setAnalyticsManager:v37];
    }

    if (objc_opt_respondsToSelector())
    {
      v38 = [v72 paneFeatureAnalyticsManager];
      [v68 setPaneFeatureAnalyticsManager:v38];
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = [v72 managedConfiguration];
      [v68 setManagedConfiguration:v39];
    }

    if (objc_opt_respondsToSelector())
    {
      v40 = [v72 activationRecord];
      [v68 setActivationRecord:v40];
    }

    if (objc_opt_respondsToSelector())
    {
      v41 = [v72 combinedTermsProvider];
      [v68 setCombinedTermsProvider:v41];
    }

    if (objc_opt_respondsToSelector())
    {
      v42 = [v72 featureFlags];
      [v68 setFeatureFlags:v42];
    }

    if (objc_opt_respondsToSelector())
    {
      v43 = [v72 buttonMonitor];
      [v68 setButtonMonitor:v43];
    }

    if (objc_opt_respondsToSelector())
    {
      v44 = [v72 emergencyExecutor];
      [v68 setEmergencyExecutor:v44];
    }

    if (objc_opt_respondsToSelector())
    {
      v45 = [v72 activationState];
      [v68 setActivationState:v45];
    }

    if (objc_opt_respondsToSelector())
    {
      v46 = [v72 flowSkipController];
      [v68 setFlowSkipController:v46];
    }

    if (objc_opt_respondsToSelector())
    {
      v47 = [v72 appearanceModeProvider];
      [v68 setAppearanceModeProvider:v47];
    }

    if (objc_opt_respondsToSelector())
    {
      v48 = [v72 userDispositionProvider];
      [v68 setUserDispositionProvider:v48];
    }

    if (objc_opt_respondsToSelector())
    {
      v49 = [v72 deviceConfiguration];
      [v68 setDeviceConfiguration:v49];
    }

    if (objc_opt_respondsToSelector())
    {
      v50 = [v72 flowItemDispositionProvider];
      [v68 setFlowItemDispositionProvider:v50];
    }

    if (objc_opt_respondsToSelector())
    {
      v51 = [v72 lockdownModeProvider];
      [v68 setLockdownModeProvider:v51];
    }

    if (objc_opt_respondsToSelector())
    {
      v52 = [v72 analyticsEventAppearance];
      [v68 setAnalyticsEventAppearance:v52];
    }

    if (objc_opt_respondsToSelector())
    {
      v53 = [v72 childSetupPresenter];
      [v68 setChildSetupPresenter:v53];
    }

    if (objc_opt_respondsToSelector())
    {
      v54 = [v72 buddyBackgroundViewController];
      [v68 setBuddyBackgroundViewController:v54];
    }

    if (objc_opt_respondsToSelector())
    {
      v55 = [v72 intelligenceProvider];
      [v68 setIntelligenceProvider:v55];
    }

    if (objc_opt_respondsToSelector())
    {
      v56 = [v72 multilingualFlowManager];
      [v68 setMultilingualFlowManager:v56];
    }

    if (objc_opt_respondsToSelector())
    {
      v57 = [v72 expressSettingsCache];
      [v68 setExpressSettingsCache:v57];
    }

    if (objc_opt_respondsToSelector())
    {
      v58 = [v72 diagnosticsThreadDecorator];
      [v68 setDiagnosticsThreadDecorator:v58];
    }

    if (objc_opt_respondsToSelector())
    {
      v59 = [v72 safetyAndHandlingManager];
      [v68 setSafetyAndHandlingManager:v59];
    }

    if (objc_opt_respondsToSelector())
    {
      v60 = [v72 threatNotificationProvider];
      [v68 setThreatNotificationProvider:v60];
    }

    if (objc_opt_respondsToSelector())
    {
      v61 = [v72 iPadMultitaskingModeManager];
      [v68 setIPadMultitaskingModeManager:v61];
    }

    if (objc_opt_respondsToSelector())
    {
      v62 = [v72 safetySettingsUIProvider];
      [v68 setSafetySettingsUIProvider:v62];
    }

    if ([v68 conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem])
    {
      v67 = v68;
      v63 = [(BuddyNavigationFlowController *)v74 navigator];
      v64 = [(BuddyNavigationFlowNavigator *)v63 navigationController];
      [(BFFNavigationController *)v64 setCustomAnimatorProviderBlock:0];

      if (objc_opt_respondsToSelector())
      {
        v65 = [(BuddyNavigationFlowController *)v74 navigator];
        v66 = [(BuddyNavigationFlowNavigator *)v65 navigationController];
        [v67 setNavigationController:v66];
      }

      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v68, 0);
  }

  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
}

- (id)_injectedFlowForClass:(Class)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    location = [(BuddyNavigationFlowController *)v9 _createFlowItemForClass:v7];
    v3 = [(BuddyNavigationFlowController *)v9 environment];
    [(BuddyNavigationFlowController *)v9 _injectDependencies:location withEnvironment:v3];

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