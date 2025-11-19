@interface RCDefaultSceneDelegate
- (BOOL)_cloudSyncPromptNeedsShowing;
- (BOOL)_isCoreDataURL:(id)a3;
- (BOOL)cloudSyncPromptMustShowOrIsShowing;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)modalMustShowOrIsShowing;
- (BOOL)welcomeMustShowOrIsShowing;
- (RCDefaultSceneActivationStateDelegate)defaultSceneActivationStateDelegate;
- (RCDeferredInitializationDelegate)deferredInitializationDelegate;
- (RCWelcomeViewController)welcomeViewController;
- (UIAlertController)iCloudSyncConfirmationAlertController;
- (unint64_t)splitViewControllerSupportedInterfaceOrientations:(id)a3;
- (void)__performDeferredInitialization;
- (void)_activateApplication;
- (void)_askUserForPermissionToUseCloudKit;
- (void)_clearTemporaryAudioFilesOnce;
- (void)_continueUserActivity:(id)a3;
- (void)_delayedSelectRecordingWithUUID:(id)a3;
- (void)_eraseDeletedRecordingsIfNecessary;
- (void)_failedToCreateDatabase:(id)a3;
- (void)_handleSceneConnectionActions;
- (void)_handleWelcomeScreenContinue:(BOOL)a3;
- (void)_initialViewDidLoad;
- (void)_openURLContexts:(id)a3;
- (void)_performActionForShortcutItem:(id)a3;
- (void)_promptForCloudKitIfLoggedInAndTCCUnset;
- (void)_selectSharedRecording:(id)a3;
- (void)_setUpCloudSyncAccessManager;
- (void)_setUpLocationManager;
- (void)_showWelcomeScreenWithCompletionBlock:(id)a3;
- (void)_startNewRecordingQuickAction;
- (void)_startPlaybackQuickActionForRecordingWithUniqueID:(id)a3;
- (void)cloudSyncAvailabilityChanged;
- (void)dealloc;
- (void)handleRestyleRequest;
- (void)performDeferredInitializationJustOnce;
- (void)playbackMostRecentRecordingFromIntent;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)showOnboardingScreensIfNeeded;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation RCDefaultSceneDelegate

- (void)performDeferredInitializationJustOnce
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012470;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  if (qword_1002D7068 != -1)
  {
    dispatch_once(&qword_1002D7068, block);
  }
}

- (void)__performDeferredInitialization
{
  [(RCSplitViewController *)self->_rootSplitViewController registerAppIntentsInteractions];
  v3 = [(RCDefaultSceneDelegate *)self deferredInitializationDelegate];
  v4 = v3;
  if (v3)
  {
    [v3 performDeferredInitialization];
  }

  v5 = +[VMAudioService sharedInstance];
  audioService = self->_audioService;
  self->_audioService = v5;

  [(VMAudioService *)self->_audioService prepareService];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017488;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(v7, block);
}

- (RCDeferredInitializationDelegate)deferredInitializationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredInitializationDelegate);

  return WeakRetained;
}

- (void)showOnboardingScreensIfNeeded
{
  if (![(VMAudioService *)self->_audioService isPlaying]&& ![(VMAudioService *)self->_audioService isRecording])
  {
    v3 = +[RCShareMemoViewController presentedController];

    if (!v3 && ![(RCDefaultSceneDelegate *)self welcomeScreenHasContinued])
    {
      v4 = [(RCDefaultSceneDelegate *)self welcomeViewController];

      if (!v4)
      {
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_1000178D4;
        v5[3] = &unk_10028B2B0;
        v5[4] = self;
        [(RCDefaultSceneDelegate *)self _showWelcomeScreenWithCompletionBlock:v5];
      }
    }
  }
}

- (void)_clearTemporaryAudioFilesOnce
{
  if (qword_1002D7070 != -1)
  {
    sub_100017530();
  }
}

- (RCWelcomeViewController)welcomeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_welcomeViewController);

  return WeakRetained;
}

- (void)_setUpCloudSyncAccessManager
{
  if (!self->_cloudSyncAccessManager)
  {
    v3 = objc_opt_new();
    cloudSyncAccessManager = self->_cloudSyncAccessManager;
    self->_cloudSyncAccessManager = v3;

    v5 = self->_cloudSyncAccessManager;

    [(RCCloudSyncAccessManager *)v5 startMonitoringAccountChanges];
  }
}

