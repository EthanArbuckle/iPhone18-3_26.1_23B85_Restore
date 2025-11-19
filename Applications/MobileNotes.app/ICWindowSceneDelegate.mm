@interface ICWindowSceneDelegate
- (ICViewControllerManager)viewControllerManager;
- (ICWindowSceneDelegate)init;
- (id)archiveForLaunchingPPT;
- (id)archiveForUserActivities:(id)a3 isSourceApplicationExternal:(BOOL)a4 lastSavedArchive:(id)a5;
- (id)nextResponder;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)dealloc;
- (void)handleAcceptingCloudKitShareWithMetadata:(id)a3 withWindowScene:(id)a4;
- (void)handleLaunchingQuickNoteUnlocked;
- (void)handleOpeningURLContexts:(id)a3 withScene:(id)a4;
- (void)handleRecordingUserActivity:(id)a3;
- (void)makeKeyWindowWhenTransitioningFromCoverSheet;
- (void)performPPTForegroundLaunchTasksIfNecessary;
- (void)reportReferralDataFromSceneConnectionOptions:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setUpAppStoreRatingObserverIfNecessary;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4;
@end

@implementation ICWindowSceneDelegate

- (ICWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = ICWindowSceneDelegate;
  v2 = [(ICWindowSceneDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    sessionIdentifierToStateRestorationActivity = v2->_sessionIdentifierToStateRestorationActivity;
    v2->_sessionIdentifierToStateRestorationActivity = v3;

    [(ICWindowSceneDelegate *)v2 makeKeyWindowWhenTransitioningFromCoverSheet];
  }

  return v2;
}

- (void)makeKeyWindowWhenTransitioningFromCoverSheet
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3374;
  v6[3] = &unk_1006482B0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:UISceneDidDisconnectNotification object:0 queue:0 usingBlock:v6];
  sceneDidDisconnectNotificationToken = self->_sceneDidDisconnectNotificationToken;
  self->_sceneDidDisconnectNotificationToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)archiveForLaunchingPPT
{
  v2 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CEEC(v2);
  }

  v3 = +[ICAppDelegate sharedInstance];
  v4 = [v3 isRunningPPT];

  if ((v4 & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"ICAppDelegate.sharedInstance.isRunningPPT" functionName:"[ICWindowSceneDelegate archiveForLaunchingPPT]" simulateCrash:1 showAlert:0 format:@"should only call this for launching in PPT"];
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"launchToFolderList"];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCD9C();
    }
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"launchToNotesList"];

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCDD0();
    }

LABEL_16:

    v12 = 0;
    v11 = v9;
    goto LABEL_17;
  }

  if ((v6 & 1) == 0)
  {
    v10 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B030();
    }

    goto LABEL_16;
  }

  v11 = 1;
  v12 = 1;
LABEL_17:
  v13 = objc_alloc_init(ICWindowStateArchive);
  [(ICWindowStateArchive *)v13 setCurrentNoteContainerViewMode:0];
  [(ICWindowStateArchive *)v13 setIsPrimaryContentVisible:v12];
  [(ICWindowStateArchive *)v13 setIsSupplementaryContentVisible:v9];
  v14 = +[ICNoteContext sharedContext];
  v15 = [v14 managedObjectContext];
  v16 = [ICAccount localAccountInContext:v15];

  if (v16 && (!v12 || +[UIDevice ic_isiPad]))
  {
    v17 = [v16 objectID];
    v18 = [v17 URIRepresentation];
    v32 = v18;
    v19 = [NSArray arrayWithObjects:&v32 count:1];
    [(ICWindowStateArchive *)v13 setCurrentContainerObjectIDURLs:v19];

    v20 = [v16 objectID];
    v21 = [v20 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentObjectIDURL:v21];
  }

  if ((v11 & 1) == 0)
  {
    v22 = +[ICApplicationTestingHelper sharedHelper];
    v23 = [v22 testNoteIdentifier];

    v24 = +[ICNoteContext sharedContext];
    v25 = [v24 managedObjectContext];
    v26 = [ICNote noteWithIdentifier:v23 includeDeleted:0 context:v25];

    v27 = [v26 objectID];
    v28 = [v27 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentNoteObjectIDURL:v28];

    v29 = [v26 objectID];
    v30 = [v29 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentObjectIDURL:v30];

    [(ICWindowStateArchive *)v13 setIsPrimaryContentVisible:0];
    [(ICWindowStateArchive *)v13 setIsSupplementaryContentVisible:0];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(ICWindowSceneDelegate *)self sceneDidDisconnectNotificationToken];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [(ICWindowSceneDelegate *)self sceneDidDisconnectNotificationToken];
    [v4 removeObserver:v5];
  }

  v6.receiver = self;
  v6.super_class = ICWindowSceneDelegate;
  [(ICWindowSceneDelegate *)&v6 dealloc];
}

- (ICViewControllerManager)viewControllerManager
{
  v2 = [(ICWindowSceneDelegate *)self icWindow];
  v3 = [v2 viewControllerManager];

  return v3;
}

