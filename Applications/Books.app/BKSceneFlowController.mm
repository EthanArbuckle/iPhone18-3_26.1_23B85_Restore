@interface BKSceneFlowController
+ (BOOL)isStateRestorationDisabledForThisLaunch;
- (BKSceneController)accountSceneController;
- (BKSceneController)endOfBookSceneController;
- (BKSceneController)primarySceneController;
- (BKSceneControlling)lastCurrentSceneController;
- (BKSceneFlowController)initWithLaunchCoordinator:(id)coordinator criticalAlertCoordinator:(id)alertCoordinator;
- (BOOL)_areConnectionOptionsForIntents:(id)intents;
- (BOOL)_canReparentRootBar;
- (BOOL)_hasLaunchActionsInConnectionOptions:(id)options;
- (BOOL)_isStateRestorationAndCanRestoreToAuxiliaryScene:(id)scene;
- (id)_existingBookSceneSessionForRequestAssetID:(id)d;
- (id)_existingSceneSessionForPrimaryScene;
- (id)_lastKnownBookPresentingSceneInfoForSceneSession:(id)session;
- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)session;
- (id)_rootViewControllerForViewController:(id)controller;
- (id)anySceneController;
- (id)currentSceneController;
- (id)defaultSceneControllerForTransaction:(id)transaction;
- (id)sceneControllerForSceneType:(unint64_t)type assetID:(id)d;
- (id)sceneControllerForViewController:(id)controller;
- (id)sceneControllerForWindow:(id)window;
- (id)sceneHostingAllViewControllersConformingToProtocol:(id)protocol;
- (id)sceneInfoPresentingAssetID:(id)d;
- (int64_t)closeTypeForForegroundedScene;
- (int64_t)closeTypeForSceneController:(id)controller;
- (void)_attachDebugViewControllerToSceneIfNeeded:(id)needed;
- (void)_consumePendingBookSceneRequestAssetID:(id)d;
- (void)_finishSceneRequest:(id)request;
- (void)_flushPendingSceneRequestCompletion:(id)completion;
- (void)_handleErrorForCompletionBlocks:(id)blocks;
- (void)_handleSceneConnectionOptionsActions:(id)actions sceneController:(id)controller;
- (void)_reparentRootBarTo:(id)to;
- (void)_setupSizeRestrictionsForWindowScene:(id)scene sceneType:(unint64_t)type;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)destroySceneForAssetID:(id)d;
- (void)didDisconnectScene:(id)scene;
- (void)enumerateSceneController:(id)controller includeHidden:(BOOL)hidden;
- (void)enumerateSceneInfo:(id)info;
- (void)handleCloseAssetForSceneController:(id)controller assetPresentingViewController:(id)viewController animated:(BOOL)animated;
- (void)requestAccountScene:(id)scene;
- (void)requestBookSceneWithAssetID:(id)d bringExistingToFront:(BOOL)front completion:(id)completion;
- (void)requestEndOfBookSceneWithOptions:(id)options completion:(id)completion;
- (void)requestPrimaryOrBookScene:(id)scene;
- (void)requestPrimaryScene:(BOOL)scene completion:(id)completion;
- (void)requestSceneWithAssetID:(id)d bringExistingToFront:(BOOL)front completion:(id)completion;
- (void)requestTabBarSceneController:(id)controller;
- (void)routeScene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)updateAllAssetPresenterCloseStateTypes;
@end

@implementation BKSceneFlowController

- (BOOL)_areConnectionOptionsForIntents:(id)intents
{
  intentsCopy = intents;
  intentsCopy2 = intents;
  selfCopy = self;
  LOBYTE(intentsCopy) = sub_100018778(intentsCopy);

  return intentsCopy & 1;
}

- (BKSceneController)primarySceneController
{
  primarySceneController = self->_primarySceneController;
  if (!primarySceneController)
  {
    v4 = [BKSceneController alloc];
    launchCoordinator = [(BKSceneFlowController *)self launchCoordinator];
    criticalAlertCoordinator = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:1 launchCoordinator:launchCoordinator criticalAlertCoordinator:criticalAlertCoordinator];
    v8 = self->_primarySceneController;
    self->_primarySceneController = v7;

    primarySceneController = self->_primarySceneController;
  }

  return primarySceneController;
}

+ (BOOL)isStateRestorationDisabledForThisLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BKDisableSceneStateRestoration"];

  if (v3)
  {
    LOBYTE(launchedToTest) = 1;
  }

  else
  {
    launchedToTest = [UIApp launchedToTest];
    if (launchedToTest)
    {
      LOBYTE(launchedToTest) = +[BCPPTConfig hasExtendedLaunchTypeSet]^ 1;
    }
  }

  return launchedToTest;
}

- (id)currentSceneController
{
  lastCurrentSceneController = [(BKSceneFlowController *)self lastCurrentSceneController];
  scene = [lastCurrentSceneController scene];
  _isKeyWindowScene = [scene _isKeyWindowScene];

  if (_isKeyWindowScene)
  {
    lastCurrentSceneController2 = [(BKSceneFlowController *)self lastCurrentSceneController];
    goto LABEL_12;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000273E0;
  v23 = sub_100027628;
  v24 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002751C;
  v18[3] = &unk_100A076E8;
  v18[4] = &v19;
  [(BKSceneFlowController *)self enumerateSceneController:v18 includeHidden:0];
  if (!v20[5])
  {
    v7 = BCSceneLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "keyWindowScene not found. Returning a sceneController as fallback.", v17, 2u);
    }

    primarySceneController = [(BKSceneFlowController *)self primarySceneController];
    scene2 = [primarySceneController scene];

    if (scene2)
    {
      primarySceneController2 = [(BKSceneFlowController *)self primarySceneController];
      bookSceneControllers2 = v20[5];
      v20[5] = primarySceneController2;
LABEL_10:

      goto LABEL_11;
    }

    bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
    v13 = [bookSceneControllers count];

    if (v13)
    {
      bookSceneControllers2 = [(BKSceneFlowController *)self bookSceneControllers];
      v14 = [bookSceneControllers2 objectAtIndexedSubscript:0];
      v15 = v20[5];
      v20[5] = v14;

      goto LABEL_10;
    }
  }

LABEL_11:
  [(BKSceneFlowController *)self setLastCurrentSceneController:v20[5]];
  lastCurrentSceneController2 = v20[5];
  _Block_object_dispose(&v19, 8);

LABEL_12:

  return lastCurrentSceneController2;
}

- (BKSceneControlling)lastCurrentSceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_lastCurrentSceneController);

  return WeakRetained;
}

