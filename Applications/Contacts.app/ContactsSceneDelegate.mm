@interface ContactsSceneDelegate
+ (OS_os_log)log;
- (BOOL)openContactsURL:(id)l;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)showMeContact;
- (BOOL)splitViewControllerIsDisplayingList;
- (ContactsSceneDelegate)init;
- (ContactsSceneDelegate)initWithApplication:(id)application capabilitiesManager:(id)manager schedulerProvider:(id)provider;
- (id)contactStoreDataSource;
- (id)showMeCardShortcutItem;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)checkInLaunchTasksIfNecessary;
- (void)createNewContact;
- (void)createShowMeCardApplicationShortcutIfNecessary;
- (void)displayContactIfNecessary;
- (void)executeActionDelayedUntilSceneInitialization:(id)initialization;
- (void)executeAllDelayedActions;
- (void)executeSceneInitializationTasksOnce:(id)once;
- (void)executeShortcutIfNecessary:(id)necessary completionHandler:(id)handler;
- (void)performMigrationOfFacebookContactsToLocalStoreIfNecessary;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)searchForString:(id)string;
- (void)showContact:(id)contact setEditing:(BOOL)editing;
- (void)showNewContact;
- (void)vCardImportController:(id)controller didSaveContacts:(id)contacts;
- (void)vCardImportController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation ContactsSceneDelegate

- (ContactsSceneDelegate)init
{
  v3 = +[UIApplication sharedApplication];
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v5 defaultSchedulerProvider];
  v7 = [(ContactsSceneDelegate *)self initWithApplication:v3 capabilitiesManager:v4 schedulerProvider:defaultSchedulerProvider];

  return v7;
}

+ (OS_os_log)log
{
  if (qword_1000292C0 != -1)
  {
    sub_1000025E4();
  }

  v3 = qword_1000292C8;

  return v3;
}

- (void)checkInLaunchTasksIfNecessary
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  launchCheckinRegistrar = [v3 launchCheckinRegistrar];

  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  _isCollapsed = [splitViewController _isCollapsed];

  viewingContactActivityForRestoration = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
  if (viewingContactActivityForRestoration)
  {
    viewingContactActivityForRestoration2 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
    activityType = [viewingContactActivityForRestoration2 activityType];
    v9 = [activityType isEqualToString:CNUIActivityTypeViewingList];

    if ((v9 & _isCollapsed & 1) == 0)
    {
      if (_isCollapsed)
      {
LABEL_8:
        v11 = +[CNUIContactsEnvironment currentEnvironment];
        runningInContactsAppOniPad = [v11 runningInContactsAppOniPad];

        if (runningInContactsAppOniPad)
        {
          v10 = 2;
        }

        else
        {
          v10 = 60;
        }

        goto LABEL_11;
      }

LABEL_7:
      if ([(ContactsSceneDelegate *)self splitViewControllerIsDisplayingList])
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else
  {

    if ((_isCollapsed & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = 60;
LABEL_11:
  [launchCheckinRegistrar checkInLaunchTasks:v10];
LABEL_12:
}

- (void)displayContactIfNecessary
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  traitCollection = [splitViewController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
    splitViewController2 = [(ContactsSceneDelegate *)self splitViewController];
    displayedContact = [splitViewController2 displayedContact];
    if (displayedContact)
    {
    }

    else
    {
      viewingContactActivityForRestoration = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];

      if (!viewingContactActivityForRestoration)
      {
        splitViewController3 = [(ContactsSceneDelegate *)self splitViewController];
        [splitViewController3 showCardForContact:0 fallbackToFirstContact:1];

        splitViewController4 = [(ContactsSceneDelegate *)self splitViewController];
        [splitViewController4 showContactList];
        goto LABEL_7;
      }
    }
  }

  viewingContactActivityForRestoration2 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];

  if (!viewingContactActivityForRestoration2)
  {
    return;
  }

  splitViewController4 = [(ContactsSceneDelegate *)self activityRestorer];
  viewingContactActivityForRestoration3 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
  [splitViewController4 restoreUserActivity:viewingContactActivityForRestoration3];

LABEL_7:
}

- (void)performMigrationOfFacebookContactsToLocalStoreIfNecessary
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  contactNavigationController = [splitViewController contactNavigationController];
  [contactNavigationController checkForFacebookContactsWithDelay:1 allowAlert:0.5];
}