- (id)nextResponder
{
  v2 = [(ICWindowSceneDelegate *)self viewControllerManager];
  v3 = [v2 keyboardHandler];

  return v3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v80 = "[ICWindowSceneDelegate scene:willConnectToSession:options:]";
    v81 = 1024;
    v82 = 96;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v11 = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  v12 = [v8 stateRestorationActivity];
  v13 = [v8 persistentIdentifier];
  [v11 ic_setNonNilObject:v12 forNonNilKey:v13];

  v77 = @"ICSessionSceneHasBecomeForegroundKey";
  v78 = &__kCFBooleanFalse;
  v14 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  [v8 setUserInfo:v14];

  objc_opt_class();
  v15 = ICDynamicCast();
  v16 = [v15 screen];
  v17 = [v16 displayIdentity];
  v18 = [v17 expectsSecureRendering];

  if (v18)
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICWindowSceneDelegate scene:willConnectToSession:options:]" simulateCrash:1 showAlert:0 format:@"Trying to show secure screen with non-secure window scene delegate"];
    goto LABEL_42;
  }

  v61 = v7;
  v62 = v15;
  v63 = v9;
  v64 = v8;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v19 = [v9 userActivities];
  v20 = [v19 countByEnumeratingWithState:&v72 objects:v76 count:16];
  v21 = self;
  if (v20)
  {
    v22 = v20;
    v23 = *v73;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v72 + 1) + 8 * i);
        v26 = [v25 activityType];
        if ([v26 isEqual:@"TUUserActivityCreateCallRecording"])
        {
        }

        else
        {
          v27 = [v25 activityType];
          v28 = [v27 isEqual:@"TUUserActivityFinishedCallRecording"];

          v21 = self;
          if (!v28)
          {
            continue;
          }
        }

        [(ICWindowSceneDelegate *)v21 handleRecordingUserActivity:v25];
      }

      v22 = [v19 countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v22);
  }

  v29 = +[ICAppDelegate sharedInstance];
  v30 = [v29 isRunningPPT];

  if ((v30 & 1) == 0)
  {
    v31 = +[NSProcessInfo processInfo];
    v32 = [v31 arguments];
    v33 = [v32 indexOfObjectPassingTest:&stru_1006481A8];

    v34 = v33 == 0x7FFFFFFFFFFFFFFFLL;
    v21 = self;
    if (v34)
    {
      v35 = v63;
      v36 = [v63 sourceApplication];

      v37 = v64;
      v38 = [v64 stateRestorationActivity];
      v39 = [v38 userInfo];
      v40 = [v39 objectForKeyedSubscript:@"ICCanvasStateArchiveKey"];

      if (v40)
      {
        v41 = [ICWindowStateArchive windowStateArchiveFromDictionary:v40];
      }

      else
      {
        v41 = 0;
      }

      v46 = [v63 userActivities];
      v42 = [(ICWindowSceneDelegate *)self archiveForUserActivities:v46 isSourceApplicationExternal:v36 != 0 lastSavedArchive:v41];

      v43 = 1;
      if (v42)
      {
        goto LABEL_22;
      }

LABEL_25:
      v42 = +[ICWindowStateArchive windowStateArchiveWithDefaultState];
      goto LABEL_26;
    }
  }

  v42 = [(ICWindowSceneDelegate *)v21 archiveForLaunchingPPT];
  v43 = 0;
  v35 = v63;
  v37 = v64;
  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_22:
  v44 = +[ICExpansionState sharedExpansionState];
  v45 = [v42 expansionState];
  [v44 applyArchiveDictionary:v45];

LABEL_26:
  v7 = v61;
  v47 = [v37 configuration];
  v48 = [v47 name];
  v49 = [v48 isEqualToString:off_1006BAAF0];

  if (v49)
  {
    [v42 setIsAuxiliaryWindow:1];
  }

  if ([v42 isAuxiliaryWindow])
  {
    v50 = [NSPredicate predicateWithValue:0];
    v51 = [v62 activationConditions];
    [v51 setCanActivateForTargetContentIdentifierPredicate:v50];
  }

  if (+[UIDevice ic_isVision])
  {
    v52 = [v62 sizeRestrictions];
    [v52 setMinimumSize:{488.0, 488.0}];

    v53 = [v62 sizeRestrictions];
    [v53 setMaximumSize:{1600.0, 900.0}];
  }

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v54 = 3;
  }

  else if (sub_10000D07C())
  {
    [v42 setHostApplicationIdentifier:ICNoteMathNotesHostApplicationIdentifier];
    v54 = 1;
  }

  else
  {
    v54 = 0;
  }

  v55 = [[ICWindow alloc] initWithWindowScene:v62 behavior:v54];
  v56 = objc_alloc_init(ICViewControllerManager);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000AF830;
  v67[3] = &unk_100645DB8;
  v57 = v35;
  v15 = v62;
  v58 = v57;
  v68 = v57;
  v69 = self;
  v70 = v62;
  v59 = v56;
  v71 = v59;
  [(ICViewControllerManager *)v59 setupWithWindow:v55 stateRestoreArchive:v42 completion:v67];
  [v55 setViewControllerManager:v59];
  [v55 makeKeyAndVisible];
  if ((v43 & +[ICUtilities showInternalInstallUI]) == 1)
  {
    [v55 setUpDebugStatusWindow];
  }

  [(ICWindowSceneDelegate *)self setIcWindow:v55];
  [(ICWindowSceneDelegate *)self reportReferralDataFromSceneConnectionOptions:v58];
  if (([v42 isAuxiliaryWindow] & 1) == 0)
  {
    v60 = +[ICAppDelegate sharedInstance];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000AF940;
    v66[3] = &unk_100645E30;
    v66[4] = self;
    [v60 waitForDelayedLaunchWithCompletionHandler:v66];
  }

  v9 = v63;
  v8 = v64;