- (void)_setUpLocationManager
{
  v3 = +[RCLocationsOfInterestManager defaultManager];
  [v3 prepare];
  if (self->_isActive)
  {
    [v3 start];
  }
}

- (BOOL)modalMustShowOrIsShowing
{
  if ([(RCDefaultSceneDelegate *)self welcomeMustShowOrIsShowing])
  {
    return 1;
  }

  return [(RCDefaultSceneDelegate *)self cloudSyncPromptMustShowOrIsShowing];
}

- (BOOL)welcomeMustShowOrIsShowing
{
  if (+[RCWelcomeViewController reasonToShow])
  {
    return 1;
  }

  v4 = [(RCDefaultSceneDelegate *)self welcomeViewController];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)cloudSyncPromptMustShowOrIsShowing
{
  if ([(RCDefaultSceneDelegate *)self _cloudSyncPromptNeedsShowing])
  {
    return 1;
  }

  v4 = [(RCDefaultSceneDelegate *)self iCloudSyncConfirmationAlertController];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)_cloudSyncPromptNeedsShowing
{
  if (self->_cloudSyncAccessManager)
  {
    v3 = [(RCDefaultSceneDelegate *)self welcomeScreenHasContinued];
    if (v3)
    {
      v3 = [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager cloudSyncIsAvailable];
      if (v3)
      {
        LOBYTE(v3) = [(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager tccCloudAccess]== 0;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (UIAlertController)iCloudSyncConfirmationAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_iCloudSyncConfirmationAlertController);

  return WeakRetained;
}

- (void)_activateApplication
{
  if (!self->_isActive)
  {
    self->_isActive = 1;
    [(RCDefaultSceneDelegate *)self _eraseDeletedRecordingsIfNecessary];
    v4 = +[RCLocationsOfInterestManager defaultManager];
    [v4 start];

    [(RCDefaultSceneDelegate *)self showOnboardingScreensIfNeeded];
  }
}

- (void)_eraseDeletedRecordingsIfNecessary
{
  v2 = +[RCApplicationContainer sharedContainer];
  v3 = [v2 newBackgroundModel];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019AF4;
  v5[3] = &unk_10028A3B8;
  v6 = v3;
  v4 = v3;
  [v4 performBlock:v5];
}

- (void)_initialViewDidLoad
{
  if (![(RCDefaultSceneDelegate *)self welcomeMustShowOrIsShowing])
  {
    [(RCDefaultSceneDelegate *)self performDeferredInitializationJustOnce];
  }

  mainViewController = self->_mainViewController;

  [(RCMainViewController *)mainViewController performDelayedSetup];
}

- (void)_handleSceneConnectionActions
{
  if (self->_shortcutItem)
  {
    [(RCDefaultSceneDelegate *)self _performActionForShortcutItem:?];
    shortcutItem = self->_shortcutItem;
    self->_shortcutItem = 0;
  }

  userActivities = self->_userActivities;
  if (userActivities)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = userActivities;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          [(RCDefaultSceneDelegate *)self _continueUserActivity:*(*(&v12 + 1) + 8 * v9), v12];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = self->_userActivities;
    self->_userActivities = 0;
  }

  if (self->_URLContexts)
  {
    [(RCDefaultSceneDelegate *)self _openURLContexts:?];
    URLContexts = self->_URLContexts;
    self->_URLContexts = 0;
  }
}

- (RCDefaultSceneActivationStateDelegate)defaultSceneActivationStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSceneActivationStateDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(UINavigationController *)self->_primaryNavigationController setDelegate:0];
  v3.receiver = self;
  v3.super_class = RCDefaultSceneDelegate;
  [(RCDefaultSceneDelegate *)&v3 dealloc];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ((RCIsBeingUnitTested() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 shortcutItem];
      shortcutItem = self->_shortcutItem;
      self->_shortcutItem = v9;

      v11 = [v8 userActivities];
      userActivities = self->_userActivities;
      self->_userActivities = v11;

      v13 = [v8 URLContexts];
      URLContexts = self->_URLContexts;
      self->_URLContexts = v13;

      if (self->_shortcutItem || [(NSSet *)self->_userActivities count]|| [(NSSet *)self->_URLContexts count])
      {
        [(RCDefaultSceneDelegate *)self _clearTemporaryAudioFilesOnce];
      }

      v15 = +[UIApplication sharedApplication];
      v16 = [v15 delegate];

      if ([v16 conformsToProtocol:&OBJC_PROTOCOL___RCDeferredInitializationDelegate])
      {
        [(RCDefaultSceneDelegate *)self setDeferredInitializationDelegate:v16];
      }

      if ([v16 conformsToProtocol:&OBJC_PROTOCOL___RCDefaultSceneActivationStateDelegate])
      {
        [(RCDefaultSceneDelegate *)self setDefaultSceneActivationStateDelegate:v16];
      }

      v17 = v7;
      notify_register_dispatch("com.apple.VoiceMemos.internal.settings.WillRemoveAllRecordings", &self->_removeAllRecordingsToken, &_dispatch_main_q, &stru_10028B218);
      notify_register_dispatch("com.apple.VoiceMemos.internal.settings.WillResetDefaults", &self->_resetDefaultsToken, &_dispatch_main_q, &stru_10028B238);

      v48 = +[NSNotificationCenter defaultCenter];
      [v48 addObserver:self selector:"_failedToCreateDatabase:" name:RCSavedRecordingsModelDidFailToCreateDatabaseNotification object:0];
      v18 = [[RCSplitViewController alloc] initWithStyle:2];
      rootSplitViewController = self->_rootSplitViewController;
      self->_rootSplitViewController = v18;

      v20 = objc_alloc_init(RCMainViewController);
      mainViewController = self->_mainViewController;
      self->_mainViewController = v20;

      [(RCMainViewController *)self->_mainViewController setMainViewControllerDelegate:self];
      v22 = [(RCMainViewController *)self->_mainViewController mainControllerHelper];
      [v22 defaultSceneDidConnect:v17];

      v23 = [[UINavigationController alloc] initWithRootViewController:self->_mainViewController];
      primaryNavigationController = self->_primaryNavigationController;
      self->_primaryNavigationController = v23;

      v25 = [(UINavigationController *)self->_primaryNavigationController interactivePopGestureRecognizer];
      [v25 setDelegate:self];

      v26 = +[RCRecorderStyleProvider sharedStyleProvider];
      if ([v26 clipUnderlapWhileTransitioning])
      {
        [(UINavigationController *)self->_primaryNavigationController _setClipUnderlapWhileTransitioning:1];
      }

      [(UINavigationController *)self->_primaryNavigationController setDelegate:self->_mainViewController];
      v49 = [(UINavigationController *)self->_primaryNavigationController navigationBar];
      if ([v26 usesLargeTitles])
      {
        [v49 setPrefersLargeTitles:1];
      }

      [(RCSplitViewController *)self->_rootSplitViewController setViewController:self->_primaryNavigationController forColumn:0];
      v27 = +[RCRecorderStyleProvider sharedStyleProvider];
      v28 = [v27 hasPlaybackCard];

      v29 = 0;
      if (v28)
      {
        v29 = [(RCRecordingViewController *)[RCPlaybackViewController alloc] initWithRecordButtonRepository:0 interactionHandler:0];
      }

      [(RCRecordingViewController *)v29 setRecordingViewControllerDelegate:self->_mainViewController];
      v30 = objc_opt_new();
      [(RCDefaultSceneDelegate *)self setPlaybackContainerViewController:v30];
      [v30 setHostedViewController:v29];
      v31 = [[UINavigationController alloc] initWithRootViewController:v30];
      secondaryNavigationController = self->_secondaryNavigationController;
      self->_secondaryNavigationController = v31;

      [(RCMainViewController *)self->_mainViewController setPlaybackViewController:v29];
      [(RCSplitViewController *)self->_rootSplitViewController setViewController:self->_secondaryNavigationController forColumn:2];
      v33 = self->_shortcutItem == 0;
      v34 = self->_mainViewController;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100067C7C;
      v50[3] = &unk_10028A3B8;
      v50[4] = self;
      [(RCMainViewController *)v34 finishInitialSetup:v50 goToAllRecordings:v33];
      [(RCSplitViewController *)self->_rootSplitViewController setResizingDelegate:self];
      [(RCSplitViewController *)self->_rootSplitViewController setMainViewController:self->_mainViewController];
      [(RCSplitViewController *)self->_rootSplitViewController setDelegate:self];
      -[RCSplitViewController setPresentsWithGesture:](self->_rootSplitViewController, "setPresentsWithGesture:", [v26 sidebarPresentsWithGesture]);
      [(RCPlaybackViewController *)v29 setParentSplitViewController:self->_rootSplitViewController];
      v35 = [[UIWindow alloc] initWithWindowScene:v17];
      [(RCSceneDelegate *)self setWindow:v35];

      v36 = [(RCSceneDelegate *)self window];
      [v36 setAccessibilityIdentifier:@"Main Window"];

      v37 = [(RCSceneDelegate *)self window];
      v38 = [v26 standardInteractionTintColor];
      [v37 setTintColor:v38];

      if ([v26 supportsPointerInteractions])
      {
        v39 = [(RCSceneDelegate *)self window];
        v40 = [v39 layer];
        [v40 setHitTestsAsOpaque:1];
      }

      v41 = [(RCSceneDelegate *)self window];
      [v41 setRootViewController:self->_rootSplitViewController];

      v42 = [(RCSceneDelegate *)self window];
      [v42 makeKeyAndVisible];

      [v26 minimumSceneSize];
      v44 = v43;
      v46 = v45;
      v47 = [v17 sizeRestrictions];
      [v47 setMinimumSize:{v44, v46}];

      [(RCDefaultSceneDelegate *)self performDeferredInitializationJustOnce];
      [(RCDefaultSceneDelegate *)self showOnboardingScreensIfNeeded];
    }
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  [(RCDefaultSceneDelegate *)self _activateApplication];
  [(RCMainViewController *)self->_mainViewController setIsInForeground:1];
  if (self->_tccAccessChangedWhileInBackground)
  {
    self->_tccAccessChangedWhileInBackground = 0;
    [(RCDefaultSceneDelegate *)self _promptForCloudKitIfLoggedInAndTCCUnset];
  }

  [(RCDefaultSceneDelegate *)self _handleSceneConnectionActions];
  v4 = [(RCDefaultSceneDelegate *)self defaultSceneActivationStateDelegate];
  [v4 defaultSceneDidBecomeActive];
}