- (BKSceneFlowController)initWithLaunchCoordinator:(id)coordinator criticalAlertCoordinator:(id)alertCoordinator
{
  coordinatorCopy = coordinator;
  alertCoordinatorCopy = alertCoordinator;
  v23.receiver = self;
  v23.super_class = BKSceneFlowController;
  v9 = [(BKSceneFlowController *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_launchCoordinator, coordinator);
    objc_storeStrong(&v10->_criticalAlertCoordinator, alertCoordinator);
    bookSceneControllers = v10->_bookSceneControllers;
    v10->_bookSceneControllers = &__NSArray0__struct;

    v12 = objc_opt_new();
    pendingPrimarySceneCompletionBlocks = v10->_pendingPrimarySceneCompletionBlocks;
    v10->_pendingPrimarySceneCompletionBlocks = v12;

    v14 = objc_opt_new();
    pendingBookSceneRequestAssetIDs = v10->_pendingBookSceneRequestAssetIDs;
    v10->_pendingBookSceneRequestAssetIDs = v14;

    v16 = objc_opt_new();
    pendingBookSceneCompletionBlocksByAssetID = v10->_pendingBookSceneCompletionBlocksByAssetID;
    v10->_pendingBookSceneCompletionBlocksByAssetID = v16;

    v18 = objc_opt_new();
    pendingEndOfBookSceneCompletionBlocks = v10->_pendingEndOfBookSceneCompletionBlocks;
    v10->_pendingEndOfBookSceneCompletionBlocks = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    pendingUserActivitiesMap = v10->_pendingUserActivitiesMap;
    v10->_pendingUserActivitiesMap = v20;
  }

  return v10;
}

- (id)defaultSceneControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  targetSceneController = [transactionCopy targetSceneController];

  if (targetSceneController)
  {
    [transactionCopy targetSceneController];
  }

  else
  {
    [transactionCopy originatingSceneController];
  }
  v6 = ;

  currentSceneController = BUProtocolCast();

  if (!currentSceneController)
  {
    v8 = BCSceneLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "sceneController not found in tx. Returning currentSceneController as fallback.", v10, 2u);
    }

    currentSceneController = [(BKSceneFlowController *)self currentSceneController];
  }

  return currentSceneController;
}

- (id)anySceneController
{
  currentSceneController = [(BKSceneFlowController *)self currentSceneController];
  scene = [currentSceneController scene];

  if (scene)
  {
    currentSceneController2 = [(BKSceneFlowController *)self currentSceneController];
  }

  else
  {
    endOfBookSceneController = [(BKSceneFlowController *)self endOfBookSceneController];
    scene2 = [endOfBookSceneController scene];

    if (scene2)
    {
      currentSceneController2 = [(BKSceneFlowController *)self endOfBookSceneController];
    }

    else
    {
      accountSceneController = [(BKSceneFlowController *)self accountSceneController];
      scene3 = [accountSceneController scene];

      if (scene3)
      {
        currentSceneController2 = [(BKSceneFlowController *)self accountSceneController];
      }

      else
      {
        currentSceneController2 = 0;
      }
    }
  }

  return currentSceneController2;
}

- (id)_rootViewControllerForViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  if (parentViewController || ([controllerCopy presentingViewController], v5 = objc_claimAutoreleasedReturnValue(), 0, parentViewController = v5, v6 = controllerCopy, v5))
  {
    v6 = controllerCopy;
    do
    {
      v7 = v6;
      v6 = parentViewController;

      parentViewController2 = [v6 parentViewController];
      v9 = parentViewController2;
      if (parentViewController2)
      {
        presentingViewController = parentViewController2;
      }

      else
      {
        presentingViewController = [v6 presentingViewController];
      }

      parentViewController = presentingViewController;
    }

    while (parentViewController);
  }

  return v6;
}

- (id)sceneControllerForViewController:(id)controller
{
  controllerCopy = controller;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000273E0;
  v25 = sub_100027628;
  v26 = 0;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  v6 = viewIfLoaded;
  if (viewIfLoaded)
  {
    window = [viewIfLoaded window];

    if (window)
    {
      window2 = [v6 window];
      v9 = [(BKSceneFlowController *)self sceneControllerForWindow:window2];
      v10 = v22[5];
      v22[5] = v9;
    }
  }

  v11 = v22[5];
  if (!v11)
  {
    v12 = [(BKSceneFlowController *)self _rootViewControllerForViewController:controllerCopy];
    v13 = v12;
    if (v12)
    {
      _bk_sceneController = [v12 _bk_sceneController];
      v15 = v22[5];
      v22[5] = _bk_sceneController;
    }

    if (!v22[5])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100105C94;
      v18[3] = &unk_100A07710;
      v19 = v13;
      v20 = &v21;
      [(BKSceneFlowController *)self enumerateSceneController:v18 includeHidden:1];
    }

    v11 = v22[5];
  }

  v16 = v11;

  _Block_object_dispose(&v21, 8);

  return v16;
}

- (id)sceneControllerForWindow:(id)window
{
  windowScene = [window windowScene];
  objc_opt_class();
  v4 = BUDynamicCast();
  controller = [v4 controller];
  v6 = BUProtocolCast();

  return v6;
}

- (id)sceneInfoPresentingAssetID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000273E0;
  v14 = sub_100027628;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100105EF8;
  v7[3] = &unk_100A07738;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(BKSceneFlowController *)self enumerateSceneInfo:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)destroySceneForAssetID:(id)d
{
  v5 = [(BKSceneFlowController *)self sceneInfoPresentingAssetID:d];
  v3 = +[BKSceneUtilities sharedInstance];
  sceneSession = [v5 sceneSession];
  [v3 destroySceneWithSceneSession:sceneSession withAnimationType:1];
}