LABEL_42:
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = +[ICNAController sharedController];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000AFAC4;
  v12 = &unk_100645E30;
  v13 = v4;
  v6 = v4;
  [v5 startWindowSceneSessionWithType:2 windowScene:v6 successHandler:&v9];

  v14 = @"ICSessionSceneHasBecomeForegroundKey";
  v15 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1, v9, v10, v11, v12];
  v8 = [v3 session];

  [v8 setUserInfo:v7];
  [UIApp setApplicationIconBadgeNumber:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ICWindowSceneDelegate sceneDidBecomeActive:]";
    v6 = 1024;
    v7 = 242;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", &v4, 0x12u);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowSceneDelegate *)self viewControllerManager];
  [v5 updateSceneTitle:v4];

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICWindowSceneDelegate sceneWillResignActive:]";
    v9 = 1024;
    v10 = 248;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d", &v7, 0x12u);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ICWindowSceneDelegate sceneDidEnterBackground:]";
    v15 = 1024;
    v16 = 253;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", &v13, 0x12u);
  }

  objc_opt_class();
  v6 = ICDynamicCast();

  v7 = +[ICNAWindowSceneReportingManager sharedManager];
  [v7 windowSceneDidEnd:v6];

  v8 = +[ICNAController sharedController];
  [v8 endWindowSceneSessionSynchronously:0 forSessionType:2 endReason:1 windowScene:v6];

  v9 = +[UIApplication sharedApplication];
  v10 = [v9 beginBackgroundTaskWithName:@"Save Note When Backgrounding" expirationHandler:&stru_1006481C8];
  v11 = [(ICWindowSceneDelegate *)self viewControllerManager];
  v12 = [v11 noteEditorViewController];
  [v12 saveNote];

  [v9 endBackgroundTask:v10];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[ICWindowSceneDelegate sceneDidDisconnect:]";
    v18 = 1024;
    v19 = 269;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", &v16, 0x12u);
  }

  v5 = [(ICWindowSceneDelegate *)self viewControllerManager];
  v6 = [v5 noteEditorViewController];
  v7 = [v6 note];

  if (v7)
  {
    v8 = +[ICAudioController sharedAudioController];
    v9 = [v8 currentAttachment];
    v10 = [v9 note];

    if (v7 == v10)
    {
      v11 = +[ICAudioController sharedAudioController];
      [v11 stop];
    }

    v12 = [(ICWindowSceneDelegate *)self viewControllerManager];
    if ([v12 isAuxiliary])
    {
      v13 = +[ICAudioRecordingManager currentAttachment];
      v14 = [v13 note];

      if (v7 == v14)
      {
        [ICAudioRecordingManager cancelCurrentAudioRecordingSessionWithCompletionHandler:&stru_1006481E8];
      }
    }

    else
    {
    }
  }

  v15 = [(ICWindowSceneDelegate *)self appStoreRatingObserver];
  [v15 stopObserving];

  [(ICWindowSceneDelegate *)self setAppStoreRatingObserver:0];
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v6 = a3;
  v7 = +[ICNAWindowSceneReportingManager sharedManager];
  [v7 windowSceneMayBeResized:v6];
}

- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICWindowSceneDelegate windowScene:userDidAcceptCloudKitShareWithMetadata:]";
    v11 = 1024;
    v12 = 303;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICWindowSceneDelegate *)self handleAcceptingCloudKitShareWithMetadata:v6 withWindowScene:v7];
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[ICWindowSceneDelegate stateRestorationActivityForScene:]";
    v33 = 1024;
    v34 = 311;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6 = [v4 session];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"ICSessionSceneHasBecomeForegroundKey"];
  v9 = [v8 BOOLValue];

  if ((v9 & 1) != 0 || (-[ICWindowSceneDelegate sessionIdentifierToStateRestorationActivity](self, "sessionIdentifierToStateRestorationActivity"), v10 = objc_claimAutoreleasedReturnValue(), [v4 session], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "persistentIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, !v13))
  {
    v18 = [[NSUserActivity alloc] initWithActivityType:@"ICCanvasStateActivityType"];
    v19 = [(ICWindowSceneDelegate *)self icWindow];
    v20 = [v19 viewControllerManager];
    v15 = [v20 windowStateArchive];

    v29 = @"ICCanvasStateArchiveKey";
    v21 = [v15 dictionaryRepresentation];
    v30 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v18 setUserInfo:v22];

    if (!v15)
    {
      [ICAssert handleFailedAssertWithCondition:"((archive) != nil)" functionName:"[ICWindowSceneDelegate stateRestorationActivityForScene:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "archive"];
    }

    if (ICInternalSettingsIsSelectionStateTrackingEnabled() && ([v15 selectionState], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v24 = [v15 currentNoteObjectIDURL];

      if (!v24)
      {
        goto LABEL_16;
      }
    }

    v16 = +[ICAppDelegate sharedInstance];
    [v16 saveLastBackgroundedArchiveState:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCC58();
    }

    v15 = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
    v16 = [v4 session];
    v17 = [v16 persistentIdentifier];
    v18 = [v15 objectForKeyedSubscript:v17];
  }

LABEL_16:
  v25 = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  v26 = [v4 session];
  v27 = [v26 persistentIdentifier];
  [v25 ic_setNonNilObject:v18 forNonNilKey:v27];

  return v18;
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = v4;
    v8 = 2080;
    v9 = "[ICWindowSceneDelegate scene:willContinueUserActivityWithType:]";
    v10 = 1024;
    v11 = 346;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "type == %@%s:%d", &v6, 0x1Cu);
  }
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v17 = v6;
    v18 = 2112;
    v20 = 2080;
    v19 = v7;
    v21 = "[ICWindowSceneDelegate scene:didFailToContinueUserActivityWithType:error:]";
    v22 = 1024;
    v23 = 351;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@, %@%s:%d", buf, 0x26u);
  }

  v9 = +[ICAppDelegate sharedInstance];
  v10 = [v9 analyticsController];
  v11 = [NSString stringWithFormat:@"%@/%@", ICNAInbountURLComponentUserActivity, v6];
  v12 = [NSURL URLWithString:v11];
  [v10 startSessionWithReferralURL:v12 referralApplication:0];

  v13 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1004DCC8C(v7, v13);
  }

  v14 = +[ICHandoffController sharedController];
  [v14 setInputStream:0];

  v15 = +[ICHandoffController sharedController];
  [v15 setOutputStream:0];
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 activityType];
    v23 = 138412802;
    v24 = v9;
    v25 = 2080;
    v26 = "[ICWindowSceneDelegate scene:continueUserActivity:]";
    v27 = 1024;
    v28 = 362;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "type == %@%s:%d", &v23, 0x1Cu);
  }

  v10 = [v6 activityType];
  if ([v10 isEqual:@"TUUserActivityCreateCallRecording"])
  {
  }

  else
  {
    v11 = [v6 activityType];
    v12 = [v11 isEqual:@"TUUserActivityFinishedCallRecording"];

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  [(ICWindowSceneDelegate *)self handleRecordingUserActivity:v6];
LABEL_7:
  v13 = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  v14 = [v7 session];

  v15 = [v14 persistentIdentifier];
  v16 = [v13 objectForKeyedSubscript:v15];
  v17 = [v16 userInfo];
  v18 = [v17 objectForKeyedSubscript:@"ICCanvasStateArchiveKey"];

  if (v18)
  {
    v19 = [ICWindowStateArchive windowStateArchiveFromDictionary:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [NSSet setWithObject:v6];
  v21 = [(ICWindowSceneDelegate *)self archiveForUserActivities:v20 isSourceApplicationExternal:1 lastSavedArchive:v19];

  v22 = [(ICWindowSceneDelegate *)self viewControllerManager];
  [v22 applyStateRestoreArchive:v21 completion:0];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICWindowSceneDelegate scene:openURLContexts:]";
    v11 = 1024;
    v12 = 386;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICWindowSceneDelegate *)self handleOpeningURLContexts:v6 withScene:v7];
}

- (void)handleOpeningURLContexts:(id)a3 withScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412290;
    v23 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) URL];
        v14 = +[ICAppDelegate sharedInstance];
        v15 = [v14 analyticsController];
        [v15 startSessionWithReferralURL:v13 referralApplication:0];

        v16 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v23;
          v30 = v13;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Got openURL: %@", buf, 0xCu);
        }

        v17 = [ICAppURLUtilities isQuickNoteModeURL:v13];
        v18 = [ICAppURLUtilities quickNoteURLIsContinuing:v13];
        objc_opt_class();
        v19 = ICDynamicCast();
        v20 = v19;
        if (!v17 || (v18 & 1) != 0)
        {
          v21 = [(ICWindowSceneDelegate *)self viewControllerManager];
          [v21 openURL:v13];
LABEL_14:

          goto LABEL_15;
        }

        v21 = [v19 screen];
        if ([v21 ic_isSecure])
        {
          goto LABEL_14;
        }

        v22 = +[UIDevice ic_isLocked];

        if ((v22 & 1) == 0)
        {
          [(ICWindowSceneDelegate *)self handleLaunchingQuickNoteUnlocked];
        }

LABEL_15:

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }
}