- (void)sceneWillResignActive:(id)a3
{
  [(RCMainViewController *)self->_mainViewController updateQuickActions];
  v4 = [(RCDefaultSceneDelegate *)self defaultSceneActivationStateDelegate];
  [v4 defaultSceneWillResignActive];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v7 = a3;
  if (self->_fatalErrorAlertController)
  {
    exit(0);
  }

  [(RCMainViewController *)self->_mainViewController setIsInForeground:0];
  self->_isActive = 0;
  v4 = +[RCApplicationModel sharedApplicationModel];
  [v4 saveIfNecessary];

  v5 = +[RCLocationsOfInterestManager defaultManager];
  [v5 stop];

  v6 = [(RCDefaultSceneDelegate *)self defaultSceneActivationStateDelegate];
  [v6 sceneDidEnterBackground];
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([RCSceneDelegate instancesRespondToSelector:"windowScene:didUpdateCoordinateSpace:interfaceOrientation:traitCollection:"])
  {
    v13.receiver = self;
    v13.super_class = RCDefaultSceneDelegate;
    [(RCSceneDelegate *)&v13 windowScene:v10 didUpdateCoordinateSpace:v11 interfaceOrientation:a5 traitCollection:v12];
  }

  if ([v10 interfaceOrientation] != a5)
  {
    -[VMAudioService interfaceOrientationDidUpdate:](self->_audioService, "interfaceOrientationDidUpdate:", [v10 interfaceOrientation]);
  }
}