- (void)enumerateSceneController:(id)controller includeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  controllerCopy = controller;
  if (controllerCopy)
  {
    v25 = 0;
    primarySceneController = [(BKSceneFlowController *)self primarySceneController];
    scene = [primarySceneController scene];

    if (!scene && !hiddenCopy)
    {
      goto LABEL_7;
    }

    v9 = objc_retainBlock(controllerCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, primarySceneController, &v25);
    }

    if ((v25 & 1) == 0)
    {
LABEL_7:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
      v12 = [bookSceneControllers countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(bookSceneControllers);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          scene2 = [v16 scene];

          if (scene2 || hiddenCopy)
          {
            v19 = objc_retainBlock(controllerCopy);
            v20 = v19;
            if (v19)
            {
              (*(v19 + 2))(v19, v16, &v25);
            }

            if (v25)
            {
              break;
            }
          }

          if (v13 == ++v15)
          {
            v13 = [bookSceneControllers countByEnumeratingWithState:&v21 objects:v26 count:16];
            if (v13)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)enumerateSceneInfo:(id)info
{
  infoCopy = info;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000273E0;
  v36 = sub_100027628;
  v37 = objc_alloc_init(NSMutableSet);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100106508;
  v24[3] = &unk_100A07760;
  v26 = &v32;
  v5 = infoCopy;
  v25 = v5;
  v27 = &v28;
  [(BKSceneFlowController *)self enumerateSceneController:v24 includeHidden:0];
  if ((v29[3] & 1) == 0)
  {
    v6 = +[UIApplication sharedApplication];
    openSessions = [v6 openSessions];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = openSessions;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v38 count:16];
    if (v9)
    {
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          role = [v12 role];
          v14 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

          if (v14)
          {
            persistentIdentifier = [v12 persistentIdentifier];
            if (([v33[5] containsObject:persistentIdentifier] & 1) == 0)
            {
              v16 = [(_BKBaseSceneController *)BKSceneController sceneInfoFromSceneSession:v12];
              v17 = objc_retainBlock(v5);
              v18 = v17;
              if (v17)
              {
                (*(v17 + 2))(v17, v16, v29 + 3);
              }

              v19 = *(v29 + 24);
              if (v19)
              {

                goto LABEL_17;
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v38 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

- (BKSceneController)accountSceneController
{
  accountSceneController = self->_accountSceneController;
  if (!accountSceneController)
  {
    v4 = [BKSceneController alloc];
    launchCoordinator = [(BKSceneFlowController *)self launchCoordinator];
    criticalAlertCoordinator = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:2 launchCoordinator:launchCoordinator criticalAlertCoordinator:criticalAlertCoordinator];
    v8 = self->_accountSceneController;
    self->_accountSceneController = v7;

    accountSceneController = self->_accountSceneController;
  }

  return accountSceneController;
}

- (BKSceneController)endOfBookSceneController
{
  endOfBookSceneController = self->_endOfBookSceneController;
  if (!endOfBookSceneController)
  {
    v4 = [BKSceneController alloc];
    launchCoordinator = [(BKSceneFlowController *)self launchCoordinator];
    criticalAlertCoordinator = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:3 launchCoordinator:launchCoordinator criticalAlertCoordinator:criticalAlertCoordinator];
    v8 = self->_endOfBookSceneController;
    self->_endOfBookSceneController = v7;

    endOfBookSceneController = self->_endOfBookSceneController;
  }

  return endOfBookSceneController;
}

- (id)sceneControllerForSceneType:(unint64_t)type assetID:(id)d
{
  dCopy = d;
  v7 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      accountSceneController = [(BKSceneFlowController *)self accountSceneController];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_23;
      }

      accountSceneController = [(BKSceneFlowController *)self endOfBookSceneController];
    }

    goto LABEL_20;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_23;
    }

    accountSceneController = [(BKSceneFlowController *)self primarySceneController];
LABEL_20:
    v7 = accountSceneController;
    goto LABEL_23;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
  v7 = [bookSceneControllers countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v11 = *v22;
    *&v10 = 138412290;
    v20 = v10;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(bookSceneControllers);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        sceneInfo = [v13 sceneInfo];
        v15 = BUProtocolCast();

        v16 = BCSceneLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = v20;
          v26 = dCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "sceneControllerForSceneType with assetID=%@", buf, 0xCu);
        }

        openBookAssetID = [v15 openBookAssetID];
        v18 = [openBookAssetID isEqualToString:dCopy];

        if (v18)
        {
          v7 = v13;

          goto LABEL_22;
        }
      }

      v7 = [bookSceneControllers countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:

  return v7;
}

- (void)requestTabBarSceneController:(id)controller
{
  controllerCopy = controller;
  launchCoordinator = [(BKSceneFlowController *)self launchCoordinator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100106A48;
  v7[3] = &unk_100A04160;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [launchCoordinator appLaunchCoordinatorOnConditionMask:64 blockID:@"requestTabBarSceneController" performBlock:v7];
}

- (void)requestPrimaryOrBookScene:(id)scene
{
  sceneCopy = scene;
  currentSceneController = [(BKSceneFlowController *)self currentSceneController];

  if (currentSceneController && (-[BKSceneFlowController currentSceneController](self, "currentSceneController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sceneType], v5, !v6))
  {
    currentSceneController2 = [(BKSceneFlowController *)self currentSceneController];
    sceneInfo = [currentSceneController2 sceneInfo];
    v9 = BUProtocolCast();

    openBookAssetID = [v9 openBookAssetID];
    [(BKSceneFlowController *)self requestBookSceneWithAssetID:openBookAssetID completion:sceneCopy];
  }

  else
  {
    [(BKSceneFlowController *)self requestPrimaryScene:sceneCopy];
  }
}

- (void)requestPrimaryScene:(BOOL)scene completion:(id)completion
{
  completionCopy = completion;
  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "requestPrimaryScene", buf, 2u);
  }

  v8 = +[BKSceneUtilities hasMultiWindowEnabled];
  if ((v8 & 1) == 0)
  {
    currentSceneController = [(BKSceneFlowController *)self currentSceneController];
    primarySceneController = [(BKSceneFlowController *)self primarySceneController];

    if (currentSceneController != primarySceneController && [(BKSceneFlowController *)self _canReparentRootBar])
    {
      [(BKSceneFlowController *)self _reparentRootBarTo:currentSceneController];
    }
  }

  primarySceneController2 = [(BKSceneFlowController *)self primarySceneController];
  scene = [primarySceneController2 scene];

  pendingPrimarySceneCompletionBlocks = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v14 = [pendingPrimarySceneCompletionBlocks count];

  if (!scene && scene)
  {
    if (v14)
    {
      pendingPrimarySceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
      primarySceneController3 = objc_retainBlock(completionCopy);
      [pendingPrimarySceneCompletionBlocks2 addObject:primarySceneController3];
    }

    else
    {
      pendingPrimarySceneCompletionBlocks2 = objc_retainBlock(completionCopy);
      if (!pendingPrimarySceneCompletionBlocks2)
      {
LABEL_23:

        goto LABEL_24;
      }

      primarySceneController3 = [(BKSceneFlowController *)self primarySceneController];
      (pendingPrimarySceneCompletionBlocks2)[2](pendingPrimarySceneCompletionBlocks2, primarySceneController3);
    }

    goto LABEL_23;
  }

  pendingPrimarySceneCompletionBlocks3 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v18 = objc_retainBlock(completionCopy);
  [pendingPrimarySceneCompletionBlocks3 addObject:v18];

  if (!v14)
  {
    session = [scene session];
    v20 = session;
    if (session)
    {
      _existingSceneSessionForPrimaryScene = session;
    }

    else
    {
      _existingSceneSessionForPrimaryScene = [(BKSceneFlowController *)self _existingSceneSessionForPrimaryScene];
    }

    pendingPrimarySceneCompletionBlocks2 = _existingSceneSessionForPrimaryScene;

    if (v8)
    {
      objc_initWeak(buf, self);
      v22 = +[BKSceneUtilities sharedInstance];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100106EE4;
      v23[3] = &unk_100A042A0;
      objc_copyWeak(&v24, buf);
      [v22 requestWindowForSceneSession:pendingPrimarySceneCompletionBlocks2 userActivity:0 errorHandler:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    if (scene)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:scene];
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)requestBookSceneWithAssetID:(id)d bringExistingToFront:(BOOL)front completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "requestBookScene with assetID=%@", &buf, 0xCu);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100107380;
  v34[3] = &unk_100A07788;
  v11 = dCopy;
  v35 = v11;
  v12 = completionCopy;
  v36 = v12;
  v13 = objc_retainBlock(v34);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x2020000000;
  v39 = 0;
  if (front || (v29[0] = _NSConcreteStackBlock, v29[1] = 3221225472, v29[2] = sub_1001073F4, v29[3] = &unk_100A077B0, v30 = v11, v31 = self, v32 = v13, p_buf = &buf, [(BKSceneFlowController *)self enumerateSceneInfo:v29], v32, v30, (*(*(&buf + 1) + 24) & 1) == 0))
  {
    pendingBookSceneCompletionBlocksByAssetID = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
    v15 = [pendingBookSceneCompletionBlocksByAssetID objectForKeyedSubscript:v11];

    if (!v15)
    {
      pendingBookSceneCompletionBlocksByAssetID2 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
      v15 = objc_alloc_init(NSMutableArray);
      [pendingBookSceneCompletionBlocksByAssetID2 setObject:v15 forKeyedSubscript:v11];
    }

    v17 = [v15 count];
    v18 = objc_retainBlock(v13);
    [v15 addObject:v18];

    if (!v17)
    {
      pendingBookSceneRequestAssetIDs = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
      [pendingBookSceneRequestAssetIDs addObject:v11];

      v20 = [(BKSceneFlowController *)self _existingBookSceneSessionForRequestAssetID:v11];
      if (v20)
      {
        objc_opt_class();
        scene = [v20 scene];
        v22 = BUDynamicCast();
      }

      else
      {
        v22 = 0;
      }

      if (+[BKSceneUtilities hasMultiWindowEnabled])
      {
        objc_initWeak(&location, self);
        v23 = +[BKSceneUtilities sharedInstance];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10010752C;
        v24[3] = &unk_100A077D8;
        objc_copyWeak(&v27, &location);
        v25 = v22;
        v26 = v11;
        [v23 requestWindowForSceneSession:v20 userActivity:0 errorHandler:v24];

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      if (v22)
      {
        [(BKSceneFlowController *)self _finishSceneRequest:v22];
      }
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (void)requestAccountScene:(id)scene
{
  sceneCopy = scene;
  pendingAccountSceneCompletionBlocks = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
  v6 = [pendingAccountSceneCompletionBlocks count];

  pendingAccountSceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
  v8 = objc_retainBlock(sceneCopy);
  [pendingAccountSceneCompletionBlocks2 addObject:v8];

  if (!v6)
  {
    accountSceneController = [(BKSceneFlowController *)self accountSceneController];
    scene = [accountSceneController scene];
    session = [scene session];

    if (session)
    {
      objc_opt_class();
      scene2 = [session scene];
      v13 = BUDynamicCast();
    }

    else
    {
      v13 = 0;
    }

    v14 = [[NSUserActivity alloc] initWithActivityType:@"BKAccountInfoSceneActivityType"];
    objc_initWeak(&location, self);
    v15 = +[BKSceneUtilities sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001077EC;
    v16[3] = &unk_100A07800;
    objc_copyWeak(&v17, &location);
    v16[4] = self;
    [v15 requestWindowForSceneSession:session userActivity:v14 errorHandler:v16];

    if (v13)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:v13];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)requestEndOfBookSceneWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  currentEndOfBookSceneOptions = [(BKSceneFlowController *)self currentEndOfBookSceneOptions];
  v9 = [currentEndOfBookSceneOptions isEqualToDictionary:optionsCopy];

  v31 = @"feedOptions";
  v32 = optionsCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  if ((v9 & 1) == 0)
  {
    pendingEndOfBookSceneCompletionBlocks = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    [pendingEndOfBookSceneCompletionBlocks removeAllObjects];

    [(BKSceneFlowController *)self setCurrentEndOfBookSceneOptions:optionsCopy];
    endOfBookSceneController = [(BKSceneFlowController *)self endOfBookSceneController];
    [endOfBookSceneController updateEndOfBookSceneWithUserInfo:v10];
  }

  pendingEndOfBookSceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
  v14 = [pendingEndOfBookSceneCompletionBlocks2 count] == 0;

  if (v14)
  {
    [(BKSceneFlowController *)self setCurrentEndOfBookSceneOptions:optionsCopy];
    pendingEndOfBookSceneCompletionBlocks3 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v18 = objc_retainBlock(completionCopy);
    [pendingEndOfBookSceneCompletionBlocks3 addObject:v18];

    endOfBookSceneController2 = [(BKSceneFlowController *)self endOfBookSceneController];
    scene = [endOfBookSceneController2 scene];
    session = [scene session];

    if (session)
    {
      objc_opt_class();
      scene2 = [session scene];
      v16 = BUDynamicCast();
    }

    else
    {
      v16 = 0;
    }

    v22 = [[NSUserActivity alloc] initWithActivityType:@"BKEndOfBookSceneActivityType"];
    [v22 setUserInfo:v10];
    objc_initWeak(&location, self);
    v23 = +[BKSceneUtilities sharedInstance];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100107B9C;
    v27 = &unk_100A07800;
    objc_copyWeak(&v29, &location);
    selfCopy = self;
    [v23 requestWindowForSceneSession:session userActivity:v22 errorHandler:&v24];

    if (v16)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:v16, v24, v25, v26, v27];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    session = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v16 = objc_retainBlock(completionCopy);
    [session addObject:v16];
  }
}

- (void)_handleErrorForCompletionBlocks:(id)blocks
{
  blocksCopy = blocks;
  v4 = [blocksCopy copy];
  [blocksCopy removeAllObjects];
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

        v10 = objc_retainBlock(*(*(&v12 + 1) + 8 * v9));
        v11 = v10;
        if (v10)
        {
          (*(v10 + 2))(v10, 0);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_existingSceneSessionForPrimaryScene
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000273E0;
  v9 = sub_100027628;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100107E3C;
  v4[3] = &unk_100A07738;
  v4[4] = self;
  v4[5] = &v5;
  [(BKSceneFlowController *)self enumerateSceneInfo:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_existingBookSceneSessionForRequestAssetID:(id)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000273E0;
  v14 = sub_100027628;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010806C;
  v7[3] = &unk_100A07738;
  dCopy = d;
  v8 = dCopy;
  v9 = &v10;
  [(BKSceneFlowController *)self enumerateSceneInfo:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)requestSceneWithAssetID:(id)d bringExistingToFront:(BOOL)front completion:(id)completion
{
  frontCopy = front;
  dCopy = d;
  completionCopy = completion;
  primarySceneController = [(BKSceneFlowController *)self primarySceneController];
  scene = [primarySceneController scene];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (scene)
  {
    primarySceneController2 = [(BKSceneFlowController *)self primarySceneController];
    sceneInfo = [primarySceneController2 sceneInfo];

    v14 = BUProtocolCast();
    openBookAssetID = [v14 openBookAssetID];
    v16 = [openBookAssetID isEqualToString:dCopy];

    if (v16)
    {
      *(v24 + 24) = 1;
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001083C8;
    v20[3] = &unk_100A07738;
    v21 = dCopy;
    v22 = &v23;
    [(BKSceneFlowController *)self enumerateSceneInfo:v20];
    sceneInfo = v21;
  }

  if (*(v24 + 24) == 1)
  {
    v17 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100108464;
    v19[3] = &unk_100A07828;
    v19[4] = completionCopy;
    [(BKSceneFlowController *)self requestPrimaryScene:frontCopy completion:v19];
  }

  else
  {
    v17 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001084D0;
    v18[3] = &unk_100A07828;
    v18[4] = completionCopy;
    [(BKSceneFlowController *)self requestBookSceneWithAssetID:dCopy bringExistingToFront:frontCopy completion:v18];
  }

  _Block_object_dispose(&v23, 8);
}

- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(NSDictionary);
  if (([objc_opt_class() isStateRestorationDisabledForThisLaunch] & 1) == 0)
  {
    stateRestorationActivity = [sessionCopy stateRestorationActivity];
    userInfo = [stateRestorationActivity userInfo];

    v4 = userInfo;
  }

  return v4;
}

- (id)_lastKnownBookPresentingSceneInfoForSceneSession:(id)session
{
  sessionCopy = session;
  v5 = [(BKSceneFlowController *)self _lastKnownStateRestorationUserInfoForSceneSession:sessionCopy];
  if (v5)
  {
    v6 = [(_BKBaseSceneController *)BKSceneController sceneInfoFromSceneSession:sessionCopy];
    v7 = BUProtocolCast();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isStateRestorationAndCanRestoreToAuxiliaryScene:(id)scene
{
  sceneCopy = scene;
  stateRestorationActivity = [sceneCopy stateRestorationActivity];

  if (stateRestorationActivity)
  {
    v6 = [(BKSceneFlowController *)self _lastKnownBookPresentingSceneInfoForSceneSession:sceneCopy];
    v7 = v6;
    if (v6)
    {
      LOBYTE(stateRestorationActivity) = [v6 supportsOpeningToAuxiliaryScene];
    }

    else
    {
      LOBYTE(stateRestorationActivity) = 0;
    }
  }

  return stateRestorationActivity;
}

- (BOOL)_hasLaunchActionsInConnectionOptions:(id)options
{
  optionsCopy = options;
  shortcutItem = [optionsCopy shortcutItem];
  uRLContexts = [optionsCopy URLContexts];
  userActivities = [optionsCopy userActivities];
  notificationResponse = [optionsCopy notificationResponse];

  v8 = shortcutItem || [uRLContexts count] || objc_msgSend(userActivities, "count") || notificationResponse;
  return v8;
}

- (void)_setupSizeRestrictionsForWindowScene:(id)scene sceneType:(unint64_t)type
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    if (type)
    {
      if (type != 3)
      {
        if (type != 2)
        {
          goto LABEL_10;
        }

        v10 = sceneCopy;
        sizeRestrictions = [sceneCopy sizeRestrictions];
        [sizeRestrictions setMinimumSize:{450.0, 450.0}];

        sizeRestrictions2 = [v10 sizeRestrictions];
        [sizeRestrictions2 setMaximumSize:{450.0, 450.0}];
        goto LABEL_9;
      }

      v10 = sceneCopy;
      sizeRestrictions3 = [sceneCopy sizeRestrictions];
      sizeRestrictions2 = sizeRestrictions3;
      v9 = 801.0;
    }

    else
    {
      v10 = sceneCopy;
      sizeRestrictions3 = [sceneCopy sizeRestrictions];
      sizeRestrictions2 = sizeRestrictions3;
      v9 = 500.0;
    }

    [sizeRestrictions3 setMinimumSize:{v9, 530.0}];
LABEL_9:

    sceneCopy = v10;
  }

LABEL_10:
}

- (void)routeScene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sceneCopy;
  v12 = optionsCopy;
  objc_opt_class();
  v76 = BUDynamicCast();
  v74 = [(BKSceneFlowController *)self _areConnectionOptionsForIntents:v12];
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];

  v15 = BCSceneLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    delegate = [v11 delegate];
    *buf = 138544130;
    v87 = persistentIdentifier;
    v88 = 2114;
    v89 = delegate;
    v90 = 2114;
    v91 = v12;
    v92 = 1024;
    v93 = v74;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "route scene willConnectToSession: sceneIdentifier=%{public}@, sceneDelegate=%{public}@, connectionOptions=%{public}@, forIntent=%d", buf, 0x26u);
  }

  v77 = persistentIdentifier;
  v78 = v12;
  if (+[BKSceneUtilities hasMultiWindowEnabled])
  {
    v79 = v11;
    userActivities = [v12 userActivities];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v18 = [userActivities countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v82;
      v21 = BCContinuationActivityReadBookType;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v82 != v20)
          {
            objc_enumerationMutation(userActivities);
          }

          v23 = *(*(&v81 + 1) + 8 * i);
          activityType = [v23 activityType];
          v25 = [activityType isEqualToString:v21];

          if (v25)
          {
            pendingUserActivitiesMap = [(BKSceneFlowController *)self pendingUserActivitiesMap];
            persistentIdentifier2 = [sessionCopy persistentIdentifier];
            [pendingUserActivitiesMap setObject:v23 forKeyedSubscript:persistentIdentifier2];
          }
        }

        v19 = [userActivities countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v19);
    }

    v12 = v78;
    v11 = v79;
  }

  pendingUserActivitiesMap2 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
  persistentIdentifier3 = [sessionCopy persistentIdentifier];
  v30 = [pendingUserActivitiesMap2 objectForKeyedSubscript:persistentIdentifier3];

  if ([BKSceneUtilities connectionOptions:v12 hasActivityType:@"BKAccountInfoSceneActivityType"])
  {
    v31 = 1;
  }

  else
  {
    stateRestorationActivity = [sessionCopy stateRestorationActivity];
    activityType2 = [stateRestorationActivity activityType];
    v31 = [activityType2 isEqualToString:@"com.apple.iBooks.sceneStateRestorationForAccountInfo"];
  }

  if ([BKSceneUtilities connectionOptions:v12 hasActivityType:@"BKEndOfBookSceneActivityType"])
  {
    v34 = 1;
  }

  else
  {
    stateRestorationActivity2 = [sessionCopy stateRestorationActivity];
    activityType3 = [stateRestorationActivity2 activityType];
    v34 = [activityType3 isEqualToString:@"com.apple.iBooks.sceneStateRestorationForEndOfBook"];
  }

  pendingBookSceneRequestAssetIDs = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
  v75 = v30;
  v72 = ([pendingBookSceneRequestAssetIDs count] | v30) == 0;

  pendingPrimarySceneCompletionBlocks = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v39 = [pendingPrimarySceneCompletionBlocks count];

  v40 = [(BKSceneFlowController *)self _isStateRestorationAndCanRestoreToAuxiliaryScene:sessionCopy];
  v41 = [(BKSceneFlowController *)self _hasLaunchActionsInConnectionOptions:v12];
  v42 = 0;
  v73 = v41;
  if (v40 && (v41 & 1) == 0)
  {
    v42 = +[BKSceneUtilities hasMultiWindowEnabled];
  }

  objc_opt_class();
  delegate2 = [v11 delegate];
  v80 = BUDynamicCast();

  if (v31)
  {
    accountSceneController = [(BKSceneFlowController *)self accountSceneController];
    v45 = v78;
    v46 = v76;
    goto LABEL_30;
  }

  v45 = v78;
  v46 = v76;
  if (v34)
  {
    endOfBookSceneController = [(BKSceneFlowController *)self endOfBookSceneController];
LABEL_29:
    accountSceneController = endOfBookSceneController;
    goto LABEL_30;
  }

  if (v74 || v72 && (v66 = v39 == 0, -[BKSceneFlowController primarySceneController](self, "primarySceneController"), v67 = objc_claimAutoreleasedReturnValue(), [v67 scene], v68 = objc_claimAutoreleasedReturnValue(), v68, v67, !v68) && (v66 & v42) == 0)
  {
    endOfBookSceneController = [(BKSceneFlowController *)self primarySceneController];
    goto LABEL_29;
  }

  v69 = [BKSceneController alloc];
  launchCoordinator = [(BKSceneFlowController *)self launchCoordinator];
  criticalAlertCoordinator = [(BKSceneFlowController *)self criticalAlertCoordinator];
  accountSceneController = [(BKSceneController *)v69 initWithSceneType:0 launchCoordinator:launchCoordinator criticalAlertCoordinator:criticalAlertCoordinator];

LABEL_30:
  [(BKSceneFlowController *)self _setupSizeRestrictionsForWindowScene:v46 sceneType:[(_BKBaseSceneController *)accountSceneController sceneType]];
  [v80 setSceneController:accountSceneController];
  [(BKSceneController *)accountSceneController scene:v11 willConnectToSession:sessionCopy options:v45];
  if (![(_BKBaseSceneController *)accountSceneController sceneType])
  {
    objc_opt_class();
    v48 = BUDynamicCast();
    bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
    v50 = [bookSceneControllers arrayByAddingObject:v48];
    [(BKSceneFlowController *)self setBookSceneControllers:v50];

    [(BKSceneFlowController *)self _consumePendingBookSceneRequestAssetID:v48];
    pendingUserActivitiesMap3 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
    v52 = [pendingUserActivitiesMap3 objectForKeyedSubscript:v77];

    if (v52)
    {
      pendingUserActivitiesMap4 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
      [pendingUserActivitiesMap4 removeObjectForKey:v77];

      [v48 handleCreateSceneUserActivityWhenReady:v52];
    }
  }

  [(BKSceneFlowController *)self _handleSceneConnectionOptionsActions:v45 sceneController:accountSceneController];
  v54 = +[NSUserDefaults standardUserDefaults];
  v55 = [v54 dictionaryForKey:@"PPTStateRestoration"];

  if (!v55)
  {
    goto LABEL_39;
  }

  v56 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.iBooks.sceneStateRestoration"];
  [v56 setUserInfo:v55];
  v57 = BCSceneLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    stateRestorationActivity3 = [sessionCopy stateRestorationActivity];
    userInfo = [stateRestorationActivity3 userInfo];
    userInfo2 = [v56 userInfo];
    *buf = 138412546;
    v87 = userInfo;
    v88 = 2112;
    v89 = userInfo2;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Overriding scene restoration activity: %@ with: %@", buf, 0x16u);

    v46 = v76;
    v45 = v78;
  }

  if (v56)
  {
    stateRestorationActivity4 = v56;
    v62 = stateRestorationActivity4;
  }

  else
  {
LABEL_39:
    stateRestorationActivity4 = [sessionCopy stateRestorationActivity];
    v62 = 0;
  }

  if ([(_BKBaseSceneController *)accountSceneController isStateRestorationDisabled]|| ([(BKSceneController *)accountSceneController rootBarCoordinator], v63 = objc_claimAutoreleasedReturnValue(), v64 = (v63 != 0) & v73, v63, (v64 & 1) != 0) || !stateRestorationActivity4)
  {
    [(BKSceneFlowController *)self _finishSceneRequest:v11];
  }

  else
  {
    activityType4 = [stateRestorationActivity4 activityType];
    [(_BKBaseSceneController *)accountSceneController scene:v11 willContinueUserActivityWithType:activityType4];

    [(_BKBaseSceneController *)accountSceneController scene:v11 continueUserActivity:stateRestorationActivity4];
  }

  [(BKSceneFlowController *)self _attachDebugViewControllerToSceneIfNeeded:v11];
}

- (void)_consumePendingBookSceneRequestAssetID:(id)d
{
  dCopy = d;
  pendingBookSceneRequestAssetIDs = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
  v5 = [pendingBookSceneRequestAssetIDs count];

  if (v5)
  {
    pendingBookSceneRequestAssetIDs2 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
    firstObject = [pendingBookSceneRequestAssetIDs2 firstObject];
    [dCopy setRequestAssetID:firstObject];

    pendingBookSceneRequestAssetIDs3 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
    [pendingBookSceneRequestAssetIDs3 removeObjectAtIndex:0];
  }
}

- (void)_finishSceneRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  v8 = BUDynamicCast();

  objc_opt_class();
  controller = [v8 controller];
  v6 = BUDynamicCast();

  if (![v6 sceneType])
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    [(BKSceneFlowController *)self _consumePendingBookSceneRequestAssetID:v7];
  }

  [(BKSceneFlowController *)self _flushPendingSceneRequestCompletion:v8];
}

