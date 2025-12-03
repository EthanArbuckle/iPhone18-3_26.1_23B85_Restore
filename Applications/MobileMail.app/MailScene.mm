@interface MailScene
+ (NSArray)menuCommands;
+ (OS_os_log)log;
- (BOOL)allowsBackgroundMonitoring;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isInExpandedEnvironment;
- (EMDaemonInterface)daemonInterface;
- (MFAlertOverlayController)alertOverlayController;
- (MFMailAssetViewerManager)assetViewerManager;
- (MFMailboxProvider)mailboxProvider;
- (MFURLRouter)urlRouter;
- (MFWindow)mf_window;
- (MUIBrandIndicatorProvider)brandIndicatorProvider;
- (NSMutableSet)backgroundMonitors;
- (NSString)ef_publicDescription;
- (id)_createURLRoutes;
- (id)undoManager;
- (id)undoManagerForWindow:(id)window;
- (unint64_t)urlRouter:(id)router decidePolicyForRoutingRequest:(id)request;
- (void)_escapeShortcutInvoked:(id)invoked;
- (void)_freeDiskSpaceStatusDidChange:(id)change;
- (void)_messageViewerWindowShortcutInvoked:(id)invoked;
- (void)_newWindowShortcutInvoked:(id)invoked;
- (void)_switchToComposeSceneWithContext:(id)context modifiedContentsURL:(id)l isReply:(BOOL)reply composeType:(int64_t)type;
- (void)addBackgroundMonitor:(id)monitor;
- (void)assetViewerManager:(id)manager editCompletedForHandler:(id)handler URL:(id)l;
- (void)assetViewerManager:(id)manager sceneClosedForHandler:(id)handler;
- (void)beginBackgroundMonitoring;
- (void)closeSceneWithAnimation:(int64_t)animation errorHandler:(id)handler;
- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode;
- (void)endBackgroundMonitoring;
- (void)mailSceneDebugGesturePerformed;
- (void)mailSceneDidConnectWithOptions:(id)options;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneOpenURLContexts:(id)contexts;
- (void)mailSceneWillEnterForeground;
- (void)mailSceneWillResignActive;
- (void)mf_resetPreferredTitle;
- (void)monitor:(id)monitor requestsAction:(int64_t)action;
- (void)redo:(id)redo;
- (void)undo:(id)undo;
@end

@implementation MailScene

- (EMDaemonInterface)daemonInterface
{
  v2 = +[UIApplication sharedApplication];
  daemonInterface = [v2 daemonInterface];

  return daemonInterface;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  session = [(MailScene *)self session];
  persistentIdentifier = [session persistentIdentifier];
  v6 = [NSString stringWithFormat:@"%@:%@", v3, persistentIdentifier];

  return v6;
}

- (void)mailSceneWillEnterForeground
{
  [(MailScene *)self endBackgroundMonitoring];
  daemonBooster = [(MailScene *)self daemonBooster];

  if (!daemonBooster)
  {
    daemonInterface = [(MailScene *)self daemonInterface];
    clientState = [daemonInterface clientState];
    ef_publicDescription = [(MailScene *)self ef_publicDescription];
    v7 = [clientState daemonBoosterWithDescription:ef_publicDescription];
    [(MailScene *)self setDaemonBooster:v7];
  }

  [(MailScene *)self mf_resetPreferredTitle];
}

