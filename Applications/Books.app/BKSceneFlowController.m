@interface BKSceneFlowController
+ (BOOL)isStateRestorationDisabledForThisLaunch;
- (BKSceneController)accountSceneController;
- (BKSceneController)endOfBookSceneController;
- (BKSceneController)primarySceneController;
- (BKSceneControlling)lastCurrentSceneController;
- (BKSceneFlowController)initWithLaunchCoordinator:(id)a3 criticalAlertCoordinator:(id)a4;
- (BOOL)_areConnectionOptionsForIntents:(id)a3;
- (BOOL)_canReparentRootBar;
- (BOOL)_hasLaunchActionsInConnectionOptions:(id)a3;
- (BOOL)_isStateRestorationAndCanRestoreToAuxiliaryScene:(id)a3;
- (id)_existingBookSceneSessionForRequestAssetID:(id)a3;
- (id)_existingSceneSessionForPrimaryScene;
- (id)_lastKnownBookPresentingSceneInfoForSceneSession:(id)a3;
- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)a3;
- (id)_rootViewControllerForViewController:(id)a3;
- (id)anySceneController;
- (id)currentSceneController;
- (id)defaultSceneControllerForTransaction:(id)a3;
- (id)sceneControllerForSceneType:(unint64_t)a3 assetID:(id)a4;
- (id)sceneControllerForViewController:(id)a3;
- (id)sceneControllerForWindow:(id)a3;
- (id)sceneHostingAllViewControllersConformingToProtocol:(id)a3;
- (id)sceneInfoPresentingAssetID:(id)a3;
- (int64_t)closeTypeForForegroundedScene;
- (int64_t)closeTypeForSceneController:(id)a3;
- (void)_attachDebugViewControllerToSceneIfNeeded:(id)a3;
- (void)_consumePendingBookSceneRequestAssetID:(id)a3;
- (void)_finishSceneRequest:(id)a3;
- (void)_flushPendingSceneRequestCompletion:(id)a3;
- (void)_handleErrorForCompletionBlocks:(id)a3;
- (void)_handleSceneConnectionOptionsActions:(id)a3 sceneController:(id)a4;
- (void)_reparentRootBarTo:(id)a3;
- (void)_setupSizeRestrictionsForWindowScene:(id)a3 sceneType:(unint64_t)a4;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)destroySceneForAssetID:(id)a3;
- (void)didDisconnectScene:(id)a3;
- (void)enumerateSceneController:(id)a3 includeHidden:(BOOL)a4;
- (void)enumerateSceneInfo:(id)a3;
- (void)handleCloseAssetForSceneController:(id)a3 assetPresentingViewController:(id)a4 animated:(BOOL)a5;
- (void)requestAccountScene:(id)a3;
- (void)requestBookSceneWithAssetID:(id)a3 bringExistingToFront:(BOOL)a4 completion:(id)a5;
- (void)requestEndOfBookSceneWithOptions:(id)a3 completion:(id)a4;
- (void)requestPrimaryOrBookScene:(id)a3;
- (void)requestPrimaryScene:(BOOL)a3 completion:(id)a4;
- (void)requestSceneWithAssetID:(id)a3 bringExistingToFront:(BOOL)a4 completion:(id)a5;
- (void)requestTabBarSceneController:(id)a3;
- (void)routeScene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)updateAllAssetPresenterCloseStateTypes;
@end

@implementation BKSceneFlowController

- (BOOL)_areConnectionOptionsForIntents:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_100018778(v3);

  return v3 & 1;
}

- (BKSceneController)primarySceneController
{
  primarySceneController = self->_primarySceneController;
  if (!primarySceneController)
  {
    v4 = [BKSceneController alloc];
    v5 = [(BKSceneFlowController *)self launchCoordinator];
    v6 = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:1 launchCoordinator:v5 criticalAlertCoordinator:v6];
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
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [UIApp launchedToTest];
    if (v4)
    {
      LOBYTE(v4) = +[BCPPTConfig hasExtendedLaunchTypeSet]^ 1;
    }
  }

  return v4;
}