- (void)_flushPendingSceneRequestCompletion:(id)completion
{
  completionCopy = completion;
  primarySceneController = [(BKSceneFlowController *)self primarySceneController];
  scene = [primarySceneController scene];

  if (scene == completionCopy)
  {
    pendingPrimarySceneCompletionBlocks = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
    v28 = [pendingPrimarySceneCompletionBlocks copy];

    pendingPrimarySceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
    [pendingPrimarySceneCompletionBlocks2 removeAllObjects];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = v28;
    v30 = [v13 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v68;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(v13);
          }

          v34 = objc_retainBlock(*(*(&v67 + 1) + 8 * i));
          if (v34)
          {
            primarySceneController2 = [(BKSceneFlowController *)self primarySceneController];
            v34[2](v34, primarySceneController2);
          }
        }

        v31 = [v13 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v31);
    }

    goto LABEL_47;
  }

  accountSceneController = [(BKSceneFlowController *)self accountSceneController];
  scene2 = [accountSceneController scene];

  if (scene2 == completionCopy)
  {
    pendingAccountSceneCompletionBlocks = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
    v37 = [pendingAccountSceneCompletionBlocks copy];

    pendingAccountSceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
    [pendingAccountSceneCompletionBlocks2 removeAllObjects];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v13 = v37;
    v39 = [v13 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v64;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v64 != v41)
          {
            objc_enumerationMutation(v13);
          }

          v43 = objc_retainBlock(*(*(&v63 + 1) + 8 * j));
          if (v43)
          {
            accountSceneController2 = [(BKSceneFlowController *)self accountSceneController];
            v43[2](v43, accountSceneController2);
          }
        }

        v40 = [v13 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v40);
    }

    goto LABEL_47;
  }

  endOfBookSceneController = [(BKSceneFlowController *)self endOfBookSceneController];
  scene3 = [endOfBookSceneController scene];

  if (scene3 == completionCopy)
  {
    pendingEndOfBookSceneCompletionBlocks = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v46 = [pendingEndOfBookSceneCompletionBlocks copy];

    pendingEndOfBookSceneCompletionBlocks2 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    [pendingEndOfBookSceneCompletionBlocks2 removeAllObjects];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = v46;
    v48 = [v13 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v60;
      do
      {
        for (k = 0; k != v49; k = k + 1)
        {
          if (*v60 != v50)
          {
            objc_enumerationMutation(v13);
          }

          v52 = objc_retainBlock(*(*(&v59 + 1) + 8 * k));
          if (v52)
          {
            endOfBookSceneController2 = [(BKSceneFlowController *)self endOfBookSceneController];
            v52[2](v52, endOfBookSceneController2);
          }
        }

        v49 = [v13 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v49);
    }

LABEL_47:
    v11 = v13;
    goto LABEL_48;
  }

  objc_opt_class();
  v11 = BUDynamicCast();
  objc_opt_class();
  controller = [v11 controller];
  v13 = BUDynamicCast();

  sceneInfo = [v13 sceneInfo];
  v15 = BUProtocolCast();

  openBookAssetID = [v15 openBookAssetID];
  if (openBookAssetID)
  {
    pendingBookSceneCompletionBlocksByAssetID = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
    v18 = [pendingBookSceneCompletionBlocksByAssetID objectForKeyedSubscript:openBookAssetID];

    if (v18)
    {
      pendingBookSceneCompletionBlocksByAssetID2 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
      [pendingBookSceneCompletionBlocksByAssetID2 removeObjectForKey:openBookAssetID];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = v18;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v55 objects:v71 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v56;
        do
        {
          for (m = 0; m != v22; m = m + 1)
          {
            if (*v56 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = objc_retainBlock(*(*(&v55 + 1) + 8 * m));
            v26 = v25;
            if (v25)
            {
              (*(v25 + 2))(v25, v13);
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v55 objects:v71 count:16];
        }

        while (v22);
      }

      v18 = v54;
    }
  }

LABEL_48:
}

- (void)_handleSceneConnectionOptionsActions:(id)actions sceneController:(id)controller
{
  actionsCopy = actions;
  controllerCopy = controller;
  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = actionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Incoming scene connection: %@", buf, 0xCu);
  }

  scene = [controllerCopy scene];
  shortcutItem = [actionsCopy shortcutItem];
  if (shortcutItem)
  {
    [controllerCopy windowScene:scene performActionForShortcutItem:shortcutItem completionHandler:&stru_100A07848];
  }

  v25 = shortcutItem;
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringForKey:@"PPTLaunchURL"];

  if (v11)
  {
    uRLContexts2 = [NSURL URLWithString:v11];
    [controllerCopy openURL:uRLContexts2 options:&__NSDictionary0__struct];
  }

  else
  {
    uRLContexts = [actionsCopy URLContexts];
    v14 = [uRLContexts count];

    if (!v14)
    {
      goto LABEL_10;
    }

    uRLContexts2 = [actionsCopy URLContexts];
    [controllerCopy scene:scene openURLContexts:uRLContexts2];
  }