- (void)handleLaunchingQuickNoteUnlocked
{
  v3 = [(ICWindowSceneDelegate *)self viewControllerManager];
  v4 = [v3 mainSplitViewController];
  v5 = [v4 presentedViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICWindowSceneDelegate *)self viewControllerManager];
    v8 = [v7 mainSplitViewController];
    v9 = [v8 presentedViewController];

    [v9 prepareForDismissal];
  }

  v10 = +[ICQuickNoteSessionSettings showOnLockScreen];
  v11 = +[ICQuickNoteSessionSettings showOnLockScreen];
  if (v11 != 3 && v10 != 2)
  {
    goto LABEL_10;
  }

  v12 = +[ICAppDelegate sharedInstance];
  v13 = v12;
  if (v11 == 3)
  {
    [v12 quicknoteArchiveState];
  }

  else
  {
    [v12 lastBackgroundedArchiveState];
  }
  v16 = ;

  if (v16)
  {
    v14 = [(ICWindowSceneDelegate *)self viewControllerManager];
    [v14 applyStateRestoreArchive:v16 completion:0];
  }

  else
  {
LABEL_10:
    v16 = [(ICWindowSceneDelegate *)self viewControllerManager];
    v15 = [v16 showNewNoteWithApproach:12 sender:self animated:1];
  }
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[ICWindowSceneDelegate windowScene:performActionForShortcutItem:completionHandler:]";
    v17 = 1024;
    v18 = 454;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v8 = +[ICAppDelegate sharedInstance];
  v9 = [v8 analyticsController];
  v10 = ICNAInbountURLComponentShortcutItem;
  v11 = [v6 type];
  v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];
  v13 = [NSURL URLWithString:v12];
  [v9 startSessionWithReferralURL:v13 referralApplication:0];

  v14 = [(ICWindowSceneDelegate *)self viewControllerManager];
  [v14 performActionForShortcutItem:v6];
}

- (void)performPPTForegroundLaunchTasksIfNecessary
{
  if ([(ICWindowSceneDelegate *)self pptLaunchTasksComplete])
  {
    return;
  }

  [(ICWindowSceneDelegate *)self setPptLaunchTasksComplete:1];
  v3 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DCD18(v3);
  }

  v4 = +[ICAppDelegate sharedInstance];
  v5 = [v4 isRunningPPT];

  if (!v5)
  {
    v12 = 0;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"launchToFolderList"];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCD9C();
    }
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"launchToNotesList"];

  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCDD0();
    }

LABEL_17:
    v12 = v10 ^ 1;

    goto LABEL_18;
  }

  if ((v7 & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B030();
    }

    goto LABEL_17;
  }

  v12 = 0;
  v13 = 1;
LABEL_19:
  v14 = +[ICApplicationTestingHelper sharedHelper];
  v15 = [v14 testNoteIdentifier];

  if (v13)
  {
    v16 = [(ICWindowSceneDelegate *)self viewControllerManager];
    [v16 showAccountListAnimated:0];
  }

  else
  {
    if (v15)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1 && [v15 length])
    {
      v18 = +[ICNoteContext sharedContext];
      v19 = [v18 managedObjectContext];
      v16 = [ICNote noteWithIdentifier:v15 includeDeleted:0 context:v19];

      v20 = [(ICWindowSceneDelegate *)self viewControllerManager];
      v21 = [v16 objectID];
      [v20 selectNoteWithObjectID:v21 scrollState:0 startEditing:0 animated:0 ensurePresented:1];
    }

    else
    {
      v22 = +[ICNoteContext sharedContext];
      v23 = [v22 managedObjectContext];
      v16 = [ICAccount localAccountInContext:v23];

      v20 = [(ICWindowSceneDelegate *)self viewControllerManager];
      v21 = [v16 objectID];
      [v20 selectContainerWithIdentifier:v21 usingRootViewController:1 deferUntilDataLoaded:0 animated:0];
    }
  }
}

- (void)handleRecordingUserActivity:(id)a3
{
  v3 = a3;
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 managedObjectContext];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = +[UIApplication sharedApplication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000B1774;
  v14[3] = &unk_100646A18;
  v14[4] = &v15;
  v7 = [v6 beginBackgroundTaskWithExpirationHandler:v14];

  v16[3] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B1790;
  v10[3] = &unk_100646008;
  v8 = v3;
  v11 = v8;
  v9 = v5;
  v12 = v9;
  v13 = &v15;
  [v9 performBlockAndWait:v10];

  _Block_object_dispose(&v15, 8);
}