- (void)_continueUserActivity:(id)a3
{
  v4 = a3;
  if (![(RCDefaultSceneDelegate *)self modalMustShowOrIsShowing])
  {
    [(RCDefaultSceneDelegate *)self performDeferredInitializationJustOnce];
    v5 = [v4 activityType];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 isEqualToString:v7];

    if (v8)
    {
      v9 = OSLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B7C7C();
      }

      [(RCDefaultSceneDelegate *)self recordNewVoiceMemoFromIntent];
    }

    else
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        v13 = OSLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_1001B7BFC();
        }

        [(RCDefaultSceneDelegate *)self playbackMostRecentRecordingFromIntent];
      }

      else
      {
        v14 = [v5 isEqualToString:CSSearchableItemActionType];
        v15 = OSLogForCategory();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          if (v16)
          {
            sub_1001B7A84();
          }

          v17 = [v4 userInfo];
          v15 = [v17 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];

          v18 = [NSURL URLWithString:v15];
          v19 = [v18 scheme];
          if ([v19 isEqualToString:@"x-coredata"])
          {
            v20 = +[RCApplicationModel sharedApplicationModel];
            v21 = [v20 recordingWithURIRepresentation:v18];

            if (v21)
            {
              v22 = [v21 uuid];
              [(RCDefaultSceneDelegate *)self _delayedSelectRecordingWithUUID:v22];
            }

            else
            {
              v22 = OSLogForCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                sub_1001B7B80();
              }
            }
          }

          else
          {
            v21 = OSLogForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              sub_1001B7B04();
            }
          }
        }

        else if (v16)
        {
          sub_1001B7A08();
        }
      }
    }
  }
}

