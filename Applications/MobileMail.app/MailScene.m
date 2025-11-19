@interface MailScene
+ (NSArray)menuCommands;
+ (OS_os_log)log;
- (BOOL)allowsBackgroundMonitoring;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
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
- (id)undoManagerForWindow:(id)a3;
- (unint64_t)urlRouter:(id)a3 decidePolicyForRoutingRequest:(id)a4;
- (void)_escapeShortcutInvoked:(id)a3;
- (void)_freeDiskSpaceStatusDidChange:(id)a3;
- (void)_messageViewerWindowShortcutInvoked:(id)a3;
- (void)_newWindowShortcutInvoked:(id)a3;
- (void)_switchToComposeSceneWithContext:(id)a3 modifiedContentsURL:(id)a4 isReply:(BOOL)a5 composeType:(int64_t)a6;
- (void)addBackgroundMonitor:(id)a3;
- (void)assetViewerManager:(id)a3 editCompletedForHandler:(id)a4 URL:(id)a5;
- (void)assetViewerManager:(id)a3 sceneClosedForHandler:(id)a4;
- (void)beginBackgroundMonitoring;
- (void)closeSceneWithAnimation:(int64_t)a3 errorHandler:(id)a4;
- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (void)endBackgroundMonitoring;
- (void)mailSceneDebugGesturePerformed;
- (void)mailSceneDidConnectWithOptions:(id)a3;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneOpenURLContexts:(id)a3;
- (void)mailSceneWillEnterForeground;
- (void)mailSceneWillResignActive;
- (void)mf_resetPreferredTitle;
- (void)monitor:(id)a3 requestsAction:(int64_t)a4;
- (void)redo:(id)a3;
- (void)undo:(id)a3;
@end

@implementation MailScene

- (EMDaemonInterface)daemonInterface
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 daemonInterface];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = [(MailScene *)self session];
  v5 = [v4 persistentIdentifier];
  v6 = [NSString stringWithFormat:@"%@:%@", v3, v5];

  return v6;
}

- (void)mailSceneWillEnterForeground
{
  [(MailScene *)self endBackgroundMonitoring];
  v3 = [(MailScene *)self daemonBooster];

  if (!v3)
  {
    v4 = [(MailScene *)self daemonInterface];
    v5 = [v4 clientState];
    v6 = [(MailScene *)self ef_publicDescription];
    v7 = [v5 daemonBoosterWithDescription:v6];
    [(MailScene *)self setDaemonBooster:v7];
  }

  [(MailScene *)self mf_resetPreferredTitle];
}

- (void)endBackgroundMonitoring
{
  v3 = [(MailScene *)self backgroundMonitors];
  v4 = [v3 allObjects];

  v5 = [(MailScene *)self backgroundMonitors];
  [v5 removeAllObjects];

  if ([v4 count])
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
    v7 = v4;
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
  v5 = [(MailScene *)self mf_window];
  v3 = [v5 rootViewController];
  v4 = [v3 mf_preferredTitle];
  [(MailScene *)self setTitle:v4];
}