- (void)handleAcceptingCloudKitShareWithMetadata:(id)a3 withWindowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICAppDelegate sharedInstance];
  v9 = [v8 analyticsController];
  v10 = [NSURL URLWithString:kICNACloudKitShareReferralURL];
  [v9 startSessionWithReferralURL:v10 referralApplication:0];

  v11 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User accepted CloudKit share", buf, 2u);
  }

  v12 = +[ICNoteContext sharedContext];
  v13 = [v12 managedObjectContext];

  v14 = [(ICWindowSceneDelegate *)self icWindow];
  v15 = [v14 viewControllerManager];

  if ([ICAccount hasActiveCloudKitAccountInContext:v13])
  {
    v16 = [v6 share];
    v17 = [v16 URL];

    if (v17)
    {
      v18 = +[ICCollaborationUIController sharedInstance];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000B1F28;
      v44[3] = &unk_100648210;
      v45 = v15;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000B2080;
      v42[3] = &unk_100648238;
      v43 = v45;
      [v18 processShareAcceptanceWithMetadata:v6 windowScene:v7 managedObjectContext:v13 alertBlock:v44 showObjectBlock:v42];

      v19 = v45;
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1004DCE04();
      }
    }
  }

  else
  {
    v36 = v7;
    v20 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Tried to accept share, but didn't have modern notes.", buf, 2u);
    }

    IsAppleAccountBrandingEnabled = ICInternalSettingsIsAppleAccountBrandingEnabled();
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (IsAppleAccountBrandingEnabled)
    {
      v24 = @"To open shared notes, you’ll need to upgrade your Apple Account.";
    }

    else
    {
      v24 = @"To open shared notes, you’ll need to upgrade your iCloud account.";
    }

    v35 = [v22 localizedStringForKey:v24 value:&stru_100661CF0 table:0];

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Upgrade Your Notes" value:&stru_100661CF0 table:0];
    v19 = [UIAlertController alertControllerWithTitle:v26 message:v35 preferredStyle:1];

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
    v29 = [UIAlertAction actionWithTitle:v28 style:1 handler:0];

    [v19 addAction:v29];
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"Upgrade" value:&stru_100661CF0 table:0];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B218C;
    v37[3] = &unk_100648288;
    v37[4] = self;
    v32 = v15;
    v38 = v32;
    v39 = v13;
    v40 = v36;
    v41 = v6;
    v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v37];

    [v19 addAction:v33];
    v34 = [v32 trailingSidebarViewController];
    [v34 presentViewController:v19 animated:1 completion:0];

    v7 = v36;
    v17 = v35;
  }
}

- (id)archiveForUserActivities:(id)a3 isSourceApplicationExternal:(BOOL)a4 lastSavedArchive:(id)a5
{
  v6 = a3;
  v7 = a5;
  v107 = sub_1000DC72C();
  v108 = +[ICNoteContext sharedContext];
  v112 = [v108 managedObjectContext];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v8 = v6;
  v119 = [v8 countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (!v119)
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v97 = 0;
    v13 = 0;
    if (!v7)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v104 = v7;
  v10 = 0;
  v115 = 0;
  v11 = 0;
  v12 = 0;
  v109 = 0;
  v13 = 0;
  v118 = *v122;
  v113 = ICNotesEditNoteUserActivityType;
  v111 = ICUserActivityInfoDictionaryNoteIDKey;
  *&v9 = 138412290;
  v103 = v9;
  v110 = v8;
  do
  {
    v14 = 0;
    do
    {
      v120 = v10;
      if (*v122 != v118)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v121 + 1) + 8 * v14);
      objc_opt_class();
      v16 = [v15 userInfo];
      v17 = [v16 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
      v18 = ICDynamicCast();

      if (v18)
      {
        [NSURL URLWithString:v18];
        v12 = v19 = v12;
LABEL_46:

        v10 = v120;
        goto LABEL_47;
      }

      v20 = [v15 activityType];
      v21 = [v20 isEqualToString:@"com.apple.notes.open.object"];

      v117 = v13;
      if (v21)
      {
        v22 = [v15 targetContentIdentifier];
        v19 = [NSURL URLWithString:v22];

        v114 = v11;
        if (v19)
        {
          if ([ICAppURLUtilities isShowFolderListURL:v19])
          {
            goto LABEL_11;
          }

          if ([ICAppURLUtilities isShowDefaultFolderURL:v19])
          {
            v35 = +[NotesApp sharedNotesApp];
            v36 = [v35 noteContext];
            v37 = [ICDefaultAccountUtilities defaultFolderWithHTMLNoteContext:v36];
            v38 = [v37 objectID];
            v39 = [v38 URIRepresentation];

            v23 = 0;
            v12 = v39;
            v8 = v110;
            goto LABEL_44;
          }

          if (v108)
          {
            v55 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:v19 noteContext:?];

            if (!v55)
            {
              v109 = 0;
              goto LABEL_36;
            }

LABEL_43:
            v59 = [v55 URIRepresentation];

            v23 = 0;
            v12 = v59;
            v109 = v55;
          }

          else
          {
LABEL_36:
            if (v112 && [ICAppURLUtilities isShowVirtualSmartFolderURL:v19])
            {
              v56 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:v19 context:v112];

              v23 = 0;
              v120 = v56;
            }

            else
            {
              if (v107)
              {
                v55 = [ICAppURLUtilities objectIDForHTMLFolderMentionedInURL:v19 context:?];

                if (v55)
                {
                  goto LABEL_43;
                }

                v109 = 0;
              }

              if (v112 && [ICAppURLUtilities isShowNoteURL:v19])
              {
                v85 = [ICAppURLUtilities predicateForNotesMentionedInURL:v19];
                v23 = v85 != 0;
                if (v85)
                {
                  v86 = [ICNote notesMatchingPredicate:v85 context:v112];
                  v87 = [v86 firstObject];
                  v88 = [v87 objectID];
                  v116 = [v88 URIRepresentation];

                  v8 = v110;
                  v12 = v116;
                }
              }

              else
              {
                v89 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:v19, v103];

                if (v89)
                {
                  v23 = 1;
                  v12 = v89;
                }

                else if ([ICAppURLUtilities isShowHTMLNoteURL:v19])
                {
                  v12 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:v19];
                  v23 = 1;
                }

                else
                {
                  v12 = os_log_create("com.apple.notes", "UI");
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v103;
                    v126 = v19;
                    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot handle open object URL {url: %@}", buf, 0xCu);
                  }

LABEL_11:

                  v23 = 0;
                  v12 = 0;
                }
              }
            }
          }
        }

        else
        {
          v34 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1004DCE44(v127, v15, &v128, v34);
          }

          v23 = 0;
        }

