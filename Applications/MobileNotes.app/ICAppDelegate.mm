@interface ICAppDelegate
+ (ICAppDelegate)sharedInstance;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)isAnyAudioInspectorShowingForWindow:(id)window;
- (BOOL)isAnyWelcomeScreenVisible;
- (BOOL)isAuxWindowForConnectionOptions:(id)options;
- (BOOL)isRunningPPT;
- (BOOL)isScrollingTest:(id)test;
- (BOOL)resetMigrationStateForInternalSettingsAndShowMigrationScreenIfNecessary;
- (BOOL)scrollTestUseFlick;
- (BOOL)scrollTestUseRecap;
- (BOOL)selectFirstNoteInCollectionView:(id)view errorString:(id *)string;
- (BOOL)selectFirstNoteInScrollView:(id)view errorString:(id *)string;
- (BOOL)selectFirstNoteInTableView:(id)view errorString:(id *)string;
- (BOOL)shouldShowMigrationScreen;
- (BOOL)showMigrationStartupScreenIfNecessary;
- (ICAppDelegate)init;
- (ICNAController)analyticsController;
- (ICNAEventReporter)eventReporter;
- (ICViewControllerManager)randomViewControllerManager;
- (ICWindowStateArchive)lastBackgroundedArchiveState;
- (ICWindowStateArchive)quicknoteArchiveState;
- (NSArray)viewControllerManagers;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)ic_folderListScrollView;
- (id)ic_noteEditorViewController;
- (id)ic_notesGridScrollView;
- (id)ic_notesListScrollView;
- (id)ic_viewControllerManager;
- (id)mainWindowIdentifier;
- (id)serverChangeTokensForCloudKitAccounts:(id)accounts;
- (id)sharedInstanceInit;
- (id)windows;
- (int64_t)scrollIterationsFromDefaults;
- (int64_t)scrollOffsetFromDefaults;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (unint64_t)beginBackgroundTaskWithName:(id)name expirationHandler:(id)handler;
- (void)accountWillBeDeleted:(id)deleted;
- (void)accountsDidChange:(id)change;
- (void)alertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle defaultButtonTitle:(id)defaultButtonTitle actionHandler:(id)handler;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationDidReceiveMemoryWarning:(id)warning;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)bringUpKeyboard;
- (void)buildMenuWithBuilder:(id)builder;
- (void)checkIfHasSharedNotesOrFolders:(id)folders;
- (void)checkIfUserNotificationsAllowed:(id)allowed;
- (void)cleanUpTemporaryFiles;
- (void)dealloc;
- (void)didEditorBeginEditing;
- (void)didEditorPresentActivityViewController;
- (void)didFinishExtendedLaunch;
- (void)didShowFolderList;
- (void)didShowGridView;
- (void)didShowNoteEditor;
- (void)didShowNotesList;
- (void)dismissAllowNotificationsWarmingSheet;
- (void)dismissKeyboard;
- (void)dismissMigrationScreenCompletionBlock:(id)block;
- (void)endBackgroundTask:(unint64_t)task;
- (void)finishLaunching;
- (void)folderListDidLayoutSubviews;
- (void)goToBottomOfNoteInEditor;
- (void)handleDarwinNotificationName:(id)name;
- (void)ic_selectFolderNamed:(id)named;
- (void)ic_selectLocalModernAccount;
- (void)inkPickerDidShow;
- (void)legacyNotesChanged;
- (void)lockAllNotes;
- (void)managedObjectContextDidSave:(id)save;
- (void)managedObjectContextWillSave:(id)save;
- (void)mentionNotificationDidSend:(id)send;
- (void)mentionNotificationWillSend:(id)send;
- (void)newShareCreatedOrSynced:(id)synced;
- (void)noteContextDidSetupCoreDataStack:(id)stack;
- (void)noteContextWillSetupCoreDataStack:(id)stack;
- (void)noteEditorDidLayoutSubviews;
- (void)noteListDidLayoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performFlickScrollOnScrollView:(id)view duration:(double)duration delta:(int64_t)delta delayBetweenScroll:(double)scroll iterations:(unint64_t)iterations;
- (void)performFlickScrollTestForScrollView:(id)view withOptions:(id)options;
- (void)performScrollTestForScrollView:(id)view withOptions:(id)options;
- (void)persistentContainerDidUnlockDatabase:(id)database;
- (void)persistentContainerWillLockDatabase:(id)database;
- (void)registerBackgroundTasks;
- (void)registerForNotifications;
- (void)reindexEverythingThenPerformBlock:(id)block;
- (void)requestAuthorizationToShowUserNotificationsIfNecessary;
- (void)rotateToOrientation:(int64_t)orientation iterationsRemaining:(int)remaining completion:(id)completion;
- (void)runDelayedLaunchTasks;
- (void)saveLastBackgroundedArchiveState:(id)state;
- (void)saveQuicknoteArchiveState:(id)state;
- (void)searchResultBecameVisible;
- (void)sessionDidStartForWindowScene:(id)scene;
- (void)setupReachability;
- (void)showAccountsListAnimated:(BOOL)animated;
- (void)showAllowNotificationsWarmingSheet:(id)sheet;
- (void)showNoteWithAccountSelectionBlock:(id)block noteSelectionBlock:(id)selectionBlock readyBlock:(id)readyBlock errorBlock:(id)errorBlock;
- (void)showNotesGridWithAccountSelectionBlock:(id)block readyBlock:(id)readyBlock;
- (void)showNotesListWithAccountSelectionBlock:(id)block readyBlock:(id)readyBlock;
- (void)showStartupWithForceWelcomeScreen:(BOOL)screen completion:(id)completion;
- (void)startAnalyticsSessionWithReferralURL:(id)l referralApplication:(id)application;
- (void)startICInsertChecklistTest:(id)test;
- (void)startICKeyboardBringUpAndDismissal:(id)dismissal;
- (void)startICKeyboardRotation:(id)rotation;
- (void)startICKeyboardSplitAndMerge:(id)merge;
- (void)startICNewNoteFromNoteViewTest:(id)test warm:(BOOL)warm;
- (void)startICNewNoteFromNotesListTest:(id)test;
- (void)startICNoteEditorTypingTest:(id)test;
- (void)startICResizeWindowTest:(id)test;
- (void)startICRotateAccountsListTest:(id)test;
- (void)startICRotateNoteTest:(id)test;
- (void)startICRotateNotesListTest:(id)test;
- (void)startICScrollAccountsListTest:(id)test;
- (void)startICScrollEnglishNotesListTest:(id)test;
- (void)startICScrollGridViewTest:(id)test;
- (void)startICScrollInlineSketchTest:(id)test;
- (void)startICScrollNoteTest:(id)test withKeyboardUp:(BOOL)up;
- (void)startICScrollNotesListTest:(id)test;
- (void)startICScrollSearchResultsNotesListTest:(id)test;
- (void)startICScrollTableHorizontallyTest:(id)test;
- (void)startICScrollTableVerticallyTest:(id)test;
- (void)startICShowAccountsListTest:(id)test;
- (void)startICShowGridViewTest:(id)test;
- (void)startICShowInkPickerTest:(id)test;
- (void)startICShowNoteTest:(id)test;
- (void)startICShowNoteTestInFolderNamed:(id)named withOptions:(id)options;
- (void)startICShowNotesListTest:(id)test warm:(BOOL)warm;
- (void)startICShowSearchResultsTest:(id)test;
- (void)startICShowShareSheetFromNoteViewTest:(id)test;
- (void)submitBackgroundAnalyticsEventsWithEventReporter:(id)reporter;
- (void)submitMoveCheckedItemsToBottomSwitchEventChangedInPreferencesWithState:(BOOL)state eventReporter:(id)reporter;
- (void)submitPasswordChangeEventsWithReset:(BOOL)reset eventReporter:(id)reporter;
- (void)submitPasswordChangeModeEventWithEventReporter:(id)reporter;
- (void)testScrollNote;
- (void)testScrollNotesList;
- (void)textViewDidChange;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
- (void)waitForDelayedLaunchWithCompletionHandler:(id)handler;
- (void)willLoadNoteIntoEditor;
@end

@implementation ICAppDelegate

- (ICAppDelegate)init
{
  v5.receiver = self;
  v5.super_class = ICAppDelegate;
  v2 = [(ICAppDelegate *)&v5 init];
  sharedInstance = [objc_opt_class() sharedInstance];

  return sharedInstance;
}

+ (ICAppDelegate)sharedInstance
{
  if (qword_1006CB250 != -1)
  {
    sub_100004284();
  }

  v3 = qword_1006CB248;

  return v3;
}

- (id)sharedInstanceInit
{
  selfCopy = self;
  v12.receiver = selfCopy;
  v12.super_class = ICAppDelegate;

  v3 = objc_alloc_init(NSMutableDictionary);
  backgroundTasks = selfCopy->_backgroundTasks;
  selfCopy->_backgroundTasks = v3;

  v5 = +[NSMapTable strongToStrongObjectsMapTable];
  managedObjectContextSaveTasks = selfCopy->_managedObjectContextSaveTasks;
  selfCopy->_managedObjectContextSaveTasks = v5;

  v7 = +[NSMapTable strongToStrongObjectsMapTable];
  noteContextTasks = selfCopy->_noteContextTasks;
  selfCopy->_noteContextTasks = v7;

  v9 = +[NSUUID UUID];
  databaseLockBackgroundTaskIdentifier = selfCopy->_databaseLockBackgroundTaskIdentifier;
  selfCopy->_databaseLockBackgroundTaskIdentifier = v9;

  return selfCopy;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = ICAppDelegate;
  [(ICAppDelegate *)&v5 dealloc];
}

- (BOOL)isRunningPPT
{
  v2 = +[UIApplication sharedApplication];
  if ([v2 isRunningTest])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIApplication sharedApplication];
    if ([v4 launchedToTest])
    {
      v3 = 1;
    }

    else
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v3 = [v5 BOOLForKey:@"isRunningPPT"];
    }
  }

  return v3;
}

- (ICNAController)analyticsController
{
  v3 = +[ICNAController sharedController];
  appDelegate = [v3 appDelegate];

  if (!appDelegate)
  {
    [v3 setAppDelegate:self];
  }

  return v3;
}

- (void)registerForNotifications
{
  v3 = +[UIApplication sharedApplication];
  [v3 registerForRemoteNotifications];

  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  [v4 setDelegate:self];
}

- (void)registerBackgroundTasks
{
  if (+[ICDeviceSupport isRunningUnitTests])
  {
    v3 = os_log_create("com.apple.notes", "BackgroundTask");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Skipping registration of background tasks during unit tests", buf, 2u);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004D44;
    block[3] = &unk_100645E30;
    block[4] = self;
    if (qword_1006CB258 != -1)
    {
      dispatch_once(&qword_1006CB258, block);
    }
  }
}

- (ICNAEventReporter)eventReporter
{
  eventReporter = self->_eventReporter;
  if (!eventReporter)
  {
    v4 = [ICNAEventReporter alloc];
    v5 = [v4 initWithSubTrackerName:kICNASubtrackerNameAppDelegate];
    v6 = self->_eventReporter;
    self->_eventReporter = v5;

    eventReporter = self->_eventReporter;
  }

  return eventReporter;
}

- (void)willLoadNoteIntoEditor
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICShowInlineSketchNote"] & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICShowTableNote")))
  {
    v2 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [UIApp startedTest:qword_1006CB340];
      v4 = UIApp;

      [v4 installCACommitCompletionBlock:&stru_100649AE0];
    }
  }
}

- (BOOL)isAnyWelcomeScreenVisible
{
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v3 = [viewControllerManagers ic_containsObjectPassingTest:&stru_1006478B0];

  return v3;
}

- (NSArray)viewControllerManagers
{
  windows = [(ICAppDelegate *)self windows];
  v3 = [windows ic_compactMap:&stru_100647560];

  return v3;
}

- (id)windows
{
  v2 = +[NSMutableArray array];
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = connectedScenes;
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

        _windows = [*(*(&v13 + 1) + 8 * i) _windows];
        [v2 ic_addObjectsFromNonNilArray:_windows];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v2 copy];

  return v11;
}