- (id)currentSceneController
{
  v3 = [(BKSceneFlowController *)self lastCurrentSceneController];
  v4 = [v3 scene];
  v5 = [v4 _isKeyWindowScene];

  if (v5)
  {
    v6 = [(BKSceneFlowController *)self lastCurrentSceneController];
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

    v8 = [(BKSceneFlowController *)self primarySceneController];
    v9 = [v8 scene];

    if (v9)
    {
      v10 = [(BKSceneFlowController *)self primarySceneController];
      v11 = v20[5];
      v20[5] = v10;
LABEL_10:

      goto LABEL_11;
    }

    v12 = [(BKSceneFlowController *)self bookSceneControllers];
    v13 = [v12 count];

    if (v13)
    {
      v11 = [(BKSceneFlowController *)self bookSceneControllers];
      v14 = [v11 objectAtIndexedSubscript:0];
      v15 = v20[5];
      v20[5] = v14;

      goto LABEL_10;
    }
  }

LABEL_11:
  [(BKSceneFlowController *)self setLastCurrentSceneController:v20[5]];
  v6 = v20[5];
  _Block_object_dispose(&v19, 8);

LABEL_12:

  return v6;
}

- (BKSceneControlling)lastCurrentSceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_lastCurrentSceneController);

  return WeakRetained;
}

- (BKSceneFlowController)initWithLaunchCoordinator:(id)a3 criticalAlertCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = BKSceneFlowController;
  v9 = [(BKSceneFlowController *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_launchCoordinator, a3);
    objc_storeStrong(&v10->_criticalAlertCoordinator, a4);
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

- (id)defaultSceneControllerForTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 targetSceneController];

  if (v5)
  {
    [v4 targetSceneController];
  }

  else
  {
    [v4 originatingSceneController];
  }
  v6 = ;

  v7 = BUProtocolCast();

  if (!v7)
  {
    v8 = BCSceneLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "sceneController not found in tx. Returning currentSceneController as fallback.", v10, 2u);
    }

    v7 = [(BKSceneFlowController *)self currentSceneController];
  }

  return v7;
}

- (id)anySceneController
{
  v3 = [(BKSceneFlowController *)self currentSceneController];
  v4 = [v3 scene];

  if (v4)
  {
    v5 = [(BKSceneFlowController *)self currentSceneController];
  }

  else
  {
    v6 = [(BKSceneFlowController *)self endOfBookSceneController];
    v7 = [v6 scene];

    if (v7)
    {
      v5 = [(BKSceneFlowController *)self endOfBookSceneController];
    }

    else
    {
      v8 = [(BKSceneFlowController *)self accountSceneController];
      v9 = [v8 scene];

      if (v9)
      {
        v5 = [(BKSceneFlowController *)self accountSceneController];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)_rootViewControllerForViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 parentViewController];
  if (v4 || ([v3 presentingViewController], v5 = objc_claimAutoreleasedReturnValue(), 0, v4 = v5, v6 = v3, v5))
  {
    v6 = v3;
    do
    {
      v7 = v6;
      v6 = v4;

      v8 = [v6 parentViewController];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [v6 presentingViewController];
      }

      v4 = v10;
    }

    while (v4);
  }

  return v6;
}

- (id)sceneControllerForViewController:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000273E0;
  v25 = sub_100027628;
  v26 = 0;
  v5 = [v4 viewIfLoaded];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v6 window];
      v9 = [(BKSceneFlowController *)self sceneControllerForWindow:v8];
      v10 = v22[5];
      v22[5] = v9;
    }
  }

  v11 = v22[5];
  if (!v11)
  {
    v12 = [(BKSceneFlowController *)self _rootViewControllerForViewController:v4];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 _bk_sceneController];
      v15 = v22[5];
      v22[5] = v14;
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

- (id)sceneControllerForWindow:(id)a3
{
  v3 = [a3 windowScene];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = [v4 controller];
  v6 = BUProtocolCast();

  return v6;
}

- (id)sceneInfoPresentingAssetID:(id)a3
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
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(BKSceneFlowController *)self enumerateSceneInfo:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)destroySceneForAssetID:(id)a3
{
  v5 = [(BKSceneFlowController *)self sceneInfoPresentingAssetID:a3];
  v3 = +[BKSceneUtilities sharedInstance];
  v4 = [v5 sceneSession];
  [v3 destroySceneWithSceneSession:v4 withAnimationType:1];
}

