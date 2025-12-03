@interface ICWindowSceneDelegate
- (ICViewControllerManager)viewControllerManager;
- (ICWindowSceneDelegate)init;
- (id)archiveForLaunchingPPT;
- (id)archiveForUserActivities:(id)activities isSourceApplicationExternal:(BOOL)external lastSavedArchive:(id)archive;
- (id)nextResponder;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)dealloc;
- (void)handleAcceptingCloudKitShareWithMetadata:(id)metadata withWindowScene:(id)scene;
- (void)handleLaunchingQuickNoteUnlocked;
- (void)handleOpeningURLContexts:(id)contexts withScene:(id)scene;
- (void)handleRecordingUserActivity:(id)activity;
- (void)makeKeyWindowWhenTransitioningFromCoverSheet;
- (void)performPPTForegroundLaunchTasksIfNecessary;
- (void)reportReferralDataFromSceneConnectionOptions:(id)options;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setUpAppStoreRatingObserverIfNecessary;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata;
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
  isRunningPPT = [v3 isRunningPPT];

  if ((isRunningPPT & 1) == 0)
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
  managedObjectContext = [v14 managedObjectContext];
  v16 = [ICAccount localAccountInContext:managedObjectContext];

  if (v16 && (!v12 || +[UIDevice ic_isiPad]))
  {
    objectID = [v16 objectID];
    uRIRepresentation = [objectID URIRepresentation];
    v32 = uRIRepresentation;
    v19 = [NSArray arrayWithObjects:&v32 count:1];
    [(ICWindowStateArchive *)v13 setCurrentContainerObjectIDURLs:v19];

    objectID2 = [v16 objectID];
    uRIRepresentation2 = [objectID2 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentObjectIDURL:uRIRepresentation2];
  }

  if ((v11 & 1) == 0)
  {
    v22 = +[ICApplicationTestingHelper sharedHelper];
    testNoteIdentifier = [v22 testNoteIdentifier];

    v24 = +[ICNoteContext sharedContext];
    managedObjectContext2 = [v24 managedObjectContext];
    v26 = [ICNote noteWithIdentifier:testNoteIdentifier includeDeleted:0 context:managedObjectContext2];

    objectID3 = [v26 objectID];
    uRIRepresentation3 = [objectID3 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentNoteObjectIDURL:uRIRepresentation3];

    objectID4 = [v26 objectID];
    uRIRepresentation4 = [objectID4 URIRepresentation];
    [(ICWindowStateArchive *)v13 setCurrentObjectIDURL:uRIRepresentation4];

    [(ICWindowStateArchive *)v13 setIsPrimaryContentVisible:0];
    [(ICWindowStateArchive *)v13 setIsSupplementaryContentVisible:0];
  }

  return v13;
}

- (void)dealloc
{
  sceneDidDisconnectNotificationToken = [(ICWindowSceneDelegate *)self sceneDidDisconnectNotificationToken];

  if (sceneDidDisconnectNotificationToken)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    sceneDidDisconnectNotificationToken2 = [(ICWindowSceneDelegate *)self sceneDidDisconnectNotificationToken];
    [v4 removeObserver:sceneDidDisconnectNotificationToken2];
  }

  v6.receiver = self;
  v6.super_class = ICWindowSceneDelegate;
  [(ICWindowSceneDelegate *)&v6 dealloc];
}

- (ICViewControllerManager)viewControllerManager
{
  icWindow = [(ICWindowSceneDelegate *)self icWindow];
  viewControllerManager = [icWindow viewControllerManager];

  return viewControllerManager;
}