- (void)createShowMeCardApplicationShortcutIfNecessary
{
  capabilitiesManager = [(ContactsSceneDelegate *)self capabilitiesManager];
  hasForceTouchCapability = [capabilitiesManager hasForceTouchCapability];

  application = [(ContactsSceneDelegate *)self application];
  connectedScenes = [application connectedScenes];
  v7 = [connectedScenes count];

  if (hasForceTouchCapability && v7 == 1)
  {
    showMeCardShortcutItem = [(ContactsSceneDelegate *)self showMeCardShortcutItem];
    v9 = showMeCardShortcutItem;
    if (showMeCardShortcutItem)
    {
      v12 = showMeCardShortcutItem;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    application2 = [(ContactsSceneDelegate *)self application];
    [application2 setShortcutItems:v10];

    if (v9)
    {
    }
  }
}

- (void)executeAllDelayedActions
{
  actionsDelayedUntilSceneInitialization = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
  [actionsDelayedUntilSceneInitialization _cn_each:&stru_1000207C0];

  actionsDelayedUntilSceneInitialization2 = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
  [actionsDelayedUntilSceneInitialization2 removeAllObjects];
}

- (id)contactStoreDataSource
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  contactNavigationController = [splitViewController contactNavigationController];
  dataSource = [contactNavigationController dataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dataSource;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ContactsSceneDelegate)initWithApplication:(id)application capabilitiesManager:(id)manager schedulerProvider:(id)provider
{
  applicationCopy = application;
  managerCopy = manager;
  providerCopy = provider;
  v42.receiver = self;
  v42.super_class = ContactsSceneDelegate;
  v12 = [(ContactsSceneDelegate *)&v42 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capabilitiesManager, manager);
    objc_storeStrong(&v13->_application, application);
    objc_storeStrong(&v13->_schedulerProvider, provider);
    v14 = [[ContactsSplitViewController alloc] initWithStyle:2];
    splitViewController = v13->_splitViewController;
    v13->_splitViewController = v14;

    v16 = +[CNEnvironment currentEnvironment];
    featureFlags = [v16 featureFlags];
    if ([featureFlags isFeatureEnabled:29])
    {
      v18 = +[CNUIContactsEnvironment currentEnvironment];
      runningInContactsAppOniPad = [v18 runningInContactsAppOniPad];

      if (runningInContactsAppOniPad)
      {
        v20 = v13->_splitViewController;
        if (objc_opt_respondsToSelector())
        {
          [(ContactsSplitViewController *)v13->_splitViewController _setShowsSeparators:0];
        }
      }
    }

    else
    {
    }

    v21 = [CNVCardImportController alloc];
    splitViewController = [(ContactsSceneDelegate *)v13 splitViewController];
    store = [splitViewController store];
    v24 = [v21 initWithContactStore:store presentationDelegate:v13];
    vCardImportController = v13->_vCardImportController;
    v13->_vCardImportController = v24;

    [(CNVCardImportController *)v13->_vCardImportController setDelegate:v13];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v13->_bundle;
    v13->_bundle = v26;

    [CNContactsAppIntentDependencyManager setupAppIntentDependenciesWithActionPerformer:v13];
    v28 = [CNUIUserActivityRestorer alloc];
    splitViewController2 = [(ContactsSceneDelegate *)v13 splitViewController];
    store2 = [splitViewController2 store];
    v31 = [v28 initWithContactStore:store2];
    activityRestorer = v13->_activityRestorer;
    v13->_activityRestorer = v31;

    v33 = [CNUserActivityRestorerDelegate alloc];
    splitViewController3 = [(ContactsSceneDelegate *)v13 splitViewController];
    v35 = [(CNUserActivityRestorerDelegate *)v33 initWithContactsSplitViewController:splitViewController3];
    activityRestorerDelegate = v13->_activityRestorerDelegate;
    v13->_activityRestorerDelegate = v35;

    activityRestorerDelegate = [(ContactsSceneDelegate *)v13 activityRestorerDelegate];
    [(CNUIUserActivityRestorer *)v13->_activityRestorer setDelegate:activityRestorerDelegate];

    v38 = +[NSMutableArray array];
    actionsDelayedUntilSceneInitialization = v13->_actionsDelayedUntilSceneInitialization;
    v13->_actionsDelayedUntilSceneInitialization = v38;

    v40 = v13;
  }

  return v13;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sceneCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F468(v12, v13);
  }

  if (v12)
  {
    v14 = [[UIWindow alloc] initWithWindowScene:v12];
    [(ContactsSceneDelegate *)self setSceneWindow:v14];

    splitViewController = [(ContactsSceneDelegate *)self splitViewController];
    sceneWindow = [(ContactsSceneDelegate *)self sceneWindow];
    [sceneWindow setRootViewController:splitViewController];

    v17 = +[CNUIColorRepository contactsApplicationTintColor];
    sceneWindow2 = [(ContactsSceneDelegate *)self sceneWindow];
    [sceneWindow2 setTintColor:v17];

    sceneWindow3 = [(ContactsSceneDelegate *)self sceneWindow];
    [sceneWindow3 makeKeyAndVisible];

    v20 = +[NSMutableArray array];
    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];
    [v20 _cn_addNonNilObject:anyObject];

    stateRestorationActivity = [sessionCopy stateRestorationActivity];
    [v20 _cn_addNonNilObject:stateRestorationActivity];

    shortcutItem = [optionsCopy shortcutItem];

    if (shortcutItem)
    {
      shortcutItem2 = [optionsCopy shortcutItem];
      [(ContactsSceneDelegate *)self executeShortcutIfNecessary:shortcutItem2 completionHandler:0];
    }

    else
    {
      v26 = CNIsSetEmpty;
      uRLContexts = [optionsCopy URLContexts];
      LOBYTE(v26) = (*(v26 + 16))(v26, uRLContexts);

      if (v26)
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10000AF94;
        v31[3] = &unk_100020760;
        v31[4] = self;
        shortcutItem2 = [v20 _cn_firstObjectPassingTest:v31];
        [(ContactsSceneDelegate *)self setViewingContactActivityForRestoration:shortcutItem2];
      }

      else
      {
        shortcutItem2 = [optionsCopy URLContexts];
        allObjects = [shortcutItem2 allObjects];
        firstObject = [allObjects firstObject];
        v30 = [firstObject URL];
        [(ContactsSceneDelegate *)self openContactsURL:v30];
      }
    }
  }
}