- (void)enumerateSceneController:(id)a3 includeHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v25 = 0;
    v7 = [(BKSceneFlowController *)self primarySceneController];
    v8 = [v7 scene];

    if (!v8 && !v4)
    {
      goto LABEL_7;
    }

    v9 = objc_retainBlock(v6);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v7, &v25);
    }

    if ((v25 & 1) == 0)
    {
LABEL_7:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [(BKSceneFlowController *)self bookSceneControllers];
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [v16 scene];

          if (v17 || v4)
          {
            v19 = objc_retainBlock(v6);
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
            v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
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

- (void)enumerateSceneInfo:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v25 = v5;
  v27 = &v28;
  [(BKSceneFlowController *)self enumerateSceneController:v24 includeHidden:0];
  if ((v29[3] & 1) == 0)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 openSessions];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
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
          v13 = [v12 role];
          v14 = [v13 isEqualToString:UIWindowSceneSessionRoleApplication];

          if (v14)
          {
            v15 = [v12 persistentIdentifier];
            if (([v33[5] containsObject:v15] & 1) == 0)
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
    v5 = [(BKSceneFlowController *)self launchCoordinator];
    v6 = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:2 launchCoordinator:v5 criticalAlertCoordinator:v6];
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
    v5 = [(BKSceneFlowController *)self launchCoordinator];
    v6 = [(BKSceneFlowController *)self criticalAlertCoordinator];
    v7 = [(BKSceneController *)v4 initWithSceneType:3 launchCoordinator:v5 criticalAlertCoordinator:v6];
    v8 = self->_endOfBookSceneController;
    self->_endOfBookSceneController = v7;

    endOfBookSceneController = self->_endOfBookSceneController;
  }

  return endOfBookSceneController;
}

- (id)sceneControllerForSceneType:(unint64_t)a3 assetID:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [(BKSceneFlowController *)self accountSceneController];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_23;
      }

      v8 = [(BKSceneFlowController *)self endOfBookSceneController];
    }

    goto LABEL_20;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_23;
    }

    v8 = [(BKSceneFlowController *)self primarySceneController];
LABEL_20:
    v7 = v8;
    goto LABEL_23;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(BKSceneFlowController *)self bookSceneControllers];
  v7 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 sceneInfo];
        v15 = BUProtocolCast();

        v16 = BCSceneLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = v20;
          v26 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "sceneControllerForSceneType with assetID=%@", buf, 0xCu);
        }

        v17 = [v15 openBookAssetID];
        v18 = [v17 isEqualToString:v6];

        if (v18)
        {
          v7 = v13;

          goto LABEL_22;
        }
      }

      v7 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (void)requestTabBarSceneController:(id)a3
{
  v4 = a3;
  v5 = [(BKSceneFlowController *)self launchCoordinator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100106A48;
  v7[3] = &unk_100A04160;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 appLaunchCoordinatorOnConditionMask:64 blockID:@"requestTabBarSceneController" performBlock:v7];
}