- (void)finishLaunching
{
  v3 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[ICAppDelegate finishLaunching]";
    v35 = 1024;
    v36 = 519;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090B28;
  block[3] = &unk_100645C78;
  objc_copyWeak(&v31, buf);
  dispatch_after(v4, &_dispatch_main_q, block);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"accountWillBeDeleted:" name:ICAccountWillBeDeletedNotification object:0];
  [v5 addObserver:self selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];
  v6 = +[ICAuthenticationState sharedState];
  [v5 addObserver:self selector:"authenticationStateDidDeauthenticate:" name:ICAuthenticationStateDidDeauthenticateNotification object:v6];

  [v5 addObserver:self selector:"mentionNotificationWillSend:" name:ICMentionNotificationControllerWillSendNotification object:0];
  [v5 addObserver:self selector:"mentionNotificationDidSend:" name:ICMentionNotificationControllerDidSendNotification object:0];
  [v5 addObserver:self selector:"newShareCreatedOrSynced:" name:ICNotesCloudContextDidFetchShareNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = ICInternalPreferencesChangedNotification();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100090B7C, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, sub_100090B7C, @"com.apple.springboard.lockcomplete", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, self, sub_100090B7C, @"GSEventHardwareKeyboardAttached", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 ic_addObserver:self forKeyPath:ICSettingsNoteListSortTypeKey context:&off_1006BADF8];

  v12 = +[NSUserDefaults standardUserDefaults];
  [v12 ic_addObserver:self forKeyPath:ICFolderCustomNoteSortTypeQuerySortKey context:&off_1006BADF8];

  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 ic_addObserver:self forKeyPath:ICSettingsNoteDateHeadersTypeKey context:&off_1006BADF8];

  v14 = +[NSUserDefaults standardUserDefaults];
  [v14 ic_addObserver:self forKeyPath:ICSettingsQueryDateHeadersTypeKey context:&off_1006BADF8];

  self->_isActive = 1;
  if ([(ICAppDelegate *)self isRunningPPT])
  {
    if (ICUseCoreDataCoreSpotlightIntegration())
    {
      v15 = +[ICCDCSIReindexer sharedReindexer];
      [v15 stopIndexing];
    }

    else
    {
      v16 = +[ICSearchIndexer sharedIndexer];
      [v16 setDisabled:1];

      v17 = +[ICSearchIndexer sharedIndexer];
      [v17 stopObservingChanges];

      v15 = os_log_create("com.apple.notes", "Test");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100022F10();
      }
    }
  }

  window = [(ICAppDelegate *)self window];
  [ICLongRunningTaskController setMainWindow:window];

  [(ICAppDelegate *)self setDelayedLockProtectedNotesTask:UIBackgroundTaskInvalid];
  v19 = +[NSProcessInfo processInfo];
  arguments = [v19 arguments];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = arguments;
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v22)
  {
    v23 = *v27;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v26 + 1) + 8 * i);
        if ([v25 isEqualToString:{@"TestScrollNotesList", v26}])
        {
          [(ICAppDelegate *)self testScrollNotesList];
          goto LABEL_21;
        }

        if ([v25 isEqualToString:@"TestScrollNote"])
        {
          [(ICAppDelegate *)self testScrollNote];
          goto LABEL_21;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (BOOL)showMigrationStartupScreenIfNecessary
{
  shouldShowMigrationScreen = [(ICAppDelegate *)self shouldShowMigrationScreen];
  if (shouldShowMigrationScreen)
  {
    [(ICAppDelegate *)self showStartupWithCompletionBlock:0];
  }

  return shouldShowMigrationScreen;
}

- (BOOL)shouldShowMigrationScreen
{
  if ([(ICAppDelegate *)self shouldShowWelcomeScreenWhenLoggingInToUnmigratedICloudAccount])
  {
    v3 = +[ICNoteContext sharedContext];
    managedObjectContext = [v3 managedObjectContext];
    v5 = [ICAccount cloudKitAccountInContext:managedObjectContext];

    if (v5 && ([v5 didChooseToMigrate] & 1) == 0)
    {
      [(ICAppDelegate *)self setShouldShowWelcomeScreenWhenLoggingInToUnmigratedICloudAccount:0];
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UMUserManager sharedManager];
  currentUser = [v7 currentUser];
  userType = [currentUser userType];

  if (userType == 1)
  {
    [ICStartupController setHasShownWelcomeScreen:1];
    +[ICMigrationController upgradeEmptyLocalLegacyAccountIfNecessary];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v11 = [viewControllerManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (v15)
        {
          systemPaperViewController = [v15 systemPaperViewController];

          if (systemPaperViewController)
          {

            return 0;
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [viewControllerManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (v6)
  {
    return 1;
  }

  if ([(ICAppDelegate *)self resetMigrationStateForInternalSettingsAndShowMigrationScreenIfNecessary])
  {
    return 0;
  }

  return +[ICStartupController shouldShowWelcomeOrWhatsNewScreen];
}

- (BOOL)resetMigrationStateForInternalSettingsAndShowMigrationScreenIfNecessary
{
  v3 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[ICAppDelegate resetMigrationStateForInternalSettingsAndShowMigrationScreenIfNecessary]";
    v10 = 1024;
    v11 = 1341;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v4 = +[ICStartupController consumeShouldResetMigrationStateInternalSetting];
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100095198;
    block[3] = &unk_100645E30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 removeObjectForKey:kICInternalSettingsResetMigrationStateDefaultKey];

  return v4;
}

- (void)noteEditorDidLayoutSubviews
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICShowNote"] & 1) != 0 || (objc_msgSend(qword_1006CB340, "containsString:", @"ICShowInlineSketchNote") & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICShowTableNote")))
  {
    v2 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v2 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      v4 = qword_1006CB340;

      sub_1000F1CA4(v4);
    }
  }
}

- (void)didFinishExtendedLaunch
{
  if (!-[ICAppDelegate extendedLaunchTimeIsLogged](self, "extendedLaunchTimeIsLogged") && [UIApp shouldRecordExtendedLaunchTime])
  {
    v3 = UIApp;
    _launchTestName = [UIApp _launchTestName];
    [v3 finishedTest:_launchTestName];

    [(ICAppDelegate *)self setExtendedLaunchTimeIsLogged:1];
  }
}

- (void)didShowNoteEditor
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICShowNote"] & 1) != 0 || (objc_msgSend(qword_1006CB340, "containsString:", @"ICShowInlineSketchNote") & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICShowTableNote")))
  {
    v2 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v2 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      if (byte_1006CB370 == 1)
      {
        [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
        byte_1006CB370 = 0;
      }

      else
      {
        [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
      }

      v4 = UIApp;
      v5 = qword_1006CB340;

      [v4 finishedTest:v5];
    }
  }
}

- (ICViewControllerManager)randomViewControllerManager
{
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  firstObject = [viewControllerManagers firstObject];

  return firstObject;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  role = [sessionCopy role];
  v10 = _UIWindowSceneSessionTypeCoverSheet;

  if (role == v10)
  {
    v13 = @"quicknoteScene";
  }

  else
  {
    v11 = [(ICAppDelegate *)self isAuxWindowForConnectionOptions:optionsCopy];
    v12 = off_1006BAAF0;
    if (!v11)
    {
      v12 = @"mainScene";
    }

    v13 = v12;
  }

  v14 = [UISceneConfiguration alloc];
  role2 = [sessionCopy role];

  v16 = [v14 initWithName:v13 sessionRole:role2];

  return v16;
}

- (BOOL)isAuxWindowForConnectionOptions:(id)options
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  userActivities = [options userActivities];
  v4 = [userActivities countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(userActivities);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        activityType = [v8 activityType];
        if ([activityType isEqualToString:@"com.apple.notes.open.object"])
        {
          userInfo = [v8 userInfo];
          v11 = [userInfo objectForKeyedSubscript:@"ICUseAuxiliaryWindow"];
          v12 = [v11 isEqual:&__kCFBooleanTrue];

          if (v12)
          {

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [userActivities countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v6 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[ICAppDelegate application:willFinishLaunchingWithOptions:]";
    v18 = 1024;
    v19 = 288;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d", &v16, 0x12u);
  }

  v7 = 721457;

  if (+[ICDeviceSupport isRunningUnitTests](ICDeviceSupport, "isRunningUnitTests") && !+[ICDeviceSupport isRunningDuoTests])
  {
    v7 = 4915760;
  }

  [ICNoteContext startSharedContextWithOptions:v7];
  +[ICNoteContext importArchivesForCurrentLaunchConfigurationIfNeeded];
  +[ICAccount initializeLocalAccountNamesInBackground];
  v8 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsURLKey];
  [(ICAppDelegate *)self setLaunchURL:v8];

  if ([(ICAppDelegate *)self isRunningPPT])
  {
    +[ICNAOptedInObject disableAnalytics];
  }

  v9 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsSourceApplicationKey];
  analyticsController = [(ICAppDelegate *)self analyticsController];
  launchURL = [(ICAppDelegate *)self launchURL];
  [analyticsController startAppAndGlobalSessionIfNecessaryWithReferralURL:launchURL referralApplication:v9];

  if (ICIsSandboxModeEnabled())
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 registerDefaults:&off_10066E3A8];
  }

  v13 = dispatch_get_global_queue(0, 0);
  dispatch_async(v13, &stru_100647580);

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  [v14 addObserver:self selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v14 addObserver:self selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v14 addObserver:self selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  [v14 addObserver:self selector:"persistentContainerWillLockDatabase:" name:ICPersistentContainerWillLockDatabaseNotification object:0];
  [v14 addObserver:self selector:"persistentContainerDidUnlockDatabase:" name:ICPersistentContainerDidUnlockDatabaseNotification object:0];
  [v14 addObserver:self selector:"managedObjectContextWillSave:" name:NSManagedObjectContextWillSaveNotification object:0];
  [v14 addObserver:self selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];
  [v14 addObserver:self selector:"noteContextWillSetupCoreDataStack:" name:NoteContextWillSetUpCoreDataStackNotification object:0];
  [v14 addObserver:self selector:"noteContextDidSetupCoreDataStack:" name:NoteContextDidSetUpCoreDataStackNotification object:0];

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  applicationCopy = application;
  v8 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[ICAppDelegate application:didFinishLaunchingWithOptions:]";
    v33 = 1024;
    v34 = 335;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  self->_isLaunchedInBackground = [applicationCopy applicationState] == 2;
  [(ICAppDelegate *)self setExtendedLaunchTimeIsLogged:0];
  v9 = +[NotesApp sharedNotesApp];
  [v9 application:applicationCopy didFinishLaunchingWithOptions:optionsCopy];

  v10 = objc_alloc_init(ICNotesCloudContextDelegate);
  [(ICAppDelegate *)self setCloudContextDelegate:v10];

  v11 = +[ICCloudContext sharedContext];
  cloudContextDelegate = [(ICAppDelegate *)self cloudContextDelegate];
  [v11 setCloudContextDelegate:cloudContextDelegate];

  v13 = +[ICCloudContext sharedContext];
  v14 = +[ICNACloudOperationEventReporter sharedReporter];
  [v13 setCloudAnalyticsDelegate:v14];

  +[ICRemoteFileAttachmentDownloader initializeDownloaderAfterDelayIfNecessary];
  v15 = +[ICCollaborationUIController sharedInstance];
  v16 = +[ICCollaborationController sharedInstance];
  [v16 setCollaborationControllerDelegate:v15];

  v17 = +[ICCollaborationUIController sharedInstance];
  v18 = +[ICCollaborationController sharedInstance];
  [v18 setCollaborationAnalyticsDelegate:v17];

  [(ICAppDelegate *)self registerForNotifications];
  launchURL = [(ICAppDelegate *)self launchURL];
  [(ICAppDelegate *)self setLaunchingQuickNoteViaPencil:[ICAppURLUtilities isLaunchingQuickNoteViaPencil:launchURL]];

  v20 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityDictionaryKey];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityTypeKey];
    v22 = [v21 isEqualToString:CSSearchableItemActionType];

    if (v22)
    {
      v23 = [v20 objectForKey:@"UIApplicationLaunchOptionsUserActivityKey"];
      [(ICAppDelegate *)self setLaunchUserActivity:v23];
    }
  }

  if (!self->_isLaunchedInBackground)
  {
    [(ICAppDelegate *)self finishLaunching];
  }

  [(ICAppDelegate *)self registerBackgroundTasks];
  v24 = objc_alloc_init(ICRegulatoryLogger);
  [(ICAppDelegate *)self setRegulatoryLogger:v24];

  v25 = +[ICCloudContext sharedContext];
  [v25 applicationDidFinishLaunching];

  +[_TtC11MobileNotes19ICAppIntentsManager registerDependencies];
  if (ICDebugModeEnabled())
  {
    +[ICGroupActivityDebugStatusController setUp];
  }

  +[ICFastSyncPresenceController setUp];
  v26 = objc_alloc_init(ICImportAppMigrationDataLaunchTask);
  v30 = v26;
  v27 = [NSArray arrayWithObjects:&v30 count:1];
  v28 = [ICLaunchTaskRunner runImmediateLaunchTasks:v27 delegate:self completionHandler:&stru_1006475C0];

  return 1;
}

