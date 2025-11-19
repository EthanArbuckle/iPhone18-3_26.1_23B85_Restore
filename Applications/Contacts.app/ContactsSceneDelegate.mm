@interface ContactsSceneDelegate
+ (OS_os_log)log;
- (BOOL)openContactsURL:(id)a3;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)showMeContact;
- (BOOL)splitViewControllerIsDisplayingList;
- (ContactsSceneDelegate)init;
- (ContactsSceneDelegate)initWithApplication:(id)a3 capabilitiesManager:(id)a4 schedulerProvider:(id)a5;
- (id)contactStoreDataSource;
- (id)showMeCardShortcutItem;
- (id)stateRestorationActivityForScene:(id)a3;
- (void)checkInLaunchTasksIfNecessary;
- (void)createNewContact;
- (void)createShowMeCardApplicationShortcutIfNecessary;
- (void)displayContactIfNecessary;
- (void)executeActionDelayedUntilSceneInitialization:(id)a3;
- (void)executeAllDelayedActions;
- (void)executeSceneInitializationTasksOnce:(id)a3;
- (void)executeShortcutIfNecessary:(id)a3 completionHandler:(id)a4;
- (void)performMigrationOfFacebookContactsToLocalStoreIfNecessary;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)searchForString:(id)a3;
- (void)showContact:(id)a3 setEditing:(BOOL)a4;
- (void)showNewContact;
- (void)vCardImportController:(id)a3 didSaveContacts:(id)a4;
- (void)vCardImportController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation ContactsSceneDelegate

