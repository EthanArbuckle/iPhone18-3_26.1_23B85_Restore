@interface WFMainSceneDelegate
- (BOOL)handleOpenURL:(id)a3 options:(id)a4;
- (BOOL)handleShortcutItem:(id)a3;
- (BOOL)openFile:(id)a3 sourceApplication:(id)a4 completionHandler:(id)a5;
- (BOOL)openWorkflow:(id)a3;
- (BOOL)scene:(id)a3 handleUserActivityWithType:(id)a4 webpageURL:(id)a5 userInfo:(id)a6 interaction:(id)a7;
- (id)topViewController;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)showAlertWithError:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation WFMainSceneDelegate

- (void)showAlertWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFMainSceneDelegate *)self topViewController];
  v7 = WFUserInterfaceFromViewController();

  v6 = [WFAlert alertWithError:v4];

  [v7 presentAlert:v6];
}

- (id)topViewController
{
  v2 = [(WFMainSceneDelegate *)self window];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (BOOL)handleOpenURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 openInPlace];
  v9 = [v7 sourceApplication];

  if ([v6 isFileURL])
  {
    if (v8)
    {
      [v6 startAccessingSecurityScopedResource];
      v10 = objc_opt_new();
      v28 = v6;
      v11 = 1;
      v12 = [NSArray arrayWithObjects:&v28 count:1];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000B26E8;
      v23[3] = &unk_1000F4120;
      v24 = v10;
      v25 = v6;
      v26 = self;
      v27 = v9;
      v13 = v10;
      [v13 prepareForReadingItemsAtURLs:v12 options:0 writingItemsAtURLs:&__NSArray0__struct options:0 error:0 byAccessor:v23];
    }

    else
    {
      v14 = [v6 lastPathComponent];
      v13 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v14];

      v15 = +[NSFileManager defaultManager];
      v22 = 0;
      v16 = [v15 moveItemAtURL:v6 toURL:v13 error:&v22];
      v17 = v22;

      if (v16)
      {
        v18 = [WFFileRepresentation fileWithURL:v13 options:1];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B2844;
        v21[3] = &unk_1000F3FB8;
        v21[4] = self;
        v11 = [(WFMainSceneDelegate *)self openFile:v18 sourceApplication:v9 completionHandler:v21];
      }

      else
      {
        [(WFMainSceneDelegate *)self showAlertWithError:v17];
        v11 = 0;
      }
    }
  }

  else
  {
    v13 = +[WFInterchangeManager sharedManager];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B28AC;
    v20[3] = &unk_1000F3FB8;
    v20[4] = self;
    v11 = [v13 handleOpenURL:v6 fromSourceApplication:v9 errorHandler:v20];
  }

  return v11;
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 URL];
        v12 = [v10 options];
        [(WFMainSceneDelegate *)self handleOpenURL:v11 options:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)openFile:(id)a3 sourceApplication:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 wfType];
  v12 = [WFShortcutExtractor isShortcutFileType:v11];

  if (v12)
  {
    v13 = [[WFShortcutExtractor alloc] initWithFile:v8 suggestedName:0 sourceApplication:v9];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B2C74;
    v15[3] = &unk_1000F40A8;
    v15[4] = self;
    v16 = v10;
    [v13 extractShortcutWithCompletion:v15];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  return v12;
}

- (BOOL)openWorkflow:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = +[WFInterchangeManager sharedManager];
  v6 = [v4 externalURLForViewing];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2F28;
  v9[3] = &unk_1000F3FB8;
  v9[4] = self;
  v7 = [v5 handleOpenURL:v6 fromSourceApplication:0 errorHandler:v9];

  return v7;
}

- (BOOL)scene:(id)a3 handleUserActivityWithType:(id)a4 webpageURL:(id)a5 userInfo:(id)a6 interaction:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[WFDatabase defaultDatabase];
  if ([v12 isEqualToString:WFHandoffOpenURLActivityType])
  {
    v16 = [v14 objectForKey:WFHandoffURLKey];
    v43 = self;
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;

    v20 = +[WFInterchangeAppRegistry sharedRegistry];
    [v19 scheme];
    v21 = v12;
    v22 = v14;
    v23 = v13;
    v24 = v15;
    v26 = v25 = v11;
    v27 = [v20 appWithURLScheme:v26];
    v28 = [v19 scheme];
    v42 = [v27 schemeNamed:v28];

    v11 = v25;
    v15 = v24;
    v13 = v23;
    v14 = v22;
    v12 = v21;

    v29 = +[WFInterchangeManager sharedManager];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B33AC;
    v48[3] = &unk_1000F3FB8;
    v48[4] = v43;
    v30 = [WFInterchangeURLRequest requestWithURL:v19 scheme:v42 userInterface:0 bundleIdentifier:0 successHandler:0 failureHandler:v48];

    [v29 performRequest:v30];
    goto LABEL_11;
  }

  if ([v12 isEqualToString:WFHandoffContinueWorkflowActivityType])
  {
    if (v14)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000B33B8;
      v47[3] = &unk_1000F3FE0;
      v47[4] = self;
      [WFHandoffSimulator getStateForContinuingWorkflowFromUserActivityUserInfo:v14 completionHandler:v47];
LABEL_11:
      v34 = 1;
      goto LABEL_12;
    }