- (void)endBackgroundMonitoring
{
  backgroundMonitors = [(MailScene *)self backgroundMonitors];
  allObjects = [backgroundMonitors allObjects];

  backgroundMonitors2 = [(MailScene *)self backgroundMonitors];
  [backgroundMonitors2 removeAllObjects];

  if ([allObjects count])
  {
    v6 = +[MailScene log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping background monitors...", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = allObjects;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v10 = *v16;
      *&v9 = 138543362;
      v14 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = [MailScene log:v14];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v14;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Stopping monitor: %{public}@", buf, 0xCu);
          }

          [v12 endMonitoring];
          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (NSMutableSet)backgroundMonitors
{
  backgroundMonitors = self->_backgroundMonitors;
  if (!backgroundMonitors)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = self->_backgroundMonitors;
    self->_backgroundMonitors = v4;

    backgroundMonitors = self->_backgroundMonitors;
  }

  return backgroundMonitors;
}

- (void)mf_resetPreferredTitle
{
  mf_window = [(MailScene *)self mf_window];
  rootViewController = [mf_window rootViewController];
  mf_preferredTitle = [rootViewController mf_preferredTitle];
  [(MailScene *)self setTitle:mf_preferredTitle];
}

- (MFWindow)mf_window
{
  delegate = [(MailScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = [delegate window];
  }

  else
  {
    window = 0;
  }

  return window;
}

- (BOOL)isInExpandedEnvironment
{
  if ([(MailScene *)self conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable])
  {
    splitViewController = [(MailScene *)self splitViewController];
    v4 = [splitViewController isCollapsed] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C3F8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD130 != -1)
  {
    dispatch_once(&qword_1006DD130, block);
  }

  v2 = qword_1006DD128;

  return v2;
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_alloc_init(NSUndoManager);
    v5 = self->_undoManager;
    self->_undoManager = v4;

    undoManager = self->_undoManager;
  }

  return undoManager;
}

+ (NSArray)menuCommands
{
  v2 = +[NSMutableArray array];
  v3 = [MFMailMenuCommand shortcutWithInput:UIKeyInputEscape flags:0 repeatable:0 menu:0 action:"_escapeShortcutInvoked:"];
  [v2 addObject:v3];

  v4 = _EFLocalizedString();
  v5 = [MFMailMenuCommand shortcutWithInput:@"n" flags:1572864 repeatable:0 menu:2 action:"_newWindowShortcutInvoked:" title:v4 systemImageName:0 plist:0 position:&off_1006741C8];
  [v2 addObject:v5];

  v6 = _EFLocalizedString();
  v7 = [MFMailMenuCommand shortcutWithInput:@"0" flags:0x100000 repeatable:0 menu:32 action:"_messageViewerWindowShortcutInvoked:" title:v6 systemImageName:MFImageGlyphMenuBarMessageViewer plist:0];
  [v2 addObject:v7];

  v8 = [v2 copy];

  return v8;
}

- (void)mailSceneDidConnectWithOptions:(id)options
{
  daemonInterface = [(MailScene *)self daemonInterface];
  clientState = [daemonInterface clientState];
  ef_publicDescription = [(MailScene *)self ef_publicDescription];
  v7 = [clientState daemonBoosterWithDescription:ef_publicDescription];
  [(MailScene *)self setDaemonBooster:v7];

  v8 = +[EFDevice currentDevice];
  LODWORD(clientState) = [v8 isInternal];

  if (clientState)
  {
    objc_initWeak(&location, self);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1001274E0;
    v14 = &unk_100650F40;
    objc_copyWeak(&v15, &location);
    v9 = [EMInternalPreferences observeChangesForPreference:11 usingBlock:&v11];
    [(MailScene *)self setBackgroundMonitorOverrideObservation:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_freeDiskSpaceStatusDidChange:" name:@"MFDiskFreeSpaceMonitorDidChangeNotification" object:0];
}

- (void)mailSceneDidEnterBackground
{
  [(MailScene *)self beginBackgroundMonitoring];

  [(MailScene *)self setDaemonBooster:0];
}

- (void)mailSceneWillResignActive
{
  if ([(MailScene *)self shouldUpdateWidgetWhenSceneResignsActive])
  {
    v2 = +[MFWidgetController sharedController];
    [v2 reloadTimelinesWithReason:@"appBackgrounded"];
  }
}

- (MFMailboxProvider)mailboxProvider
{
  v2 = +[UIApplication sharedApplication];
  mailboxProvider = [v2 mailboxProvider];

  return mailboxProvider;
}

- (MUIBrandIndicatorProvider)brandIndicatorProvider
{
  v2 = +[UIApplication sharedApplication];
  brandIndicatorProvider = [v2 brandIndicatorProvider];

  return brandIndicatorProvider;
}

- (MFMailAssetViewerManager)assetViewerManager
{
  assetViewerManager = self->_assetViewerManager;
  self->_assetViewerManager = 0;

  v4 = self->_assetViewerManager;

  return v4;
}

- (MFAlertOverlayController)alertOverlayController
{
  alertOverlayController = self->_alertOverlayController;
  if (!alertOverlayController)
  {
    v4 = [[MFAlertOverlayController alloc] initWithWindowScene:self];
    v5 = self->_alertOverlayController;
    self->_alertOverlayController = v4;

    alertOverlayController = self->_alertOverlayController;
  }

  return alertOverlayController;
}

- (void)_switchToComposeSceneWithContext:(id)context modifiedContentsURL:(id)l isReply:(BOOL)reply composeType:(int64_t)type
{
  replyCopy = reply;
  contextCopy = context;
  lCopy = l;
  v12 = [NSMutableDictionary alloc];
  v36 = MSMailActivityHandoffTypeKey;
  v37 = MSMailActivityHandoffTypeComposeSansStreams;
  v13 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v14 = [v12 initWithDictionary:v13];

  subject = [contextCopy subject];
  if (subject && ([contextCopy messageObjectID], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 != 0, v16, subject, replyCopy && v17))
  {
    v18 = [NSNumber numberWithInteger:type];
    [v14 setObject:v18 forKeyedSubscript:MSMailActivityHandoffComposeKeyComposeType];

    messageObjectID = [contextCopy messageObjectID];
    serializedRepresentation = [messageObjectID serializedRepresentation];
    [v14 setObject:serializedRepresentation forKeyedSubscript:MSMailActivityHandoffComposeKeyMessageObjectIDRepresentation];

    subject2 = [contextCopy subject];
    [v14 setObject:subject2 forKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

    senderDisplayName = [contextCopy senderDisplayName];
    [v14 setObject:senderDisplayName forKeyedSubscript:MSMailQuickLookActivityKeySenderDisplayName];

    mailboxObjectID = [contextCopy mailboxObjectID];

    if (mailboxObjectID)
    {
      mailboxObjectID2 = [contextCopy mailboxObjectID];
      serializedRepresentation2 = [mailboxObjectID2 serializedRepresentation];
      [v14 setObject:serializedRepresentation2 forKeyedSubscript:MSMailActivityHandoffComposeKeyMailboxObjectIDRepresentation];
    }
  }

  else
  {
    if (replyCopy)
    {
      v26 = +[MailScene log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10048927C();
      }
    }

    [v14 setObject:&off_1006741B0 forKeyedSubscript:MSMailActivityHandoffComposeKeyComposeType];
  }

  if (lCopy)
  {
    v27 = +[NSFileManager defaultManager];
    v35 = 0;
    v28 = [v27 mf_copyFileAtURLToContainer:lCopy securityScoped:1 preferredFileName:0 error:&v35];
    v29 = v35;

    if (v28)
    {
      absoluteString = [v28 absoluteString];
      [v14 setObject:absoluteString forKeyedSubscript:MSMailQuickLookActivityKeyContentURL];
    }

    else
    {
      absoluteString = +[MailScene log];
      if (os_log_type_enabled(absoluteString, OS_LOG_TYPE_ERROR))
      {
        [v29 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1004892B0();
      }
    }
  }

  else
  {
    v29 = +[MailScene log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1004892F4();
    }
  }

  v31 = objc_alloc_init(UIWindowSceneActivationRequestOptions);
  [v31 setRequestingScene:self];
  [v31 setPreferredPresentationStyle:2];
  v32 = [NSUserActivity alloc];
  v33 = [v32 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
  [v33 setUserInfo:v14];
  v34 = +[UIApplication sharedApplication];
  [v34 requestSceneSessionActivation:0 userActivity:v33 options:v31 errorHandler:0];
}

- (void)mailSceneOpenURLContexts:(id)contexts
{
  anyObject = [contexts anyObject];
  if (anyObject)
  {
    urlRouter = [(MailScene *)self urlRouter];
    v5 = [MFURLRoutingRequest externalRequestWithOpenURLContext:anyObject];
    [urlRouter routeRequest:v5];
  }
}

- (MFURLRouter)urlRouter
{
  urlRouter = self->_urlRouter;
  if (!urlRouter)
  {
    v4 = [MFURLRouter alloc];
    _createURLRoutes = [(MailScene *)self _createURLRoutes];
    v6 = [(MFURLRouter *)v4 initWithRoutes:_createURLRoutes];
    v7 = self->_urlRouter;
    self->_urlRouter = v6;

    [(MFURLRouter *)self->_urlRouter setDelegate:self];
    urlRouter = self->_urlRouter;
  }

  return urlRouter;
}

- (id)_createURLRoutes
{
  v3 = objc_alloc_init(MFOAuthRedirectURLRoute);
  v4 = objc_alloc_init(MFWorkspaceURLRoute);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100127F5C;
  v8[3] = &unk_100650F68;
  v8[4] = self;
  v5 = [[MFStoreURLRoute alloc] initWithPresenterProvider:v8];
  v9[0] = v3;
  v9[1] = v5;
  v9[2] = v4;
  v6 = [NSArray arrayWithObjects:v9 count:3];

  return v6;
}

- (unint64_t)urlRouter:(id)router decidePolicyForRoutingRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  mf_isOAuthRedirectURL = [v5 mf_isOAuthRedirectURL];

  if ((mf_isOAuthRedirectURL & 1) != 0 || (+[MFDiskFreeSpaceMonitor defaultMonitor](MFDiskFreeSpaceMonitor, "defaultMonitor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isFreeSpaceCritical], v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = +[MailScene log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [requestCopy ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100489328();
    }

    v10 = 2;
  }

  return v10;
}

- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode
{
  errorCopy = error;
  accountCopy = account;
  [(MailScene *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailScene displayError:forAccount:mode:]", "MailScene.m", 263, "0");
}

- (void)mailSceneDebugGesturePerformed
{
  v4 = [[MFMailDebugMenuController alloc] initWithScene:self];
  mf_rootViewController = [(MailScene *)self mf_rootViewController];
  [mf_rootViewController presentViewController:v4 animated:1 completion:0];
}

- (void)closeSceneWithAnimation:(int64_t)animation errorHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
  [v6 setWindowDismissalAnimation:animation];
  v7 = +[UIApplication sharedApplication];
  session = [(MailScene *)self session];
  [v7 requestSceneSessionDestruction:session options:v6 errorHandler:handlerCopy];
}

- (id)undoManagerForWindow:(id)window
{
  undoManager = [(MailScene *)self undoManager];

  return undoManager;
}

- (void)_escapeShortcutInvoked:(id)invoked
{
  if ([(MailScene *)self conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable])
  {
    splitViewController = [(MailScene *)self splitViewController];
  }

  else
  {
    splitViewController = 0;
  }

  v6 = splitViewController;
  presentedViewController = [splitViewController presentedViewController];

  if (presentedViewController)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_newWindowShortcutInvoked:(id)invoked
{
  v3 = +[UIApplication sharedApplication];
  [v3 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:&stru_100650F88];
}

- (void)_messageViewerWindowShortcutInvoked:(id)invoked
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[UIApplication sharedApplication];
  openSessions = [v3 openSessions];

  v5 = [openSessions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(openSessions);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 mf_isMain])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [openSessions countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = [UISceneSessionActivationRequest requestWithSession:v8];

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v9 = +[UISceneSessionActivationRequest request];
LABEL_12:
  v10 = +[MailScene log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activating scene session for MailScene", v12, 2u);
  }

  v11 = +[UIApplication sharedApplication];
  [v11 activateSceneSessionForRequest:v9 errorHandler:&stru_100650FA8];
}

- (void)addBackgroundMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (monitorCopy)
  {
    if ([(MailScene *)self allowsBackgroundMonitoring])
    {
      v5 = +[MailScene log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = monitorCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Added background monitor: %{public}@", &v9, 0xCu);
      }

      backgroundMonitors = [(MailScene *)self backgroundMonitors];
      [backgroundMonitors addObject:monitorCopy];

      if ([(MailScene *)self activationState]== 2)
      {
        v7 = +[MailScene log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138543362;
          v10 = monitorCopy;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene is in the background. Starting monitor immediately: %{public}@", &v9, 0xCu);
        }

        [monitorCopy beginMonitoringWithHandler:self];
      }
    }
  }

  else
  {
    v8 = +[MailScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "addBackgroundMonitor called with nil monitor. Ignoring.", &v9, 2u);
    }
  }
}

- (void)beginBackgroundMonitoring
{
  if ([(MailScene *)self allowsBackgroundMonitoring])
  {
    backgroundMonitors = [(MailScene *)self backgroundMonitors];
    v4 = [backgroundMonitors count];

    if (v4)
    {
      v5 = +[MailScene log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting background monitors...", buf, 2u);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      backgroundMonitors2 = [(MailScene *)self backgroundMonitors];
      v7 = [backgroundMonitors2 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        v9 = *v15;
        *&v8 = 138543362;
        v13 = v8;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(backgroundMonitors2);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            v12 = +[MailScene log];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = v13;
              v19 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting monitor: %{public}@", buf, 0xCu);
            }

            [v11 beginMonitoringWithHandler:self];
            v10 = v10 + 1;
          }

          while (v7 != v10);
          v7 = [backgroundMonitors2 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)monitor:(id)monitor requestsAction:(int64_t)action
{
  monitorCopy = monitor;
  [(MailScene *)self endBackgroundMonitoring];
  if ([(MailScene *)self allowsBackgroundMonitoring])
  {
    if ([(MailScene *)self activationState]== 2)
    {
      if (action == 1)
      {
        v9 = +[MailScene log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v12 = monitorCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Monitor requested scene session close: %{public}@. Requesting from system now...", buf, 0xCu);
        }

        [(MailScene *)self closeSceneWithAnimation:1];
      }

      else if (!action)
      {
        v7 = +[MailScene log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v12 = monitorCopy;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Monitor requested scene session refresh: %{public}@. Requesting from system now...", buf, 0xCu);
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100128D5C;
        block[3] = &unk_10064C7E8;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    else
    {
      v8 = +[MailScene log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1004893F4();
      }
    }
  }
}

- (BOOL)allowsBackgroundMonitoring
{
  v2 = +[UIApplication sharedApplication];
  if ([v2 launchedToTest])
  {
    v3 = 1;
  }

  else
  {
    v3 = EFIsRunningUnitTests();
  }

  v4 = [EMInternalPreferences preferenceEnabled:11];
  v5 = v3 | v4;
  if ((v3 | v4))
  {
    v6 = v4;
    v7 = +[MailScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100489428(v3, v6 & 1, v7);
    }
  }

  return (v5 & 1) == 0;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_escapeShortcutInvoked:" == action)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ("undo:" == action)
  {
    undoManager = [(MailScene *)self undoManager];
    canUndo = [undoManager canUndo];
LABEL_8:
    v7 = canUndo;

    goto LABEL_9;
  }

  if ("redo:" == action)
  {
    undoManager = [(MailScene *)self undoManager];
    canUndo = [undoManager canRedo];
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = MailScene;
  v7 = [(MailScene *)&v11 canPerformAction:action withSender:senderCopy];
LABEL_9:

  return v7;
}

- (void)undo:(id)undo
{
  undoManager = [(MailScene *)self undoManager];
  [undoManager undo];
}

- (void)redo:(id)redo
{
  undoManager = [(MailScene *)self undoManager];
  [undoManager redo];
}

- (void)_freeDiskSpaceStatusDidChange:(id)change
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100129104;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)assetViewerManager:(id)manager editCompletedForHandler:(id)handler URL:(id)l
{
  handlerCopy = handler;
  lCopy = l;
  v8 = +[MailScene log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10048953C(handlerCopy, lCopy, v8);
  }
}

- (void)assetViewerManager:(id)manager sceneClosedForHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[MailScene log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = handlerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Viewer sceneClosedForHandler %@", &v6, 0xCu);
  }
}

@end