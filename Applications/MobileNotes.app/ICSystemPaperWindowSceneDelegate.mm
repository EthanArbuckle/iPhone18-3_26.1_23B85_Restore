@interface ICSystemPaperWindowSceneDelegate
- (ICNAWindowSceneEventReporter)eventReporter;
- (id)contentItemForUserActivity:(id)activity;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)eventReporterLostSession:(id)session;
- (void)ic_sceneDidDisconnect:(id)disconnect;
- (void)ic_setupWithScene:(id)scene options:(id)options;
- (void)notesSceneDidReceiveCreateNewNoteRequest:(id)request;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setUpResumeEditingSystemPaperArchive:(id)archive prefersNewNote:(BOOL)note;
- (void)setupSystemPaperWithWindowScene:(id)scene options:(id)options;
@end

@implementation ICSystemPaperWindowSceneDelegate

- (void)ic_setupWithScene:(id)scene options:(id)options
{
  optionsCopy = options;
  sceneCopy = scene;
  v8 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICSystemPaperWindowSceneDelegate ic_setupWithScene:options:]";
    v11 = 1024;
    v12 = 69;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICSystemPaperWindowSceneDelegate *)self setupSystemPaperWithWindowScene:sceneCopy options:optionsCopy];
}

- (void)ic_sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ICSystemPaperWindowSceneDelegate ic_sceneDidDisconnect:]";
    v10 = 1024;
    v11 = 75;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", &v8, 0x12u);
  }

  [(ICCommonWindowSceneDelegate *)self sharedDisconnect];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [disconnectCopy _unregisterSettingsDiffActionArrayForKey:v7];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  selfCopy = self;
  optionsCopy = options;
  sessionCopy = session;
  sceneCopy = scene;
  v11 = [NSArray arrayWithObjects:&selfCopy count:1];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [sceneCopy _registerSettingsDiffActionArray:v11 forKey:v13];

  v14.receiver = self;
  v14.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v14 scene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
}