- (void)requestPrimaryOrBookScene:(id)a3
{
  v11 = a3;
  v4 = [(BKSceneFlowController *)self currentSceneController];

  if (v4 && (-[BKSceneFlowController currentSceneController](self, "currentSceneController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sceneType], v5, !v6))
  {
    v7 = [(BKSceneFlowController *)self currentSceneController];
    v8 = [v7 sceneInfo];
    v9 = BUProtocolCast();

    v10 = [v9 openBookAssetID];
    [(BKSceneFlowController *)self requestBookSceneWithAssetID:v10 completion:v11];
  }

  else
  {
    [(BKSceneFlowController *)self requestPrimaryScene:v11];
  }
}

- (void)requestPrimaryScene:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "requestPrimaryScene", buf, 2u);
  }

  v8 = +[BKSceneUtilities hasMultiWindowEnabled];
  if ((v8 & 1) == 0)
  {
    v9 = [(BKSceneFlowController *)self currentSceneController];
    v10 = [(BKSceneFlowController *)self primarySceneController];

    if (v9 != v10 && [(BKSceneFlowController *)self _canReparentRootBar])
    {
      [(BKSceneFlowController *)self _reparentRootBarTo:v9];
    }
  }

  v11 = [(BKSceneFlowController *)self primarySceneController];
  v12 = [v11 scene];

  v13 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v14 = [v13 count];

  if (!a3 && v12)
  {
    if (v14)
    {
      v15 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
      v16 = objc_retainBlock(v6);
      [v15 addObject:v16];
    }

    else
    {
      v15 = objc_retainBlock(v6);
      if (!v15)
      {
LABEL_23:

        goto LABEL_24;
      }

      v16 = [(BKSceneFlowController *)self primarySceneController];
      (v15)[2](v15, v16);
    }

    goto LABEL_23;
  }

  v17 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v18 = objc_retainBlock(v6);
  [v17 addObject:v18];

  if (!v14)
  {
    v19 = [v12 session];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [(BKSceneFlowController *)self _existingSceneSessionForPrimaryScene];
    }

    v15 = v21;

    if (v8)
    {
      objc_initWeak(buf, self);
      v22 = +[BKSceneUtilities sharedInstance];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100106EE4;
      v23[3] = &unk_100A042A0;
      objc_copyWeak(&v24, buf);
      [v22 requestWindowForSceneSession:v15 userActivity:0 errorHandler:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    if (v12)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:v12];
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)requestBookSceneWithAssetID:(id)a3 bringExistingToFront:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = BCSceneLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "requestBookScene with assetID=%@", &buf, 0xCu);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100107380;
  v34[3] = &unk_100A07788;
  v11 = v8;
  v35 = v11;
  v12 = v9;
  v36 = v12;
  v13 = objc_retainBlock(v34);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x2020000000;
  v39 = 0;
  if (a4 || (v29[0] = _NSConcreteStackBlock, v29[1] = 3221225472, v29[2] = sub_1001073F4, v29[3] = &unk_100A077B0, v30 = v11, v31 = self, v32 = v13, p_buf = &buf, [(BKSceneFlowController *)self enumerateSceneInfo:v29], v32, v30, (*(*(&buf + 1) + 24) & 1) == 0))
  {
    v14 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
    v15 = [v14 objectForKeyedSubscript:v11];

    if (!v15)
    {
      v16 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
      v15 = objc_alloc_init(NSMutableArray);
      [v16 setObject:v15 forKeyedSubscript:v11];
    }

    v17 = [v15 count];
    v18 = objc_retainBlock(v13);
    [v15 addObject:v18];

    if (!v17)
    {
      v19 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
      [v19 addObject:v11];

      v20 = [(BKSceneFlowController *)self _existingBookSceneSessionForRequestAssetID:v11];
      if (v20)
      {
        objc_opt_class();
        v21 = [v20 scene];
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

- (void)requestAccountScene:(id)a3
{
  v4 = a3;
  v5 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
  v6 = [v5 count];

  v7 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
  v8 = objc_retainBlock(v4);
  [v7 addObject:v8];

  if (!v6)
  {
    v9 = [(BKSceneFlowController *)self accountSceneController];
    v10 = [v9 scene];
    v11 = [v10 session];

    if (v11)
    {
      objc_opt_class();
      v12 = [v11 scene];
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
    [v15 requestWindowForSceneSession:v11 userActivity:v14 errorHandler:v16];

    if (v13)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:v13];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)requestEndOfBookSceneWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKSceneFlowController *)self currentEndOfBookSceneOptions];
  v9 = [v8 isEqualToDictionary:v6];

  v31 = @"feedOptions";
  v32 = v6;
  v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  if ((v9 & 1) == 0)
  {
    v11 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    [v11 removeAllObjects];

    [(BKSceneFlowController *)self setCurrentEndOfBookSceneOptions:v6];
    v12 = [(BKSceneFlowController *)self endOfBookSceneController];
    [v12 updateEndOfBookSceneWithUserInfo:v10];
  }

  v13 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
  v14 = [v13 count] == 0;

  if (v14)
  {
    [(BKSceneFlowController *)self setCurrentEndOfBookSceneOptions:v6];
    v17 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v18 = objc_retainBlock(v7);
    [v17 addObject:v18];

    v19 = [(BKSceneFlowController *)self endOfBookSceneController];
    v20 = [v19 scene];
    v15 = [v20 session];

    if (v15)
    {
      objc_opt_class();
      v21 = [v15 scene];
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
    v28 = self;
    [v23 requestWindowForSceneSession:v15 userActivity:v22 errorHandler:&v24];

    if (v16)
    {
      [(BKSceneFlowController *)self _finishSceneRequest:v16, v24, v25, v26, v27];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v16 = objc_retainBlock(v7);
    [v15 addObject:v16];
  }
}

- (void)_handleErrorForCompletionBlocks:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  [v3 removeAllObjects];
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

- (id)_existingBookSceneSessionForRequestAssetID:(id)a3
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
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(BKSceneFlowController *)self enumerateSceneInfo:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)requestSceneWithAssetID:(id)a3 bringExistingToFront:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BKSceneFlowController *)self primarySceneController];
  v11 = [v10 scene];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (v11)
  {
    v12 = [(BKSceneFlowController *)self primarySceneController];
    v13 = [v12 sceneInfo];

    v14 = BUProtocolCast();
    v15 = [v14 openBookAssetID];
    v16 = [v15 isEqualToString:v8];

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
    v21 = v8;
    v22 = &v23;
    [(BKSceneFlowController *)self enumerateSceneInfo:v20];
    v13 = v21;
  }

  if (*(v24 + 24) == 1)
  {
    v17 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100108464;
    v19[3] = &unk_100A07828;
    v19[4] = v9;
    [(BKSceneFlowController *)self requestPrimaryScene:v6 completion:v19];
  }

  else
  {
    v17 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001084D0;
    v18[3] = &unk_100A07828;
    v18[4] = v9;
    [(BKSceneFlowController *)self requestBookSceneWithAssetID:v8 bringExistingToFront:v6 completion:v18];
  }

  _Block_object_dispose(&v23, 8);
}