LABEL_10:
  userActivities = [actionsCopy userActivities];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [userActivities countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(userActivities);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        activityType = [v20 activityType];
        [controllerCopy scene:scene willContinueUserActivityWithType:activityType];

        [controllerCopy scene:scene continueUserActivity:v20];
      }

      v17 = [userActivities countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  notificationResponse = [actionsCopy notificationResponse];
  if (notificationResponse)
  {
    v23 = BCSceneLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = notificationResponse;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Incoming notification during scene connection: %@", buf, 0xCu);
    }

    v24 = +[BKNotificationManager sharedInstance];
    [v24 handleNotificationResponse:notificationResponse];
  }
}

- (void)didDisconnectScene:(id)scene
{
  sceneCopy = scene;
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];

  delegate = [sceneCopy delegate];
  v8 = objc_opt_class();

  v9 = BCSceneLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromClass(v8);
    *buf = 138543618;
    v19 = persistentIdentifier;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didDisconnectScene: sceneIdentifier=%{public}@, sceneDelegate=%{public}@", buf, 0x16u);
  }

  [(BKSceneFlowController *)self _flushPendingSceneRequestCompletion:sceneCopy];
  primarySceneController = [(BKSceneFlowController *)self primarySceneController];
  scene = [primarySceneController scene];

  if (scene != sceneCopy)
  {
    bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100109CC0;
    v16[3] = &unk_100A07870;
    v17 = sceneCopy;
    v14 = [NSPredicate predicateWithBlock:v16];
    v15 = [bookSceneControllers filteredArrayUsingPredicate:v14];
    [(BKSceneFlowController *)self setBookSceneControllers:v15];
  }
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  v19 = objc_alloc_init(NSMutableSet);
  v6 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = sessionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(BKSceneFlowController *)self _lastKnownBookPresentingSceneInfoForSceneSession:*(*(&v20 + 1) + 8 * v11)];
        openBookAssetID = [v12 openBookAssetID];
        if (openBookAssetID)
        {
          v14 = openBookAssetID;
          openBookAssetID2 = [v12 openBookAssetID];
          v16 = [v6 isEqualToString:openBookAssetID2];

          if ((v16 & 1) == 0)
          {
            openBookAssetID3 = [v12 openBookAssetID];
            [v19 addObject:openBookAssetID3];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = +[BKLastOpenBookManager sharedInstance];
  [v18 removeSucessfullyOpenedBookAssetIDs:v19];
}

- (id)sceneHostingAllViewControllersConformingToProtocol:(id)protocol
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100109FA8;
  v11 = &unk_100A07898;
  protocolCopy = protocol;
  v13 = objc_alloc_init(NSMutableArray);
  v4 = v13;
  v5 = protocolCopy;
  [(BKSceneFlowController *)self enumerateSceneController:&v8 includeHidden:1];
  v6 = [v4 copy];

  return v6;
}