LABEL_44:
        v60 = [v15 userInfo];
        v61 = [v60 objectForKeyedSubscript:@"ICUseAuxiliaryWindow"];
        v62 = [v61 isEqual:&__kCFBooleanTrue];

        v115 = v23 & v62;
        v11 = v114;
LABEL_45:
        v13 = v117;
        goto LABEL_46;
      }

      v24 = v11;
      v25 = [v15 activityType];
      v26 = [v25 isEqual:v113];

      if (v26)
      {
        v27 = [v15 userInfo];
        v19 = [v27 objectForKeyedSubscript:v111];

        v28 = [ICNote noteWithIdentifier:v19 context:v112];
        if ([v28 markedForDeletion])
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v29 = [v15 activityType];
      v30 = [v29 isEqual:@"com.apple.Notes"];

      if (v30)
      {
        v31 = +[NotesApp sharedNotesApp];
        v19 = [v31 noteContext];

        v28 = sub_10008C178(v15, v19, 0);
        if ([v28 isMarkedForDeletion])
        {
LABEL_19:
          v11 = v24;

          goto LABEL_45;
        }

LABEL_17:
        if (([v28 isDeleted] & 1) == 0)
        {
          v32 = [v28 objectID];
          v33 = [v32 URIRepresentation];

          v12 = v33;
        }

        goto LABEL_19;
      }

      v40 = [v15 activityType];
      v41 = +[ICNotesFolderIntent className];
      v42 = [v40 isEqual:v41];

      if (v42)
      {
        v19 = [v15 interaction];
        v43 = [v19 intent];
        if (v43)
        {
          v44 = v43;
          v45 = [v19 intent];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v8 = v110;
          if (isKindOfClass)
          {
            v47 = [v19 intent];
            v48 = [v47 folder];
            v11 = v24;
            if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v105 = v47;
              v49 = [v48 identifier];
              v50 = [NSURL URLWithString:v49];

              v106 = v50;
              if (v108)
              {
                v51 = &ICQUIInAppMessageReasonUploadFailure_ptr;
                v52 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:v50 noteContext:?];

                if (v52)
                {
                  v53 = [v52 URIRepresentation];
                  v54 = v12;
                  v12 = v53;
                  v109 = v52;
                  v11 = v24;
                  v13 = v117;
                  goto LABEL_88;
                }

                v109 = 0;
                v11 = v24;
              }

              else
              {
                v11 = v24;
                v51 = &ICQUIInAppMessageReasonUploadFailure_ptr;
              }

              v13 = v117;
              if (v107)
              {
                v93 = [v51[327] objectIDForHTMLFolderMentionedInURL:v106 context:?];

                if (v93)
                {
                  v94 = [v93 URIRepresentation];
                  v54 = v12;
                  v12 = v94;
                  v109 = v93;
LABEL_88:
                  v47 = v105;
LABEL_92:

                  goto LABEL_93;
                }

                v109 = 0;
              }

              v47 = v105;
              if ([v51[327] isShowVirtualSmartFolderURL:{v106, v103}])
              {
                v95 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:v106 context:v112];
                v54 = v120;
                v120 = v95;
                goto LABEL_92;
              }

LABEL_93:
            }

            else
            {
              v13 = v117;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v8 = v110;
        }

        v11 = v24;
        goto LABEL_45;
      }

      v57 = [v15 activityType];
      v58 = [v57 isEqual:CSQueryContinuationActionType];

      if (v58)
      {
        v19 = [v15 userInfo];
        v11 = [v19 objectForKey:CSSearchQueryString];

        v8 = v110;
        goto LABEL_45;
      }

      v70 = [v15 activityType];
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = [v70 isEqual:v72];

      if (v73)
      {
        v74 = [v15 userInfo];
        v75 = NSStringFromSelector("content");
        v76 = [v74 objectForKey:v75];

        v8 = v110;
        v10 = v120;
        if (![v76 length])
        {
          [v15 userInfo];
          v19 = v90 = v76;
          v91 = NSStringFromSelector("title");
          v92 = [v19 objectForKeyedSubscript:v91];

          v11 = v92;
          goto LABEL_45;
        }

        v11 = v76;
      }

      else
      {
        v77 = [v15 activityType];
        v78 = [v77 isEqual:@"TUUserActivityCreateCallRecording"];

        if (v78)
        {
          objc_opt_class();
          v79 = [v15 userInfo];
          v80 = [v79 objectForKeyedSubscript:@"uniqueProxyIdentifier"];
          v19 = ICDynamicCast();

          v81 = [v19 UUIDString];
          v82 = [ICNote noteWithIdentifier:v81 context:v112];
          v8 = v110;
          if (([v82 markedForDeletion] & 1) == 0 && (objc_msgSend(v82, "isDeleted") & 1) == 0)
          {
            v83 = [v82 objectID];
            v84 = [v83 URIRepresentation];

            v12 = v84;
          }

          v11 = v24;

          goto LABEL_45;
        }

        v8 = v110;
        v10 = v120;
        v11 = v24;
      }

      v13 = v117;