- (id)_lastKnownStateRestorationUserInfoForSceneSession:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDictionary);
  if (([objc_opt_class() isStateRestorationDisabledForThisLaunch] & 1) == 0)
  {
    v5 = [v3 stateRestorationActivity];
    v6 = [v5 userInfo];

    v4 = v6;
  }

  return v4;
}

- (id)_lastKnownBookPresentingSceneInfoForSceneSession:(id)a3
{
  v4 = a3;
  v5 = [(BKSceneFlowController *)self _lastKnownStateRestorationUserInfoForSceneSession:v4];
  if (v5)
  {
    v6 = [(_BKBaseSceneController *)BKSceneController sceneInfoFromSceneSession:v4];
    v7 = BUProtocolCast();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isStateRestorationAndCanRestoreToAuxiliaryScene:(id)a3
{
  v4 = a3;
  v5 = [v4 stateRestorationActivity];

  if (v5)
  {
    v6 = [(BKSceneFlowController *)self _lastKnownBookPresentingSceneInfoForSceneSession:v4];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v5) = [v6 supportsOpeningToAuxiliaryScene];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_hasLaunchActionsInConnectionOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 shortcutItem];
  v5 = [v3 URLContexts];
  v6 = [v3 userActivities];
  v7 = [v3 notificationResponse];

  v8 = v4 || [v5 count] || objc_msgSend(v6, "count") || v7;
  return v8;
}

- (void)_setupSizeRestrictionsForWindowScene:(id)a3 sceneType:(unint64_t)a4
{
  v5 = a3;
  if (v5)
  {
    if (a4)
    {
      if (a4 != 3)
      {
        if (a4 != 2)
        {
          goto LABEL_10;
        }

        v10 = v5;
        v6 = [v5 sizeRestrictions];
        [v6 setMinimumSize:{450.0, 450.0}];

        v7 = [v10 sizeRestrictions];
        [v7 setMaximumSize:{450.0, 450.0}];
        goto LABEL_9;
      }

      v10 = v5;
      v8 = [v5 sizeRestrictions];
      v7 = v8;
      v9 = 801.0;
    }

    else
    {
      v10 = v5;
      v8 = [v5 sizeRestrictions];
      v7 = v8;
      v9 = 500.0;
    }

    [v8 setMinimumSize:{v9, 530.0}];
LABEL_9:

    v5 = v10;
  }

LABEL_10:
}

- (void)routeScene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v10;
  objc_opt_class();
  v76 = BUDynamicCast();
  v74 = [(BKSceneFlowController *)self _areConnectionOptionsForIntents:v12];
  v13 = [v8 session];
  v14 = [v13 persistentIdentifier];

  v15 = BCSceneLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v11 delegate];
    *buf = 138544130;
    v87 = v14;
    v88 = 2114;
    v89 = v16;
    v90 = 2114;
    v91 = v12;
    v92 = 1024;
    v93 = v74;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "route scene willConnectToSession: sceneIdentifier=%{public}@, sceneDelegate=%{public}@, connectionOptions=%{public}@, forIntent=%d", buf, 0x26u);
  }

  v77 = v14;
  v78 = v12;
  if (+[BKSceneUtilities hasMultiWindowEnabled])
  {
    v79 = v11;
    v17 = [v12 userActivities];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v81 objects:v85 count:16];
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
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v81 + 1) + 8 * i);
          v24 = [v23 activityType];
          v25 = [v24 isEqualToString:v21];

          if (v25)
          {
            v26 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
            v27 = [v9 persistentIdentifier];
            [v26 setObject:v23 forKeyedSubscript:v27];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v19);
    }

    v12 = v78;
    v11 = v79;
  }

  v28 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
  v29 = [v9 persistentIdentifier];
  v30 = [v28 objectForKeyedSubscript:v29];

  if ([BKSceneUtilities connectionOptions:v12 hasActivityType:@"BKAccountInfoSceneActivityType"])
  {
    v31 = 1;
  }

  else
  {
    v32 = [v9 stateRestorationActivity];
    v33 = [v32 activityType];
    v31 = [v33 isEqualToString:@"com.apple.iBooks.sceneStateRestorationForAccountInfo"];
  }

  if ([BKSceneUtilities connectionOptions:v12 hasActivityType:@"BKEndOfBookSceneActivityType"])
  {
    v34 = 1;
  }

  else
  {
    v35 = [v9 stateRestorationActivity];
    v36 = [v35 activityType];
    v34 = [v36 isEqualToString:@"com.apple.iBooks.sceneStateRestorationForEndOfBook"];
  }

  v37 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
  v75 = v30;
  v72 = ([v37 count] | v30) == 0;

  v38 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
  v39 = [v38 count];

  v40 = [(BKSceneFlowController *)self _isStateRestorationAndCanRestoreToAuxiliaryScene:v9];
  v41 = [(BKSceneFlowController *)self _hasLaunchActionsInConnectionOptions:v12];
  v42 = 0;
  v73 = v41;
  if (v40 && (v41 & 1) == 0)
  {
    v42 = +[BKSceneUtilities hasMultiWindowEnabled];
  }

  objc_opt_class();
  v43 = [v11 delegate];
  v80 = BUDynamicCast();

  if (v31)
  {
    v44 = [(BKSceneFlowController *)self accountSceneController];
    v45 = v78;
    v46 = v76;
    goto LABEL_30;
  }

  v45 = v78;
  v46 = v76;
  if (v34)
  {
    v47 = [(BKSceneFlowController *)self endOfBookSceneController];
LABEL_29:
    v44 = v47;
    goto LABEL_30;
  }

  if (v74 || v72 && (v66 = v39 == 0, -[BKSceneFlowController primarySceneController](self, "primarySceneController"), v67 = objc_claimAutoreleasedReturnValue(), [v67 scene], v68 = objc_claimAutoreleasedReturnValue(), v68, v67, !v68) && (v66 & v42) == 0)
  {
    v47 = [(BKSceneFlowController *)self primarySceneController];
    goto LABEL_29;
  }

  v69 = [BKSceneController alloc];
  v70 = [(BKSceneFlowController *)self launchCoordinator];
  v71 = [(BKSceneFlowController *)self criticalAlertCoordinator];
  v44 = [(BKSceneController *)v69 initWithSceneType:0 launchCoordinator:v70 criticalAlertCoordinator:v71];