- (id)nextResponder
{
  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  keyboardHandler = [viewControllerManager keyboardHandler];

  return keyboardHandler;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v10 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v80 = "[ICWindowSceneDelegate scene:willConnectToSession:options:]";
    v81 = 1024;
    v82 = 96;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  sessionIdentifierToStateRestorationActivity = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  stateRestorationActivity = [sessionCopy stateRestorationActivity];
  persistentIdentifier = [sessionCopy persistentIdentifier];
  [sessionIdentifierToStateRestorationActivity ic_setNonNilObject:stateRestorationActivity forNonNilKey:persistentIdentifier];

  v77 = @"ICSessionSceneHasBecomeForegroundKey";
  v78 = &__kCFBooleanFalse;
  v14 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  [sessionCopy setUserInfo:v14];

  objc_opt_class();
  v15 = ICDynamicCast();
  screen = [v15 screen];
  displayIdentity = [screen displayIdentity];
  expectsSecureRendering = [displayIdentity expectsSecureRendering];

  if (expectsSecureRendering)
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICWindowSceneDelegate scene:willConnectToSession:options:]" simulateCrash:1 showAlert:0 format:@"Trying to show secure screen with non-secure window scene delegate"];
    goto LABEL_42;
  }

  v61 = sceneCopy;
  v62 = v15;
  v63 = optionsCopy;
  v64 = sessionCopy;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  userActivities = [optionsCopy userActivities];
  v20 = [userActivities countByEnumeratingWithState:&v72 objects:v76 count:16];
  selfCopy3 = self;
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
          objc_enumerationMutation(userActivities);
        }

        v25 = *(*(&v72 + 1) + 8 * i);
        activityType = [v25 activityType];
        if ([activityType isEqual:@"TUUserActivityCreateCallRecording"])
        {
        }

        else
        {
          activityType2 = [v25 activityType];
          v28 = [activityType2 isEqual:@"TUUserActivityFinishedCallRecording"];

          selfCopy3 = self;
          if (!v28)
          {
            continue;
          }
        }

        [(ICWindowSceneDelegate *)selfCopy3 handleRecordingUserActivity:v25];
      }

      v22 = [userActivities countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v22);
  }

  v29 = +[ICAppDelegate sharedInstance];
  isRunningPPT = [v29 isRunningPPT];

  if ((isRunningPPT & 1) == 0)
  {
    v31 = +[NSProcessInfo processInfo];
    arguments = [v31 arguments];
    v33 = [arguments indexOfObjectPassingTest:&stru_1006481A8];

    v34 = v33 == 0x7FFFFFFFFFFFFFFFLL;
    selfCopy3 = self;
    if (v34)
    {
      v35 = v63;
      sourceApplication = [v63 sourceApplication];

      v37 = v64;
      stateRestorationActivity2 = [v64 stateRestorationActivity];
      userInfo = [stateRestorationActivity2 userInfo];
      v40 = [userInfo objectForKeyedSubscript:@"ICCanvasStateArchiveKey"];

      if (v40)
      {
        v41 = [ICWindowStateArchive windowStateArchiveFromDictionary:v40];
      }

      else
      {
        v41 = 0;
      }

      userActivities2 = [v63 userActivities];
      archiveForLaunchingPPT = [(ICWindowSceneDelegate *)self archiveForUserActivities:userActivities2 isSourceApplicationExternal:sourceApplication != 0 lastSavedArchive:v41];

      v43 = 1;
      if (archiveForLaunchingPPT)
      {
        goto LABEL_22;
      }

LABEL_25:
      archiveForLaunchingPPT = +[ICWindowStateArchive windowStateArchiveWithDefaultState];
      goto LABEL_26;
    }
  }

  archiveForLaunchingPPT = [(ICWindowSceneDelegate *)selfCopy3 archiveForLaunchingPPT];
  v43 = 0;
  v35 = v63;
  v37 = v64;
  if (!archiveForLaunchingPPT)
  {
    goto LABEL_25;
  }

LABEL_22:
  v44 = +[ICExpansionState sharedExpansionState];
  expansionState = [archiveForLaunchingPPT expansionState];
  [v44 applyArchiveDictionary:expansionState];

LABEL_26:
  sceneCopy = v61;
  configuration = [v37 configuration];
  name = [configuration name];
  v49 = [name isEqualToString:off_1006BAAF0];

  if (v49)
  {
    [archiveForLaunchingPPT setIsAuxiliaryWindow:1];
  }

  if ([archiveForLaunchingPPT isAuxiliaryWindow])
  {
    v50 = [NSPredicate predicateWithValue:0];
    activationConditions = [v62 activationConditions];
    [activationConditions setCanActivateForTargetContentIdentifierPredicate:v50];
  }

  if (+[UIDevice ic_isVision])
  {
    sizeRestrictions = [v62 sizeRestrictions];
    [sizeRestrictions setMinimumSize:{488.0, 488.0}];

    sizeRestrictions2 = [v62 sizeRestrictions];
    [sizeRestrictions2 setMaximumSize:{1600.0, 900.0}];
  }

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v54 = 3;
  }

  else if (sub_10000D07C())
  {
    [archiveForLaunchingPPT setHostApplicationIdentifier:ICNoteMathNotesHostApplicationIdentifier];
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
  selfCopy4 = self;
  v70 = v62;
  v59 = v56;
  v71 = v59;
  [(ICViewControllerManager *)v59 setupWithWindow:v55 stateRestoreArchive:archiveForLaunchingPPT completion:v67];
  [v55 setViewControllerManager:v59];
  [v55 makeKeyAndVisible];
  if ((v43 & +[ICUtilities showInternalInstallUI]) == 1)
  {
    [v55 setUpDebugStatusWindow];
  }

  [(ICWindowSceneDelegate *)self setIcWindow:v55];
  [(ICWindowSceneDelegate *)self reportReferralDataFromSceneConnectionOptions:v58];
  if (([archiveForLaunchingPPT isAuxiliaryWindow] & 1) == 0)
  {
    v60 = +[ICAppDelegate sharedInstance];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000AF940;
    v66[3] = &unk_100645E30;
    v66[4] = self;
    [v60 waitForDelayedLaunchWithCompletionHandler:v66];
  }

  optionsCopy = v63;
  sessionCopy = v64;
LABEL_42:
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
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
  session = [foregroundCopy session];

  [session setUserInfo:v7];
  [UIApp setApplicationIconBadgeNumber:0];
}