- (ContactsSceneDelegate)init
{
  v3 = +[UIApplication sharedApplication];
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [v5 defaultSchedulerProvider];
  v7 = [(ContactsSceneDelegate *)self initWithApplication:v3 capabilitiesManager:v4 schedulerProvider:v6];

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
  v13 = [v3 launchCheckinRegistrar];

  v4 = [(ContactsSceneDelegate *)self splitViewController];
  v5 = [v4 _isCollapsed];

  v6 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
  if (v6)
  {
    v7 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
    v8 = [v7 activityType];
    v9 = [v8 isEqualToString:CNUIActivityTypeViewingList];

    if ((v9 & v5 & 1) == 0)
    {
      if (v5)
      {
LABEL_8:
        v11 = +[CNUIContactsEnvironment currentEnvironment];
        v12 = [v11 runningInContactsAppOniPad];

        if (v12)
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

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = 60;
LABEL_11:
  [v13 checkInLaunchTasks:v10];
LABEL_12:
}

- (void)displayContactIfNecessary
{
  v3 = [(ContactsSceneDelegate *)self splitViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 != 1)
  {
    v6 = [(ContactsSceneDelegate *)self splitViewController];
    v7 = [v6 displayedContact];
    if (v7)
    {
    }

    else
    {
      v8 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];

      if (!v8)
      {
        v11 = [(ContactsSceneDelegate *)self splitViewController];
        [v11 showCardForContact:0 fallbackToFirstContact:1];

        v12 = [(ContactsSceneDelegate *)self splitViewController];
        [v12 showContactList];
        goto LABEL_7;
      }
    }
  }

  v9 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];

  if (!v9)
  {
    return;
  }

  v12 = [(ContactsSceneDelegate *)self activityRestorer];
  v10 = [(ContactsSceneDelegate *)self viewingContactActivityForRestoration];
  [v12 restoreUserActivity:v10];

LABEL_7:
}

- (void)performMigrationOfFacebookContactsToLocalStoreIfNecessary
{
  v3 = [(ContactsSceneDelegate *)self splitViewController];
  v2 = [v3 contactNavigationController];
  [v2 checkForFacebookContactsWithDelay:1 allowAlert:0.5];
}

- (void)createShowMeCardApplicationShortcutIfNecessary
{
  v3 = [(ContactsSceneDelegate *)self capabilitiesManager];
  v4 = [v3 hasForceTouchCapability];

  v5 = [(ContactsSceneDelegate *)self application];
  v6 = [v5 connectedScenes];
  v7 = [v6 count];

  if (v4 && v7 == 1)
  {
    v8 = [(ContactsSceneDelegate *)self showMeCardShortcutItem];
    v9 = v8;
    if (v8)
    {
      v12 = v8;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    v11 = [(ContactsSceneDelegate *)self application];
    [v11 setShortcutItems:v10];

    if (v9)
    {
    }
  }
}

- (void)executeAllDelayedActions
{
  v3 = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
  [v3 _cn_each:&stru_1000207C0];

  v4 = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
  [v4 removeAllObjects];
}

- (id)contactStoreDataSource
{
  v2 = [(ContactsSceneDelegate *)self splitViewController];
  v3 = [v2 contactNavigationController];
  v4 = [v3 dataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ContactsSceneDelegate)initWithApplication:(id)a3 capabilitiesManager:(id)a4 schedulerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v42.receiver = self;
  v42.super_class = ContactsSceneDelegate;
  v12 = [(ContactsSceneDelegate *)&v42 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capabilitiesManager, a4);
    objc_storeStrong(&v13->_application, a3);
    objc_storeStrong(&v13->_schedulerProvider, a5);
    v14 = [[ContactsSplitViewController alloc] initWithStyle:2];
    splitViewController = v13->_splitViewController;
    v13->_splitViewController = v14;

    v16 = +[CNEnvironment currentEnvironment];
    v17 = [v16 featureFlags];
    if ([v17 isFeatureEnabled:29])
    {
      v18 = +[CNUIContactsEnvironment currentEnvironment];
      v19 = [v18 runningInContactsAppOniPad];

      if (v19)
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
    v22 = [(ContactsSceneDelegate *)v13 splitViewController];
    v23 = [v22 store];
    v24 = [v21 initWithContactStore:v23 presentationDelegate:v13];
    vCardImportController = v13->_vCardImportController;
    v13->_vCardImportController = v24;

    [(CNVCardImportController *)v13->_vCardImportController setDelegate:v13];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v13->_bundle;
    v13->_bundle = v26;

    [CNContactsAppIntentDependencyManager setupAppIntentDependenciesWithActionPerformer:v13];
    v28 = [CNUIUserActivityRestorer alloc];
    v29 = [(ContactsSceneDelegate *)v13 splitViewController];
    v30 = [v29 store];
    v31 = [v28 initWithContactStore:v30];
    activityRestorer = v13->_activityRestorer;
    v13->_activityRestorer = v31;

    v33 = [CNUserActivityRestorerDelegate alloc];
    v34 = [(ContactsSceneDelegate *)v13 splitViewController];
    v35 = [(CNUserActivityRestorerDelegate *)v33 initWithContactsSplitViewController:v34];
    activityRestorerDelegate = v13->_activityRestorerDelegate;
    v13->_activityRestorerDelegate = v35;

    v37 = [(ContactsSceneDelegate *)v13 activityRestorerDelegate];
    [(CNUIUserActivityRestorer *)v13->_activityRestorer setDelegate:v37];

    v38 = +[NSMutableArray array];
    actionsDelayedUntilSceneInitialization = v13->_actionsDelayedUntilSceneInitialization;
    v13->_actionsDelayedUntilSceneInitialization = v38;

    v40 = v13;
  }

  return v13;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
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

    v15 = [(ContactsSceneDelegate *)self splitViewController];
    v16 = [(ContactsSceneDelegate *)self sceneWindow];
    [v16 setRootViewController:v15];

    v17 = +[CNUIColorRepository contactsApplicationTintColor];
    v18 = [(ContactsSceneDelegate *)self sceneWindow];
    [v18 setTintColor:v17];

    v19 = [(ContactsSceneDelegate *)self sceneWindow];
    [v19 makeKeyAndVisible];

    v20 = +[NSMutableArray array];
    v21 = [v10 userActivities];
    v22 = [v21 anyObject];
    [v20 _cn_addNonNilObject:v22];

    v23 = [v9 stateRestorationActivity];
    [v20 _cn_addNonNilObject:v23];

    v24 = [v10 shortcutItem];

    if (v24)
    {
      v25 = [v10 shortcutItem];
      [(ContactsSceneDelegate *)self executeShortcutIfNecessary:v25 completionHandler:0];
    }

    else
    {
      v26 = CNIsSetEmpty;
      v27 = [v10 URLContexts];
      LOBYTE(v26) = (*(v26 + 16))(v26, v27);

      if (v26)
      {
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10000AF94;
        v31[3] = &unk_100020760;
        v31[4] = self;
        v25 = [v20 _cn_firstObjectPassingTest:v31];
        [(ContactsSceneDelegate *)self setViewingContactActivityForRestoration:v25];
      }

      else
      {
        v25 = [v10 URLContexts];
        v28 = [v25 allObjects];
        v29 = [v28 firstObject];
        v30 = [v29 URL];
        [(ContactsSceneDelegate *)self openContactsURL:v30];
      }
    }
  }
}

- (void)executeShortcutIfNecessary:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 type];
    if ([v7 isEqualToString:@"com.apple.contacts.create-new-contact"])
    {
      [(ContactsSceneDelegate *)self showNewContact];
      v8 = 1;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else if ([v7 isEqualToString:@"com.apple.contacts.show-me"])
    {
      v8 = [(ContactsSceneDelegate *)self showMeContact];
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000F52C(v7, v9);
      }

      v8 = 0;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v6[2](v6, v8);
LABEL_12:
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = [(ContactsSceneDelegate *)self sceneWindow];
  [v4 setHidden:1];

  [(ContactsSceneDelegate *)self setSceneWindow:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v5 = [(ContactsSceneDelegate *)self schedulerProvider];
  v3 = [v5 backgroundScheduler];
  v4 = [v3 afterDelay:&stru_100020780 performBlock:4.0];
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = [(ContactsSceneDelegate *)self contactStoreDataSource];
  [v3 setShouldRevalidateFilterOnStoreChange:1];
}

- (void)sceneWillEnterForeground:(id)a3
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

- (void)executeSceneInitializationTasksOnce:(id)a3
{
  v4 = a3;
  if (![(ContactsSceneDelegate *)self didExecuteSceneInitializationTasks])
  {
    v4[2]();
    [(ContactsSceneDelegate *)self setDidExecuteSceneInitializationTasks:1];
  }
}

- (BOOL)splitViewControllerIsDisplayingList
{
  v3 = [(ContactsSceneDelegate *)self splitViewController];
  if ([v3 displayMode] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ContactsSceneDelegate *)self splitViewController];
    if ([v5 displayMode] == 4)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(ContactsSceneDelegate *)self splitViewController];
      v4 = [v6 displayMode] == 6;
    }
  }

  return v4;
}