LABEL_24:
    v34 = 0;
    goto LABEL_12;
  }

  if ([v12 isEqualToString:WFHandoffRunActionActivityType])
  {
    v31 = [v14 objectForKey:WFHandoffActionRunRequestKey];
    v32 = [NSSet setWithObject:objc_opt_class()];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000B343C;
    v44[3] = &unk_1000F4030;
    v45 = v11;
    v46 = self;
    v33 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:v31 allowedClasses:v32 completionHandler:v44];

    goto LABEL_11;
  }

  if ([v12 isEqualToString:WFViewWorkflowActivityType])
  {
    v36 = self;
    v37 = [v14 objectForKey:WFViewWorkflowActivityWorkflowIDKey];
    v38 = [v14 objectForKey:WFViewWorkflowActivityWorkflowNameKey];
    if (!v37 || ([v15 referenceForWorkflowID:v37], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (v38)
      {
        v39 = [v15 uniqueVisibleReferenceForWorkflowName:v38];
      }

      else
      {
        v39 = 0;
      }
    }

    v41 = [(WFMainSceneDelegate *)v36 openWorkflow:v39];

    if (v41)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  v40 = [v12 isEqualToString:NSUserActivityTypeBrowsingWeb];
  v34 = 0;
  if (v13 && v40)
  {
    if ([(WFMainSceneDelegate *)self handleOpenURL:v13 options:0])
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_12:

  return v34;
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v6 activityType];
  v8 = [v6 webpageURL];
  v9 = [v6 userInfo];
  v10 = [v6 interaction];

  [(WFMainSceneDelegate *)self scene:v7 handleUserActivityWithType:v11 webpageURL:v8 userInfo:v9 interaction:v10];
}

- (BOOL)handleShortcutItem:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"create_workflow"];

  if (v5)
  {
    v6 = @"shortcuts://create-workflow?source=3d_touch";
  }

  else
  {
    v7 = [v3 type];
    v8 = [v7 isEqualToString:@"view_gallery"];

    if (!v8)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v6 = @"shortcuts://gallery";
  }

  v9 = [NSURL URLWithString:v6];
  v10 = +[WFInterchangeManager sharedManager];
  v11 = [v10 handleOpenURL:v9 fromSourceApplication:0 errorHandler:0];

LABEL_7:
  return v11;
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  (*(a5 + 2))(v8, [(WFMainSceneDelegate *)self handleShortcutItem:a4]);
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 setSuspended:1];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  WFEnsureDaemonIsRunningForSyncIfNeeded();
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 setSuspended:0];

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000B3B14;
  v10 = &unk_1000F3F90;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, &v7);
  [WFAppStorePromptController didBecomeActive:v7];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = v7;
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v36 = 136315906;
      *&v36[4] = "WFEnforceClass";
      *&v36[12] = 2114;
      *&v36[14] = v10;
      *&v36[22] = 2114;
      v37 = objc_opt_class();
      LOWORD(v38) = 2114;
      *(&v38 + 2) = v9;
      v13 = v37;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", v36, 0x2Au);
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v14 = [[UIWindow alloc] initWithWindowScene:v11];
  [(WFMainSceneDelegate *)self setWindow:v14];

  v15 = +[UIColor blackColor];
  v16 = [(WFMainSceneDelegate *)self window];
  [v16 setBackgroundColor:v15];

  v17 = +[UIApplication sharedApplication];
  v18 = [v17 delegate];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 initializationResult];
  if (v21 == 2)
  {
    v22 = objc_opt_new();
    rootViewController = [(WFMainSceneDelegate *)self window];
    [rootViewController setRootViewController:v22];
  }

  else
  {
    v22 = +[WFDatabase defaultDatabase];
    v24 = [[WFMainViewController alloc] initWithDatabase:v22];
    v25 = [(WFMainSceneDelegate *)self window];
    [v25 setRootViewController:v24];

    rootViewController = self->_rootViewController;
    self->_rootViewController = v24;
  }

  +[WFSystemImagePrefetcher activate];
  v26 = [(WFMainSceneDelegate *)self window];
  [v26 makeKeyAndVisible];

  v27 = [(WFMainSceneDelegate *)self window];
  v28 = [v27 rootViewController];
  v29 = WFUserInterfaceFromViewController();

  if (v21 == 2)
  {
    [v20 initializationResult];
    WFPresentInitializationErrorIfNecessary();
  }

  v30 = [v8 shortcutItem];
  [(WFMainSceneDelegate *)self setPendingShortcutItem:v30];

  v31 = [v8 URLContexts];
  [(WFMainSceneDelegate *)self setPendingOpenURLContexts:v31];

  v32 = [v8 userActivities];

  v33 = [v32 anyObject];
  [(WFMainSceneDelegate *)self setPendingUserActivity:v33];

  v34 = [(WFMainSceneDelegate *)self window];
  [WFDebugUtilities setupDebuggingForWindow:v34];

  v35 = +[WFDatabase defaultDatabase];
  [v35 showLibraryMissingWorkflowsAlertIfNecessary:v29];
}

@end