- (void)sceneDidBecomeActive:(id)active
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

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  [viewControllerManager updateSceneTitle:activeCopy];

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

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
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
  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];
  [noteEditorViewController saveNote];

  [v9 endBackgroundTask:v10];
}

- (void)sceneDidDisconnect:(id)disconnect
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

  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];
  note = [noteEditorViewController note];

  if (note)
  {
    v8 = +[ICAudioController sharedAudioController];
    currentAttachment = [v8 currentAttachment];
    note2 = [currentAttachment note];

    if (note == note2)
    {
      v11 = +[ICAudioController sharedAudioController];
      [v11 stop];
    }

    viewControllerManager2 = [(ICWindowSceneDelegate *)self viewControllerManager];
    if ([viewControllerManager2 isAuxiliary])
    {
      v13 = +[ICAudioRecordingManager currentAttachment];
      note3 = [v13 note];

      if (note == note3)
      {
        [ICAudioRecordingManager cancelCurrentAudioRecordingSessionWithCompletionHandler:&stru_1006481E8];
      }
    }

    else
    {
    }
  }

  appStoreRatingObserver = [(ICWindowSceneDelegate *)self appStoreRatingObserver];
  [appStoreRatingObserver stopObserving];

  [(ICWindowSceneDelegate *)self setAppStoreRatingObserver:0];
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  v7 = +[ICNAWindowSceneReportingManager sharedManager];
  [v7 windowSceneMayBeResized:sceneCopy];
}

- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  sceneCopy = scene;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICWindowSceneDelegate windowScene:userDidAcceptCloudKitShareWithMetadata:]";
    v11 = 1024;
    v12 = 303;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICWindowSceneDelegate *)self handleAcceptingCloudKitShareWithMetadata:metadataCopy withWindowScene:sceneCopy];
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[ICWindowSceneDelegate stateRestorationActivityForScene:]";
    v33 = 1024;
    v34 = 311;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  session = [sceneCopy session];
  userInfo = [session userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"ICSessionSceneHasBecomeForegroundKey"];
  bOOLValue = [v8 BOOLValue];

  if ((bOOLValue & 1) != 0 || (-[ICWindowSceneDelegate sessionIdentifierToStateRestorationActivity](self, "sessionIdentifierToStateRestorationActivity"), v10 = objc_claimAutoreleasedReturnValue(), [sceneCopy session], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "persistentIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, !v13))
  {
    v18 = [[NSUserActivity alloc] initWithActivityType:@"ICCanvasStateActivityType"];
    icWindow = [(ICWindowSceneDelegate *)self icWindow];
    viewControllerManager = [icWindow viewControllerManager];
    windowStateArchive = [viewControllerManager windowStateArchive];

    v29 = @"ICCanvasStateArchiveKey";
    dictionaryRepresentation = [windowStateArchive dictionaryRepresentation];
    v30 = dictionaryRepresentation;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v18 setUserInfo:v22];

    if (!windowStateArchive)
    {
      [ICAssert handleFailedAssertWithCondition:"((archive) != nil)" functionName:"[ICWindowSceneDelegate stateRestorationActivityForScene:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "archive"];
    }

    if (ICInternalSettingsIsSelectionStateTrackingEnabled() && ([windowStateArchive selectionState], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      currentNoteObjectIDURL = [windowStateArchive currentNoteObjectIDURL];

      if (!currentNoteObjectIDURL)
      {
        goto LABEL_16;
      }
    }

    session2 = +[ICAppDelegate sharedInstance];
    [session2 saveLastBackgroundedArchiveState:windowStateArchive];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DCC58();
    }

    windowStateArchive = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
    session2 = [sceneCopy session];
    persistentIdentifier = [session2 persistentIdentifier];
    v18 = [windowStateArchive objectForKeyedSubscript:persistentIdentifier];
  }

LABEL_16:
  sessionIdentifierToStateRestorationActivity = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  session3 = [sceneCopy session];
  persistentIdentifier2 = [session3 persistentIdentifier];
  [sessionIdentifierToStateRestorationActivity ic_setNonNilObject:v18 forNonNilKey:persistentIdentifier2];

  return v18;
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = typeCopy;
    v8 = 2080;
    v9 = "[ICWindowSceneDelegate scene:willContinueUserActivityWithType:]";
    v10 = 1024;
    v11 = 346;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "type == %@%s:%d", &v6, 0x1Cu);
  }
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v17 = typeCopy;
    v18 = 2112;
    v20 = 2080;
    v19 = errorCopy;
    v21 = "[ICWindowSceneDelegate scene:didFailToContinueUserActivityWithType:error:]";
    v22 = 1024;
    v23 = 351;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@, %@%s:%d", buf, 0x26u);
  }

  v9 = +[ICAppDelegate sharedInstance];
  analyticsController = [v9 analyticsController];
  typeCopy = [NSString stringWithFormat:@"%@/%@", ICNAInbountURLComponentUserActivity, typeCopy];
  v12 = [NSURL URLWithString:typeCopy];
  [analyticsController startSessionWithReferralURL:v12 referralApplication:0];

  v13 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1004DCC8C(errorCopy, v13);
  }

  v14 = +[ICHandoffController sharedController];
  [v14 setInputStream:0];

  v15 = +[ICHandoffController sharedController];
  [v15 setOutputStream:0];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  sceneCopy = scene;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    v23 = 138412802;
    v24 = activityType;
    v25 = 2080;
    v26 = "[ICWindowSceneDelegate scene:continueUserActivity:]";
    v27 = 1024;
    v28 = 362;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "type == %@%s:%d", &v23, 0x1Cu);
  }

  activityType2 = [activityCopy activityType];
  if ([activityType2 isEqual:@"TUUserActivityCreateCallRecording"])
  {
  }

  else
  {
    activityType3 = [activityCopy activityType];
    v12 = [activityType3 isEqual:@"TUUserActivityFinishedCallRecording"];

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  [(ICWindowSceneDelegate *)self handleRecordingUserActivity:activityCopy];
LABEL_7:
  sessionIdentifierToStateRestorationActivity = [(ICWindowSceneDelegate *)self sessionIdentifierToStateRestorationActivity];
  session = [sceneCopy session];

  persistentIdentifier = [session persistentIdentifier];
  v16 = [sessionIdentifierToStateRestorationActivity objectForKeyedSubscript:persistentIdentifier];
  userInfo = [v16 userInfo];
  v18 = [userInfo objectForKeyedSubscript:@"ICCanvasStateArchiveKey"];

  if (v18)
  {
    v19 = [ICWindowStateArchive windowStateArchiveFromDictionary:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [NSSet setWithObject:activityCopy];
  v21 = [(ICWindowSceneDelegate *)self archiveForUserActivities:v20 isSourceApplicationExternal:1 lastSavedArchive:v19];

  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  [viewControllerManager applyStateRestoreArchive:v21 completion:0];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  sceneCopy = scene;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICWindowSceneDelegate scene:openURLContexts:]";
    v11 = 1024;
    v12 = 386;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICWindowSceneDelegate *)self handleOpeningURLContexts:contextsCopy withScene:sceneCopy];
}