- (void)_openURLContexts:(id)a3
{
  v4 = a3;
  v5 = [(VMAudioService *)self->_audioService recordingController];

  if (!v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v24 + 1) + 8 * v9) URL];
          if ([(RCDefaultSceneDelegate *)self _isCoreDataURL:v10])
          {
            v11 = [v10 absoluteString];
            v12 = [v11 stringByRemovingPercentEncoding];

            v13 = [v12 substringFromIndex:{objc_msgSend(v12, "rangeOfString:options:", @"x-coredata", 1)}];
            if ([v13 length] && (+[NSURL URLWithString:](NSURL, "URLWithString:", v13), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v15 = v14;
              v16 = +[RCApplicationModel sharedApplicationModel];
              v17 = [v16 recordingWithURIRepresentation:v15];

              if (v17)
              {
                [(RCDefaultSceneDelegate *)self _selectSharedRecording:v17];
              }

              else
              {
                v20 = OSLogForCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v29 = "[RCDefaultSceneDelegate _openURLContexts:]";
                  v30 = 2112;
                  v31 = v15;
                  _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s -- WARNING: no recording matching URI: '%@'", buf, 0x16u);
                }
              }
            }

            else
            {
              v15 = OSLogForCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v19 = [v10 path];
                *buf = 136315394;
                v29 = "[RCDefaultSceneDelegate _openURLContexts:]";
                v30 = 2112;
                v31 = v19;
                _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s -- WARNING: request to open a URL we can't handle: '%@'", buf, 0x16u);
              }
            }
          }

          else if (v10 && [v10 isFileURL])
          {
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_10006860C;
            v23[3] = &unk_10028B260;
            v23[4] = self;
            [RCSavedRecordingsModel importFileWithURL:v10 shouldUseMetadataTitle:1 completionHandler:v23];
          }

          else
          {
            v18 = OSLogForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v29 = "[RCDefaultSceneDelegate _openURLContexts:]";
              v30 = 2112;
              v31 = v10;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s -- URL not suitable for opening in Voice Memos - %@", buf, 0x16u);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v7);
    }

    v4 = v21;
  }
}

- (void)_performActionForShortcutItem:(id)a3
{
  v12 = a3;
  if (![(RCDefaultSceneDelegate *)self modalMustShowOrIsShowing])
  {
    [(RCDefaultSceneDelegate *)self performDeferredInitializationJustOnce];
    v4 = [v12 type];
    v5 = [v4 isEqualToString:@"com.apple.VoiceMemos.NewRecording"];

    if (v5)
    {
      [(RCDefaultSceneDelegate *)self _startNewRecordingQuickAction];
    }

    else
    {
      v6 = [v12 type];
      v7 = [v6 isEqualToString:@"com.apple.VoiceMemos.PlayRecording"];

      if (v7)
      {
        objc_opt_class();
        v8 = [v12 userInfo];
        v9 = [v8 objectForKeyedSubscript:@"uniqueID"];
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        [(RCDefaultSceneDelegate *)self _startPlaybackQuickActionForRecordingWithUniqueID:v11];
      }
    }
  }
}