- (void)executeActionDelayedUntilSceneInitialization:(id)a3
{
  v7 = a3;
  if ([(ContactsSceneDelegate *)self didExecuteSceneInitializationTasks])
  {
    v7[2]();
  }

  else
  {
    v4 = [(ContactsSceneDelegate *)self actionsDelayedUntilSceneInitialization];
    v5 = [v7 copy];
    v6 = objc_retainBlock(v5);
    [v4 addObject:v6];
  }
}

- (id)stateRestorationActivityForScene:(id)a3
{
  v4 = [(ContactsSceneDelegate *)self splitViewController];
  v5 = [v4 isShowingListView];

  v6 = [(ContactsSceneDelegate *)self splitViewController];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 contactNavigationController];
    [v8 createUserActivity];

    v9 = [(ContactsSceneDelegate *)self splitViewController];
    v10 = [v9 contactNavigationController];
    v11 = [v10 userActivity];
  }

  else
  {
    v12 = [v6 isShowingGroups];

    v9 = [(ContactsSceneDelegate *)self splitViewController];
    v13 = [v9 contactNavigationController];
    v10 = v13;
    if (v12)
    {
      [v13 userActivityRepresentingGroupsView];
    }

    else
    {
      [v13 userActivityRepresentingCurrentlyDisplayedContact];
    }
    v11 = ;
  }

  v14 = v11;

  return v14;
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a4;
  v6 = [(ContactsSceneDelegate *)self activityRestorer];
  [v6 shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:v5];
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v5 = a4;
  v6 = [(ContactsSceneDelegate *)self activityRestorer];
  [v6 restoreUserActivity:v5];
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(ContactsSceneDelegate *)self activityRestorer];
  [v7 shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:v6];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v7 = [a4 allObjects];
  v5 = [v7 firstObject];
  v6 = [v5 URL];
  [(ContactsSceneDelegate *)self openContactsURL:v6];
}