- (void)handleOpeningURLContexts:(id)contexts withScene:(id)scene
{
  contextsCopy = contexts;
  sceneCopy = scene;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = contextsCopy;
  v8 = [contextsCopy countByEnumeratingWithState:&v25 objects:v31 count:16];
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
        analyticsController = [v14 analyticsController];
        [analyticsController startSessionWithReferralURL:v13 referralApplication:0];

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
          viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
          [viewControllerManager openURL:v13];
LABEL_14:

          goto LABEL_15;
        }

        viewControllerManager = [v19 screen];
        if ([viewControllerManager ic_isSecure])
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
  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  mainSplitViewController = [viewControllerManager mainSplitViewController];
  presentedViewController = [mainSplitViewController presentedViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    viewControllerManager2 = [(ICWindowSceneDelegate *)self viewControllerManager];
    mainSplitViewController2 = [viewControllerManager2 mainSplitViewController];
    presentedViewController2 = [mainSplitViewController2 presentedViewController];

    [presentedViewController2 prepareForDismissal];
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
  viewControllerManager4 = ;

  if (viewControllerManager4)
  {
    viewControllerManager3 = [(ICWindowSceneDelegate *)self viewControllerManager];
    [viewControllerManager3 applyStateRestoreArchive:viewControllerManager4 completion:0];
  }

  else
  {
LABEL_10:
    viewControllerManager4 = [(ICWindowSceneDelegate *)self viewControllerManager];
    v15 = [viewControllerManager4 showNewNoteWithApproach:12 sender:self animated:1];
  }
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
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
  analyticsController = [v8 analyticsController];
  v10 = ICNAInbountURLComponentShortcutItem;
  type = [itemCopy type];
  v12 = [NSString stringWithFormat:@"%@/%@", v10, type];
  v13 = [NSURL URLWithString:v12];
  [analyticsController startSessionWithReferralURL:v13 referralApplication:0];

  viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
  [viewControllerManager performActionForShortcutItem:itemCopy];
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
  isRunningPPT = [v4 isRunningPPT];

  if (!isRunningPPT)
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
  testNoteIdentifier = [v14 testNoteIdentifier];

  if (v13)
  {
    viewControllerManager = [(ICWindowSceneDelegate *)self viewControllerManager];
    [viewControllerManager showAccountListAnimated:0];
  }

  else
  {
    if (testNoteIdentifier)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1 && [testNoteIdentifier length])
    {
      v18 = +[ICNoteContext sharedContext];
      managedObjectContext = [v18 managedObjectContext];
      viewControllerManager = [ICNote noteWithIdentifier:testNoteIdentifier includeDeleted:0 context:managedObjectContext];

      viewControllerManager2 = [(ICWindowSceneDelegate *)self viewControllerManager];
      objectID = [viewControllerManager objectID];
      [viewControllerManager2 selectNoteWithObjectID:objectID scrollState:0 startEditing:0 animated:0 ensurePresented:1];
    }

    else
    {
      v22 = +[ICNoteContext sharedContext];
      managedObjectContext2 = [v22 managedObjectContext];
      viewControllerManager = [ICAccount localAccountInContext:managedObjectContext2];

      viewControllerManager2 = [(ICWindowSceneDelegate *)self viewControllerManager];
      objectID = [viewControllerManager objectID];
      [viewControllerManager2 selectContainerWithIdentifier:objectID usingRootViewController:1 deferUntilDataLoaded:0 animated:0];
    }
  }
}

- (void)handleRecordingUserActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[ICNoteContext sharedContext];
  managedObjectContext = [v4 managedObjectContext];

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
  v8 = activityCopy;
  v11 = v8;
  v9 = managedObjectContext;
  v12 = v9;
  v13 = &v15;
  [v9 performBlockAndWait:v10];

  _Block_object_dispose(&v15, 8);
}

- (void)handleAcceptingCloudKitShareWithMetadata:(id)metadata withWindowScene:(id)scene
{
  metadataCopy = metadata;
  sceneCopy = scene;
  v8 = +[ICAppDelegate sharedInstance];
  analyticsController = [v8 analyticsController];
  v10 = [NSURL URLWithString:kICNACloudKitShareReferralURL];
  [analyticsController startSessionWithReferralURL:v10 referralApplication:0];

  v11 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User accepted CloudKit share", buf, 2u);
  }

  v12 = +[ICNoteContext sharedContext];
  managedObjectContext = [v12 managedObjectContext];

  icWindow = [(ICWindowSceneDelegate *)self icWindow];
  viewControllerManager = [icWindow viewControllerManager];

  if ([ICAccount hasActiveCloudKitAccountInContext:managedObjectContext])
  {
    share = [metadataCopy share];
    v17 = [share URL];

    if (v17)
    {
      v18 = +[ICCollaborationUIController sharedInstance];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1000B1F28;
      v44[3] = &unk_100648210;
      v45 = viewControllerManager;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000B2080;
      v42[3] = &unk_100648238;
      v43 = v45;
      [v18 processShareAcceptanceWithMetadata:metadataCopy windowScene:sceneCopy managedObjectContext:managedObjectContext alertBlock:v44 showObjectBlock:v42];

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
    v36 = sceneCopy;
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
    v32 = viewControllerManager;
    v38 = v32;
    v39 = managedObjectContext;
    v40 = v36;
    v41 = metadataCopy;
    v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v37];

    [v19 addAction:v33];
    trailingSidebarViewController = [v32 trailingSidebarViewController];
    [trailingSidebarViewController presentViewController:v19 animated:1 completion:0];

    sceneCopy = v36;
    v17 = v35;
  }
}