- (id)contentItemForUserActivity:(id)activity
{
  userInfo = [activity userInfo];
  v4 = [userInfo objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

  if (v4)
  {
    v5 = [[SYContentItem alloc] initWithData:v4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[ICSystemPaperWindowSceneDelegate sceneWillResignActive:]";
    v9 = 1024;
    v10 = 104;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v6 sceneWillResignActive:activeCopy];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  v8 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v54 = "[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]";
    v55 = 1024;
    v56 = 110;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if ((ICInternalSettingsIsSystemPaperEnabled() & 1) == 0)
  {
    ic_viewControllerManager = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(ic_viewControllerManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, ic_viewControllerManager, OS_LOG_TYPE_DEFAULT, "Not setting up System Paper UI since SystemPaper isn't enabled.", buf, 2u);
    }

    goto LABEL_44;
  }

  if ((+[ICDeviceSupport deviceSupportsSystemPaper]& 1) == 0)
  {
    v51 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1B04();
    }

    exit(1);
  }

  setupUserActivity = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  if (!setupUserActivity)
  {
LABEL_14:
    icWindow = [(ICCommonWindowSceneDelegate *)self icWindow];
    ic_viewControllerManager = [icWindow ic_viewControllerManager];

    if (!ic_viewControllerManager)
    {
      [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    }

    activityType = [activityCopy activityType];
    v23 = [activityType isEqual:SYNotesUserActivityTypeCreateLink];

    if (v23)
    {
      userInfo = [activityCopy userInfo];
      v25 = [userInfo objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
      bOOLValue = [v25 BOOLValue];

      systemPaperViewController = [(ICSystemPaperWindowSceneDelegate *)self contentItemForUserActivity:activityCopy];
      if (bOOLValue)
      {
        v28 = [ic_viewControllerManager showNewNoteWithApproach:16 sender:self animated:1];
      }

      if (!systemPaperViewController)
      {
        goto LABEL_43;
      }

      noteEditorViewController = [ic_viewControllerManager noteEditorViewController];

      if (!noteEditorViewController)
      {
        [ICAssert handleFailedAssertWithCondition:"((viewControllerManager.noteEditorViewController) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager.noteEditorViewController"];
      }

      noteEditorViewController2 = [ic_viewControllerManager noteEditorViewController];
      [noteEditorViewController2 addSystemPaperLink:systemPaperViewController updateFirstResponder:0];
    }

    else
    {
      activityType2 = [activityCopy activityType];
      v32 = [activityType2 isEqual:SYNotesUserActivityTypeInsertImage];

      if (v32)
      {
        userInfo2 = [activityCopy userInfo];
        v34 = [userInfo2 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
        bOOLValue2 = [v34 BOOLValue];

        userInfo3 = [activityCopy userInfo];
        systemPaperViewController = [userInfo3 objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

        if (bOOLValue2)
        {
          v37 = [ic_viewControllerManager showNewNoteWithApproach:20 sender:self animated:1];
        }

        if ([systemPaperViewController count])
        {
          noteEditorViewController2 = [ic_viewControllerManager noteEditorViewController];
          [noteEditorViewController2 addSystemPaperImageData:systemPaperViewController updateFirstResponder:0];
        }

        else
        {
          noteEditorViewController2 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(noteEditorViewController2, OS_LOG_TYPE_ERROR))
          {
            sub_1004E1BD0();
          }
        }
      }

      else
      {
        activityType3 = [activityCopy activityType];
        v39 = [activityType3 isEqual:SYNotesUserActivityTypeEditNote];

        if (v39)
        {
          systemPaperViewController = [ic_viewControllerManager systemPaperViewController];
          if (!systemPaperViewController)
          {
            [ICAssert handleFailedAssertWithCondition:"((spvc) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "spvc"];
          }

          userInfo4 = [activityCopy userInfo];
          noteEditorViewController2 = [userInfo4 objectForKeyedSubscript:SYNotesUserActivityInfoKeyNoteID];

          currentNote = [systemPaperViewController currentNote];
          identifier = [currentNote identifier];
          v43 = [identifier isEqual:noteEditorViewController2];

          if ((v43 & 1) == 0)
          {
            v44 = +[ICNoteContext sharedContext];
            managedObjectContext = [v44 managedObjectContext];

            v46 = [ICNote noteWithIdentifier:noteEditorViewController2 context:managedObjectContext];
            if (!v46)
            {
              [ICAssert handleFailedAssertWithCondition:"((resolvedNote) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "resolvedNote"];
            }

            systemPaperViewController2 = [ic_viewControllerManager systemPaperViewController];
            [systemPaperViewController2 setCurrentNote:v46];
          }

          noteEditorViewController3 = [ic_viewControllerManager noteEditorViewController];
          isFirstResponder = [noteEditorViewController3 isFirstResponder];

          if (isFirstResponder)
          {
            noteEditorViewController4 = [ic_viewControllerManager noteEditorViewController];
            [noteEditorViewController4 startEditing];
          }
        }

        else
        {
          noteEditorViewController2 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(noteEditorViewController2, OS_LOG_TYPE_ERROR))
          {
            sub_1004E1B38(activityCopy, noteEditorViewController2);
          }

          systemPaperViewController = noteEditorViewController2;
        }
      }
    }

LABEL_43:
LABEL_44:

    goto LABEL_45;
  }

  v10 = setupUserActivity;
  activityType4 = [activityCopy activityType];
  setupUserActivity2 = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  activityType5 = [setupUserActivity2 activityType];
  if (![activityType4 isEqual:activityType5])
  {

    goto LABEL_14;
  }

  [activityCopy userInfo];
  v14 = activityCopy;
  v16 = v15 = sceneCopy;
  setupUserActivity3 = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  userInfo5 = [setupUserActivity3 userInfo];
  v52 = [v16 isEqual:userInfo5];

  sceneCopy = v15;
  activityCopy = v14;

  if (!v52)
  {
    goto LABEL_14;
  }

  v19 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not continuing user activity because it has been handled during setup.", buf, 2u);
  }

  [(ICSystemPaperWindowSceneDelegate *)self setSetupUserActivity:0];
LABEL_45:
}

- (void)setUpResumeEditingSystemPaperArchive:(id)archive prefersNewNote:(BOOL)note
{
  archiveCopy = archive;
  v6 = +[ICPaperCommonUtilities shouldResumeLastQuickNote];
  if (note || !v6)
  {
    [archiveCopy setNoteCreationApproach:16];
  }

  else
  {
    v7 = +[ICNoteContext sharedContext];
    managedObjectContext = [v7 managedObjectContext];

    v9 = [ICAccount mostRecentSystemPaperNoteInManagedObjectContext:managedObjectContext];
    v10 = v9;
    if (v9)
    {
      objectID = [v9 objectID];
      uRIRepresentation = [objectID URIRepresentation];
      [archiveCopy setCurrentObjectIDURL:uRIRepresentation];
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We didn't want a new system paper note, but none was available to use, so creating a new one instead.", v14, 2u);
      }

      [archiveCopy setNoteCreationApproach:19];
    }
  }
}

- (void)setupSystemPaperWithWindowScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v8 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v65 = "[ICSystemPaperWindowSceneDelegate setupSystemPaperWithWindowScene:options:]";
    v66 = 1024;
    v67 = 215;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if (ICInternalSettingsIsSystemPaperEnabled())
  {
    if ((+[ICDeviceSupport deviceSupportsSystemPaper]& 1) == 0)
    {
      v60 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_1004E1B04();
      }

      exit(1);
    }

    v9 = +[ICWindowStateArchive windowStateArchiveWithEmptyState];
    [v9 setSystemPaper:1];
    [v9 setActiveEditorInEditMode:1];
    [v9 setIsAuxiliaryWindow:1];
    v10 = +[ICAppDelegate sharedInstance];
    lastBackgroundedArchiveState = [v10 lastBackgroundedArchiveState];

    if (lastBackgroundedArchiveState && [lastBackgroundedArchiveState currentNoteContainerViewMode] != -1)
    {
      -[NSObject setPreferredNoteContainerViewMode:](v9, "setPreferredNoteContainerViewMode:", [lastBackgroundedArchiveState currentNoteContainerViewMode]);
    }

    v12 = +[ICAppDelegate sharedInstance];
    mainWindowIdentifier = [v12 mainWindowIdentifier];
    v14 = mainWindowIdentifier;
    v15 = @"DefaultIdentifier";
    if (mainWindowIdentifier)
    {
      v15 = mainWindowIdentifier;
    }

    v16 = v15;

    v17 = [@"QuickNote-" stringByAppendingString:v16];

    [v9 setToolPickerIdentifier:v17];
    v18 = +[ICNoteContext sharedContext];
    managedObjectContext = [v18 managedObjectContext];

    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];

    activityType = [anyObject activityType];
    v23 = [activityType isEqual:ICNotesEditNoteUserActivityType];

    v63 = lastBackgroundedArchiveState;
    if (v23)
    {
      v24 = +[ICNACoreAnalyticsReporter sharedReporter];
      [v24 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSDeeplinkThumbnail];

      userInfo = [anyObject userInfo];
      v26 = [userInfo objectForKeyedSubscript:ICUserActivityInfoDictionaryNoteIDKey];

      v27 = [ICNote noteWithIdentifier:v26 context:managedObjectContext];
      objectID = [v27 objectID];
      uRIRepresentation = [objectID URIRepresentation];
      [v9 setCurrentObjectIDURL:uRIRepresentation];
    }

    else
    {
      activityType2 = [anyObject activityType];
      v31 = [activityType2 isEqual:SYNotesUserActivityTypeCreateLink];

      if (v31)
      {
        v32 = +[ICNACoreAnalyticsReporter sharedReporter];
        [v32 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSSafariMenuAffordance];

        userInfo2 = [anyObject userInfo];
        v34 = [userInfo2 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
        bOOLValue = [v34 BOOLValue];

        [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:bOOLValue];
        v36 = [(ICSystemPaperWindowSceneDelegate *)self contentItemForUserActivity:anyObject];
        [v9 setInitialSystemPaperLink:v36];

        goto LABEL_20;
      }

      activityType3 = [anyObject activityType];
      v38 = [activityType3 isEqual:SYNotesUserActivityTypeInsertImage];

      if (!v38)
      {
        v43 = +[ICNACoreAnalyticsReporter sharedReporter];
        [v43 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSSystemPaperShortcut];

        [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:0];
        goto LABEL_20;
      }

      userInfo3 = [anyObject userInfo];
      v40 = [userInfo3 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
      bOOLValue2 = [v40 BOOLValue];

      userInfo4 = [anyObject userInfo];
      v26 = [userInfo4 objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

      [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:bOOLValue2];
      [v9 setInitialSystemPaperImageData:v26];
    }

LABEL_20:
    v44 = +[UIKeyboard isInHardwareKeyboardMode];
    _launchOptionsDictionary = [optionsCopy _launchOptionsDictionary];
    v46 = [_launchOptionsDictionary objectForKeyedSubscript:SBSUISystemNotesWindowSceneConnectionOptionsSceneConnectionSourceKey];

    v62 = anyObject;
    if ([v46 count])
    {
      if ([v46 count] >= 2)
      {
        v47 = os_log_create("com.apple.notes", "SystemPaper");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1004E1C04();
        }
      }

      v61 = managedObjectContext;
      selfCopy = self;
      v49 = optionsCopy;
      v50 = sceneCopy;
      anyObject2 = [v46 anyObject];
      unsignedIntValue = [anyObject2 unsignedIntValue];
      v53 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = SBSSystemNotesConnectionSourceDescription();
        *buf = 138412290;
        v65 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Received connection source: %@", buf, 0xCu);
      }

      v44 = ((unsignedIntValue - 3 < 0xFFFFFFFE) & v44);
      sceneCopy = v50;
      optionsCopy = v49;
      self = selfCopy;
      managedObjectContext = v61;
    }

    [v9 setShouldStartEditing:v44];
    [sceneCopy setDelegate:self];
    v55 = [[ICWindow alloc] initWithWindowScene:sceneCopy behavior:2];
    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizedStringForKey:@"System Paper Window" value:&stru_100661CF0 table:0];
    [v55 setAccessibilityIdentifier:v57];

    v58 = +[UIColor clearColor];
    [v55 setBackgroundColor:v58];

    [v55 setOpaque:0];
    v59 = objc_alloc_init(ICViewControllerManager);
    [(ICViewControllerManager *)v59 setupWithWindow:v55 stateRestoreArchive:v9 completion:0];
    [v55 setViewControllerManager:v59];
    [v55 makeKeyAndVisible];
    [(ICSystemPaperWindowSceneDelegate *)self setSetupUserActivity:v62];
    [(ICCommonWindowSceneDelegate *)self setIcWindow:v55];

    goto LABEL_29;
  }

  v9 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not setting up System Paper UI since SystemPaper isn't enabled.", buf, 2u);
  }

