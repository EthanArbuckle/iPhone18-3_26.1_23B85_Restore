@interface WFMainSceneDelegate
- (BOOL)handleOpenURL:(id)l options:(id)options;
- (BOOL)handleShortcutItem:(id)item;
- (BOOL)openFile:(id)file sourceApplication:(id)application completionHandler:(id)handler;
- (BOOL)openWorkflow:(id)workflow;
- (BOOL)scene:(id)scene handleUserActivityWithType:(id)type webpageURL:(id)l userInfo:(id)info interaction:(id)interaction;
- (id)topViewController;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneWillResignActive:(id)active;
- (void)showAlertWithError:(id)error;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation WFMainSceneDelegate

- (void)showAlertWithError:(id)error
{
  errorCopy = error;
  topViewController = [(WFMainSceneDelegate *)self topViewController];
  v7 = WFUserInterfaceFromViewController();

  v6 = [WFAlert alertWithError:errorCopy];

  [v7 presentAlert:v6];
}

- (id)topViewController
{
  window = [(WFMainSceneDelegate *)self window];
  rootViewController = [window rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

- (BOOL)handleOpenURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  openInPlace = [optionsCopy openInPlace];
  sourceApplication = [optionsCopy sourceApplication];

  if ([lCopy isFileURL])
  {
    if (openInPlace)
    {
      [lCopy startAccessingSecurityScopedResource];
      v10 = objc_opt_new();
      v28 = lCopy;
      v11 = 1;
      v12 = [NSArray arrayWithObjects:&v28 count:1];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000B26E8;
      v23[3] = &unk_1000F4120;
      v24 = v10;
      v25 = lCopy;
      selfCopy = self;
      v27 = sourceApplication;
      v13 = v10;
      [v13 prepareForReadingItemsAtURLs:v12 options:0 writingItemsAtURLs:&__NSArray0__struct options:0 error:0 byAccessor:v23];
    }

    else
    {
      lastPathComponent = [lCopy lastPathComponent];
      v13 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:lastPathComponent];

      v15 = +[NSFileManager defaultManager];
      v22 = 0;
      v16 = [v15 moveItemAtURL:lCopy toURL:v13 error:&v22];
      v17 = v22;

      if (v16)
      {
        v18 = [WFFileRepresentation fileWithURL:v13 options:1];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B2844;
        v21[3] = &unk_1000F3FB8;
        v21[4] = self;
        v11 = [(WFMainSceneDelegate *)self openFile:v18 sourceApplication:sourceApplication completionHandler:v21];
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
    v11 = [v13 handleOpenURL:lCopy fromSourceApplication:sourceApplication errorHandler:v20];
  }

  return v11;
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(contextsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 URL];
        options = [v10 options];
        [(WFMainSceneDelegate *)self handleOpenURL:v11 options:options];
      }

      v7 = [contextsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)openFile:(id)file sourceApplication:(id)application completionHandler:(id)handler
{
  fileCopy = file;
  applicationCopy = application;
  handlerCopy = handler;
  wfType = [fileCopy wfType];
  v12 = [WFShortcutExtractor isShortcutFileType:wfType];

  if (v12)
  {
    v13 = [[WFShortcutExtractor alloc] initWithFile:fileCopy suggestedName:0 sourceApplication:applicationCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B2C74;
    v15[3] = &unk_1000F40A8;
    v15[4] = self;
    v16 = handlerCopy;
    [v13 extractShortcutWithCompletion:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  return v12;
}

- (BOOL)openWorkflow:(id)workflow
{
  if (!workflow)
  {
    return 0;
  }

  workflowCopy = workflow;
  v5 = +[WFInterchangeManager sharedManager];
  externalURLForViewing = [workflowCopy externalURLForViewing];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B2F28;
  v9[3] = &unk_1000F3FB8;
  v9[4] = self;
  v7 = [v5 handleOpenURL:externalURLForViewing fromSourceApplication:0 errorHandler:v9];

  return v7;
}

- (BOOL)scene:(id)scene handleUserActivityWithType:(id)type webpageURL:(id)l userInfo:(id)info interaction:(id)interaction
{
  sceneCopy = scene;
  typeCopy = type;
  lCopy = l;
  infoCopy = info;
  v15 = +[WFDatabase defaultDatabase];
  if ([typeCopy isEqualToString:WFHandoffOpenURLActivityType])
  {
    v16 = [infoCopy objectForKey:WFHandoffURLKey];
    selfCopy = self;
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = lCopy;
    }

    v19 = v18;

    v20 = +[WFInterchangeAppRegistry sharedRegistry];
    [v19 scheme];
    v21 = typeCopy;
    v22 = infoCopy;
    v23 = lCopy;
    v24 = v15;
    v26 = v25 = sceneCopy;
    v27 = [v20 appWithURLScheme:v26];
    scheme = [v19 scheme];
    v42 = [v27 schemeNamed:scheme];

    sceneCopy = v25;
    v15 = v24;
    lCopy = v23;
    infoCopy = v22;
    typeCopy = v21;

    v29 = +[WFInterchangeManager sharedManager];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B33AC;
    v48[3] = &unk_1000F3FB8;
    v48[4] = selfCopy;
    v30 = [WFInterchangeURLRequest requestWithURL:v19 scheme:v42 userInterface:0 bundleIdentifier:0 successHandler:0 failureHandler:v48];

    [v29 performRequest:v30];
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:WFHandoffContinueWorkflowActivityType])
  {
    if (infoCopy)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000B33B8;
      v47[3] = &unk_1000F3FE0;
      v47[4] = self;
      [WFHandoffSimulator getStateForContinuingWorkflowFromUserActivityUserInfo:infoCopy completionHandler:v47];
LABEL_11:
      v34 = 1;
      goto LABEL_12;
    }

LABEL_24:
    v34 = 0;
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:WFHandoffRunActionActivityType])
  {
    v31 = [infoCopy objectForKey:WFHandoffActionRunRequestKey];
    v32 = [NSSet setWithObject:objc_opt_class()];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000B343C;
    v44[3] = &unk_1000F4030;
    v45 = sceneCopy;
    selfCopy2 = self;
    v33 = [NSKeyedUnarchiver wf_securelyUnarchiveObjectWithData:v31 allowedClasses:v32 completionHandler:v44];

    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:WFViewWorkflowActivityType])
  {
    selfCopy3 = self;
    v37 = [infoCopy objectForKey:WFViewWorkflowActivityWorkflowIDKey];
    v38 = [infoCopy objectForKey:WFViewWorkflowActivityWorkflowNameKey];
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

    v41 = [(WFMainSceneDelegate *)selfCopy3 openWorkflow:v39];

    if (v41)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  v40 = [typeCopy isEqualToString:NSUserActivityTypeBrowsingWeb];
  v34 = 0;
  if (lCopy && v40)
  {
    if ([(WFMainSceneDelegate *)self handleOpenURL:lCopy options:0])
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_12:

  return v34;
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  activityType = [activityCopy activityType];
  webpageURL = [activityCopy webpageURL];
  userInfo = [activityCopy userInfo];
  interaction = [activityCopy interaction];

  [(WFMainSceneDelegate *)self scene:sceneCopy handleUserActivityWithType:activityType webpageURL:webpageURL userInfo:userInfo interaction:interaction];
}

- (BOOL)handleShortcutItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  v5 = [type isEqualToString:@"create_workflow"];

  if (v5)
  {
    v6 = @"shortcuts://create-workflow?source=3d_touch";
  }

  else
  {
    type2 = [itemCopy type];
    v8 = [type2 isEqualToString:@"view_gallery"];

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

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [(WFMainSceneDelegate *)self handleShortcutItem:item]);
}

- (void)sceneWillResignActive:(id)active
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 setSuspended:1];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  WFEnsureDaemonIsRunningForSyncIfNeeded();
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 setSuspended:0];

  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000B3B14;
  v10 = &unk_1000F3F90;
  selfCopy = self;
  v12 = activeCopy;
  v6 = activeCopy;
  dispatch_async(&_dispatch_main_q, &v7);
  [WFAppStorePromptController didBecomeActive:v7];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v9 = objc_opt_class();
  v10 = sceneCopy;
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
  window = [(WFMainSceneDelegate *)self window];
  [window setBackgroundColor:v15];

  v17 = +[UIApplication sharedApplication];
  delegate = [v17 delegate];

  if (delegate)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = delegate;
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

  initializationResult = [v20 initializationResult];
  if (initializationResult == 2)
  {
    v22 = objc_opt_new();
    rootViewController = [(WFMainSceneDelegate *)self window];
    [rootViewController setRootViewController:v22];
  }

  else
  {
    v22 = +[WFDatabase defaultDatabase];
    v24 = [[WFMainViewController alloc] initWithDatabase:v22];
    window2 = [(WFMainSceneDelegate *)self window];
    [window2 setRootViewController:v24];

    rootViewController = self->_rootViewController;
    self->_rootViewController = v24;
  }

  +[WFSystemImagePrefetcher activate];
  window3 = [(WFMainSceneDelegate *)self window];
  [window3 makeKeyAndVisible];

  window4 = [(WFMainSceneDelegate *)self window];
  rootViewController = [window4 rootViewController];
  v29 = WFUserInterfaceFromViewController();

  if (initializationResult == 2)
  {
    [v20 initializationResult];
    WFPresentInitializationErrorIfNecessary();
  }

  shortcutItem = [optionsCopy shortcutItem];
  [(WFMainSceneDelegate *)self setPendingShortcutItem:shortcutItem];

  uRLContexts = [optionsCopy URLContexts];
  [(WFMainSceneDelegate *)self setPendingOpenURLContexts:uRLContexts];

  userActivities = [optionsCopy userActivities];

  anyObject = [userActivities anyObject];
  [(WFMainSceneDelegate *)self setPendingUserActivity:anyObject];

  window5 = [(WFMainSceneDelegate *)self window];
  [WFDebugUtilities setupDebuggingForWindow:window5];

  v35 = +[WFDatabase defaultDatabase];
  [v35 showLibraryMissingWorkflowsAlertIfNecessary:v29];
}

@end