- (id)archiveForUserActivities:(id)activities isSourceApplicationExternal:(BOOL)external lastSavedArchive:(id)archive
{
  activitiesCopy = activities;
  archiveCopy = archive;
  v107 = sub_1000DC72C();
  v108 = +[ICNoteContext sharedContext];
  managedObjectContext = [v108 managedObjectContext];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v8 = activitiesCopy;
  v119 = [v8 countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (!v119)
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v97 = 0;
    v13 = 0;
    if (!archiveCopy)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v104 = archiveCopy;
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
      userInfo = [v15 userInfo];
      v17 = [userInfo objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
      v18 = ICDynamicCast();

      if (v18)
      {
        [NSURL URLWithString:v18];
        v12 = noteContext2 = v12;
LABEL_46:

        v10 = v120;
        goto LABEL_47;
      }

      activityType = [v15 activityType];
      v21 = [activityType isEqualToString:@"com.apple.notes.open.object"];

      v117 = v13;
      if (v21)
      {
        targetContentIdentifier = [v15 targetContentIdentifier];
        noteContext2 = [NSURL URLWithString:targetContentIdentifier];

        v114 = v11;
        if (noteContext2)
        {
          if ([ICAppURLUtilities isShowFolderListURL:noteContext2])
          {
            goto LABEL_11;
          }

          if ([ICAppURLUtilities isShowDefaultFolderURL:noteContext2])
          {
            v35 = +[NotesApp sharedNotesApp];
            noteContext = [v35 noteContext];
            v37 = [ICDefaultAccountUtilities defaultFolderWithHTMLNoteContext:noteContext];
            objectID = [v37 objectID];
            uRIRepresentation = [objectID URIRepresentation];

            v23 = 0;
            v12 = uRIRepresentation;
            v8 = v110;
            goto LABEL_44;
          }

          if (v108)
          {
            v55 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:noteContext2 noteContext:?];

            if (!v55)
            {
              v109 = 0;
              goto LABEL_36;
            }

LABEL_43:
            uRIRepresentation2 = [v55 URIRepresentation];

            v23 = 0;
            v12 = uRIRepresentation2;
            v109 = v55;
          }

          else
          {
LABEL_36:
            if (managedObjectContext && [ICAppURLUtilities isShowVirtualSmartFolderURL:noteContext2])
            {
              v56 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:noteContext2 context:managedObjectContext];

              v23 = 0;
              v120 = v56;
            }

            else
            {
              if (v107)
              {
                v55 = [ICAppURLUtilities objectIDForHTMLFolderMentionedInURL:noteContext2 context:?];

                if (v55)
                {
                  goto LABEL_43;
                }

                v109 = 0;
              }

              if (managedObjectContext && [ICAppURLUtilities isShowNoteURL:noteContext2])
              {
                v85 = [ICAppURLUtilities predicateForNotesMentionedInURL:noteContext2];
                v23 = v85 != 0;
                if (v85)
                {
                  v86 = [ICNote notesMatchingPredicate:v85 context:managedObjectContext];
                  firstObject = [v86 firstObject];
                  objectID2 = [firstObject objectID];
                  uRIRepresentation3 = [objectID2 URIRepresentation];

                  v8 = v110;
                  v12 = uRIRepresentation3;
                }
              }

              else
              {
                v103 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:noteContext2, v103];

                if (v103)
                {
                  v23 = 1;
                  v12 = v103;
                }

                else if ([ICAppURLUtilities isShowHTMLNoteURL:noteContext2])
                {
                  v12 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:noteContext2];
                  v23 = 1;
                }

                else
                {
                  v12 = os_log_create("com.apple.notes", "UI");
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v103;
                    v126 = noteContext2;
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
        userInfo2 = [v15 userInfo];
        v61 = [userInfo2 objectForKeyedSubscript:@"ICUseAuxiliaryWindow"];
        v62 = [v61 isEqual:&__kCFBooleanTrue];

        v115 = v23 & v62;
        v11 = v114;
LABEL_45:
        v13 = v117;
        goto LABEL_46;
      }

      v24 = v11;
      activityType2 = [v15 activityType];
      v26 = [activityType2 isEqual:v113];

      if (v26)
      {
        userInfo3 = [v15 userInfo];
        noteContext2 = [userInfo3 objectForKeyedSubscript:v111];

        v28 = [ICNote noteWithIdentifier:noteContext2 context:managedObjectContext];
        if ([v28 markedForDeletion])
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      activityType3 = [v15 activityType];
      v30 = [activityType3 isEqual:@"com.apple.Notes"];

      if (v30)
      {
        v31 = +[NotesApp sharedNotesApp];
        noteContext2 = [v31 noteContext];

        v28 = sub_10008C178(v15, noteContext2, 0);
        if ([v28 isMarkedForDeletion])
        {
LABEL_19:
          v11 = v24;

          goto LABEL_45;
        }

LABEL_17:
        if (([v28 isDeleted] & 1) == 0)
        {
          objectID3 = [v28 objectID];
          uRIRepresentation4 = [objectID3 URIRepresentation];

          v12 = uRIRepresentation4;
        }

        goto LABEL_19;
      }

      activityType4 = [v15 activityType];
      v41 = +[ICNotesFolderIntent className];
      v42 = [activityType4 isEqual:v41];

      if (v42)
      {
        noteContext2 = [v15 interaction];
        intent = [noteContext2 intent];
        if (intent)
        {
          v44 = intent;
          intent2 = [noteContext2 intent];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v8 = v110;
          if (isKindOfClass)
          {
            intent3 = [noteContext2 intent];
            folder = [intent3 folder];
            v11 = v24;
            if (folder && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v105 = intent3;
              identifier = [folder identifier];
              v50 = [NSURL URLWithString:identifier];

              v106 = v50;
              if (v108)
              {
                v51 = &ICQUIInAppMessageReasonUploadFailure_ptr;
                v52 = [ICAppURLUtilities objectIDForModernFolderMentionedInURL:v50 noteContext:?];

                if (v52)
                {
                  uRIRepresentation5 = [v52 URIRepresentation];
                  v54 = v12;
                  v12 = uRIRepresentation5;
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
                  uRIRepresentation6 = [v93 URIRepresentation];
                  v54 = v12;
                  v12 = uRIRepresentation6;
                  v109 = v93;
LABEL_88:
                  intent3 = v105;
LABEL_92:

                  goto LABEL_93;
                }

                v109 = 0;
              }

              intent3 = v105;
              if ([v51[327] isShowVirtualSmartFolderURL:{v106, v103}])
              {
                v95 = [ICAppURLUtilities virtualSmartFolderMentionedInURL:v106 context:managedObjectContext];
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

      activityType5 = [v15 activityType];
      v58 = [activityType5 isEqual:CSQueryContinuationActionType];

      if (v58)
      {
        noteContext2 = [v15 userInfo];
        v11 = [noteContext2 objectForKey:CSSearchQueryString];

        v8 = v110;
        goto LABEL_45;
      }

      activityType6 = [v15 activityType];
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = [activityType6 isEqual:v72];

      if (v73)
      {
        userInfo4 = [v15 userInfo];
        v75 = NSStringFromSelector("content");
        v76 = [userInfo4 objectForKey:v75];

        v8 = v110;
        v10 = v120;
        if (![v76 length])
        {
          [v15 userInfo];
          noteContext2 = v90 = v76;
          v91 = NSStringFromSelector("title");
          v92 = [noteContext2 objectForKeyedSubscript:v91];

          v11 = v92;
          goto LABEL_45;
        }

        v11 = v76;
      }

      else
      {
        activityType7 = [v15 activityType];
        v78 = [activityType7 isEqual:@"TUUserActivityCreateCallRecording"];

        if (v78)
        {
          objc_opt_class();
          userInfo5 = [v15 userInfo];
          v80 = [userInfo5 objectForKeyedSubscript:@"uniqueProxyIdentifier"];
          noteContext2 = ICDynamicCast();

          uUIDString = [noteContext2 UUIDString];
          v82 = [ICNote noteWithIdentifier:uUIDString context:managedObjectContext];
          v8 = v110;
          if (([v82 markedForDeletion] & 1) == 0 && (objc_msgSend(v82, "isDeleted") & 1) == 0)
          {
            objectID4 = [v82 objectID];
            uRIRepresentation7 = [objectID4 URIRepresentation];

            v12 = uRIRepresentation7;
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

        accountObjectID = [v10 accountObjectID];
        uRIRepresentation8 = [accountObjectID URIRepresentation];
        [v65 setCurrentVirtualSmartFolderAccountObjectIDURL:uRIRepresentation8];

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

  archiveCopy = v104;
  if (!v104)
  {
    v97 = v109;
    goto LABEL_105;
  }

  if (!v13)
  {
    v97 = v109;
LABEL_104:
    v13 = archiveCopy;
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

- (void)reportReferralDataFromSceneConnectionOptions:(id)options
{
  optionsCopy = options;
  sourceApplication = [optionsCopy sourceApplication];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    sourceApplication2 = [optionsCopy sourceApplication];
  }

  else
  {
    sourceApplication2 = 0;
  }

  uRLContexts = [optionsCopy URLContexts];
  v7 = [uRLContexts count];

  if (v7)
  {
    uRLContexts2 = [optionsCopy URLContexts];
    anyObject = [uRLContexts2 anyObject];
    cloudKitShareMetadata = [anyObject URL];

    goto LABEL_14;
  }

  handoffUserActivityType = [optionsCopy handoffUserActivityType];

  if (handoffUserActivityType)
  {
    v12 = ICNAInbountURLComponentUserActivity;
    v13 = ICNAInbountURLComponentHandoff;
    handoffUserActivityType2 = [optionsCopy handoffUserActivityType];
    v15 = [NSString stringWithFormat:@"%@/%@/%@", v12, v13, handoffUserActivityType2];
    cloudKitShareMetadata = [NSURL URLWithString:v15];

LABEL_13:
    goto LABEL_14;
  }

  userActivities = [optionsCopy userActivities];
  v17 = [userActivities count];

  if (v17)
  {
    v18 = ICNAInbountURLComponentUserActivity;
    handoffUserActivityType2 = [optionsCopy userActivities];
    anyObject2 = [handoffUserActivityType2 anyObject];
    activityType = [anyObject2 activityType];
    v21 = [NSString stringWithFormat:@"%@/%@", v18, activityType];
    cloudKitShareMetadata = [NSURL URLWithString:v21];

LABEL_12:
    goto LABEL_13;
  }

  shortcutItem = [optionsCopy shortcutItem];

  if (shortcutItem)
  {
    v23 = ICNAInbountURLComponentShortcutItem;
    handoffUserActivityType2 = [optionsCopy shortcutItem];
    anyObject2 = [handoffUserActivityType2 type];
    v24 = [NSString stringWithFormat:@"%@/%@", v23, anyObject2];
    cloudKitShareMetadata = [NSURL URLWithString:v24];

    goto LABEL_12;
  }

  cloudKitShareMetadata = [optionsCopy cloudKitShareMetadata];

  if (cloudKitShareMetadata)
  {
    cloudKitShareMetadata = [NSURL URLWithString:kICNACloudKitShareReferralURL];
  }

LABEL_14:
  v25 = +[ICAppDelegate sharedInstance];
  analyticsController = [v25 analyticsController];
  [analyticsController addReferralDataWithReferringInboundURL:cloudKitShareMetadata referringApplication:sourceApplication2];
}

- (void)setUpAppStoreRatingObserverIfNecessary
{
  icWindow = [(ICWindowSceneDelegate *)self icWindow];
  windowScene = [icWindow windowScene];

  if (windowScene)
  {
    v4 = +[ICAccountUtilities sharedInstance];
    primaryICloudACAccount = [v4 primaryICloudACAccount];

    identifier = [primaryICloudACAccount identifier];
    if ([identifier length])
    {
      if (!self->_appStoreRatingObserver)
      {
        v7 = [ICAppStoreRatingObserver alloc];
        v8 = +[ICNoteContext sharedContext];
        workerManagedObjectContext = [v8 workerManagedObjectContext];
        v10 = +[NSUserDefaults standardUserDefaults];
        v11 = [(ICAppStoreRatingObserver *)v7 initWithAccountIdentifier:identifier managedObjectContext:workerManagedObjectContext userDefaults:v10 windowScene:windowScene];
        appStoreRatingObserver = self->_appStoreRatingObserver;
        self->_appStoreRatingObserver = v11;
      }

      appStoreRatingObserver = [(ICWindowSceneDelegate *)self appStoreRatingObserver];
      [appStoreRatingObserver startObserving];
    }
  }
}

@end