LABEL_30:
  [(BKSceneFlowController *)self _setupSizeRestrictionsForWindowScene:v46 sceneType:[(_BKBaseSceneController *)v44 sceneType]];
  [v80 setSceneController:v44];
  [(BKSceneController *)v44 scene:v11 willConnectToSession:v9 options:v45];
  if (![(_BKBaseSceneController *)v44 sceneType])
  {
    objc_opt_class();
    v48 = BUDynamicCast();
    v49 = [(BKSceneFlowController *)self bookSceneControllers];
    v50 = [v49 arrayByAddingObject:v48];
    [(BKSceneFlowController *)self setBookSceneControllers:v50];

    [(BKSceneFlowController *)self _consumePendingBookSceneRequestAssetID:v48];
    v51 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
    v52 = [v51 objectForKeyedSubscript:v77];

    if (v52)
    {
      v53 = [(BKSceneFlowController *)self pendingUserActivitiesMap];
      [v53 removeObjectForKey:v77];

      [v48 handleCreateSceneUserActivityWhenReady:v52];
    }
  }

  [(BKSceneFlowController *)self _handleSceneConnectionOptionsActions:v45 sceneController:v44];
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
    v58 = [v9 stateRestorationActivity];
    v59 = [v58 userInfo];
    v60 = [v56 userInfo];
    *buf = 138412546;
    v87 = v59;
    v88 = 2112;
    v89 = v60;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Overriding scene restoration activity: %@ with: %@", buf, 0x16u);

    v46 = v76;
    v45 = v78;
  }

  if (v56)
  {
    v61 = v56;
    v62 = v61;
  }

  else
  {
LABEL_39:
    v61 = [v9 stateRestorationActivity];
    v62 = 0;
  }

  if ([(_BKBaseSceneController *)v44 isStateRestorationDisabled]|| ([(BKSceneController *)v44 rootBarCoordinator], v63 = objc_claimAutoreleasedReturnValue(), v64 = (v63 != 0) & v73, v63, (v64 & 1) != 0) || !v61)
  {
    [(BKSceneFlowController *)self _finishSceneRequest:v11];
  }

  else
  {
    v65 = [v61 activityType];
    [(_BKBaseSceneController *)v44 scene:v11 willContinueUserActivityWithType:v65];

    [(_BKBaseSceneController *)v44 scene:v11 continueUserActivity:v61];
  }

  [(BKSceneFlowController *)self _attachDebugViewControllerToSceneIfNeeded:v11];
}