LABEL_47:
      if (v12)
      {
        v63 = 0;
      }

      else
      {
        v63 = v10 == 0;
      }

      if (!v63 || v11 != 0)
      {
        v65 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];

        [v65 setCurrentObjectIDURL:v12];
        [v65 setCurrentVirtualSmartFolderIdentifier:v10];
        [v10 type];
        v67 = v66 = v11;
        [v65 setCurrentVirtualSmartFolderType:v67];

        v68 = [v10 accountObjectID];
        v69 = [v68 URIRepresentation];
        [v65 setCurrentVirtualSmartFolderAccountObjectIDURL:v69];

        v11 = v66;
        [v65 setIsAuxiliaryWindow:v115 & 1];
        [v65 setCurrentSearchTerm:v66];
        v13 = v65;
      }

      v14 = v14 + 1;
    }

    while (v119 != v14);
    v96 = [v8 countByEnumeratingWithState:&v121 objects:v129 count:16];
    v119 = v96;
  }

  while (v96);

  v7 = v104;
  if (!v104)
  {
    v97 = v109;
    goto LABEL_105;
  }

  if (!v13)
  {
    v97 = v109;
LABEL_104:
    v13 = v7;
    goto LABEL_105;
  }

  [v13 setCurrentNoteContainerViewMode:{objc_msgSend(v104, "currentNoteContainerViewMode")}];
  [v13 setIsPrimaryContentVisible:{objc_msgSend(v104, "isPrimaryContentVisible")}];
  [v13 setIsSupplementaryContentVisible:{objc_msgSend(v104, "isSupplementaryContentVisible")}];
  v97 = v109;
  if (ICInternalSettingsIsSelectionStateTrackingEnabled())
  {
    [v104 selectionState];
    v99 = v98 = v11;
    v100 = [v99 copy];
    [v13 setSelectionState:v100];

    v11 = v98;
  }

LABEL_105:
  v101 = v13;

  return v13;
}

- (void)reportReferralDataFromSceneConnectionOptions:(id)a3
{
  v27 = a3;
  v3 = [v27 sourceApplication];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v27 sourceApplication];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v27 URLContexts];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v27 URLContexts];
    v9 = [v8 anyObject];
    v10 = [v9 URL];

    goto LABEL_14;
  }

  v11 = [v27 handoffUserActivityType];

  if (v11)
  {
    v12 = ICNAInbountURLComponentUserActivity;
    v13 = ICNAInbountURLComponentHandoff;
    v14 = [v27 handoffUserActivityType];
    v15 = [NSString stringWithFormat:@"%@/%@/%@", v12, v13, v14];
    v10 = [NSURL URLWithString:v15];

LABEL_13:
    goto LABEL_14;
  }

  v16 = [v27 userActivities];
  v17 = [v16 count];

  if (v17)
  {
    v18 = ICNAInbountURLComponentUserActivity;
    v14 = [v27 userActivities];
    v19 = [v14 anyObject];
    v20 = [v19 activityType];
    v21 = [NSString stringWithFormat:@"%@/%@", v18, v20];
    v10 = [NSURL URLWithString:v21];

LABEL_12:
    goto LABEL_13;
  }

  v22 = [v27 shortcutItem];

  if (v22)
  {
    v23 = ICNAInbountURLComponentShortcutItem;
    v14 = [v27 shortcutItem];
    v19 = [v14 type];
    v24 = [NSString stringWithFormat:@"%@/%@", v23, v19];
    v10 = [NSURL URLWithString:v24];

    goto LABEL_12;
  }

  v10 = [v27 cloudKitShareMetadata];

  if (v10)
  {
    v10 = [NSURL URLWithString:kICNACloudKitShareReferralURL];
  }

LABEL_14:
  v25 = +[ICAppDelegate sharedInstance];
  v26 = [v25 analyticsController];
  [v26 addReferralDataWithReferringInboundURL:v10 referringApplication:v5];
}

- (void)setUpAppStoreRatingObserverIfNecessary
{
  v3 = [(ICWindowSceneDelegate *)self icWindow];
  v14 = [v3 windowScene];

  if (v14)
  {
    v4 = +[ICAccountUtilities sharedInstance];
    v5 = [v4 primaryICloudACAccount];

    v6 = [v5 identifier];
    if ([v6 length])
    {
      if (!self->_appStoreRatingObserver)
      {
        v7 = [ICAppStoreRatingObserver alloc];
        v8 = +[ICNoteContext sharedContext];
        v9 = [v8 workerManagedObjectContext];
        v10 = +[NSUserDefaults standardUserDefaults];
        v11 = [(ICAppStoreRatingObserver *)v7 initWithAccountIdentifier:v6 managedObjectContext:v9 userDefaults:v10 windowScene:v14];
        appStoreRatingObserver = self->_appStoreRatingObserver;
        self->_appStoreRatingObserver = v11;
      }

      v13 = [(ICWindowSceneDelegate *)self appStoreRatingObserver];
      [v13 startObserving];
    }
  }
}

@end