- (void)runDelayedLaunchTasks
{
  v3 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "[ICAppDelegate runDelayedLaunchTasks]";
    v44 = 1024;
    v45 = 389;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICAppDelegate runDelayedLaunchTasks]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  self->_isReadyForDelayedLaunchTasks = 1;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ICAppDelegateWillRunDelayedLaunchTasks" object:self];

  [(ICAppDelegate *)self setupReachability];
  cloudContextDelegate = [(ICAppDelegate *)self cloudContextDelegate];
  [cloudContextDelegate syncPasswordProtectedNotesIfNecessary];

  cloudContextDelegate2 = [(ICAppDelegate *)self cloudContextDelegate];
  [cloudContextDelegate2 updateLastOSVersion];

  cloudContextDelegate3 = [(ICAppDelegate *)self cloudContextDelegate];
  [cloudContextDelegate3 updateAppleAccountBags];

  cloudContextDelegate4 = [(ICAppDelegate *)self cloudContextDelegate];
  [cloudContextDelegate4 registerForSyncMessagesWithAlertProvider:self];

  if (+[ICNoteContext hasSharedContext])
  {
    windows = [(ICAppDelegate *)self windows];
    v10 = [windows ic_firstObjectOfClass:objc_opt_class()];

    traitCollection = [v10 traitCollection];
    v12 = +[ICSystemPaperThumbnailService sharedService];
    [v12 setTraitCollection:traitCollection];

    v13 = +[ICSystemPaperThumbnailService sharedService];
    [v13 observe];

    v14 = +[ICSystemPaperThumbnailService sharedService];
    [v14 updateIfNeededWithCompletion:0];
  }

  v15 = +[ICWidget sharedWidget];
  [v15 setReloadsTimelinesAutomatically:1];

  v16 = +[ICAuthenticationState sharedState];
  [v16 setDeauthenticationTimeInterval:0.0];

  v17 = +[UIPasteboard generalPasteboard];
  v41 = ICNotePasteboardUTI;
  v18 = [NSArray arrayWithObjects:&v41 count:1];
  v19 = [v17 containsPasteboardTypes:v18];

  if ((v19 & 1) == 0)
  {
    +[ICDataPersister deletePasteboardDataFiles];
  }

  v20 = +[UIApplication sharedApplication];
  applicationState = [v20 applicationState];

  if (!applicationState)
  {
    +[ICMigrationController continueMigrationIfNecessary];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = +[ICNoteContext sharedContext];
  managedObjectContext = [v22 managedObjectContext];
  v24 = [ICAccount allActiveAccountsInContext:managedObjectContext];

  v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v37;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v36 + 1) + 8 * i);
        [v29 updateFullNameAndEmail:0];
        accountDataCreateIfNecessary = [v29 accountDataCreateIfNecessary];
        [accountDataCreateIfNecessary updateSupportsV1Neo:0];
      }

      v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v26);
  }

  v31 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v31 workerManagedObjectContext];
  v33 = +[ICSharedWithYouController sharedController];
  [v33 setManagedObjectContext:workerManagedObjectContext];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100090554;
  v35[3] = &unk_1006469F0;
  v35[4] = self;
  v34 = [ICLaunchTaskRunner runDelayedLaunchTasksWithDelegate:self completionHandler:v35];
  [(ICAppDelegate *)self setDelayedLaunchTasks:v34];
}

- (void)applicationDidBecomeActive:(id)active
{
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ICAppDelegate applicationDidBecomeActive:]";
    v13 = 1024;
    v14 = 598;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  if (!self->_isActive)
  {
    self->_isActive = 1;
    if ([(ICAppDelegate *)self refreshAccountsInFolderViewOnActivate])
    {
      [(ICAppDelegate *)self setRefreshAccountsInFolderViewOnActivate:0];
    }

    lockNotesInBackgroundTimer = [(ICAppDelegate *)self lockNotesInBackgroundTimer];
    [lockNotesInBackgroundTimer invalidate];

    [(ICAppDelegate *)self setLockNotesInBackgroundTimer:0];
    if ([(ICAppDelegate *)self delayedLockProtectedNotesTask]!= UIBackgroundTaskInvalid)
    {
      v6 = +[UIApplication sharedApplication];
      [v6 endBackgroundTask:{-[ICAppDelegate delayedLockProtectedNotesTask](self, "delayedLockProtectedNotesTask")}];

      [(ICAppDelegate *)self setDelayedLockProtectedNotesTask:UIBackgroundTaskInvalid];
    }
  }

  v7 = dispatch_get_global_queue(17, 0);
  dispatch_async(v7, &stru_100647628);

  objc_initWeak(buf, self);
  v8 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090E00;
  block[3] = &unk_100645C78;
  objc_copyWeak(&v10, buf);
  dispatch_after(v8, &_dispatch_main_q, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[ICAppDelegate applicationWillTerminate:]";
    v39 = 1024;
    v40 = 653;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  self->_willTerminate = 1;
  delayedLaunchTasks = [(ICAppDelegate *)self delayedLaunchTasks];
  [delayedLaunchTasks cancel];

  [(ICAppDelegate *)self setDelayedLaunchTasks:0];
  v7 = +[ICQuickNoteSessionManager sharedManager];
  isQuickNoteSessionActive = [v7 isQuickNoteSessionActive];

  if (isQuickNoteSessionActive)
  {
    v9 = +[ICQuickNoteSessionManager sharedManager];
    [v9 endSession];
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  [v10 ic_removeObserver:self forKeyPath:ICSettingsNoteListSortTypeKey context:&off_1006BADF8];

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 ic_removeObserver:self forKeyPath:ICFolderCustomNoteSortTypeQuerySortKey context:&off_1006BADF8];

  v12 = +[NSUserDefaults standardUserDefaults];
  [v12 ic_removeObserver:self forKeyPath:ICSettingsNoteDateHeadersTypeKey context:&off_1006BADF8];

  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 ic_removeObserver:self forKeyPath:ICSettingsQueryDateHeadersTypeKey context:&off_1006BADF8];

  v14 = +[ICAuthenticationState sharedState];
  [v14 deauthenticate];

  v15 = +[ICNoteContext sharedContext];
  [v15 saveImmediately];

  v16 = +[ICDispatchAfterHandler appLifeCycleHandler];
  [v16 cancelAll];

  v17 = +[NotesApp sharedNotesApp];
  [v17 applicationWillTerminate:terminateCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v19 = [viewControllerManagers countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        legacyNoteEditorViewController = [*(*(&v32 + 1) + 8 * v22) legacyNoteEditorViewController];
        [legacyNoteEditorViewController donateEditingIntentIfNecessary];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [viewControllerManagers countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = +[UIApplication sharedApplication];
  v25 = [v24 beginBackgroundTaskWithName:@"Remove All Cloud Syncing Activity Events" expirationHandler:&stru_100647648];

  v26 = +[ICNoteContext sharedContext];
  managedObjectContext = [v26 managedObjectContext];
  [ICCloudSyncingObject removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext:managedObjectContext];

  v28 = +[UIApplication sharedApplication];
  [v28 endBackgroundTask:v25];

  v29 = +[ICNoteContext sharedContext];
  [v29 applicationWillTerminate];

  v30 = +[ICCloudContext sharedContext];
  [v30 applicationWillTerminate];

  analyticsController = [(ICAppDelegate *)self analyticsController];
  [analyticsController appSessionDidTerminate];

  [(ICAppDelegate *)self cleanUpTemporaryFiles];
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  v5 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[ICAppDelegate applicationWillResignActive:]";
    v23 = 1024;
    v24 = 696;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  objc_opt_class();
  object = [activeCopy object];
  v7 = ICCheckedDynamicCast();

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v9 = [viewControllerManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        noteEditorViewController = [*(*(&v16 + 1) + 8 * i) noteEditorViewController];
        note = [noteEditorViewController note];
        isPasswordProtected = [note isPasswordProtected];

        if (isPasswordProtected)
        {
          [v7 ignoreSnapshotOnNextApplicationLaunch];
          goto LABEL_13;
        }
      }

      v10 = [viewControllerManagers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (+[_TtC11MobileNotes14ICFeatureFlags appShortcutsEnabled])
  {
    +[_TtC11MobileNotes19ICAppIntentsManager updateAppShortcutParameters];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  objc_opt_class();
  object = [backgroundCopy object];
  v6 = ICCheckedDynamicCast();

  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v7 = [v6 beginBackgroundTaskWithName:@"Save When Backgrounding" expirationHandler:{&stru_100647688, 0}];
  }

  else
  {
    v7 = [v6 beginBackgroundTaskWithName:@"Save When Backgrounding" expirationHandler:{&stru_100647688, objc_msgSend(v6, "beginBackgroundTaskWithName:expirationHandler:", @"Finish Indexing", &stru_100647668)}];
  }

  v8 = v7;
  v9 = +[ICCloudContext sharedContext];
  [v9 applicationDidEnterBackground];

  v10 = +[ICMentionNotificationController sharedController];
  [v10 applicationDidEnterBackground];

  v11 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = "[ICAppDelegate applicationDidEnterBackground:]";
    v54 = 1024;
    v55 = 734;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v12 = +[ICQuickNoteSessionManager sharedManager];
  if ([v12 isQuickNoteSessionActive])
  {
    v13 = +[ICQuickNoteSessionManager sharedManager];
    isSecureScreenShowing = [v13 isSecureScreenShowing];

    if (isSecureScreenShowing)
    {
      goto LABEL_12;
    }

    v12 = +[ICQuickNoteSessionManager sharedManager];
    noteEditorViewController = [v12 noteEditorViewController];
    presentedViewController = [noteEditorViewController presentedViewController];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      presentedViewController2 = [noteEditorViewController presentedViewController];
      [presentedViewController2 prepareForDismissal];
    }

    [noteEditorViewController dismissViewControllerAnimated:0 completion:0];
    v19 = +[ICQuickNoteSessionManager sharedManager];
    [v19 endSession];
  }

LABEL_12:
  self->_isActive = 0;
  v20 = +[ICDispatchAfterHandler appLifeCycleHandler];
  [v20 cancelAll];

  v21 = +[ICNoteContext sharedContext];
  [v21 saveImmediately];

  [v6 endBackgroundTask:v8];
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v23 = [viewControllerManagers countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    do
    {
      v26 = 0;
      do
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        legacyNoteEditorViewController = [*(*(&v47 + 1) + 8 * v26) legacyNoteEditorViewController];
        [legacyNoteEditorViewController donateEditingIntentIfNecessary];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [viewControllerManagers countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v24);
  }

  v28 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v28 cancelGenerationOfPendingPreviews];

  v29 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v29 disableAutomaticPreviewGeneration];

  v30 = +[NSUserDefaults standardUserDefaults];
  [v30 synchronize];

  v31 = +[NotesApp sharedNotesApp];
  [v31 applicationDidEnterBackground:v6];

  v32 = +[ICNoteContext sharedContext];
  managedObjectContext = [v32 managedObjectContext];
  v34 = [ICAccount cloudKitAccountInContext:managedObjectContext];

  if (!v34 || [v34 didChooseToMigrate])
  {
    [(ICAppDelegate *)self openWelcomeScreenWhenLoggingInToUnmigratedICloudAccount];
  }

  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    v35 = +[ICSearchIndexer sharedIndexer];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100091E74;
    v44[3] = &unk_1006476B0;
    v45 = v6;
    v46 = v42;
    [v35 finishRemainingOperationsWithCompletionHandler:v44];
  }

  v36 = +[ICAuthenticationState sharedState];
  isAuthenticated = [v36 isAuthenticated];

  if (isAuthenticated)
  {
    secureWindow = [(ICAppDelegate *)self secureWindow];

    if (secureWindow)
    {
      [(ICAppDelegate *)self lockAllNotes];
    }

    else
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100091E80;
      v43[3] = &unk_100645E30;
      v43[4] = self;
      self->_delayedLockProtectedNotesTask = [v6 beginBackgroundTaskWithName:@"Lock Notes In Background" expirationHandler:v43];
      v39 = [NSTimer timerWithTimeInterval:self target:"lockAllNotes" selector:0 userInfo:0 repeats:480.0];
      [(ICAppDelegate *)self setLockNotesInBackgroundTimer:v39];

      v40 = +[NSRunLoop currentRunLoop];
      lockNotesInBackgroundTimer = [(ICAppDelegate *)self lockNotesInBackgroundTimer];
      [v40 addTimer:lockNotesInBackgroundTimer forMode:NSDefaultRunLoopMode];
    }
  }

  [(ICAppDelegate *)self setUserNotificationsAllowed:0];
}