- (void)_showWelcomeScreenWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = +[RCWelcomeViewController reasonToShow];
  if (v5)
  {
    v6 = v5;
    v7 = [RCWelcomeViewController alloc];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100068918;
    v14 = &unk_10028B288;
    v15 = v4;
    v16 = v6;
    v8 = [(RCWelcomeViewController *)v7 initWithCompletionBlock:&v11];
    [(RCWelcomeViewController *)v8 setModalPresentationStyle:2, v11, v12, v13, v14];
    [(RCWelcomeViewController *)v8 setModalInPresentation:1];
    v9 = [(RCSceneDelegate *)self window];
    v10 = [v9 rootViewController];
    [v10 presentViewController:v8 animated:1 completion:0];

    [(RCDefaultSceneDelegate *)self setWelcomeViewController:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_handleWelcomeScreenContinue:(BOOL)a3
{
  v3 = a3;
  if (![(RCDefaultSceneDelegate *)self welcomeScreenHasContinued])
  {
    [(RCDefaultSceneDelegate *)self setWelcomeScreenHasContinued:1];
    [(RCDefaultSceneDelegate *)self setWelcomeViewController:0];
    [(RCDefaultSceneDelegate *)self _setUpCloudSyncAccessManager];
    [(RCDefaultSceneDelegate *)self _setUpLocationManager];
    if (v3)
    {
      if ([(RCCloudSyncAccessManager *)self->_cloudSyncAccessManager cloudSyncIsAvailable])
      {
        v5 = [[MBManager alloc] initWithDelegate:0];
        v6 = [v5 isBackupEnabled];

        cloudSyncAccessManager = self->_cloudSyncAccessManager;
        if (v6)
        {
          [(RCCloudSyncAccessManager *)cloudSyncAccessManager setTccCloudAccess:2];
        }

        else if ([(RCCloudSyncAccessManager *)cloudSyncAccessManager tccCloudAccess]!= 2)
        {
          [(RCDefaultSceneDelegate *)self _askUserForPermissionToUseCloudKit];
        }
      }
    }

    else
    {
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100068A70;
      block[3] = &unk_10028A3B8;
      block[4] = self;
      dispatch_async(v8, block);
    }

    [(RCMainViewController *)self->_mainViewController handleEndOfWelcome];
  }
}

- (unint64_t)splitViewControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 supportedInterfaceOrientations];

  return v4;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v5 = [(RCDefaultSceneDelegate *)self playbackContainerViewController:a3];
  v6 = [v5 isViewLoaded];

  if (v6)
  {
    v7 = UIAccessibilityLayoutChangedNotification;
    v9 = [(RCDefaultSceneDelegate *)self playbackContainerViewController];
    v8 = [v9 view];
    UIAccessibilityPostNotification(v7, v8);
  }
}

- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setIsTransitioningBetweenVisibleColumnStates:1];
    v6 = [v5 transitionCoordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100068CD4;
    v7[3] = &unk_10028A488;
    v8 = v5;
    [v6 animateAlongsideTransition:&stru_10028B330 completion:v7];
  }
}

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setIsTransitioningBetweenVisibleColumnStates:1];
    v6 = [v5 transitionCoordinator];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100068DA8;
    v7[3] = &unk_10028A488;
    v8 = v5;
    [v6 animateAlongsideTransition:&stru_10028B350 completion:v7];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return [(RCMainViewController *)self->_mainViewController canSwipeToNavigateBack]|| (isKindOfClass & 1) == 0;
}

- (void)cloudSyncAvailabilityChanged
{
  cloudSyncAccessManager = self->_cloudSyncAccessManager;
  if (cloudSyncAccessManager)
  {
    if ([(RCCloudSyncAccessManager *)cloudSyncAccessManager cloudSyncIsAvailable])
    {
      v4 = +[UIApplication sharedApplication];
      v5 = [v4 applicationState];

      if (v5)
      {
        self->_tccAccessChangedWhileInBackground = 1;
      }

      else
      {

        [(RCDefaultSceneDelegate *)self _promptForCloudKitIfLoggedInAndTCCUnset];
      }
    }

    else
    {
      v6 = [(RCDefaultSceneDelegate *)self iCloudSyncConfirmationAlertController];
      if (v6)
      {
        v7 = v6;
        [v6 dismissViewControllerAnimated:1 completion:0];
        v6 = v7;
      }
    }
  }
}