- (int64_t)closeTypeForForegroundedScene
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010A100;
  v4[3] = &unk_100A078C0;
  v4[4] = v9;
  v4[5] = &v5;
  [(BKSceneFlowController *)self enumerateSceneController:v4 includeHidden:0];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
  return v2;
}

- (BOOL)_canReparentRootBar
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010A2A4;
  v4[3] = &unk_100A078E8;
  v4[4] = &v5;
  [(BKSceneFlowController *)self enumerateSceneInfo:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)closeTypeForSceneController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v5 = BUDynamicCast();

  rootBarCoordinator = [v5 rootBarCoordinator];

  if (rootBarCoordinator)
  {
    v7 = 2;
  }

  else if ([(BKSceneFlowController *)self _canReparentRootBar])
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (void)_reparentRootBarTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  v22 = BUDynamicCast();

  primarySceneController = [(BKSceneFlowController *)self primarySceneController];

  v6 = v22;
  if (v22 != primarySceneController)
  {
    objc_opt_class();
    primarySceneController2 = [(BKSceneFlowController *)self primarySceneController];
    v8 = BUDynamicCast();

    rootBarCoordinator = [v8 rootBarCoordinator];
    bookSceneControllers = [(BKSceneFlowController *)self bookSceneControllers];
    v11 = [bookSceneControllers containsObject:v22];

    if (v11)
    {
      bookSceneControllers2 = [(BKSceneFlowController *)self bookSceneControllers];
      v13 = [bookSceneControllers2 mutableCopy];

      [v13 removeObject:v22];
      [(BKSceneFlowController *)self setBookSceneControllers:v13];
    }

    [(BKSceneFlowController *)self setPrimarySceneController:v22];
    scene = [v8 scene];
    if (scene)
    {
      v15 = scene;
      bookSceneControllers3 = [(BKSceneFlowController *)self bookSceneControllers];
      v17 = [bookSceneControllers3 containsObject:v8];

      if ((v17 & 1) == 0)
      {
        bookSceneControllers4 = [(BKSceneFlowController *)self bookSceneControllers];
        v19 = [bookSceneControllers4 arrayByAddingObject:v8];
        [(BKSceneFlowController *)self setBookSceneControllers:v19];
      }
    }

    [v8 setRootBarCoordinator:0];
    [v22 setRootBarCoordinator:rootBarCoordinator];
    rootBarCoordinator2 = [v22 rootBarCoordinator];
    v21 = +[BKRootBarItemsProvider HomeIdentifier];
    [rootBarCoordinator2 selectWithIdentifier:v21 isUserAction:0];

    [(BKSceneFlowController *)self updateAllAssetPresenterCloseStateTypes];
    v6 = v22;
  }
}