- (void)cleanUpTemporaryFiles
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  performBlockOnMainThreadAndWait();
  if ((v12[3] & 1) == 0)
  {
    [ICAttachmentModel deletePreviewItemHardLinkURLs:_NSConcreteStackBlock];
  }

  if ((v8[3] & 1) == 0 && (v4[3] & 1) == 0)
  {
    +[ICDocCamPDFGenerator deleteAllDocCamPDFs];
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

- (void)lockAllNotes
{
  lockNotesInBackgroundTimer = [(ICAppDelegate *)self lockNotesInBackgroundTimer];
  [lockNotesInBackgroundTimer invalidate];

  [(ICAppDelegate *)self setLockNotesInBackgroundTimer:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v5 = [viewControllerManagers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        [*(*(&v10 + 1) + 8 * i) lockNotesNow];
      }

      v6 = [viewControllerManagers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if ([(ICAppDelegate *)self delayedLockProtectedNotesTask]!= UIBackgroundTaskInvalid)
  {
    dispatchMainAfterDelay();
  }

  v9 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAA04();
  }
}

- (void)applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[ICAppDelegate applicationWillEnterForeground:]";
    v16 = 1024;
    v17 = 864;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", &v14, 0x12u);
  }

  objc_opt_class();
  object = [foregroundCopy object];

  v7 = ICCheckedDynamicCast();

  if (self->_isLaunchedInBackground)
  {
    self->_isLaunchedInBackground = 0;
    [(ICAppDelegate *)self finishLaunching];
  }

  else
  {
    v8 = +[NotesApp sharedNotesApp];
    [v8 applicationWillEnterForeground:v7];

    v9 = +[ICNoteContext sharedContext];
    [v9 cleanupAdditionalPersistentStores];

    v10 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [v10 enableAutomaticPreviewGeneration];
    [v10 generatePreviewsIfNeeded];
    v11 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v11 workerManagedObjectContext];

    [v10 generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:workerManagedObjectContext];
    v13 = +[ICCloudContext sharedContext];
    [v13 applicationWillEnterForeground];
  }

  if (![(ICAppDelegate *)self inhibitMigrationScreenCheckOnForgroundNotification])
  {
    [(ICAppDelegate *)self setInhibitMigrationScreenCheckOnForgroundNotification:1];
    [(ICAppDelegate *)self showMigrationStartupScreenIfNecessary];
  }

  +[ICNoteListSortUtilities clearCache];
  +[ICDateHeadersUtilities clearCache];
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  windowCopy = window;
  if ([(ICAppDelegate *)self isAnyWelcomeScreenVisible]|| [(ICAppDelegate *)self isAnyAudioInspectorShowingForWindow:windowCopy])
  {
    traitCollection = [windowCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v8 = 30;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 30;
  }

  return v8;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ICAppDelegate;
  [(ICAppDelegate *)&v7 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem mainSystem];

  if (system == v6)
  {
    [builderCopy removeMenuForIdentifier:UIMenuTextSize];
    [builderCopy removeMenuForIdentifier:UIMenuOpen];
    [ICApplicationMainMenu buildMenuWithBuilder:builderCopy];
  }
}

- (id)serverChangeTokensForCloudKitAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = accountsCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        serverChangeTokens = [v8 serverChangeTokens];
        v10 = [serverChangeTokens countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(serverChangeTokens);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              zoneID = [v14 zoneID];
              zoneName = [zoneID zoneName];

              if (zoneName)
              {
                ckServerChangeToken = [v14 ckServerChangeToken];
                [v4 addObject:ckServerChangeToken];
              }
            }

            v11 = [serverChangeTokens countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAA40();
  }

  v9 = +[ICCloudContext sharedContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100092AA8;
  v11[3] = &unk_100647780;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v9 handleRemoteNotificationWithUserInfo:notificationCopy completion:v11];
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  v5 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAAB0();
  }
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  errorCopy = error;
  ++qword_1006CB260;
  v5 = fmin((60 * qword_1006CB260), 300.0);
  v6 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1004DAB20();
  }

  v7 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_after(v7, &_dispatch_main_q, &stru_1006477A0);
}

- (void)applicationDidReceiveMemoryWarning:(id)warning
{
  v3 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DABDC();
  }

  v4 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v4 didReceiveMemoryWarning];
}

- (void)handleDarwinNotificationName:(id)name
{
  nameCopy = name;
  v5 = ICInternalPreferencesChangedNotification();
  v6 = [nameCopy isEqualToString:v5];

  if (v6)
  {
    [(ICAppDelegate *)self setRefreshAccountsInFolderViewOnActivate:1];
  }

  else if ([nameCopy isEqualToString:@"com.apple.springboard.lockcomplete"])
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DAC18();
    }

    [(ICAppDelegate *)self lockAllNotes];
  }

  else if ([nameCopy isEqualToString:@"GSEventHardwareKeyboardAttached"])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
    v9 = [viewControllerManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(viewControllerManagers);
          }

          keyboardHandler = [*(*(&v14 + 1) + 8 * v12) keyboardHandler];
          [keyboardHandler updateHardwareKeyboardAvailability];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [viewControllerManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)legacyNotesChanged
{
  v2 = +[ICNoteContext sharedContext];
  [v2 addOrDeleteLocalAccountIfNecessary];

  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    v7 = +[ICNoteContext sharedContext];
    managedObjectContext2 = [v7 managedObjectContext];
    [managedObjectContext2 ic_save];
  }
}

- (void)mentionNotificationWillSend:(id)send
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100093038;
  v5[3] = &unk_100645BA0;
  sendCopy = send;
  selfCopy = self;
  v4 = sendCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)mentionNotificationDidSend:(id)send
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100093340;
  v5[3] = &unk_100645BA0;
  sendCopy = send;
  selfCopy = self;
  v4 = sendCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)persistentContainerWillLockDatabase:(id)database
{
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ICAppDelegate persistentContainerWillLockDatabase:]";
    v12 = 1024;
    v13 = 1061;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", &v10, 0x12u);
  }

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 beginBackgroundTaskWithName:@"Finish Database-locking operation" expirationHandler:&stru_1006477C0];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  backgroundTasks = [(ICAppDelegate *)self backgroundTasks];
  databaseLockBackgroundTaskIdentifier = [(ICAppDelegate *)self databaseLockBackgroundTaskIdentifier];
  [backgroundTasks setObject:v7 forKeyedSubscript:databaseLockBackgroundTaskIdentifier];
}

- (void)persistentContainerDidUnlockDatabase:(id)database
{
  v4 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ICAppDelegate persistentContainerDidUnlockDatabase:]";
    v14 = 1024;
    v15 = 1071;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", &v12, 0x12u);
  }

  backgroundTasks = [(ICAppDelegate *)self backgroundTasks];
  databaseLockBackgroundTaskIdentifier = [(ICAppDelegate *)self databaseLockBackgroundTaskIdentifier];
  v7 = [backgroundTasks objectForKeyedSubscript:databaseLockBackgroundTaskIdentifier];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DAE1C();
    }

    v9 = +[UIApplication sharedApplication];
    [v9 endBackgroundTask:{objc_msgSend(v7, "unsignedIntegerValue")}];

    backgroundTasks2 = [(ICAppDelegate *)self backgroundTasks];
    databaseLockBackgroundTaskIdentifier2 = [(ICAppDelegate *)self databaseLockBackgroundTaskIdentifier];
    [backgroundTasks2 setObject:0 forKeyedSubscript:databaseLockBackgroundTaskIdentifier2];
  }
}