- (void)executeShortcutIfNecessary:(id)necessary completionHandler:(id)handler
{
  handlerCopy = handler;
  if (necessary)
  {
    type = [necessary type];
    if ([type isEqualToString:@"com.apple.contacts.create-new-contact"])
    {
      [(ContactsSceneDelegate *)self showNewContact];
      showMeContact = 1;
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else if ([type isEqualToString:@"com.apple.contacts.show-me"])
    {
      showMeContact = [(ContactsSceneDelegate *)self showMeContact];
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000F52C(type, v9);
      }

      showMeContact = 0;
      if (!handlerCopy)
      {
        goto LABEL_12;
      }
    }

    handlerCopy[2](handlerCopy, showMeContact);
LABEL_12:
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  sceneWindow = [(ContactsSceneDelegate *)self sceneWindow];
  [sceneWindow setHidden:1];

  [(ContactsSceneDelegate *)self setSceneWindow:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  schedulerProvider = [(ContactsSceneDelegate *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v4 = [backgroundScheduler afterDelay:&stru_100020780 performBlock:4.0];
}

- (void)sceneWillResignActive:(id)active
{
  contactStoreDataSource = [(ContactsSceneDelegate *)self contactStoreDataSource];
  [contactStoreDataSource setShouldRevalidateFilterOnStoreChange:1];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B30C;
  v5[3] = &unk_1000204D0;
  v5[4] = self;
  [(ContactsSceneDelegate *)self executeSceneInitializationTasksOnce:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B360;
  v4[3] = &unk_1000204D0;
  v4[4] = self;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)executeSceneInitializationTasksOnce:(id)once
{
  onceCopy = once;
  if (![(ContactsSceneDelegate *)self didExecuteSceneInitializationTasks])
  {
    onceCopy[2]();
    [(ContactsSceneDelegate *)self setDidExecuteSceneInitializationTasks:1];
  }
}

- (BOOL)splitViewControllerIsDisplayingList
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  if ([splitViewController displayMode] == 2)
  {
    v4 = 1;
  }

  else
  {
    splitViewController2 = [(ContactsSceneDelegate *)self splitViewController];
    if ([splitViewController2 displayMode] == 4)
    {
      v4 = 1;
    }

    else
    {
      splitViewController3 = [(ContactsSceneDelegate *)self splitViewController];
      v4 = [splitViewController3 displayMode] == 6;
    }
  }

  return v4;
}

- (void)executeActionDelayedUntilSceneInitialization:(id)initialization
{
  initializationCopy = initialization;
  if ([(ContactsSceneDelegate *)self didExecuteSceneInitializationTasks])
  {
    initializationCopy[2]();
  }

  else
  {
    actionsDelayedUntilSceneInitialization = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
    v5 = [initializationCopy copy];
    v6 = objc_retainBlock(v5);
    [actionsDelayedUntilSceneInitialization addObject:v6];
  }
}

- (id)stateRestorationActivityForScene:(id)scene
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  isShowingListView = [splitViewController isShowingListView];

  splitViewController2 = [(ContactsSceneDelegate *)self splitViewController];
  v7 = splitViewController2;
  if (isShowingListView)
  {
    contactNavigationController = [splitViewController2 contactNavigationController];
    [contactNavigationController createUserActivity];

    splitViewController3 = [(ContactsSceneDelegate *)self splitViewController];
    contactNavigationController2 = [splitViewController3 contactNavigationController];
    userActivity = [contactNavigationController2 userActivity];
  }

  else
  {
    isShowingGroups = [splitViewController2 isShowingGroups];

    splitViewController3 = [(ContactsSceneDelegate *)self splitViewController];
    contactNavigationController3 = [splitViewController3 contactNavigationController];
    contactNavigationController2 = contactNavigationController3;
    if (isShowingGroups)
    {
      [contactNavigationController3 userActivityRepresentingGroupsView];
    }

    else
    {
      [contactNavigationController3 userActivityRepresentingCurrentlyDisplayedContact];
    }
    userActivity = ;
  }

  v14 = userActivity;

  return v14;
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  activityRestorer = [(ContactsSceneDelegate *)self activityRestorer];
  [activityRestorer shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:typeCopy];
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  activityRestorer = [(ContactsSceneDelegate *)self activityRestorer];
  [activityRestorer restoreUserActivity:activityCopy];
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  activityRestorer = [(ContactsSceneDelegate *)self activityRestorer];
  [activityRestorer shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:typeCopy];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  allObjects = [contexts allObjects];
  firstObject = [allObjects firstObject];
  v6 = [firstObject URL];
  [(ContactsSceneDelegate *)self openContactsURL:v6];
}

- (BOOL)openContactsURL:(id)l
{
  lCopy = l;
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  [splitViewController cancelSearch];

  if ([lCopy isFileURL])
  {
    vCardImportController = [(ContactsSceneDelegate *)self vCardImportController];
    v7 = [(ContactsURLParser *)vCardImportController enqueueContactsAtURL:lCopy];
  }

  else
  {
    v8 = [ContactsURLParser alloc];
    splitViewController2 = [(ContactsSceneDelegate *)self splitViewController];
    contactNavigationController = [splitViewController2 contactNavigationController];
    dataSource = [contactNavigationController dataSource];
    vCardImportController = [(ContactsURLParser *)v8 initWithURL:lCopy dataSource:dataSource];

    actionFound = [(ContactsURLParser *)vCardImportController actionFound];
    if (actionFound == 3)
    {
      [(ContactsSceneDelegate *)self createNewContact];
      v16 = 1;
      goto LABEL_10;
    }

    if (actionFound == 2)
    {
      selfCopy2 = self;
      v14 = vCardImportController;
      v15 = 1;
    }

    else
    {
      if (actionFound != 1)
      {
        v16 = 0;
        goto LABEL_10;
      }

      selfCopy2 = self;
      v14 = vCardImportController;
      v15 = 0;
    }

    v7 = [(ContactsSceneDelegate *)selfCopy2 showContactFromURLReader:v14 setEditing:v15];
  }

  v16 = v7;
LABEL_10:

  return v16;
}

- (id)showMeCardShortcutItem
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  contactNavigationController = [splitViewController contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  preferredForNameMeContact = [contactListViewController preferredForNameMeContact];

  if (preferredForNameMeContact)
  {
    bundle = [(ContactsSceneDelegate *)self bundle];
    v8 = [bundle localizedStringForKey:@"QUICKACTION_TITLE_SHOW_ME" value:0 table:@"InfoPlist"];

    v9 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"com.apple.contacts.show-me" localizedTitle:v8];
    v10 = [UIApplicationShortcutIcon iconWithContact:preferredForNameMeContact];
    [v9 setIcon:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)runTest:(id)test options:(id)options
{
  optionsCopy = options;
  testCopy = test;
  v8 = +[ContactsTestingManager defaultTestingManager];
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  v10 = [v8 runTest:testCopy options:optionsCopy splitViewController:splitViewController];

  return v10;
}

- (void)createNewContact
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  [splitViewController createNewContact];
}

- (BOOL)showMeContact
{
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  contactNavigationController = [splitViewController contactNavigationController];
  dataSource = [contactNavigationController dataSource];
  preferredForNameMeContactIdentifier = [dataSource preferredForNameMeContactIdentifier];

  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, preferredForNameMeContactIdentifier))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ContactsSceneDelegate *)self showContactWithIdentifier:preferredForNameMeContactIdentifier setEditing:0];
  }

  return v7;
}