- (void)updateAllAssetPresenterCloseStateTypes
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10010A650;
  v2[3] = &unk_100A07910;
  v2[4] = self;
  [(BKSceneFlowController *)self enumerateSceneController:v2 includeHidden:1];
}

- (void)handleCloseAssetForSceneController:(id)controller assetPresentingViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v9 = [(BKSceneFlowController *)self closeTypeForSceneController:controllerCopy];
  switch(v9)
  {
    case 2:
      goto LABEL_6;
    case 4:
      [(BKSceneFlowController *)self _reparentRootBarTo:controllerCopy];
LABEL_6:
      [viewControllerCopy im_dismissAnimated:animatedCopy];
      break;
    case 3:
      [(BKSceneFlowController *)self requestPrimaryScene:&stru_100A07950];
      break;
  }

  [(BKSceneFlowController *)self updateAllAssetPresenterCloseStateTypes];
  v10 = +[BKAppDelegate sceneManager];
  [v10 attemptToPresentStoreReview];
}

- (void)_attachDebugViewControllerToSceneIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[NSUserDefaults standardUserDefaults];
  if ([v4 BOOLForKey:@"BKShowDebugMenu"])
  {
    v5 = +[JSADevice isInternalBuild];

    if (v5)
    {
      objc_opt_class();
      v6 = BUDynamicCast();
      objc_initWeak(&location, v6);

      objc_copyWeak(&v10, &location);
      v7 = objc_loadWeakRetained(&location);
      statusBarManager = [v7 statusBarManager];
      [statusBarManager setDebugMenuHandler:&v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

@end