- (void)managedObjectContextWillSave:(id)save
{
  object = [save object];
  if (!object)
  {
    [ICAssert handleFailedAssertWithCondition:"((context) != nil)" functionName:"[ICAppDelegate managedObjectContextWillSave:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "context"];
  }

  managedObjectContextSaveTasks = [(ICAppDelegate *)self managedObjectContextSaveTasks];
  v6 = [managedObjectContextSaveTasks objectForKey:object];

  if (v6)
  {
    [ICAssert handleFailedAssertWithCondition:"(([self.managedObjectContextSaveTasks objectForKey:context]) == nil)" functionName:"[ICAppDelegate managedObjectContextWillSave:]" simulateCrash:1 showAlert:0 format:@"Expected nil value for '%s'", "[self.managedObjectContextSaveTasks objectForKey:context]"];
  }

  name = [object name];
  v8 = [NSString stringWithFormat:@"Context Save %@", name];

  v9 = +[UIApplication sharedApplication];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100093A4C;
  v14[3] = &unk_100645E30;
  v15 = object;
  v10 = object;
  v11 = [v9 beginBackgroundTaskWithName:v8 expirationHandler:v14];

  v16 = v11;
  managedObjectContextSaveTasks2 = [(ICAppDelegate *)self managedObjectContextSaveTasks];
  v13 = [NSValue value:&v16 withObjCType:"Q"];
  [managedObjectContextSaveTasks2 setObject:v13 forKey:v10];
}

- (void)managedObjectContextDidSave:(id)save
{
  object = [save object];
  if (!object)
  {
    [ICAssert handleFailedAssertWithCondition:"((context) != nil)" functionName:"[ICAppDelegate managedObjectContextDidSave:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "context"];
  }

  managedObjectContextSaveTasks = [(ICAppDelegate *)self managedObjectContextSaveTasks];
  v6 = [managedObjectContextSaveTasks objectForKey:object];

  if (!v6)
  {
    [ICAssert handleFailedAssertWithCondition:"((taskIdentifierValue) != nil)" functionName:"[ICAppDelegate managedObjectContextDidSave:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "taskIdentifierValue"];
  }

  v9 = UIBackgroundTaskInvalid;
  [v6 getValue:&v9];
  if (v9 != UIBackgroundTaskInvalid)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 endBackgroundTask:v9];
  }

  managedObjectContextSaveTasks2 = [(ICAppDelegate *)self managedObjectContextSaveTasks];
  [managedObjectContextSaveTasks2 removeObjectForKey:object];
}

- (void)noteContextWillSetupCoreDataStack:(id)stack
{
  object = [stack object];
  if (!object)
  {
    [ICAssert handleFailedAssertWithCondition:"((noteContext) != nil)" functionName:"[ICAppDelegate noteContextWillSetupCoreDataStack:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "noteContext"];
  }

  noteContextTasks = [(ICAppDelegate *)self noteContextTasks];
  v6 = [noteContextTasks objectForKey:object];

  if (v6)
  {
    [ICAssert handleFailedAssertWithCondition:"(([self.noteContextTasks objectForKey:noteContext]) == nil)" functionName:"[ICAppDelegate noteContextWillSetupCoreDataStack:]" simulateCrash:1 showAlert:0 format:@"Expected nil value for '%s'", "[self.noteContextTasks objectForKey:noteContext]"];
  }

  v7 = [NSString stringWithFormat:@"Note Context Setup %p", object];
  v8 = +[UIApplication sharedApplication];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100093E40;
  v13[3] = &unk_100645E30;
  v14 = object;
  v9 = object;
  v10 = [v8 beginBackgroundTaskWithName:v7 expirationHandler:v13];

  v15 = v10;
  noteContextTasks2 = [(ICAppDelegate *)self noteContextTasks];
  v12 = [NSValue value:&v15 withObjCType:"Q"];
  [noteContextTasks2 setObject:v12 forKey:v9];
}

- (void)noteContextDidSetupCoreDataStack:(id)stack
{
  object = [stack object];
  if (!object)
  {
    [ICAssert handleFailedAssertWithCondition:"((noteContext) != nil)" functionName:"[ICAppDelegate noteContextDidSetupCoreDataStack:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "noteContext"];
  }

  noteContextTasks = [(ICAppDelegate *)self noteContextTasks];
  v6 = [noteContextTasks objectForKey:object];

  if (!v6)
  {
    [ICAssert handleFailedAssertWithCondition:"((taskIdentifierValue) != nil)" functionName:"[ICAppDelegate noteContextDidSetupCoreDataStack:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "taskIdentifierValue"];
  }

  v9 = UIBackgroundTaskInvalid;
  [v6 getValue:&v9];
  if (v9 != UIBackgroundTaskInvalid)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 endBackgroundTask:v9];
  }

  noteContextTasks2 = [(ICAppDelegate *)self noteContextTasks];
  [noteContextTasks2 removeObjectForKey:object];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  pathCopy = path;
  if (([(ICAppDelegate *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/GlobalUI/ICAppDelegate.m"]& 1) != 0)
  {
    v13 = [(ICAppDelegate *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_1006BADF8 && (v13 & 1) == 0)
    {
      v14 = +[NSUserDefaults standardUserDefaults];

      if (v14 == objectCopy)
      {
        +[ICNoteListSortUtilities clearCache];
        +[ICDateHeadersUtilities clearCache];
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICAppDelegate;
    [(ICAppDelegate *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)accountsDidChange:(id)change
{
  v4 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAE58();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v6 = [viewControllerManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(viewControllerManagers);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        currentAttachmentPresenter = [v10 currentAttachmentPresenter];

        if (currentAttachmentPresenter)
        {
          currentAttachmentPresenter2 = [v10 currentAttachmentPresenter];
          attachments = [currentAttachmentPresenter2 attachments];
          v14 = [attachments ic_containsObjectPassingTest:&stru_100647800];

          if (v14)
          {
            currentAttachmentPresenter3 = [v10 currentAttachmentPresenter];
            presentedViewController = [currentAttachmentPresenter3 presentedViewController];
            [presentedViewController dismissViewControllerAnimated:1 completion:0];
          }
        }

        [(ICAppDelegate *)self showMigrationStartupScreenIfNecessary];
      }

      v7 = [viewControllerManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v17 = +[ICAuthenticationState sharedState];
  [v17 deauthenticate];
}

- (void)accountWillBeDeleted:(id)deleted
{
  v4 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAE94();
  }

  undoManager = [(ICAppDelegate *)self undoManager];
  [undoManager removeAllActions];
}

- (void)startAnalyticsSessionWithReferralURL:(id)l referralApplication:(id)application
{
  applicationCopy = application;
  lCopy = l;
  analyticsController = [(ICAppDelegate *)self analyticsController];
  [analyticsController startSessionWithReferralURL:lCopy referralApplication:applicationCopy startingSessionType:4];
}

- (void)submitBackgroundAnalyticsEventsWithEventReporter:(id)reporter
{
  reporterCopy = reporter;
  [(ICAppDelegate *)self submitMoveCheckedItemsToBottomSwitchEventChangedInPreferencesWithState:1 eventReporter:reporterCopy];
  [(ICAppDelegate *)self submitMoveCheckedItemsToBottomSwitchEventChangedInPreferencesWithState:0 eventReporter:reporterCopy];
  [(ICAppDelegate *)self submitPasswordChangeEventsWithReset:1 eventReporter:reporterCopy];
  [(ICAppDelegate *)self submitPasswordChangeEventsWithReset:0 eventReporter:reporterCopy];
  [(ICAppDelegate *)self submitPasswordChangeModeEventWithEventReporter:reporterCopy];
}

- (void)submitMoveCheckedItemsToBottomSwitchEventChangedInPreferencesWithState:(BOOL)state eventReporter:(id)reporter
{
  stateCopy = state;
  reporterCopy = reporter;
  v5 = [ICInstrumentationUtilities autoSortSelectionChangeCountForState:stateCopy];
  if (v5 >= 1)
  {
    v6 = v5;
    [ICInstrumentationUtilities clearAutoSortSelectionChangeCountForState:stateCopy];
    do
    {
      [reporterCopy submitMoveCheckedItemsToBottomSwitchEventWithNewState:stateCopy isInApp:0];
      --v6;
    }

    while (v6);
  }
}

- (void)submitPasswordChangeEventsWithReset:(BOOL)reset eventReporter:(id)reporter
{
  resetCopy = reset;
  reporterCopy = reporter;
  v6 = [ICInstrumentationUtilities recentPasswordChangeCountAsReset:resetCopy];
  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAED0(resetCopy, v6, v7);
  }

  if (v6 >= 1)
  {
    v8 = +[ICNoteContext sharedContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100094698;
    v9[3] = &unk_100647828;
    v12 = resetCopy;
    v11 = v6;
    v10 = reporterCopy;
    [v8 performSnapshotBackgroundTask:v9];
  }
}

- (void)submitPasswordChangeModeEventWithEventReporter:(id)reporter
{
  reporterCopy = reporter;
  v4 = +[ICNoteContext sharedContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009480C;
  v6[3] = &unk_100647870;
  v7 = reporterCopy;
  v5 = reporterCopy;
  [v4 performSnapshotBackgroundTask:v6];
}

- (BOOL)isAnyAudioInspectorShowingForWindow:(id)window
{
  windowCopy = window;
  viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100094C8C;
  v9[3] = &unk_1006478D8;
  v10 = windowCopy;
  v6 = windowCopy;
  v7 = [viewControllerManagers ic_containsObjectPassingTest:v9];

  return v7;
}

- (id)mainWindowIdentifier
{
  lastBackgroundedArchiveState = [(ICAppDelegate *)self lastBackgroundedArchiveState];
  v4 = lastBackgroundedArchiveState;
  if (lastBackgroundedArchiveState)
  {
    windowIdentifier = [lastBackgroundedArchiveState windowIdentifier];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    viewControllerManagers = [(ICAppDelegate *)self viewControllerManagers];
    v7 = [viewControllerManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(viewControllerManagers);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (![v11 isAuxiliary])
          {
            window = [v11 window];
            windowIdentifier = [window windowIdentifier];

            goto LABEL_13;
          }
        }

        v8 = [viewControllerManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    windowIdentifier = 0;
  }

LABEL_13:

  return windowIdentifier;
}

- (void)showStartupWithForceWelcomeScreen:(BOOL)screen completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(ICAppDelegate *)self viewControllerManagers];
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10009501C;
        v14[3] = &unk_100647900;
        v12 = completionCopy;
        v14[4] = self;
        v15 = v12;
        [v11 showStartupWithForceWelcomeScreen:screenCopy completion:v14];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DB050();
  }

  handlerCopy[2](handlerCopy, 26);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  v8 = kICNANotificationCenterReferralURL;
  handlerCopy = handler;
  v10 = [NSURL URLWithString:v8];
  [(ICAppDelegate *)self startAnalyticsSessionWithReferralURL:v10 referralApplication:0];

  v11 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DB0C0();
  }

  [UIApp setApplicationIconBadgeNumber:0];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  objc_opt_class();
  v16 = [userInfo objectForKeyedSubscript:kICCloudNotificationsNotesPayloadKey];
  v17 = ICDynamicCast();

  objc_opt_class();
  if (v17)
  {
    v18 = kICCloudNotificationsNotesPayloadNoteUUIDKey;
    v19 = v17;
  }

  else
  {
    v18 = kICNotificationNoteIdentifierKey;
    v19 = userInfo;
  }

  v20 = [v19 objectForKeyedSubscript:v18];
  v21 = ICDynamicCast();

  objc_opt_class();
  v22 = [v17 objectForKeyedSubscript:kICCloudNotificationsNotesPayloadInlineAttachmentUUIDKey];
  v23 = ICDynamicCast();

  randomViewControllerManager = [(ICAppDelegate *)self randomViewControllerManager];
  v25 = os_log_create("com.apple.notes", "Notifications");
  v26 = v25;
  if (v23 && v21)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB1DC();
    }

    [randomViewControllerManager showInlineAttachmentWithIdentifier:v23 inNoteIdentifier:v21];
  }

  else if (v21)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DB16C();
    }

    [randomViewControllerManager showNoteWithIdentifier:v21];
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1004DB130();
    }
  }

  handlerCopy[2](handlerCopy);
}

- (void)newShareCreatedOrSynced:(id)synced
{
  syncedCopy = synced;
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  performBlockOnMainThread();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)checkIfHasSharedNotesOrFolders:(id)folders
{
  foldersCopy = folders;
  v4 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v4 workerManagedObjectContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100095914;
  v8[3] = &unk_100645E80;
  v9 = workerManagedObjectContext;
  v10 = foldersCopy;
  v6 = foldersCopy;
  v7 = workerManagedObjectContext;
  [v7 performBlock:v8];
}

- (void)showAllowNotificationsWarmingSheet:(id)sheet
{
  sheetCopy = sheet;
  objc_opt_class();
  v5 = +[ICUIApplicationShim sharedInstance];
  keyWindow = [v5 keyWindow];
  v7 = ICDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[ICUIApplicationShim sharedInstance];
    windows = [v10 windows];
    v9 = [windows ic_firstObjectOfClass:objc_opt_class()];
  }

  if ([v9 behavior] == 1)
  {
    v12 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not showing allow notifications warming sheet in Calculator.", v24, 2u);
    }
  }

  else
  {
    ic_topmostPresentedViewController = [v9 ic_topmostPresentedViewController];
    v14 = ic_topmostPresentedViewController;
    if (ic_topmostPresentedViewController)
    {
      rootViewController = ic_topmostPresentedViewController;
    }

    else
    {
      rootViewController = [v9 rootViewController];
    }

    v16 = rootViewController;

    if (+[UIDevice ic_isiPhone])
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    v18 = objc_alloc_init(ICAllowNotificationsViewController);
    [(ICAppDelegate *)self setAllowNotificationsViewController:v18];

    allowNotificationsViewController = [(ICAppDelegate *)self allowNotificationsViewController];
    [allowNotificationsViewController setModalPresentationStyle:v17];

    allowNotificationsViewController2 = [(ICAppDelegate *)self allowNotificationsViewController];
    [allowNotificationsViewController2 setModalInPresentation:1];

    if (+[UIDevice ic_isVision])
    {
      allowNotificationsViewController3 = [(ICAppDelegate *)self allowNotificationsViewController];
      [allowNotificationsViewController3 setPreferredContentSize:{512.0, 680.0}];
    }

    allowNotificationsViewController4 = [(ICAppDelegate *)self allowNotificationsViewController];
    [allowNotificationsViewController4 setCompletionHandler:sheetCopy];

    allowNotificationsViewController5 = [(ICAppDelegate *)self allowNotificationsViewController];
    [v16 presentViewController:allowNotificationsViewController5 animated:1 completion:0];
  }
}

- (void)dismissAllowNotificationsWarmingSheet
{
  allowNotificationsViewController = [(ICAppDelegate *)self allowNotificationsViewController];
  [allowNotificationsViewController dismissViewControllerAnimated:1 completion:0];

  [(ICAppDelegate *)self setAllowNotificationsViewController:0];
}

- (void)requestAuthorizationToShowUserNotificationsIfNecessary
{
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICAppDelegate requestAuthorizationToShowUserNotificationsIfNecessary]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAppDelegate *)self requestedAuthorizationToShowUserNotifications])
  {
    if ((+[UIDevice ic_isLocked]& 1) != 0)
    {
LABEL_19:
      v14 = os_log_create("com.apple.notes", "Notifications");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DB260();
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v3 = +[UIApplication sharedApplication];
      connectedScenes = [v3 connectedScenes];

      v5 = [connectedScenes countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v25;
        while (2)
        {
          v8 = 0;
          do
          {
            if (*v25 != v7)
            {
              objc_enumerationMutation(connectedScenes);
            }

            objc_opt_class();
            v9 = ICDynamicCast();
            screen = [v9 screen];
            ic_isSecure = [screen ic_isSecure];

            if (ic_isSecure)
            {

              goto LABEL_19;
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [connectedScenes countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      objc_opt_class();
      v12 = +[ICUIApplicationShim sharedInstance];
      keyWindow = [v12 keyWindow];
      v14 = ICDynamicCast();

      ic_topmostPresentedViewController = [v14 ic_topmostPresentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      isAnyWelcomeScreenVisible = [(ICAppDelegate *)self isAnyWelcomeScreenVisible];
      windowScene = [v14 windowScene];
      session = [windowScene session];
      role = [session role];

      if (![(ICAppDelegate *)self requestedAuthorizationToShowUserNotifications])
      {
        v21 = +[UIApplication sharedApplication];
        v22 = ([v21 applicationState] != 0) | isAnyWelcomeScreenVisible | isKindOfClass;

        if ((v22 & 1) == 0 && role != SBSUIWindowSceneSessionRoleSystemNotes)
        {
          [(ICAppDelegate *)self setRequestedAuthorizationToShowUserNotifications:1];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100095FF0;
          v23[3] = &unk_100647928;
          v23[4] = self;
          [(ICAppDelegate *)self checkIfUserNotificationsAllowed:v23];
        }
      }
    }
  }
}

- (void)checkIfUserNotificationsAllowed:(id)allowed
{
  allowedCopy = allowed;
  userNotificationsAllowed = [(ICAppDelegate *)self userNotificationsAllowed];

  if (userNotificationsAllowed)
  {
    if (allowedCopy)
    {
      userNotificationsAllowed2 = [(ICAppDelegate *)self userNotificationsAllowed];
      allowedCopy[2](allowedCopy, [userNotificationsAllowed2 integerValue]);
    }
  }

  else
  {
    v7 = +[UNUserNotificationCenter currentNotificationCenter];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100096330;
    v8[3] = &unk_100647978;
    v8[4] = self;
    v9 = allowedCopy;
    [v7 getNotificationSettingsWithCompletionHandler:v8];
  }
}

- (void)saveQuicknoteArchiveState:(id)state
{
  stateCopy = state;
  v5 = +[NSUserDefaults standardUserDefaults];
  dictionaryRepresentation = [stateCopy dictionaryRepresentation];

  [v5 setObject:dictionaryRepresentation forKey:@"quicknoteState"];
}

- (void)saveLastBackgroundedArchiveState:(id)state
{
  stateCopy = state;
  v5 = +[NSUserDefaults standardUserDefaults];
  dictionaryRepresentation = [stateCopy dictionaryRepresentation];

  [v5 setObject:dictionaryRepresentation forKey:@"lastBackgroundedState"];
}

- (ICWindowStateArchive)quicknoteArchiveState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"quicknoteState"];

  if (v3)
  {
    v4 = [ICWindowStateArchive windowStateArchiveFromDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICWindowStateArchive)lastBackgroundedArchiveState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"lastBackgroundedState"];

  if (v3)
  {
    v4 = [ICWindowStateArchive windowStateArchiveFromDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)beginBackgroundTaskWithName:(id)name expirationHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 beginBackgroundTaskWithName:nameCopy expirationHandler:handlerCopy];

  return v8;
}

- (void)endBackgroundTask:(unint64_t)task
{
  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:task];
}

- (void)sessionDidStartForWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [ICNAEventReporter alloc];
  v6 = [v5 initWithSubTrackerName:kICNASubtrackerNameAppDelegate windowScene:sceneCopy];

  [(ICAppDelegate *)self submitBackgroundAnalyticsEventsWithEventReporter:v6];
}

- (void)setupReachability
{
  v3 = +[ICReachability sharedReachabilityForInternetConnection];
  [(ICAppDelegate *)self setReachability:v3];

  reachability = [(ICAppDelegate *)self reachability];
  [reachability startNotifier];

  v5 = +[ICMentionNotificationController sharedController];
  [v5 listenForReachabilityChange];
}

- (void)alertWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle defaultButtonTitle:(id)defaultButtonTitle actionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  v19 = titleCopy;
  v20 = messageCopy;
  defaultButtonTitleCopy = defaultButtonTitle;
  handlerCopy = handler;
  v21 = buttonTitleCopy;
  v14 = defaultButtonTitleCopy;
  v15 = handlerCopy;
  v16 = buttonTitleCopy;
  v17 = messageCopy;
  v18 = titleCopy;
  performBlockOnMainThread();
}

