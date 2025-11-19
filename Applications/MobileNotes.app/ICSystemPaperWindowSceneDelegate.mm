@interface ICSystemPaperWindowSceneDelegate
- (ICNAWindowSceneEventReporter)eventReporter;
- (id)contentItemForUserActivity:(id)a3;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)eventReporterLostSession:(id)a3;
- (void)ic_sceneDidDisconnect:(id)a3;
- (void)ic_setupWithScene:(id)a3 options:(id)a4;
- (void)notesSceneDidReceiveCreateNewNoteRequest:(id)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setUpResumeEditingSystemPaperArchive:(id)a3 prefersNewNote:(BOOL)a4;
- (void)setupSystemPaperWithWindowScene:(id)a3 options:(id)a4;
@end

@implementation ICSystemPaperWindowSceneDelegate

- (void)ic_setupWithScene:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ICSystemPaperWindowSceneDelegate ic_setupWithScene:options:]";
    v11 = 1024;
    v12 = 69;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", &v9, 0x12u);
  }

  [(ICSystemPaperWindowSceneDelegate *)self setupSystemPaperWithWindowScene:v7 options:v6];
}

- (void)ic_sceneDidDisconnect:(id)a3
{
  v4 = a3;
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
  [v4 _unregisterSettingsDiffActionArrayForKey:v7];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v15 = self;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSArray arrayWithObjects:&v15 count:1];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v10 _registerSettingsDiffActionArray:v11 forKey:v13];

  v14.receiver = self;
  v14.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v14 scene:v10 willConnectToSession:v9 options:v8];
}