- (void)handleRestyleRequest
{
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  -[UINavigationController _setClipUnderlapWhileTransitioning:](self->_primaryNavigationController, "_setClipUnderlapWhileTransitioning:", [v4 clipUnderlapWhileTransitioning]);
  v3 = [(UINavigationController *)self->_primaryNavigationController navigationBar];
  [v3 setPrefersLargeTitles:{objc_msgSend(v4, "usesLargeTitles")}];
  [(RCMainViewController *)self->_mainViewController restyle];
}

- (void)playbackMostRecentRecordingFromIntent
{
  v6 = +[RCApplicationModel sharedApplicationModel];
  v3 = [v6 mostRecentRecording];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
    [(RCDefaultSceneDelegate *)self _startPlaybackQuickActionForRecordingWithUniqueID:v5];
  }
}

- (void)_startNewRecordingQuickAction
{
  objc_initWeak(&location, self->_mainViewController);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100069130;
  v3[3] = &unk_10028A6A0;
  objc_copyWeak(&v4, &location);
  [(RCMainViewController *)self->_mainViewController setForegroundCompletionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_startPlaybackQuickActionForRecordingWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(VMAudioService *)self->_audioService recordingController];

  if (v4 && !v5)
  {
    objc_initWeak(&location, self->_mainViewController);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100069290;
    v6[3] = &unk_10028B0D0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [(RCMainViewController *)self->_mainViewController setForegroundCompletionBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_promptForCloudKitIfLoggedInAndTCCUnset
{
  if ([(RCDefaultSceneDelegate *)self _cloudSyncPromptNeedsShowing])
  {

    [(RCDefaultSceneDelegate *)self _askUserForPermissionToUseCloudKit];
  }
}

- (void)_askUserForPermissionToUseCloudKit
{
  if (self->_cloudSyncAccessManager)
  {
    v3 = [(RCDefaultSceneDelegate *)self iCloudSyncConfirmationAlertController];

    if (!v3)
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"POST_WELCOME_ICLOUD_CONFIRMATION_ALERT_TITLE" value:&stru_100295BB8 table:0];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"POST_WELCOME_ICLOUD_CONFIRMATION_ALERT_DESCRIPTION" value:&stru_100295BB8 table:0];
      v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

      [(RCDefaultSceneDelegate *)self setICloudSyncConfirmationAlertController:v8];
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100069594;
      v16[3] = &unk_10028B378;
      v16[4] = self;
      v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v16];
      [v8 addAction:v11];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"POST_WELCOME_ICLOUD_CONFIRMATION_ALERT_BUTTON_TITLE_ENABLE" value:&stru_100295BB8 table:0];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000695AC;
      v15[3] = &unk_10028B378;
      v15[4] = self;
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];
      [v8 addAction:v14];
      [v8 rc_showInMainWindow];
    }
  }
}

- (void)_failedToCreateDatabase:(id)a3
{
  if (!self->_fatalErrorAlertController)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"CREATE_DATABASE_FAILED_ALERT_TITLE" value:&stru_100295BB8 table:0];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CREATE_DATABASE_FAILED_ALERT_MESSAGE" value:&stru_100295BB8 table:0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100069704;
    v10[3] = &unk_10028A3B8;
    v10[4] = self;
    v8 = [UIAlertController rc_OKAlertControllerWithTitle:v5 message:v7 handler:v10];
    fatalErrorAlertController = self->_fatalErrorAlertController;
    self->_fatalErrorAlertController = v8;

    [(UIAlertController *)self->_fatalErrorAlertController rc_showInMainWindow];
  }
}

- (void)_delayedSelectRecordingWithUUID:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 500000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069808;
  v7[3] = &unk_10028A650;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_selectSharedRecording:(id)a3
{
  v4 = [a3 uuid];
  +[RCAnalyticsUtilities sendReceivedSharedRecording];
  [(RCDefaultSceneDelegate *)self _delayedSelectRecordingWithUUID:v4];
}

- (BOOL)_isCoreDataURL:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 isEqualToString:@"x-coredata"];

  return v4;
}

@end