- (void)waitForDelayedLaunchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICAppDelegate(DelayedLaunch) waitForDelayedLaunchWithCompletionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ([(ICAppDelegate *)self isReadyForDelayedLaunchTasks])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1000970C8;
    v15 = sub_1000970D8;
    v16 = 0;
    v5 = +[NSNotificationCenter defaultCenter];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000970E0;
    v8[3] = &unk_100647A08;
    v10 = &v11;
    v9 = handlerCopy;
    v6 = [v5 addObserverForName:@"ICAppDelegateWillRunDelayedLaunchTasks" object:self queue:0 usingBlock:v8];
    v7 = v12[5];
    v12[5] = v6;

    _Block_object_dispose(&v11, 8);
  }
}

- (id)ic_viewControllerManager
{
  v2 = +[ICAppDelegate sharedInstance];
  viewControllerManagers = [v2 viewControllerManagers];
  firstObject = [viewControllerManagers firstObject];

  return firstObject;
}

- (void)ic_selectLocalModernAccount
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  v8 = [ICAccount localAccountInContext:managedObjectContext];

  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  folderListViewController = [ic_viewControllerManager folderListViewController];
  objectID = [v8 objectID];
  [folderListViewController selectItemWithIdentifier:objectID animated:0];
}

- (void)ic_selectFolderNamed:(id)named
{
  namedCopy = named;
  v5 = +[ICNoteContext sharedContext];
  managedObjectContext = [v5 managedObjectContext];
  v7 = [ICFolder predicateForVisibleFoldersInContext:managedObjectContext];
  v18[0] = v7;
  namedCopy = [NSPredicate predicateWithFormat:@"title == %@", namedCopy];
  v18[1] = namedCopy;
  v9 = [NSArray arrayWithObjects:v18 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = +[ICNoteContext sharedContext];
  managedObjectContext2 = [v11 managedObjectContext];
  v13 = [ICFolder foldersMatchingPredicate:v10 context:managedObjectContext2];

  if ([v13 count] != 1)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "folders.count == 1", "-[ICAppDelegate(ICTesting) ic_selectFolderNamed:]", 1, 0, @"Unexpected number (%lu) of folders named: %@", [v13 count], namedCopy);
  }

  firstObject = [v13 firstObject];
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  folderListViewController = [ic_viewControllerManager folderListViewController];
  objectID = [firstObject objectID];
  [folderListViewController selectItemWithIdentifier:objectID animated:0];
}

- (id)ic_folderListScrollView
{
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  folderListViewController = [ic_viewControllerManager folderListViewController];
  collectionView = [folderListViewController collectionView];

  return collectionView;
}

- (id)ic_notesListScrollView
{
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  rootNoteBrowseViewController = [ic_viewControllerManager rootNoteBrowseViewController];

  if ([rootNoteBrowseViewController noteContainerViewMode])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "noteBrowseViewController.noteContainerViewMode == ICNoteContainerViewModeList", "-[ICAppDelegate(ICTesting) ic_notesListScrollView]", 1, 0, @"Expected a note list, but got view mode %lu", [rootNoteBrowseViewController noteContainerViewMode]);
  }

  ic_viewControllerManager2 = [(ICAppDelegate *)self ic_viewControllerManager];
  rootNoteBrowseViewController2 = [ic_viewControllerManager2 rootNoteBrowseViewController];
  collectionView = [rootNoteBrowseViewController2 collectionView];

  return collectionView;
}

- (id)ic_noteEditorViewController
{
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  noteEditorViewController = [ic_viewControllerManager noteEditorViewController];

  return noteEditorViewController;
}