LABEL_29:
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[ICSystemPaperWindowSceneDelegate sceneDidBecomeActive:]";
    v9 = 1024;
    v10 = 306;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6.receiver = self;
  v6.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v6 sceneDidBecomeActive:activeCopy];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ICSystemPaperWindowSceneDelegate sceneWillEnterForeground:]";
    v13 = 1024;
    v14 = 312;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v10.receiver = self;
  v10.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v10 sceneWillEnterForeground:foregroundCopy];
  objc_opt_class();
  v6 = ICDynamicCast();

  v7 = +[ICAppDelegate sharedInstance];
  analyticsController = [v7 analyticsController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014B058;
  v9[3] = &unk_100645E30;
  v9[4] = self;
  [analyticsController startWindowSceneSessionWithType:1 windowScene:v6 successHandler:v9];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[ICSystemPaperWindowSceneDelegate sceneDidEnterBackground:]";
    v16 = 1024;
    v17 = 325;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  viewControllerManager = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];
  [noteEditorViewController donateEditingIntentIfNecessary];

  viewControllerManager2 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  noteEditorViewController2 = [viewControllerManager2 noteEditorViewController];
  [noteEditorViewController2 setEditing:0 animated:0];

  eventReporter = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
  [eventReporter submitWindowSceneEvent];

  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = +[ICNAController sharedController];
  [v12 endWindowSceneSessionSynchronously:0 forSessionType:1 endReason:6 windowScene:v11];

  v13.receiver = self;
  v13.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v13 sceneDidEnterBackground:backgroundCopy];
}