- (void)_consumePendingBookSceneRequestAssetID:(id)a3
{
  v9 = a3;
  v4 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
    v7 = [v6 firstObject];
    [v9 setRequestAssetID:v7];

    v8 = [(BKSceneFlowController *)self pendingBookSceneRequestAssetIDs];
    [v8 removeObjectAtIndex:0];
  }
}

- (void)_finishSceneRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v8 = BUDynamicCast();

  objc_opt_class();
  v5 = [v8 controller];
  v6 = BUDynamicCast();

  if (![v6 sceneType])
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    [(BKSceneFlowController *)self _consumePendingBookSceneRequestAssetID:v7];
  }

  [(BKSceneFlowController *)self _flushPendingSceneRequestCompletion:v8];
}

- (void)_flushPendingSceneRequestCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKSceneFlowController *)self primarySceneController];
  v6 = [v5 scene];

  if (v6 == v4)
  {
    v27 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
    v28 = [v27 copy];

    v29 = [(BKSceneFlowController *)self pendingPrimarySceneCompletionBlocks];
    [v29 removeAllObjects];

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
            v35 = [(BKSceneFlowController *)self primarySceneController];
            v34[2](v34, v35);
          }
        }

        v31 = [v13 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v31);
    }

    goto LABEL_47;
  }

  v7 = [(BKSceneFlowController *)self accountSceneController];
  v8 = [v7 scene];

  if (v8 == v4)
  {
    v36 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
    v37 = [v36 copy];

    v38 = [(BKSceneFlowController *)self pendingAccountSceneCompletionBlocks];
    [v38 removeAllObjects];

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
            v44 = [(BKSceneFlowController *)self accountSceneController];
            v43[2](v43, v44);
          }
        }

        v40 = [v13 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v40);
    }

    goto LABEL_47;
  }

  v9 = [(BKSceneFlowController *)self endOfBookSceneController];
  v10 = [v9 scene];

  if (v10 == v4)
  {
    v45 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    v46 = [v45 copy];

    v47 = [(BKSceneFlowController *)self pendingEndOfBookSceneCompletionBlocks];
    [v47 removeAllObjects];

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
            v53 = [(BKSceneFlowController *)self endOfBookSceneController];
            v52[2](v52, v53);
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
  v12 = [v11 controller];
  v13 = BUDynamicCast();

  v14 = [v13 sceneInfo];
  v15 = BUProtocolCast();

  v16 = [v15 openBookAssetID];
  if (v16)
  {
    v17 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
    v18 = [v17 objectForKeyedSubscript:v16];

    if (v18)
    {
      v19 = [(BKSceneFlowController *)self pendingBookSceneCompletionBlocksByAssetID];
      [v19 removeObjectForKey:v16];

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

- (void)_handleSceneConnectionOptionsActions:(id)a3 sceneController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Incoming scene connection: %@", buf, 0xCu);
  }

  v8 = [v6 scene];
  v9 = [v5 shortcutItem];
  if (v9)
  {
    [v6 windowScene:v8 performActionForShortcutItem:v9 completionHandler:&stru_100A07848];
  }

  v25 = v9;
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringForKey:@"PPTLaunchURL"];

  if (v11)
  {
    v12 = [NSURL URLWithString:v11];
    [v6 openURL:v12 options:&__NSDictionary0__struct];
  }

  else
  {
    v13 = [v5 URLContexts];
    v14 = [v13 count];

    if (!v14)
    {
      goto LABEL_10;
    }

    v12 = [v5 URLContexts];
    [v6 scene:v8 openURLContexts:v12];
  }

LABEL_10:
  v15 = [v5 userActivities];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 activityType];
        [v6 scene:v8 willContinueUserActivityWithType:v21];

        [v6 scene:v8 continueUserActivity:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v22 = [v5 notificationResponse];
  if (v22)
  {
    v23 = BCSceneLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Incoming notification during scene connection: %@", buf, 0xCu);
    }

    v24 = +[BKNotificationManager sharedInstance];
    [v24 handleNotificationResponse:v22];
  }
}