- (BOOL)openContactsURL:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSceneDelegate *)self splitViewController];
  [v5 cancelSearch];

  if ([v4 isFileURL])
  {
    v6 = [(ContactsSceneDelegate *)self vCardImportController];
    v7 = [(ContactsURLParser *)v6 enqueueContactsAtURL:v4];
  }

  else
  {
    v8 = [ContactsURLParser alloc];
    v9 = [(ContactsSceneDelegate *)self splitViewController];
    v10 = [v9 contactNavigationController];
    v11 = [v10 dataSource];
    v6 = [(ContactsURLParser *)v8 initWithURL:v4 dataSource:v11];

    v12 = [(ContactsURLParser *)v6 actionFound];
    if (v12 == 3)
    {
      [(ContactsSceneDelegate *)self createNewContact];
      v16 = 1;
      goto LABEL_10;
    }

    if (v12 == 2)
    {
      v13 = self;
      v14 = v6;
      v15 = 1;
    }

    else
    {
      if (v12 != 1)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v13 = self;
      v14 = v6;
      v15 = 0;
    }

    v7 = [(ContactsSceneDelegate *)v13 showContactFromURLReader:v14 setEditing:v15];
  }

  v16 = v7;
LABEL_10:

  return v16;
}

- (id)showMeCardShortcutItem
{
  v3 = [(ContactsSceneDelegate *)self splitViewController];
  v4 = [v3 contactNavigationController];
  v5 = [v4 contactListViewController];
  v6 = [v5 preferredForNameMeContact];

  if (v6)
  {
    v7 = [(ContactsSceneDelegate *)self bundle];
    v8 = [v7 localizedStringForKey:@"QUICKACTION_TITLE_SHOW_ME" value:0 table:@"InfoPlist"];

    v9 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"com.apple.contacts.show-me" localizedTitle:v8];
    v10 = [UIApplicationShortcutIcon iconWithContact:v6];
    [v9 setIcon:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ContactsTestingManager defaultTestingManager];
  v9 = [(ContactsSceneDelegate *)self splitViewController];
  v10 = [v8 runTest:v7 options:v6 splitViewController:v9];

  return v10;
}

- (void)createNewContact
{
  v2 = [(ContactsSceneDelegate *)self splitViewController];
  [v2 createNewContact];
}

- (BOOL)showMeContact
{
  v3 = [(ContactsSceneDelegate *)self splitViewController];
  v4 = [v3 contactNavigationController];
  v5 = [v4 dataSource];
  v6 = [v5 preferredForNameMeContactIdentifier];

  if ((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ContactsSceneDelegate *)self showContactWithIdentifier:v6 setEditing:0];
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

- (void)showContact:(id)a3 setEditing:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contact passed to showContact is nil" userInfo:0];
    objc_exception_throw(v8);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BE60;
  v9[3] = &unk_1000207E8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v7 = v6;
  [(ContactsSceneDelegate *)self executeActionDelayedUntilSceneInitialization:v9];
}

- (void)vCardImportController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C3A4;
  v7[3] = &unk_1000207E8;
  v8 = self;
  v9 = a4;
  v10 = a5;
  v6 = v9;
  [(ContactsSceneDelegate *)v8 executeActionDelayedUntilSceneInitialization:v7];
}

- (void)vCardImportController:(id)a3 didSaveContacts:(id)a4
{
  v5 = [a4 firstObject];
  [(ContactsSceneDelegate *)self showContact:v5];
}

- (void)searchForString:(id)a3
{
  v4 = a3;
  v5 = [(ContactsSceneDelegate *)self splitViewController];
  [v5 searchForString:v4];
}

@end