- (void)notesSceneDidReceiveCreateNewNoteRequest:(id)request
{
  viewControllerManager = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  v6 = viewControllerManager;
  if (!viewControllerManager)
  {
    [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate notesSceneDidReceiveCreateNewNoteRequest:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    viewControllerManager = 0;
  }

  v5 = [viewControllerManager showNewNoteWithApproach:19 sender:self animated:1];
}

- (ICNAWindowSceneEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAWindowSceneEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    icWindow = [(ICCommonWindowSceneDelegate *)self icWindow];
    windowScene = [icWindow windowScene];
    v8 = [v3 initWithSubTrackerName:v5 windowScene:windowScene];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  object = [sessionCopy object];

  [v8 removeObserver:self name:v6 object:object];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  settingsCopy = settings;
  settings = [sScene settings];
  deactivationReasons = [settings deactivationReasons];

  [settingsCopy deactivationReasons];
  if ((deactivationReasons & 0x1000) != 0)
  {
    if (BSEqualBools())
    {
      return;
    }

    icWindow = [(ICCommonWindowSceneDelegate *)self icWindow];
    ic_viewControllerManager = [icWindow ic_viewControllerManager];
    noteEditorViewController = [ic_viewControllerManager noteEditorViewController];
    [noteEditorViewController setEditing:0 animated:0];

    eventReporter = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
    [eventReporter submitWindowSceneEvent];
  }

  else
  {
    if (BSEqualBools())
    {
      return;
    }

    eventReporter = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
    [eventReporter startWindowSceneEventDurationTracking];
  }
}

@end