- (void)didDisconnectScene:(id)a3
{
  v4 = a3;
  v5 = [v4 session];
  v6 = [v5 persistentIdentifier];

  v7 = [v4 delegate];
  v8 = objc_opt_class();

  v9 = BCSceneLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromClass(v8);
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "didDisconnectScene: sceneIdentifier=%{public}@, sceneDelegate=%{public}@", buf, 0x16u);
  }

  [(BKSceneFlowController *)self _flushPendingSceneRequestCompletion:v4];
  v11 = [(BKSceneFlowController *)self primarySceneController];
  v12 = [v11 scene];

  if (v12 != v4)
  {
    v13 = [(BKSceneFlowController *)self bookSceneControllers];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100109CC0;
    v16[3] = &unk_100A07870;
    v17 = v4;
    v14 = [NSPredicate predicateWithBlock:v16];
    v15 = [v13 filteredArrayUsingPredicate:v14];
    [(BKSceneFlowController *)self setBookSceneControllers:v15];
  }
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v5 = a4;
  v19 = objc_alloc_init(NSMutableSet);
  v6 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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
        v13 = [v12 openBookAssetID];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 openBookAssetID];
          v16 = [v6 isEqualToString:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [v12 openBookAssetID];
            [v19 addObject:v17];
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

- (id)sceneHostingAllViewControllersConformingToProtocol:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100109FA8;
  v11 = &unk_100A07898;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableArray);
  v4 = v13;
  v5 = v12;
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

- (int64_t)closeTypeForSceneController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [v5 rootBarCoordinator];

  if (v6)
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

- (void)_reparentRootBarTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v22 = BUDynamicCast();

  v5 = [(BKSceneFlowController *)self primarySceneController];

  v6 = v22;
  if (v22 != v5)
  {
    objc_opt_class();
    v7 = [(BKSceneFlowController *)self primarySceneController];
    v8 = BUDynamicCast();

    v9 = [v8 rootBarCoordinator];
    v10 = [(BKSceneFlowController *)self bookSceneControllers];
    v11 = [v10 containsObject:v22];

    if (v11)
    {
      v12 = [(BKSceneFlowController *)self bookSceneControllers];
      v13 = [v12 mutableCopy];

      [v13 removeObject:v22];
      [(BKSceneFlowController *)self setBookSceneControllers:v13];
    }

    [(BKSceneFlowController *)self setPrimarySceneController:v22];
    v14 = [v8 scene];
    if (v14)
    {
      v15 = v14;
      v16 = [(BKSceneFlowController *)self bookSceneControllers];
      v17 = [v16 containsObject:v8];

      if ((v17 & 1) == 0)
      {
        v18 = [(BKSceneFlowController *)self bookSceneControllers];
        v19 = [v18 arrayByAddingObject:v8];
        [(BKSceneFlowController *)self setBookSceneControllers:v19];
      }
    }

    [v8 setRootBarCoordinator:0];
    [v22 setRootBarCoordinator:v9];
    v20 = [v22 rootBarCoordinator];
    v21 = +[BKRootBarItemsProvider HomeIdentifier];
    [v20 selectWithIdentifier:v21 isUserAction:0];

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

- (void)handleCloseAssetForSceneController:(id)a3 assetPresentingViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(BKSceneFlowController *)self closeTypeForSceneController:v11];
  switch(v9)
  {
    case 2:
      goto LABEL_6;
    case 4:
      [(BKSceneFlowController *)self _reparentRootBarTo:v11];
LABEL_6:
      [v8 im_dismissAnimated:v5];
      break;
    case 3:
      [(BKSceneFlowController *)self requestPrimaryScene:&stru_100A07950];
      break;
  }

  [(BKSceneFlowController *)self updateAllAssetPresenterCloseStateTypes];
  v10 = +[BKAppDelegate sceneManager];
  [v10 attemptToPresentStoreReview];
}

- (void)_attachDebugViewControllerToSceneIfNeeded:(id)a3
{
  v3 = a3;
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
      v8 = [v7 statusBarManager];
      [v8 setDebugMenuHandler:&v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

@end