- (id)ic_notesGridScrollView
{
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  rootNoteBrowseViewController = [ic_viewControllerManager rootNoteBrowseViewController];

  if ([rootNoteBrowseViewController noteContainerViewMode] != 1)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "noteBrowseViewController.noteContainerViewMode == ICNoteContainerViewModeGrid", "-[ICAppDelegate(ICTesting) ic_notesGridScrollView]", 1, 0, @"Expected grid view, but got view mode %lu", [rootNoteBrowseViewController noteContainerViewMode]);
  }

  collectionView = [rootNoteBrowseViewController collectionView];

  return collectionView;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  objc_storeStrong(&qword_1006CB340, test);
  objc_storeStrong(&qword_1006CB348, options);
  [testCopy containsString:@"Landscape"];
  byte_1006CB359 = 0;
  v10 = objc_opt_class();
  if (v10)
  {
    LOBYTE(v10) = +[RPTTestRunner isRecapAvailable];
  }

  byte_1006CB358 = v10;
  [(ICAppDelegate *)self setIcSearchIndexerDisabled:[(ICAppDelegate *)self isScrollingTest:testCopy]];
  if ([testCopy containsString:@"ICShowAccountsList"])
  {
    [(ICAppDelegate *)self startICShowAccountsListTest:optionsCopy];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICScrollAccountsList"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICScrollAccountsListRecap"))
  {
    [(ICAppDelegate *)self startICScrollAccountsListTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICRotateAccountsList"])
  {
    [(ICAppDelegate *)self startICRotateAccountsListTest:optionsCopy];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICShowNotesList"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICWarmShowNotesList"))
  {
    -[ICAppDelegate startICShowNotesListTest:warm:](self, "startICShowNotesListTest:warm:", optionsCopy, [testCopy containsString:@"ICWarmShowNotesList"]);
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICScrollNotesList"])
  {
    [(ICAppDelegate *)self startICScrollNotesListTest:optionsCopy];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICScrollEnglishNotesList"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICScrollEnglishNotesListRecap"))
  {
    [(ICAppDelegate *)self startICScrollEnglishNotesListTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICNewNoteFromNotesList"])
  {
    [(ICAppDelegate *)self startICNewNoteFromNotesListTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICRotateNotesList"])
  {
    [(ICAppDelegate *)self startICRotateNotesListTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICScrollSearchResultsNotesList"])
  {
    [(ICAppDelegate *)self startICScrollSearchResultsNotesListTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowSearchResults"])
  {
    [(ICAppDelegate *)self startICShowSearchResultsTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICScrollTableHorizontally"])
  {
    [(ICAppDelegate *)self startICScrollTableHorizontallyTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICScrollTableVertically"])
  {
    [(ICAppDelegate *)self startICScrollTableVerticallyTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowTableNote"])
  {
    v12 = @"Tables";
LABEL_33:
    [(ICAppDelegate *)self startICShowNoteTestInFolderNamed:v12 withOptions:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowGridView"])
  {
    [(ICAppDelegate *)self startICShowGridViewTest:optionsCopy];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICScrollNotesGrid"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICScrollNotesGridRecap"))
  {
    [(ICAppDelegate *)self startICScrollGridViewTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowInlineSketchNote"])
  {
    v12 = @"Inline Sketches";
    goto LABEL_33;
  }

  if ([testCopy containsString:@"ICScrollInlineSketchNote"])
  {
    [(ICAppDelegate *)self startICScrollInlineSketchTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowInkPicker"])
  {
    [(ICAppDelegate *)self startICShowInkPickerTest:optionsCopy];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICNewNoteFromNoteView"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICWarmKeyboardNewNoteFromNoteView"))
  {
    -[ICAppDelegate startICNewNoteFromNoteViewTest:warm:](self, "startICNewNoteFromNoteViewTest:warm:", optionsCopy, [testCopy containsString:@"ICWarmKeyboardNewNoteFromNoteView"]);
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICShowNote"])
  {
    [(ICAppDelegate *)self startICShowNoteTest:optionsCopy];
    goto LABEL_8;
  }

  if ([testCopy containsString:@"ICScrollNoteKeyboardUp"])
  {
    selfCopy2 = self;
    v14 = optionsCopy;
    v15 = 1;
LABEL_55:
    [(ICAppDelegate *)selfCopy2 startICScrollNoteTest:v14 withKeyboardUp:v15];
    goto LABEL_8;
  }

  if (([testCopy containsString:@"ICScrollNote"] & 1) != 0 || objc_msgSend(testCopy, "containsString:", @"ICScrollNoteRecap"))
  {
    selfCopy2 = self;
    v14 = optionsCopy;
    v15 = 0;
    goto LABEL_55;
  }

  if ([testCopy containsString:@"ICShowShareSheetFromNoteView"])
  {
    [(ICAppDelegate *)self startICShowShareSheetFromNoteViewTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ICRotateNote"])
  {
    [(ICAppDelegate *)self startICRotateNoteTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ICInsertChecklist"])
  {
    [(ICAppDelegate *)self startICInsertChecklistTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ICKeyboardBringUpAndDismissal"])
  {
    [(ICAppDelegate *)self startICKeyboardBringUpAndDismissal:optionsCopy];
  }

  else if ([testCopy containsString:@"ICKeyboardRotation"])
  {
    [(ICAppDelegate *)self startICKeyboardRotation:optionsCopy];
  }

  else if ([testCopy containsString:@"ICKeyboardSplitAndMerge"])
  {
    [(ICAppDelegate *)self startICKeyboardSplitAndMerge:optionsCopy];
  }

  else if ([testCopy containsString:@"ICNoteEditorTyping"])
  {
    [(ICAppDelegate *)self startICNoteEditorTypingTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ICResizeWindow"])
  {
    [(ICAppDelegate *)self startICResizeWindowTest:optionsCopy];
  }

LABEL_8:

  return 1;
}

- (void)didShowFolderList
{
  if ((byte_1006CB359 & 1) == 0 && [qword_1006CB340 containsString:@"ICShowAccountsList"])
  {
    if ([qword_1006CB340 containsString:@"ICShowAccountsList"])
    {
      if (byte_1006CB370 == 1)
      {
        [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
        byte_1006CB370 = 0;
      }

      else
      {
        [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
      }
    }

    v2 = UIApp;
    v3 = qword_1006CB340;

    [v2 finishedTest:v3];
  }
}

- (void)folderListDidLayoutSubviews
{
  if ((byte_1006CB359 & 1) == 0 && [qword_1006CB340 containsString:@"ICShowAccountsList"])
  {
    v2 = qword_1006CB340;

    sub_1000F1CA4(v2);
  }
}

- (void)didShowNotesList
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICShowNotesList"] & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICWarmShowNotesList")))
  {
    if (byte_1006CB370 == 1)
    {
      [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
      byte_1006CB370 = 0;
    }

    else
    {
      [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
    }

    v2 = UIApp;
    v3 = qword_1006CB340;

    [v2 finishedTest:v3];
  }
}

- (void)noteListDidLayoutSubviews
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICShowNotesList"] & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICWarmShowNotesList")))
  {
    v2 = qword_1006CB340;

    sub_1000F1CA4(v2);
  }
}

- (void)didEditorBeginEditing
{
  if ((byte_1006CB359 & 1) == 0 && (([qword_1006CB340 containsString:@"ICNewNoteFromNotesList"] & 1) != 0 || (objc_msgSend(qword_1006CB340, "containsString:", @"ICNewNoteFromNoteView") & 1) != 0 || objc_msgSend(qword_1006CB340, "containsString:", @"ICWarmKeyboardNewNoteFromNoteView")))
  {
    v2 = UIApp;

    [v2 installCACommitCompletionBlock:&stru_100649B00];
  }
}

- (void)didEditorPresentActivityViewController
{
  if ((byte_1006CB359 & 1) == 0 && [qword_1006CB340 containsString:@"ICShowShareSheetFromNoteView"])
  {
    v2 = UIApp;

    [v2 installCACommitCompletionBlock:&stru_100649B20];
  }
}

- (void)textViewDidChange
{
  if ((byte_1006CB359 & 1) == 0)
  {
    if ([qword_1006CB340 containsString:@"ICInsertChecklist"])
    {
      v3 = UIApp;

      [v3 installCACommitCompletionBlock:&stru_100649B40];
    }

    else if ([qword_1006CB340 containsString:@"ICNoteEditorTyping"] && byte_1006CB35A == 1)
    {
      ic_noteEditorViewController = [(ICAppDelegate *)self ic_noteEditorViewController];
      textView = [ic_noteEditorViewController textView];

      textStorage = [textView textStorage];
      v6 = [@"dog" length];
      if ([textStorage length] > v6)
      {
        v7 = [textStorage attributedSubstringFromRange:{objc_msgSend(textStorage, "length") - v6, v6}];
        string = [v7 string];

        if ([string isEqualToString:@"dog"])
        {
          [UIApp installCACommitCompletionBlock:&stru_100649B60];
        }
      }
    }
  }
}

- (void)inkPickerDidShow
{
  if ([qword_1006CB340 containsString:@"ICShowInkPicker"])
  {
    if (byte_1006CB370 == 1)
    {
      [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
      byte_1006CB370 = 0;
    }

    else
    {
      [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
    }

    v2 = UIApp;
    v3 = qword_1006CB340;

    [v2 finishedTest:v3];
  }
}

- (void)searchResultBecameVisible
{
  if ((byte_1006CB359 & 1) == 0 && (byte_1006CB35B & 1) == 0 && [qword_1006CB340 containsString:@"ICShowSearchResults"])
  {
    byte_1006CB35B = 1;
    v2 = UIApp;

    [v2 installCACommitCompletionBlock:&stru_100649B80];
  }
}

- (void)didShowGridView
{
  if ((byte_1006CB359 & 1) == 0 && [qword_1006CB340 containsString:@"ICShowGridView"])
  {
    if (byte_1006CB370 == 1)
    {
      [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
      byte_1006CB370 = 0;
    }

    else
    {
      [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
    }

    v2 = UIApp;
    v3 = qword_1006CB340;

    [v2 finishedTest:v3 waitForCommit:0 extraResults:0];
  }
}

- (void)startICShowAccountsListTest:(id)test
{
  byte_1006CB359 = 1;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F2560;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F2610;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v4 readyBlock:v3];
}

- (void)startICScrollAccountsListTest:(id)test
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F27F0;
  v4[3] = &unk_100645BA0;
  selfCopy = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy dismissMigrationScreenCompletionBlock:v4];
}

- (void)startICRotateAccountsListTest:(id)test
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F2A38;
  v4[3] = &unk_100645BA0;
  selfCopy = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy dismissMigrationScreenCompletionBlock:v4];
}

- (void)startICShowNotesListTest:(id)test warm:(BOOL)warm
{
  byte_1006CB359 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F2D40;
  v4[3] = &unk_100646080;
  v4[4] = self;
  warmCopy = warm;
  [(ICAppDelegate *)self dismissMigrationScreenCompletionBlock:v4];
}

- (void)performScrollTestForScrollView:(id)view withOptions:(id)options
{
  optionsCopy = options;
  viewCopy = view;
  v6 = [optionsCopy objectForKey:@"iterations"];
  intValue = [v6 intValue];

  v8 = [optionsCopy objectForKey:@"offset"];
  intValue2 = [v8 intValue];

  [viewCopy scrollToTop];
  v10 = [optionsCopy objectForKey:@"recapBased"];

  LODWORD(optionsCopy) = [v10 BOOLValue];
  if (optionsCopy)
  {
    [viewCopy ic_performRecapScrollTestNamed:qword_1006CB340 iterations:intValue];
  }

  else
  {
    if (intValue2)
    {
      v11 = intValue2;
    }

    else
    {
      v11 = 20;
    }

    [viewCopy _performScrollTest:qword_1006CB340 iterations:intValue delta:v11];
  }
}

- (void)performFlickScrollOnScrollView:(id)view duration:(double)duration delta:(int64_t)delta delayBetweenScroll:(double)scroll iterations:(unint64_t)iterations
{
  viewCopy = view;
  v13 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF880(v13);
  }

  deltaCopy = delta;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F3410;
  v16[3] = &unk_100649BF0;
  v17 = viewCopy;
  iterationsCopy = iterations;
  v16[4] = self;
  scrollCopy = scroll;
  durationCopy = duration;
  deltaCopy2 = delta;
  v15 = viewCopy;
  [v15 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v16 willBeginDecelerating:0.0 didEndDecelerating:{deltaCopy, duration}];
}

- (void)performFlickScrollTestForScrollView:(id)view withOptions:(id)options
{
  optionsCopy = options;
  viewCopy = view;
  v8 = [optionsCopy objectForKey:@"iterations"];
  intValue = [v8 intValue];

  v10 = [optionsCopy objectForKey:@"offset"];
  intValue2 = [v10 intValue];
  if (intValue2)
  {
    v12 = intValue2;
  }

  else
  {
    v12 = 100;
  }

  v13 = [optionsCopy objectForKey:@"flickDelay"];

  [v13 doubleValue];
  v15 = v14;

  v16 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218752;
    v18 = intValue;
    v19 = 2048;
    v20 = v12;
    v21 = 2048;
    v22 = 0x3FC999999999999ALL;
    v23 = 2048;
    v24 = v15;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Flick scroll test iterations %lu, delta: %lu, duration: %.2f, delay: %.2f", &v17, 0x2Au);
  }

  [viewCopy scrollToTop];
  [(ICAppDelegate *)self performFlickScrollOnScrollView:viewCopy duration:v12 delta:intValue delayBetweenScroll:0.2 iterations:v15];
}

- (void)startICScrollNotesListTest:(id)test
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F37DC;
  v6[3] = &unk_100645E30;
  selfCopy = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F37E4;
  v4[3] = &unk_100645BA0;
  v4[4] = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNotesListWithAccountSelectionBlock:v6 readyBlock:v4];
}

- (void)startICScrollEnglishNotesListTest:(id)test
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F391C;
  v6[3] = &unk_100645E30;
  selfCopy = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F392C;
  v4[3] = &unk_100645BA0;
  v4[4] = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNotesListWithAccountSelectionBlock:v6 readyBlock:v4];
}

- (void)startICScrollSearchResultsNotesListTest:(id)test
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F3A20;
  v4[3] = &unk_100645BA0;
  selfCopy = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy reindexEverythingThenPerformBlock:v4];
}

- (void)startICRotateNotesListTest:(id)test
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F3DA0;
  v7[3] = &unk_100645E30;
  selfCopy = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F3DA8;
  v4[3] = &unk_100645BA0;
  testCopy = test;
  v6 = selfCopy;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNotesListWithAccountSelectionBlock:v7 readyBlock:v4];
}

- (void)startICShowNoteTest:(id)test
{
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F3F7C;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F3F84;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v4 readyBlock:v3];
}

- (void)startICNewNoteFromNotesListTest:(id)test
{
  byte_1006CB359 = 1;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4108;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F4110;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v4 readyBlock:v3];
}

- (void)startICNewNoteFromNoteViewTest:(id)test warm:(BOOL)warm
{
  byte_1006CB359 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4398;
  v8[3] = &unk_100649C38;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F43CC;
  v6[3] = &unk_100649C60;
  v6[4] = self;
  warmCopy = warm;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F44E8;
  v4[3] = &unk_100646080;
  v4[4] = self;
  warmCopy2 = warm;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v6 readyBlock:v4 errorBlock:&stru_100649AC0];
}

- (void)startICScrollNoteTest:(id)test withKeyboardUp:(BOOL)up
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F486C;
  v9[3] = &unk_100649C38;
  selfCopy = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F488C;
  v7[3] = &unk_100649C60;
  v7[4] = self;
  upCopy = up;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4900;
  v5[3] = &unk_100645BA0;
  v5[4] = self;
  testCopy = test;
  v4 = testCopy;
  [(ICAppDelegate *)selfCopy showNoteWithAccountSelectionBlock:v9 noteSelectionBlock:v7 readyBlock:v5 errorBlock:&stru_100649AC0];
}

- (void)startICShowShareSheetFromNoteViewTest:(id)test
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4A58;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4A78;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F4AD0;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649AC0];
}

- (void)startICRotateNoteTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4CE4;
  v8[3] = &unk_100649C38;
  selfCopy = self;
  selfCopy2 = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F4D04;
  v7[3] = &unk_100649C38;
  v7[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F4D5C;
  v4[3] = &unk_100645BA0;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v4 errorBlock:&stru_100649AC0];
}

- (void)startICScrollTableHorizontallyTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F4FA8;
  v8[3] = &unk_100649C38;
  selfCopy = self;
  selfCopy2 = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F4FD0;
  v7[3] = &unk_100649C38;
  v7[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5028;
  v4[3] = &unk_100645BA0;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v4 errorBlock:&stru_100649AC0];
}

- (void)startICScrollTableVerticallyTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F51FC;
  v8[3] = &unk_100649C38;
  selfCopy = self;
  selfCopy2 = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F5224;
  v7[3] = &unk_100649C38;
  v7[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F527C;
  v4[3] = &unk_100645BA0;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v4 errorBlock:&stru_100649AC0];
}

- (void)startICShowGridViewTest:(id)test
{
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F53D8;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F53E0;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v4 readyBlock:v3];
}

- (void)startICScrollGridViewTest:(id)test
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F55C4;
  v6[3] = &unk_100645E30;
  selfCopy = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F55D4;
  v4[3] = &unk_100645BA0;
  v4[4] = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNotesGridWithAccountSelectionBlock:v6 readyBlock:v4];
}