- (id)contentItemForUserActivity:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

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

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
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
  [(ICCommonWindowSceneDelegate *)&v6 sceneWillResignActive:v4];
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v20 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not setting up System Paper UI since SystemPaper isn't enabled.", buf, 2u);
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

  v9 = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  if (!v9)
  {
LABEL_14:
    v21 = [(ICCommonWindowSceneDelegate *)self icWindow];
    v20 = [v21 ic_viewControllerManager];

    if (!v20)
    {
      [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    }

    v22 = [v7 activityType];
    v23 = [v22 isEqual:SYNotesUserActivityTypeCreateLink];

    if (v23)
    {
      v24 = [v7 userInfo];
      v25 = [v24 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
      v26 = [v25 BOOLValue];

      v27 = [(ICSystemPaperWindowSceneDelegate *)self contentItemForUserActivity:v7];
      if (v26)
      {
        v28 = [v20 showNewNoteWithApproach:16 sender:self animated:1];
      }

      if (!v27)
      {
        goto LABEL_43;
      }

      v29 = [v20 noteEditorViewController];

      if (!v29)
      {
        [ICAssert handleFailedAssertWithCondition:"((viewControllerManager.noteEditorViewController) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager.noteEditorViewController"];
      }

      v30 = [v20 noteEditorViewController];
      [v30 addSystemPaperLink:v27 updateFirstResponder:0];
    }

    else
    {
      v31 = [v7 activityType];
      v32 = [v31 isEqual:SYNotesUserActivityTypeInsertImage];

      if (v32)
      {
        v33 = [v7 userInfo];
        v34 = [v33 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
        v35 = [v34 BOOLValue];

        v36 = [v7 userInfo];
        v27 = [v36 objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

        if (v35)
        {
          v37 = [v20 showNewNoteWithApproach:20 sender:self animated:1];
        }

        if ([v27 count])
        {
          v30 = [v20 noteEditorViewController];
          [v30 addSystemPaperImageData:v27 updateFirstResponder:0];
        }

        else
        {
          v30 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1004E1BD0();
          }
        }
      }

      else
      {
        v38 = [v7 activityType];
        v39 = [v38 isEqual:SYNotesUserActivityTypeEditNote];

        if (v39)
        {
          v27 = [v20 systemPaperViewController];
          if (!v27)
          {
            [ICAssert handleFailedAssertWithCondition:"((spvc) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "spvc"];
          }

          v40 = [v7 userInfo];
          v30 = [v40 objectForKeyedSubscript:SYNotesUserActivityInfoKeyNoteID];

          v41 = [v27 currentNote];
          v42 = [v41 identifier];
          v43 = [v42 isEqual:v30];

          if ((v43 & 1) == 0)
          {
            v44 = +[ICNoteContext sharedContext];
            v45 = [v44 managedObjectContext];

            v46 = [ICNote noteWithIdentifier:v30 context:v45];
            if (!v46)
            {
              [ICAssert handleFailedAssertWithCondition:"((resolvedNote) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate scene:continueUserActivity:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "resolvedNote"];
            }

            v47 = [v20 systemPaperViewController];
            [v47 setCurrentNote:v46];
          }

          v48 = [v20 noteEditorViewController];
          v49 = [v48 isFirstResponder];

          if (v49)
          {
            v50 = [v20 noteEditorViewController];
            [v50 startEditing];
          }
        }

        else
        {
          v30 = os_log_create("com.apple.notes", "SystemPaper");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1004E1B38(v7, v30);
          }

          v27 = v30;
        }
      }
    }

LABEL_43:
LABEL_44:

    goto LABEL_45;
  }

  v10 = v9;
  v11 = [v7 activityType];
  v12 = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  v13 = [v12 activityType];
  if (![v11 isEqual:v13])
  {

    goto LABEL_14;
  }

  [v7 userInfo];
  v14 = v7;
  v16 = v15 = v6;
  v17 = [(ICSystemPaperWindowSceneDelegate *)self setupUserActivity];
  v18 = [v17 userInfo];
  v52 = [v16 isEqual:v18];

  v6 = v15;
  v7 = v14;

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

- (void)setUpResumeEditingSystemPaperArchive:(id)a3 prefersNewNote:(BOOL)a4
{
  v5 = a3;
  v6 = +[ICPaperCommonUtilities shouldResumeLastQuickNote];
  if (a4 || !v6)
  {
    [v5 setNoteCreationApproach:16];
  }

  else
  {
    v7 = +[ICNoteContext sharedContext];
    v8 = [v7 managedObjectContext];

    v9 = [ICAccount mostRecentSystemPaperNoteInManagedObjectContext:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectID];
      v12 = [v11 URIRepresentation];
      [v5 setCurrentObjectIDURL:v12];
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We didn't want a new system paper note, but none was available to use, so creating a new one instead.", v14, 2u);
      }

      [v5 setNoteCreationApproach:19];
    }
  }
}

- (void)setupSystemPaperWithWindowScene:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [v10 lastBackgroundedArchiveState];

    if (v11 && [v11 currentNoteContainerViewMode] != -1)
    {
      -[NSObject setPreferredNoteContainerViewMode:](v9, "setPreferredNoteContainerViewMode:", [v11 currentNoteContainerViewMode]);
    }

    v12 = +[ICAppDelegate sharedInstance];
    v13 = [v12 mainWindowIdentifier];
    v14 = v13;
    v15 = @"DefaultIdentifier";
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [@"QuickNote-" stringByAppendingString:v16];

    [v9 setToolPickerIdentifier:v17];
    v18 = +[ICNoteContext sharedContext];
    v19 = [v18 managedObjectContext];

    v20 = [v7 userActivities];
    v21 = [v20 anyObject];

    v22 = [v21 activityType];
    v23 = [v22 isEqual:ICNotesEditNoteUserActivityType];

    v63 = v11;
    if (v23)
    {
      v24 = +[ICNACoreAnalyticsReporter sharedReporter];
      [v24 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSDeeplinkThumbnail];

      v25 = [v21 userInfo];
      v26 = [v25 objectForKeyedSubscript:ICUserActivityInfoDictionaryNoteIDKey];

      v27 = [ICNote noteWithIdentifier:v26 context:v19];
      v28 = [v27 objectID];
      v29 = [v28 URIRepresentation];
      [v9 setCurrentObjectIDURL:v29];
    }

    else
    {
      v30 = [v21 activityType];
      v31 = [v30 isEqual:SYNotesUserActivityTypeCreateLink];

      if (v31)
      {
        v32 = +[ICNACoreAnalyticsReporter sharedReporter];
        [v32 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSSafariMenuAffordance];

        v33 = [v21 userInfo];
        v34 = [v33 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
        v35 = [v34 BOOLValue];

        [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:v35];
        v36 = [(ICSystemPaperWindowSceneDelegate *)self contentItemForUserActivity:v21];
        [v9 setInitialSystemPaperLink:v36];

        goto LABEL_20;
      }

      v37 = [v21 activityType];
      v38 = [v37 isEqual:SYNotesUserActivityTypeInsertImage];

      if (!v38)
      {
        v43 = +[ICNACoreAnalyticsReporter sharedReporter];
        [v43 setNoteViewApproach:ICCoreAnalyticsNoteViewApproachIOSSystemPaperShortcut];

        [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:0];
        goto LABEL_20;
      }

      v39 = [v21 userInfo];
      v40 = [v39 objectForKeyedSubscript:SYNotesUserActivityKeyPreferNewDocument];
      v41 = [v40 BOOLValue];

      v42 = [v21 userInfo];
      v26 = [v42 objectForKeyedSubscript:SYNotesUserActivityKeyContentItemData];

      [(ICSystemPaperWindowSceneDelegate *)self setUpResumeEditingSystemPaperArchive:v9 prefersNewNote:v41];
      [v9 setInitialSystemPaperImageData:v26];
    }

LABEL_20:
    v44 = +[UIKeyboard isInHardwareKeyboardMode];
    v45 = [v7 _launchOptionsDictionary];
    v46 = [v45 objectForKeyedSubscript:SBSUISystemNotesWindowSceneConnectionOptionsSceneConnectionSourceKey];

    v62 = v21;
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

      v61 = v19;
      v48 = self;
      v49 = v7;
      v50 = v6;
      v51 = [v46 anyObject];
      v52 = [v51 unsignedIntValue];
      v53 = os_log_create("com.apple.notes", "SystemPaper");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = SBSSystemNotesConnectionSourceDescription();
        *buf = 138412290;
        v65 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Received connection source: %@", buf, 0xCu);
      }

      v44 = ((v52 - 3 < 0xFFFFFFFE) & v44);
      v6 = v50;
      v7 = v49;
      self = v48;
      v19 = v61;
    }

    [v9 setShouldStartEditing:v44];
    [v6 setDelegate:self];
    v55 = [[ICWindow alloc] initWithWindowScene:v6 behavior:2];
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

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
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
  [(ICCommonWindowSceneDelegate *)&v6 sceneDidBecomeActive:v4];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
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
  [(ICCommonWindowSceneDelegate *)&v10 sceneWillEnterForeground:v4];
  objc_opt_class();
  v6 = ICDynamicCast();

  v7 = +[ICAppDelegate sharedInstance];
  v8 = [v7 analyticsController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014B058;
  v9[3] = &unk_100645E30;
  v9[4] = self;
  [v8 startWindowSceneSessionWithType:1 windowScene:v6 successHandler:v9];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[ICSystemPaperWindowSceneDelegate sceneDidEnterBackground:]";
    v16 = 1024;
    v17 = 325;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  v7 = [v6 noteEditorViewController];
  [v7 donateEditingIntentIfNecessary];

  v8 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  v9 = [v8 noteEditorViewController];
  [v9 setEditing:0 animated:0];

  v10 = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
  [v10 submitWindowSceneEvent];

  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = +[ICNAController sharedController];
  [v12 endWindowSceneSessionSynchronously:0 forSessionType:1 endReason:6 windowScene:v11];

  v13.receiver = self;
  v13.super_class = ICSystemPaperWindowSceneDelegate;
  [(ICCommonWindowSceneDelegate *)&v13 sceneDidEnterBackground:v4];
}

- (void)notesSceneDidReceiveCreateNewNoteRequest:(id)a3
{
  v4 = [(ICCommonWindowSceneDelegate *)self viewControllerManager];
  v6 = v4;
  if (!v4)
  {
    [ICAssert handleFailedAssertWithCondition:"((viewControllerManager) != nil)" functionName:"[ICSystemPaperWindowSceneDelegate notesSceneDidReceiveCreateNewNoteRequest:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "viewControllerManager"];
    v4 = 0;
  }

  v5 = [v4 showNewNoteWithApproach:19 sender:self animated:1];
}

- (ICNAWindowSceneEventReporter)eventReporter
{
  if (!self->_eventReporter && +[ICNAEventReporter isOptedInForAnalytics])
  {
    v3 = [ICNAWindowSceneEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(ICCommonWindowSceneDelegate *)self icWindow];
    v7 = [v6 windowScene];
    v8 = [v3 initWithSubTrackerName:v5 windowScene:v7];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:self->_eventReporter];
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = +[NSNotificationCenter defaultCenter];
  v6 = ICNAEventReporterLostSessionNotification;
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a6;
  v11 = [a4 settings];
  v12 = [v11 deactivationReasons];

  [v10 deactivationReasons];
  if ((v12 & 0x1000) != 0)
  {
    if (BSEqualBools())
    {
      return;
    }

    v13 = [(ICCommonWindowSceneDelegate *)self icWindow];
    v14 = [v13 ic_viewControllerManager];
    v15 = [v14 noteEditorViewController];
    [v15 setEditing:0 animated:0];

    v16 = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
    [v16 submitWindowSceneEvent];
  }

  else
  {
    if (BSEqualBools())
    {
      return;
    }

    v16 = [(ICSystemPaperWindowSceneDelegate *)self eventReporter];
    [v16 startWindowSceneEventDurationTracking];
  }
}

@end