- (void)showNewContact
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000BD44;
  v2[3] = &unk_1000204D0;
  v2[4] = self;
  [(ContactsSceneDelegate *)self executeActionDelayedUntilSceneInitialization:v2];
}

- (void)showContact:(id)contact setEditing:(BOOL)editing
{
  contactCopy = contact;
  if (!contactCopy)
  {
    v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contact passed to showContact is nil" userInfo:0];
    objc_exception_throw(v8);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BE60;
  v9[3] = &unk_1000207E8;
  v9[4] = self;
  v10 = contactCopy;
  editingCopy = editing;
  v7 = contactCopy;
  [(ContactsSceneDelegate *)self executeActionDelayedUntilSceneInitialization:v9];
}

- (void)vCardImportController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C3A4;
  v7[3] = &unk_1000207E8;
  selfCopy = self;
  viewControllerCopy = viewController;
  animatedCopy = animated;
  v6 = viewControllerCopy;
  [(ContactsSceneDelegate *)selfCopy executeActionDelayedUntilSceneInitialization:v7];
}

- (void)vCardImportController:(id)controller didSaveContacts:(id)contacts
{
  firstObject = [contacts firstObject];
  [(ContactsSceneDelegate *)self showContact:firstObject];
}

- (void)searchForString:(id)string
{
  stringCopy = string;
  splitViewController = [(ContactsSceneDelegate *)self splitViewController];
  [splitViewController searchForString:stringCopy];
}

@end