- (MFWindow)mf_window
{
  v2 = [(MailScene *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 window];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isInExpandedEnvironment
{
  if ([(MailScene *)self conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable])
  {
    v3 = [(MailScene *)self splitViewController];
    v4 = [v3 isCollapsed] ^ 1;
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
  block[4] = a1;
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

- (void)mailSceneDidConnectWithOptions:(id)a3
{
  v4 = [(MailScene *)self daemonInterface];
  v5 = [v4 clientState];
  v6 = [(MailScene *)self ef_publicDescription];
  v7 = [v5 daemonBoosterWithDescription:v6];
  [(MailScene *)self setDaemonBooster:v7];

  v8 = +[EFDevice currentDevice];
  LODWORD(v5) = [v8 isInternal];

  if (v5)
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
  v3 = [v2 mailboxProvider];

  return v3;
}

- (MUIBrandIndicatorProvider)brandIndicatorProvider
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 brandIndicatorProvider];

  return v3;
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

- (void)_switchToComposeSceneWithContext:(id)a3 modifiedContentsURL:(id)a4 isReply:(BOOL)a5 composeType:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [NSMutableDictionary alloc];
  v36 = MSMailActivityHandoffTypeKey;
  v37 = MSMailActivityHandoffTypeComposeSansStreams;
  v13 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v14 = [v12 initWithDictionary:v13];

  v15 = [v10 subject];
  if (v15 && ([v10 messageObjectID], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 != 0, v16, v15, v7 && v17))
  {
    v18 = [NSNumber numberWithInteger:a6];
    [v14 setObject:v18 forKeyedSubscript:MSMailActivityHandoffComposeKeyComposeType];

    v19 = [v10 messageObjectID];
    v20 = [v19 serializedRepresentation];
    [v14 setObject:v20 forKeyedSubscript:MSMailActivityHandoffComposeKeyMessageObjectIDRepresentation];

    v21 = [v10 subject];
    [v14 setObject:v21 forKeyedSubscript:MSMailActivityHandoffComposeKeySubject];

    v22 = [v10 senderDisplayName];
    [v14 setObject:v22 forKeyedSubscript:MSMailQuickLookActivityKeySenderDisplayName];

    v23 = [v10 mailboxObjectID];

    if (v23)
    {
      v24 = [v10 mailboxObjectID];
      v25 = [v24 serializedRepresentation];
      [v14 setObject:v25 forKeyedSubscript:MSMailActivityHandoffComposeKeyMailboxObjectIDRepresentation];
    }
  }

  else
  {
    if (v7)
    {
      v26 = +[MailScene log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10048927C();
      }
    }

    [v14 setObject:&off_1006741B0 forKeyedSubscript:MSMailActivityHandoffComposeKeyComposeType];
  }

  if (v11)
  {
    v27 = +[NSFileManager defaultManager];
    v35 = 0;
    v28 = [v27 mf_copyFileAtURLToContainer:v11 securityScoped:1 preferredFileName:0 error:&v35];
    v29 = v35;

    if (v28)
    {
      v30 = [v28 absoluteString];
      [v14 setObject:v30 forKeyedSubscript:MSMailQuickLookActivityKeyContentURL];
    }

    else
    {
      v30 = +[MailScene log];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
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

- (void)mailSceneOpenURLContexts:(id)a3
{
  v6 = [a3 anyObject];
  if (v6)
  {
    v4 = [(MailScene *)self urlRouter];
    v5 = [MFURLRoutingRequest externalRequestWithOpenURLContext:v6];
    [v4 routeRequest:v5];
  }
}

- (MFURLRouter)urlRouter
{
  urlRouter = self->_urlRouter;
  if (!urlRouter)
  {
    v4 = [MFURLRouter alloc];
    v5 = [(MailScene *)self _createURLRoutes];
    v6 = [(MFURLRouter *)v4 initWithRoutes:v5];
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

- (unint64_t)urlRouter:(id)a3 decidePolicyForRoutingRequest:(id)a4
{
  v4 = a4;
  v5 = [v4 URL];
  v6 = [v5 mf_isOAuthRedirectURL];

  if ((v6 & 1) != 0 || (+[MFDiskFreeSpaceMonitor defaultMonitor](MFDiskFreeSpaceMonitor, "defaultMonitor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isFreeSpaceCritical], v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = +[MailScene log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100489328();
    }

    v10 = 2;
  }

  return v10;
}

- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(MailScene *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MailScene displayError:forAccount:mode:]", "MailScene.m", 263, "0");
}

- (void)mailSceneDebugGesturePerformed
{
  v4 = [[MFMailDebugMenuController alloc] initWithScene:self];
  v3 = [(MailScene *)self mf_rootViewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)closeSceneWithAnimation:(int64_t)a3 errorHandler:(id)a4
{
  v9 = a4;
  v6 = objc_alloc_init(UIWindowSceneDestructionRequestOptions);
  [v6 setWindowDismissalAnimation:a3];
  v7 = +[UIApplication sharedApplication];
  v8 = [(MailScene *)self session];
  [v7 requestSceneSessionDestruction:v8 options:v6 errorHandler:v9];
}

- (id)undoManagerForWindow:(id)a3
{
  v3 = [(MailScene *)self undoManager];

  return v3;
}

- (void)_escapeShortcutInvoked:(id)a3
{
  if ([(MailScene *)self conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable])
  {
    v4 = [(MailScene *)self splitViewController];
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v5 = [v4 presentedViewController];

  if (v5)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_newWindowShortcutInvoked:(id)a3
{
  v3 = +[UIApplication sharedApplication];
  [v3 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:&stru_100650F88];
}

- (void)_messageViewerWindowShortcutInvoked:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 openSessions];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 mf_isMain])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)addBackgroundMonitor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(MailScene *)self allowsBackgroundMonitoring])
    {
      v5 = +[MailScene log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Added background monitor: %{public}@", &v9, 0xCu);
      }

      v6 = [(MailScene *)self backgroundMonitors];
      [v6 addObject:v4];

      if ([(MailScene *)self activationState]== 2)
      {
        v7 = +[MailScene log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138543362;
          v10 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene is in the background. Starting monitor immediately: %{public}@", &v9, 0xCu);
        }

        [v4 beginMonitoringWithHandler:self];
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
    v3 = [(MailScene *)self backgroundMonitors];
    v4 = [v3 count];

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
      v6 = [(MailScene *)self backgroundMonitors];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
              objc_enumerationMutation(v6);
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
          v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)monitor:(id)a3 requestsAction:(int64_t)a4
{
  v6 = a3;
  [(MailScene *)self endBackgroundMonitoring];
  if ([(MailScene *)self allowsBackgroundMonitoring])
  {
    if ([(MailScene *)self activationState]== 2)
    {
      if (a4 == 1)
      {
        v9 = +[MailScene log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v12 = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Monitor requested scene session close: %{public}@. Requesting from system now...", buf, 0xCu);
        }

        [(MailScene *)self closeSceneWithAnimation:1];
      }

      else if (!a4)
      {
        v7 = +[MailScene log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v12 = v6;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_escapeShortcutInvoked:" == a3)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ("undo:" == a3)
  {
    v8 = [(MailScene *)self undoManager];
    v9 = [v8 canUndo];
LABEL_8:
    v7 = v9;

    goto LABEL_9;
  }

  if ("redo:" == a3)
  {
    v8 = [(MailScene *)self undoManager];
    v9 = [v8 canRedo];
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = MailScene;
  v7 = [(MailScene *)&v11 canPerformAction:a3 withSender:v6];
LABEL_9:

  return v7;
}

- (void)undo:(id)a3
{
  v3 = [(MailScene *)self undoManager];
  [v3 undo];
}

- (void)redo:(id)a3
{
  v3 = [(MailScene *)self undoManager];
  [v3 redo];
}

- (void)_freeDiskSpaceStatusDidChange:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100129104;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)assetViewerManager:(id)a3 editCompletedForHandler:(id)a4 URL:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[MailScene log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10048953C(v6, v7, v8);
  }
}

- (void)assetViewerManager:(id)a3 sceneClosedForHandler:(id)a4
{
  v4 = a4;
  v5 = +[MailScene log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Viewer sceneClosedForHandler %@", &v6, 0xCu);
  }
}

@end