- (void)startICShowNoteTestInFolderNamed:(id)named withOptions:(id)options
{
  namedCopy = named;
  byte_1006CB359 = 1;
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F57A8;
    v16[3] = &unk_100645BA0;
    v8 = &v17;
    v16[4] = self;
    v17 = namedCopy;
    v9 = namedCopy;
    v10 = &stru_100649CA0;
    v11 = v16;
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F57BC;
    v14[3] = &unk_100645BA0;
    v8 = &v15;
    v14[4] = self;
    v15 = namedCopy;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F57C8;
    v13[3] = &unk_100645E30;
    v13[4] = self;
    v12 = namedCopy;
    v10 = v14;
    v11 = v13;
  }

  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v10 readyBlock:v11];
}

- (void)startICScrollInlineSketchTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F59B0;
  v8[3] = &unk_100649C38;
  selfCopy = self;
  selfCopy2 = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F59D8;
  v7[3] = &unk_100649C38;
  v7[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5A30;
  v4[3] = &unk_100645BA0;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v4 errorBlock:&stru_100649AC0];
}

- (void)startICKeyboardBringUpAndDismissal:(id)dismissal
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F5BD8;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5BF8;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F5C50;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649AC0];
}

- (void)startICKeyboardRotation:(id)rotation
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F5E1C;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F5E3C;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F5E94;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649AC0];
}

- (void)startICKeyboardSplitAndMerge:(id)merge
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F6060;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F6080;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F60D8;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649AC0];
}

- (void)startICInsertChecklistTest:(id)test
{
  byte_1006CB359 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F62AC;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F62E0;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F64EC;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649CC0];
}

- (void)startICShowInkPickerTest:(id)test
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F66C4;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  v3[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F66F8;
  v4[3] = &unk_100649C38;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F6750;
  v3[3] = &unk_100645E30;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v5 noteSelectionBlock:v4 readyBlock:v3 errorBlock:&stru_100649AC0];
}

- (void)startICShowSearchResultsTest:(id)test
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F685C;
  v4[3] = &unk_100645BA0;
  selfCopy = self;
  testCopy = test;
  v3 = testCopy;
  [(ICAppDelegate *)selfCopy reindexEverythingThenPerformBlock:v4];
}

- (void)startICNoteEditorTypingTest:(id)test
{
  if (byte_1006CB358)
  {
    byte_1006CB359 = 1;
    byte_1006CB35A = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F6B84;
    v8[3] = &unk_100649C38;
    v8[4] = self;
    v6[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F6BB8;
    v7[3] = &unk_100649C38;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F6F48;
    v6[3] = &unk_100645E30;
    [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v6 errorBlock:&stru_100649CE0];
  }

  else
  {
    v4 = UIApp;
    v5 = qword_1006CB340;

    [v4 failedTest:v5 withFailure:@"Recap required"];
  }
}

- (void)startICResizeWindowTest:(id)test
{
  if (byte_1006CB358)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F7304;
    v8[3] = &unk_100649C38;
    v8[4] = self;
    v6[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F7338;
    v7[3] = &unk_100649C38;
    v7[4] = self;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F7390;
    v6[3] = &unk_100645E30;
    [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v8 noteSelectionBlock:v7 readyBlock:v6 errorBlock:&stru_100649AC0];
  }

  else
  {
    v4 = UIApp;
    v5 = qword_1006CB340;

    [v4 failedTest:v5 withFailure:@"Recap required"];
  }
}

- (int64_t)scrollIterationsFromDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"scrollTestIterations"];

  if (v3 <= 0)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

- (int64_t)scrollOffsetFromDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"scrollTestOffset"];

  if (v3 <= 0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (BOOL)scrollTestUseRecap
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"scrollTestUseRecap"];

  return v3;
}

- (BOOL)scrollTestUseFlick
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"scrollTestUseFlick"];

  return v3;
}

- (void)testScrollNotesList
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F7658;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [(ICAppDelegate *)self showNotesListWithAccountSelectionBlock:v5 readyBlock:0];
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F7668;
  handler[3] = &unk_100649D08;
  handler[4] = self;
  notify_register_dispatch("com.apple.mobilenotes.testScrollNotesList", &out_token, &_dispatch_main_q, handler);
}

- (void)testScrollNote
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F7904;
  v6[3] = &unk_100649C38;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F7924;
  v5[3] = &unk_100649C38;
  v5[4] = self;
  [(ICAppDelegate *)self showNoteWithAccountSelectionBlock:v6 noteSelectionBlock:v5 readyBlock:0 errorBlock:&stru_100649AC0];
  out_token = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F797C;
  v3[3] = &unk_100649D08;
  v3[4] = self;
  notify_register_dispatch("com.apple.mobilenotes.testScrollNote", &out_token, &_dispatch_main_q, v3);
}

- (void)reindexEverythingThenPerformBlock:(id)block
{
  blockCopy = block;
  v4 = +[NSDate date];
  v5 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF93C(v5);
  }

  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v6 = +[ICCDCSIReindexer sharedReindexer];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F7CB4;
    v16[3] = &unk_100645570;
    v17 = v4;
    v18 = blockCopy;
    v7 = blockCopy;
    v8 = v4;
    [v6 reindexAllSearchableItemsWithCompletionHandler:v16];

    v9 = v17;
  }

  else
  {
    v10 = +[ICSearchIndexer sharedIndexer];
    [v10 setDisabled:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F7D2C;
    v12[3] = &unk_100649D30;
    v13 = v4;
    v14 = v10;
    v15 = blockCopy;
    v9 = blockCopy;
    v7 = v10;
    v11 = v4;
    [v7 reindexAllSearchableItemsWithCompletionHandler:v12];
  }
}

- (void)dismissMigrationScreenCompletionBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  window = [(ICAppDelegate *)self window];
  v6 = ICDynamicCast();
  ic_topmostPresentedViewController = [v6 ic_topmostPresentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [ic_topmostPresentedViewController noUpgradeActionAndDismiss];
    v8 = 2000000000;
    if (!blockCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (blockCopy)
  {
LABEL_5:
    v9 = dispatch_time(0, v8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F7EE8;
    block[3] = &unk_100645CC8;
    v11 = blockCopy;
    dispatch_after(v9, &_dispatch_main_q, block);
  }

LABEL_6:
}

- (void)showNotesListWithAccountSelectionBlock:(id)block readyBlock:(id)readyBlock
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F7FB8;
  v7[3] = &unk_100646030;
  selfCopy = self;
  blockCopy = block;
  readyBlockCopy = readyBlock;
  v5 = readyBlockCopy;
  v6 = blockCopy;
  [(ICAppDelegate *)selfCopy dismissMigrationScreenCompletionBlock:v7];
}

- (void)showNotesGridWithAccountSelectionBlock:(id)block readyBlock:(id)readyBlock
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F8240;
  v6[3] = &unk_100645E80;
  selfCopy = self;
  readyBlockCopy = readyBlock;
  v5 = readyBlockCopy;
  [(ICAppDelegate *)selfCopy showNotesListWithAccountSelectionBlock:block readyBlock:v6];
}

- (void)showNoteWithAccountSelectionBlock:(id)block noteSelectionBlock:(id)selectionBlock readyBlock:(id)readyBlock errorBlock:(id)errorBlock
{
  blockCopy = block;
  selectionBlockCopy = selectionBlock;
  readyBlockCopy = readyBlock;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F84D4;
  v17[3] = &unk_100649DD0;
  v17[4] = self;
  v18 = blockCopy;
  errorBlockCopy = errorBlock;
  v20 = selectionBlockCopy;
  v21 = readyBlockCopy;
  v13 = readyBlockCopy;
  v14 = selectionBlockCopy;
  v15 = errorBlockCopy;
  v16 = blockCopy;
  [(ICAppDelegate *)self dismissMigrationScreenCompletionBlock:v17];
}

- (BOOL)selectFirstNoteInCollectionView:(id)view errorString:(id *)string
{
  viewCopy = view;
  v7 = [viewCopy numberOfItemsInSection:0];
  if (v7)
  {
    v8 = [NSIndexPath indexPathForItem:0 inSection:0];
    delegate = [viewCopy delegate];
    v10 = [delegate collectionView:viewCopy shouldSelectItemAtIndexPath:v8];

    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = [NSIndexPath indexPathForItem:1 inSection:0];

      delegate2 = [viewCopy delegate];
      v13 = [delegate2 collectionView:viewCopy shouldSelectItemAtIndexPath:v11];

      if ((v13 & 1) == 0)
      {
        [ICAssert handleFailedAssertWithCondition:"[collectionView.delegate collectionView:collectionView shouldSelectItemAtIndexPath:indexPath]" functionName:"[ICAppDelegate(ICTesting) selectFirstNoteInCollectionView:errorString:]" simulateCrash:1 showAlert:0 format:@"2nd item in collection view is not a note"];
      }
    }

    [viewCopy selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
    delegate3 = [viewCopy delegate];
    [delegate3 collectionView:viewCopy didSelectItemAtIndexPath:v11];

    delegate4 = [viewCopy delegate];
    [delegate4 collectionView:viewCopy performPrimaryActionForItemAtIndexPath:v11];

    v16 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v16 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
      mainSplitViewController = [ic_viewControllerManager mainSplitViewController];
      [mainSplitViewController hideColumn:1];
    }
  }

  else if (string)
  {
    *string = @"No notes found.";
  }

  return v7 != 0;
}

- (BOOL)selectFirstNoteInTableView:(id)view errorString:(id *)string
{
  viewCopy = view;
  v6 = [viewCopy numberOfRowsInSection:0];
  if (v6)
  {
    v7 = [NSIndexPath indexPathForItem:0 inSection:0];
    [viewCopy selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
    delegate = [viewCopy delegate];
    [delegate tableView:viewCopy didSelectRowAtIndexPath:v7];
  }

  else if (string)
  {
    *string = @"No notes found.";
  }

  return v6 != 0;
}

- (BOOL)selectFirstNoteInScrollView:(id)view errorString:(id *)string
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ICAppDelegate *)self selectFirstNoteInTableView:viewCopy errorString:string];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(ICAppDelegate *)self selectFirstNoteInCollectionView:viewCopy errorString:string];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (void)showAccountsListAnimated:(BOOL)animated
{
  animatedCopy = animated;
  ic_viewControllerManager = [(ICAppDelegate *)self ic_viewControllerManager];
  [ic_viewControllerManager showAccountListAnimated:animatedCopy];
}

- (void)bringUpKeyboard
{
  ic_noteEditorViewController = [(ICAppDelegate *)self ic_noteEditorViewController];
  [ic_noteEditorViewController setEditing:1 animated:1];
}

- (void)goToBottomOfNoteInEditor
{
  ic_noteEditorViewController = [(ICAppDelegate *)self ic_noteEditorViewController];
  textView = [ic_noteEditorViewController textView];

  textStorage = [textView textStorage];
  [textView setSelectedRange:{objc_msgSend(textStorage, "length"), 0}];

  selectedRange = [textView selectedRange];
  [textView ic_scrollRangeToVisible:selectedRange consideringInsets:v5 animated:{1, 0}];
}

- (void)dismissKeyboard
{
  ic_noteEditorViewController = [(ICAppDelegate *)self ic_noteEditorViewController];
  [ic_noteEditorViewController setEditing:0 animated:1];
}

- (BOOL)isScrollingTest:(id)test
{
  v3 = qword_1006CB368;
  testCopy = test;
  if (v3 != -1)
  {
    sub_1004DFA24();
  }

  v5 = [qword_1006CB360 containsObject:testCopy];

  return v5;
}

- (void)rotateToOrientation:(int64_t)orientation iterationsRemaining:(int)remaining completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (remaining < 1)
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v10 = UIApp;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F8F14;
    v11[3] = &unk_100649E40;
    orientationCopy = orientation;
    v11[4] = self;
    remainingCopy = remaining;
    v12 = completionCopy;
    [v10 rotateIfNeeded:orientation completion:v11];
  }
}

@end