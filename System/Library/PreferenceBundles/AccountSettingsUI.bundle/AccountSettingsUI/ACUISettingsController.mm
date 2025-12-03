@interface ACUISettingsController
- (ACUISettingsController)init;
- (BOOL)_isAccount:(id)account inList:(id)list;
- (BOOL)_isAccountList:(id)list identicalToAccountList:(id)accountList;
- (BOOL)_isAccountModificationDisabledByRestrictions;
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push withCompletion:(id)completion;
- (id)_accountGroupIdentifier:(id)identifier ignoringGroups:(id)groups;
- (id)_accountStore;
- (id)_addAccountSpecifier;
- (id)_scheduleSettingsModeForSpecifier:(id)specifier;
- (id)_settingsPluginManager;
- (id)_specifierForAccount:(id)account;
- (id)_specifierForCollectionCellLinkingToAccounts:(id)accounts withGroupIdentifier:(id)identifier underParentGroup:(id)group;
- (id)_specifierForScheduleSettings;
- (id)_specifiersForLoadingMessage;
- (id)_specifiersForSettingsProvidedByPlugin:(id)plugin;
- (id)specifiers;
- (void)_accountCellWasTappedWithSpecifier:(id)specifier;
- (void)_accountStoreDidChange;
- (void)_accountsWithCompletion:(id)completion;
- (void)_effectiveSettingsChangedNotification:(id)notification;
- (void)_fetchLazyLoadedSpecifiers;
- (void)_filterAccounts:(id)accounts toTopLevel:(id)level grouped:(id)grouped ignoringGroups:(id)groups;
- (void)_loadAccountsWithCompletion:(id)completion;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)_scheduleSettingsCellWasTappedWithSpecifier:(id)specifier;
- (void)_specifiersForAccountsGroupWithCompletion:(id)completion;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setSpecifier:(id)specifier;
- (void)specifiersDidChangeForPlugin:(id)plugin;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewController:(id)controller didFinishRemovingAccountWithSuccess:(BOOL)success;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ACUISettingsController

- (ACUISettingsController)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = ACUISettingsController;
  v13 = [(ACUISettingsController *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(v13 + 19);
    *(v13 + 19) = v2;

    v4 = dispatch_group_create();
    v5 = *(v13 + 31);
    *(v13 + 31) = v4;

    dispatch_group_enter(*(v13 + 31));
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(v13 + 24);
    *(v13 + 24) = v6;

    v10 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v10 addObserver:v13 selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:?];
    [(NSNotificationCenter *)v10 addObserver:v13 selector:"_effectiveSettingsChangedNotification:" name:MCEffectiveSettingsChangedNotification object:0];
    objc_storeStrong(&v10, 0);
  }

  v9 = v13;
  objc_storeStrong(&v13, 0);
  return v9;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 viewDidAppear:appear];
  specifier = [(ACUISettingsController *)selfCopy specifier];
  v4 = [specifier propertyForKey:PSAppSettingsBundleIDKey];

  [ACUIUtils emitNavigationEventForSubPane:"emitNavigationEventForSubPane:subPath:account:inHostAppBundleID:" subPath:selfCopy account:@"root" inHostAppBundleID:?];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v8 viewDidLoad];
  table = [(ACUISettingsController *)selfCopy table];
  v2 = objc_opt_class();
  v3 = +[ACUIAccountSummaryCell cellReuseIdentifier];
  [table registerClass:v2 forCellReuseIdentifier:?];

  table2 = [(ACUISettingsController *)selfCopy table];
  v5 = objc_opt_class();
  v6 = +[ACUIAccountCollectionLinkCell cellReuseIdentifier];
  [table2 registerClass:v5 forCellReuseIdentifier:?];
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_12C0;
  v9 = &unk_C2C0;
  v10 = selfCopy;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_effectiveSettingsChangedNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v3 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1410;
  v9 = &unk_C2C0;
  v10 = selfCopy;
  dispatch_async(queue, &v5);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3[1] = a2;
  if (self->_accountStore)
  {
    [(ACMonitoredAccountStore *)selfCopy->_accountStore removeDelegate:selfCopy];
  }

  [(ACUISettingsPluginManager *)selfCopy->_settingsPluginManager parentViewControllerWillDisappear];
  v3[0] = +[NSNotificationCenter defaultCenter];
  [v3[0] removeObserver:selfCopy];
  objc_storeStrong(v3, 0);
  v2.receiver = selfCopy;
  v2.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v2 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v5.receiver = selfCopy;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 setSpecifier:location[0]];
  v3 = [location[0] propertyForKey:PSAccountsClientDataclassFilterKey];
  filteredDataclass = selfCopy->_filteredDataclass;
  selfCopy->_filteredDataclass = v3;

  objc_storeStrong(location, 0);
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v24 = 0;
  objc_storeStrong(&v24, dictionary);
  v23[1] = push;
  v23[0] = 0;
  objc_storeStrong(v23, completion);
  if (selfCopy->_specifierLoadGroup)
  {
    v22 = _ACUILogSystem();
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1920(v28, "[ACUISettingsController prepareHandlingURLForSpecifierID:resourceDictionary:animatePush:withCompletion:]", 217, v24);
      _os_log_debug_impl(&dword_0, v22, v21, "%s (%d) Deferring URL load for resources %@", v28, 0x1Cu);
    }

    objc_storeStrong(&v22, 0);
    group = selfCopy->_specifierLoadGroup;
    v6 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1990;
    v17 = &unk_C2E8;
    v18 = selfCopy;
    v19 = v24;
    v20 = v23[0];
    dispatch_group_notify(group, queue, &v13);

    v27 = 0;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v27 = 1;
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v27 & 1;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = _ACUILogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1920(v20, "[ACUISettingsController handleURL:withCompletion:]", 229, location[0]);
    _os_log_debug_impl(&dword_0, v15, v14, "%s (%d) Handling URL load for resources %@", v20, 0x1Cu);
  }

  objc_storeStrong(&v15, 0);
  selfCopy->_isInHandleURL = 1;
  v13.receiver = selfCopy;
  v13.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v13 handleURL:location[0] withCompletion:&stru_C328];
  selfCopy->_isInHandleURL = 0;
  if (selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL)
  {
    viewControllerPushedByControllerLoadActionDuringHandleURL = selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [location[0] objectForKey:@"path"];
      pathComponents = [v12 pathComponents];
      v11 = [NSMutableArray arrayWithArray:?];

      if ([v11 count])
      {
        [v11 removeObjectAtIndex:0];
        v4 = [NSString pathWithComponents:v11];
        v5 = v12;
        v12 = v4;

        v10 = [NSMutableDictionary dictionaryWithDictionary:location[0]];
        [(NSMutableDictionary *)v10 setObject:v12 forKey:@"path"];
        [(PSViewController *)selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL handleURL:v10 withCompletion:v16];
        objc_storeStrong(&v10, 0);
      }

      else if (v16)
      {
        (*(v16 + 2))();
      }

      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL, 0);
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1920(v19, "[ACUISettingsController handleURL:withCompletion:]", 256, location[0]);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "%s (%d) No subview to display matching dictionary %@", v19, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    if (v16)
    {
      (*(v16 + 2))();
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)_accountStore
{
  if (!self->_accountStore)
  {
    v2 = +[ACUIViewController acuiAccountStore];
    accountStore = self->_accountStore;
    self->_accountStore = v2;

    [(ACMonitoredAccountStore *)self->_accountStore addDelegate:self];
  }

  v4 = self->_accountStore;

  return v4;
}

- (void)_accountsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (selfCopy->_accounts)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], selfCopy->_accounts);
    }
  }

  else
  {
    v3 = selfCopy;
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_2030;
    v8 = &unk_C350;
    v9 = selfCopy;
    v10 = location[0];
    [(ACUISettingsController *)v3 _loadAccountsWithCompletion:&v4];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_loadAccountsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v51 = 0;
  v50 = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  _accountStore = [(ACUISettingsController *)selfCopy _accountStore];
  obj = [_accountStore monitoredAccounts];

  v19 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
  if (v19)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v19;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v49 = *(__b[1] + 8 * v15);
      if ([v49 isVisible])
      {
        parentAccount = [v49 parentAccount];

        if (!parentAccount)
        {
          enabledDataclasses = [v49 enabledDataclasses];
          if (selfCopy->_filteredDataclass)
          {
            provisionedDataclasses = [v49 provisionedDataclasses];
            v41 = _NSConcreteStackBlock;
            v42 = -1073741824;
            v43 = 0;
            v44 = sub_2798;
            v45 = &unk_C378;
            v46 = selfCopy;
            v47 = [provisionedDataclasses objectsPassingTest:&v41];

            if (![v47 count])
            {
              accountType = [v49 accountType];
              supportedDataclasses = [accountType supportedDataclasses];
              v35 = _NSConcreteStackBlock;
              v36 = -1073741824;
              v37 = 0;
              v38 = sub_2870;
              v39 = &unk_C378;
              v40 = selfCopy;
              v4 = [supportedDataclasses objectsPassingTest:&v35];
              v5 = v47;
              v47 = v4;

              objc_storeStrong(&v40, 0);
            }

            if ([v47 count])
            {
              [v50 addObject:v49];
            }

            objc_storeStrong(&v47, 0);
            objc_storeStrong(&v46, 0);
          }

          else
          {
            [v50 addObject:v49];
          }
        }
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(&v51, v50);
  v34 = ACUISortedAccountTypes();
  v7 = v51;
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_2948;
  v31 = &unk_C3A0;
  v32 = v34;
  v33 = [v7 sortedArrayUsingComparator:&v27];
  v6 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_2B78;
  v24 = &unk_C3C8;
  v26 = location[0];
  v25 = v33;
  dispatch_async(queue, &v20);

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (void)_accountStoreDidChange
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _ACUILogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_2D4C(v12, "[ACUISettingsController _accountStoreDidChange]", 354);
    _os_log_impl(&dword_0, location[0], v9, "%s (%d) ACUISettingsController received monitored account delegate call.", v12, 0x12u);
  }

  objc_storeStrong(location, 0);
  v2 = selfCopy;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_2DA0;
  v7 = &unk_C418;
  v8 = selfCopy;
  [(ACUISettingsController *)v2 _loadAccountsWithCompletion:&v3];
  objc_storeStrong(&v8, 0);
}

- (BOOL)_isAccountList:(id)list identicalToAccountList:(id)accountList
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v16 = 0;
  objc_storeStrong(&v16, accountList);
  v12 = [location[0] count];
  if (v12 == [v16 count])
  {
    memset(__b, 0, sizeof(__b));
    v9 = location[0];
    v10 = [v9 countByEnumeratingWithState:__b objects:v20 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(__b[1] + 8 * v7);
        if (![(ACUISettingsController *)selfCopy _isAccount:v14 inList:v16])
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v9 countByEnumeratingWithState:__b objects:v20 count:16];
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      v19 = 0;
      v15 = 1;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

    if (!v15)
    {
      v19 = 1;
      v15 = 1;
    }
  }

  else
  {
    v19 = 0;
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (BOOL)_isAccount:(id)account inList:(id)list
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v33 = 0;
  objc_storeStrong(&v33, list);
  memset(__b, 0, sizeof(__b));
  v12 = v33;
  v13 = [v12 countByEnumeratingWithState:__b objects:v36 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v12);
      }

      v32 = *(__b[1] + 8 * v9);
      isAuthenticated = [v32 isAuthenticated];
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 0;
      v21 = 0;
      v19 = 0;
      v17 = 0;
      v15 = 0;
      v6 = 0;
      if (isAuthenticated == [location[0] isAuthenticated])
      {
        identifier = [v32 identifier];
        v29 = 1;
        identifier2 = [location[0] identifier];
        v27 = 1;
        v6 = 0;
        if ([identifier isEqualToString:?])
        {
          accountDescription = [v32 accountDescription];
          v25 = 1;
          accountDescription2 = [location[0] accountDescription];
          v23 = 1;
          v6 = 0;
          if ([accountDescription isEqualToString:?])
          {
            enabledDataclasses = [v32 enabledDataclasses];
            v21 = 1;
            enabledDataclasses2 = [location[0] enabledDataclasses];
            v19 = 1;
            v6 = 0;
            if ([enabledDataclasses isEqualToSet:?])
            {
              provisionedDataclasses = [v32 provisionedDataclasses];
              v17 = 1;
              provisionedDataclasses2 = [location[0] provisionedDataclasses];
              v15 = 1;
              v6 = [provisionedDataclasses isEqualToSet:?];
            }
          }
        }
      }

      if (v15)
      {
      }

      if (v17)
      {
      }

      if (v19)
      {
      }

      if (v21)
      {
      }

      if (v23)
      {
      }

      if (v25)
      {
      }

      if (v27)
      {
      }

      if (v29)
      {
      }

      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [v12 countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v10)
        {
          goto LABEL_30;
        }
      }
    }

    v35 = 1;
    v14 = 1;
  }

  else
  {
LABEL_30:
    v14 = 0;
  }

  if (!v14)
  {
    v35 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v35 & 1;
}

- (id)_settingsPluginManager
{
  if (!self->_settingsPluginManager)
  {
    v2 = [[ACUISettingsPluginManager alloc] initWithParentViewController:self];
    settingsPluginManager = self->_settingsPluginManager;
    self->_settingsPluginManager = v2;
  }

  v4 = self->_settingsPluginManager;

  return v4;
}

- (void)_filterAccounts:(id)accounts toTopLevel:(id)level grouped:(id)grouped ignoringGroups:(id)groups
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  v26 = 0;
  objc_storeStrong(&v26, level);
  v25 = 0;
  objc_storeStrong(&v25, grouped);
  v24 = 0;
  objc_storeStrong(&v24, groups);
  memset(__b, 0, sizeof(__b));
  v18 = location[0];
  v19 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v19)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v19;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(__b[1] + 8 * v13);
      v21 = [(ACUISettingsController *)selfCopy _accountGroupIdentifier:v23 ignoringGroups:v24];
      if (v21)
      {
        v10 = [v25 objectForKey:v21];
        v20 = [v10 mutableCopy];

        if (!v20)
        {
          v6 = objc_alloc_init(NSMutableArray);
          v7 = v20;
          v20 = v6;
        }

        [v20 addObject:v23];
        v8 = v25;
        v9 = [v20 copy];
        [v8 setObject:? forKey:?];

        objc_storeStrong(&v20, 0);
      }

      else
      {
        [v26 addObject:v23];
      }

      objc_storeStrong(&v21, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (id)_accountGroupIdentifier:(id)identifier ignoringGroups:(id)groups
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v10 = 0;
  objc_storeStrong(&v10, groups);
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v9 = [identifier isEqualToString:ACAccountTypeIdentifierSubscribedCalendar];

  if (v9 & 1) == 0 || ([v10 containsObject:ACAccountTypeIdentifierSubscribedCalendar])
  {
    v12 = 0;
  }

  else
  {
    v12 = ACAccountTypeIdentifierSubscribedCalendar;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (id)specifiers
{
  selfCopy = self;
  location[1] = a2;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    location[0] = _ACUILogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_2D4C(v30, "[ACUISettingsController specifiers]", 461);
      _os_log_impl(&dword_0, location[0], v27, "%s (%d) ACUISettingsController is loading specifiers.", v30, 0x12u);
    }

    objc_storeStrong(location, 0);
    v26 = objc_alloc_init(NSMutableArray);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [(NSBundle *)v14 localizedStringForKey:@"ACCOUNTS" value:&stru_C648 table:@"Localizable"];
    v2 = [PSSpecifier groupSpecifierWithName:?];
    accountGroupSpecifier = selfCopy->_accountGroupSpecifier;
    selfCopy->_accountGroupSpecifier = v2;

    [v26 addObject:selfCopy->_accountGroupSpecifier];
    v25 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v24 = selfCopy->_accounts == 0;
    if (v24)
    {
      [v26 addObject:v25];
    }

    v12 = selfCopy;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_48A4;
    v19 = &unk_C440;
    v23 = v24;
    v20 = selfCopy;
    v21 = v25;
    v22 = v26;
    [(ACUISettingsController *)v12 _specifiersForAccountsGroupWithCompletion:&v15];
    if (!ACUIIsSharedIPadMode())
    {
      v10 = v26;
      _addAccountSpecifier = [(ACUISettingsController *)selfCopy _addAccountSpecifier];
      [v10 addObject:?];
    }

    v6 = v26;
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v6 addObject:?];

    v8 = v26;
    _specifierForScheduleSettings = [(ACUISettingsController *)selfCopy _specifierForScheduleSettings];
    [v8 addObject:?];

    objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v26);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v4 = *&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];

  return v4;
}

- (void)_specifiersForAccountsGroupWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = _ACUILogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_2D4C(v19, "[ACUISettingsController _specifiersForAccountsGroupWithCompletion:]", 516);
    _os_log_impl(&dword_0, v14, v13, "%s (%d) ACUISettingsController _specifiersForAccountsGroup called.", v19, 0x12u);
  }

  objc_storeStrong(&v14, 0);
  v18 = &unk_10B60;
  v17 = 0;
  objc_storeStrong(&v17, &stru_C460);
  if (*v18 != -1)
  {
    dispatch_once(v18, v17);
  }

  objc_storeStrong(&v17, 0);
  v12 = 1;
  if ((byte_10B68 & 1) == 0)
  {
    v12 = ![(ACUISettingsController *)selfCopy _isAccountModificationDisabledByRestrictions];
  }

  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_4C84;
  v8 = &unk_C488;
  v9 = selfCopy;
  v11 = v12;
  v10 = location[0];
  [(ACUISettingsController *)v3 _accountsWithCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_specifierForCollectionCellLinkingToAccounts:(id)accounts withGroupIdentifier:(id)identifier underParentGroup:(id)group
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  v53 = 0;
  objc_storeStrong(&v53, identifier);
  v52 = 0;
  objc_storeStrong(&v52, group);
  v51 = 0;
  memset(__b, 0, sizeof(__b));
  v33 = location[0];
  v34 = [v33 countByEnumeratingWithState:__b objects:v60 count:16];
  if (v34)
  {
    v28 = *__b[2];
    v29 = 0;
    v30 = v34;
    while (1)
    {
      v27 = v29;
      if (*__b[2] != v28)
      {
        objc_enumerationMutation(v33);
      }

      v50 = *(__b[1] + 8 * v29);
      identifier = [v50 identifier];
      v26 = [identifier isEqualToString:v53];

      if (v26)
      {
        break;
      }

      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [v33 countByEnumeratingWithState:__b objects:v60 count:16];
        if (!v30)
        {
          goto LABEL_9;
        }
      }
    }

    v5 = [(ACUISettingsController *)selfCopy _specifierForAccount:v50];
    v6 = v51;
    v51 = v5;

    v48 = 2;
  }

  else
  {
LABEL_9:
    v48 = 0;
  }

  v47 = objc_alloc_init(NSMutableArray);
  v46 = objc_alloc_init(NSMutableDictionary);
  v45 = [NSMutableSet setWithObject:v53];
  if (v52)
  {
    [v45 addObject:v52];
  }

  [(ACUISettingsController *)selfCopy _filterAccounts:location[0] toTopLevel:v47 grouped:v46 ignoringGroups:v45];
  v44 = objc_alloc_init(NSMutableArray);
  memset(v42, 0, sizeof(v42));
  v23 = v47;
  v24 = [v23 countByEnumeratingWithState:v42 objects:v59 count:16];
  if (v24)
  {
    v20 = *v42[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*v42[2] != v20)
      {
        objc_enumerationMutation(v23);
      }

      v43 = *(v42[1] + 8 * v21);
      identifier2 = [v43 identifier];
      v18 = [identifier2 isEqualToString:v53];

      if ((v18 & 1) == 0)
      {
        v41 = [(ACUISettingsController *)selfCopy _specifierForAccount:v43];
        [v44 addObject:v41];
        objc_storeStrong(&v41, 0);
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [v23 countByEnumeratingWithState:v42 objects:v59 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  memset(v39, 0, sizeof(v39));
  allKeys = [v46 allKeys];
  v16 = [allKeys countByEnumeratingWithState:v39 objects:v58 count:16];
  if (v16)
  {
    v12 = *v39[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*v39[2] != v12)
      {
        objc_enumerationMutation(allKeys);
      }

      v40 = *(v39[1] + 8 * v13);
      v38 = [v46 objectForKey:v40];
      v37 = [(ACUISettingsController *)selfCopy _specifierForCollectionCellLinkingToAccounts:v38 withGroupIdentifier:v40 underParentGroup:v53];
      if (v37)
      {
        [v44 addObject:v37];
      }

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [allKeys countByEnumeratingWithState:v39 objects:v58 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  if ([v53 isEqualToString:ACAccountTypeIdentifierSubscribedCalendar])
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [(NSBundle *)v10 localizedStringForKey:@"SUBSCRIBED_CALENDARS" value:&stru_C648 table:@"Localizable"];
    v36 = [ACUIAccountCollectionLinkCell specifierWithTitle:"specifierWithTitle:accounts:" accounts:?];

    v56 = v36;
    v48 = 1;
    objc_storeStrong(&v36, 0);
  }

  else if (v51)
  {
    [v51 setProperty:v44 forKey:ACUIAccountCollectionSpecifiersKey];
    v56 = v51;
    v48 = 1;
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1920(v57, "[ACUISettingsController _specifierForCollectionCellLinkingToAccounts:withGroupIdentifier:underParentGroup:]", 634, location[0]);
      _os_log_error_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "%s (%d) No principle account specifier found, grouping can not be made for accounts %@", v57, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v56 = 0;
    v48 = 1;
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  v7 = v56;

  return v7;
}

- (id)_specifierForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] copy];
  v9 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:target:controllerLoadAction:" account:3 target:? controllerLoadAction:?];

  v5 = v9;
  specifier = [(ACUISettingsController *)selfCopy specifier];
  v6 = [specifier propertyForKey:PSAppSettingsBundleIDKey];
  [v5 setProperty:? forKey:?];

  v8 = v9;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_addAccountSpecifier
{
  if (!self->_addAccountSpecifier)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [NSBundle localizedStringForKey:v12 value:"localizedStringForKey:value:table:" table:?];
    v2 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    addAccountSpecifier = self->_addAccountSpecifier;
    self->_addAccountSpecifier = v2;

    [(PSSpecifier *)self->_addAccountSpecifier setProperty:@"ADD_ACCOUNT" forKey:PSIDKey];
    if (self->_filteredDataclass)
    {
      [(PSSpecifier *)self->_addAccountSpecifier setProperty:self->_filteredDataclass forKey:PSAccountsClientDataclassFilterKey];
    }
  }

  v13 = ![(ACUISettingsController *)self _isAccountModificationDisabledByRestrictions];
  v6 = self->_addAccountSpecifier;
  v7 = [NSNumber numberWithBool:v13];
  [PSSpecifier setProperty:v6 forKey:"setProperty:forKey:"];

  v8 = self->_addAccountSpecifier;
  specifier = [(ACUISettingsController *)self specifier];
  v9 = [specifier propertyForKey:PSAppSettingsBundleIDKey];
  [PSSpecifier setProperty:v8 forKey:"setProperty:forKey:"];

  v4 = self->_addAccountSpecifier;

  return v4;
}

- (id)_specifierForScheduleSettings
{
  selfCopy = self;
  v6[1] = a2;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle localizedStringForKey:v5 value:"localizedStringForKey:value:table:" table:?];
  v6[0] = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];

  [v6[0] setProperty:@"FETCH_NEW_DATA" forKey:PSIDKey];
  [v6[0] setControllerLoadAction:"_scheduleSettingsCellWasTappedWithSpecifier:"];
  if ([(ACUISettingsController *)selfCopy _isAccountModificationDisabledByRestrictions])
  {
    [v6[0] setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  v3 = v6[0];
  objc_storeStrong(v6, 0);

  return v3;
}

- (void)_scheduleSettingsCellWasTappedWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v6 = 0;
  v10 = &unk_10B78;
  v9 = 0;
  objc_storeStrong(&v9, &stru_C4A8);
  if (*v10 != -1)
  {
    dispatch_once(v10, v9);
  }

  objc_storeStrong(&v9, 0);
  v3 = objc_alloc_init([qword_10B70 principalClass]);
  v4 = v6;
  v6 = v3;

  if (v6)
  {
    [v6 setSpecifier:location[0]];
    [v6 setParentController:selfCopy];
    rootController = [(ACUISettingsController *)selfCopy rootController];
    [v6 setRootController:?];

    [(ACUISettingsController *)selfCopy showController:v6 animate:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_scheduleSettingsModeForSpecifier:(id)specifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v15 = 0;
  v13 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [(NSProcessInfo *)v13 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [(NSBundle *)v12 localizedStringForKey:@"OFF" value:&stru_C648 table:@"Localizable"];
    v4 = v15;
    v15 = v3;

    v17 = v15;
  }

  else
  {
    if (PCSettingsGetClassPushEnabled())
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [(NSBundle *)v11 localizedStringForKey:@"PUSH" value:&stru_C648 table:@"Localizable"];
      v6 = v15;
      v15 = v5;
    }

    else
    {
      PCSettingsGetClassPollInterval();
      v7 = ACUIFetchSettingTitle();
      v8 = v15;
      v15 = v7;
    }

    v17 = v15;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v9 = v17;

  return v9;
}

- (void)_fetchLazyLoadedSpecifiers
{
  selfCopy = self;
  v8[1] = a2;
  if (!self->_isLazyLoadingPluginSpecifiers)
  {
    selfCopy->_isLazyLoadingPluginSpecifiers = 1;
    queue = dispatch_get_global_queue(-32768, 0);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_69F4;
    v7 = &unk_C2C0;
    v8[0] = selfCopy;
    dispatch_async(queue, &v3);

    objc_storeStrong(v8, 0);
  }
}

- (id)_specifiersForSettingsProvidedByPlugin:(id)plugin
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, plugin);
  v14 = objc_alloc_init(NSMutableArray);
  specifiers = [location[0] specifiers];
  if ([specifiers count])
  {
    v12 = [specifiers mutableCopy];
    headerText = [location[0] headerText];
    v11 = [PSSpecifier groupSpecifierWithName:?];

    [v12 insertObject:v11 atIndex:0];
    if (objc_opt_respondsToSelector())
    {
      footerText = [location[0] footerText];
      [v11 setProperty:? forKey:?];
    }

    pluginToSpecifiersMap = selfCopy->_pluginToSpecifiersMap;
    v6 = v12;
    v3 = objc_opt_class();
    v8 = NSStringFromClass(v3);
    [(NSMutableDictionary *)pluginToSpecifiersMap setObject:v6 forKey:?];

    [v14 addObjectsFromArray:v12];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  v5 = v14;
  objc_storeStrong(&specifiers, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_specifiersForLoadingMessage
{
  selfCopy = self;
  v16[1] = a2;
  if (!self->_loadingInProgressSpecifiers)
  {
    v12 = &PCSettingsGetClassPollInterval_ptr;
    v9 = PSSpecifier;
    v8 = NSBundle;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"LOADING_CONTACTS_CALENDARS" value:&stru_C648 table:@"Localizable"];
    v15 = 0;
    v2 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];
    v14 = v16;
    v16[0] = v2;

    [v16[0] setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    emptyGroupSpecifier = [v12[58] emptyGroupSpecifier];
    v18[0] = emptyGroupSpecifier;
    v18[1] = v16[0];
    v3 = [NSArray arrayWithObjects:v18 count:2];
    loadingInProgressSpecifiers = selfCopy->_loadingInProgressSpecifiers;
    selfCopy->_loadingInProgressSpecifiers = v3;

    objc_storeStrong(v14, v15);
  }

  v7 = selfCopy->_loadingInProgressSpecifiers;
  v5 = v7;

  return v5;
}

- (void)_accountCellWasTappedWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v23 = [location[0] propertyForKey:ACUIAccountKey];
  if (!v23)
  {
    v22 = _ACUILogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1920(v28, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 834, location[0]);
      _os_log_error_impl(&dword_0, v22, v21, "%s (%d) An account cell was tapped but had no account associated with it! %@", v28, 0x1Cu);
    }

    objc_storeStrong(&v22, 0);
    v20 = 1;
    goto LABEL_32;
  }

  v19 = 0;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  v6 = 0;
  if ([(ACUISettingsController *)selfCopy isShowDataclassDetailFromAppsEnabled])
  {
    accountType = [v23 accountType];
    v17 = 1;
    identifier = [accountType identifier];
    v15 = 1;
    v6 = 0;
    if ([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
    {
      v14 = [v23 objectForKeyedSubscript:@"accountClass"];
      v13 = 1;
      v6 = [v14 isEqualToString:@"primary"];
    }
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v17)
  {
  }

  if (v6)
  {
    v5 = +[ACUIAccountViewProvidersManager sharedInstance];
    v19 = [(ACUIAccountViewProvidersManager *)v5 viewControllerClassForViewingAccount:v23 specifier:location[0] presentingVC:selfCopy];

    if (!v19)
    {
      oslog = _ACUILogSystem();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1920(v27, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 846, v23);
        _os_log_debug_impl(&dword_0, oslog, v11, "%s (%d) No view controller available for account %@", v27, 0x1Cu);
      }

      objc_storeStrong(&oslog, 0);
      v20 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    v4 = +[ACUIAccountViewProvidersManager sharedInstance];
    v19 = [(ACUIAccountViewProvidersManager *)v4 viewControllerClassForViewingAccount:v23];
  }

  if (v19)
  {
    obj = objc_alloc_init(v19);
    [obj setSpecifier:location[0]];
    [obj setAccountChangeObserver:selfCopy];
    if (([(objc_class *)v19 isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      [obj setParentController:selfCopy];
      rootController = [(ACUISettingsController *)selfCopy rootController];
      [obj setRootController:?];

      [(ACUISettingsController *)selfCopy showController:obj animate:1];
    }

    else
    {
      v7 = [[PSSetupController alloc] initWithRootViewController:obj];
      [v7 setSpecifier:location[0]];
      [v7 setParentController:selfCopy];
      [obj setParentController:v7];
      [obj setRootController:v7];
      [(ACUISettingsController *)selfCopy showController:v7 animate:1];
      objc_storeStrong(&v7, 0);
    }

    if (selfCopy->_isInHandleURL)
    {
      objc_storeStrong(&selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL, obj);
    }

    objc_storeStrong(&obj, 0);
    v20 = 0;
  }

  else
  {
    v10 = _ACUILogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1920(v26, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 858, v23);
      _os_log_error_impl(&dword_0, v10, v9, "%s (%d) No view controller available for account %@", v26, 0x1Cu);
    }

    objc_storeStrong(&v10, 0);
    v20 = 1;
  }

LABEL_32:
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  v6 = [*&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[ACUISettingsController indexForIndexPath:](selfCopy, "indexForIndexPath:", v7)}];
  [*&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__table] deselectRowAtIndexPath:v7 animated:1];
  v5.receiver = selfCopy;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 tableView:location[0] didSelectRowAtIndexPath:v7];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)viewController:(id)controller didFinishRemovingAccountWithSuccess:(BOOL)success
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  successCopy = success;
  if (success)
  {
    navigationController = [(ACUISettingsController *)selfCopy navigationController];
    topViewController = [navigationController topViewController];
    v33 = 0;
    v31 = 0;
    isKindOfClass = 0;
    if (topViewController != selfCopy)
    {
      navigationController2 = [(ACUISettingsController *)selfCopy navigationController];
      v33 = 1;
      topViewController2 = [navigationController2 topViewController];
      v31 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v31)
    {
    }

    if (v33)
    {
    }

    if (isKindOfClass)
    {
      navigationController3 = [(ACUISettingsController *)selfCopy navigationController];
      topViewController3 = [navigationController3 topViewController];

      specifiers = [topViewController3 specifiers];
      specifier = [location[0] specifier];
      v25 = [specifiers containsObject:?];

      if (v25)
      {
        specifier2 = [location[0] specifier];
        v19 = +[UIDevice currentDevice];
        userInterfaceIdiom = [(UIDevice *)v19 userInterfaceIdiom];

        v38 = userInterfaceIdiom;
        v21 = 1;
        if (userInterfaceIdiom != &dword_0 + 1)
        {
          v21 = v38 == &dword_4 + 1;
        }

        [topViewController3 removeSpecifier:specifier2 animated:v21];
      }

      objc_storeStrong(&topViewController3, 0);
    }

    [location[0] setParentController:?];
    [location[0] setRootController:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationController4 = [(ACUISettingsController *)selfCopy navigationController];
      viewControllers = [navigationController4 viewControllers];
      v17 = [viewControllers containsObject:selfCopy];

      if (v17)
      {
        navigationController5 = [(ACUISettingsController *)selfCopy navigationController];
        v4 = [navigationController5 popToViewController:selfCopy animated:1];
      }

      else
      {
        navigationController6 = [(ACUISettingsController *)selfCopy navigationController];
        viewControllers2 = [navigationController6 viewControllers];
        parentViewController = [(ACUISettingsController *)selfCopy parentViewController];
        v13 = [viewControllers2 containsObject:?];

        if (v13)
        {
          navigationController7 = [(ACUISettingsController *)selfCopy navigationController];
          parentViewController2 = [(ACUISettingsController *)selfCopy parentViewController];
          v5 = [navigationController7 popToViewController:? animated:?];
        }

        else
        {
          navigationController8 = [(ACUISettingsController *)selfCopy navigationController];
          v6 = [navigationController8 popToRootViewControllerAnimated:1];
        }
      }
    }

    else
    {
      [(ACUISettingsController *)selfCopy dismissViewControllerAnimated:1 completion:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_isAccountModificationDisabledByRestrictions
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] == 2;

  return v4;
}

- (void)specifiersDidChangeForPlugin:(id)plugin
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, plugin);
  pluginToSpecifiersMap = selfCopy->_pluginToSpecifiersMap;
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  v8 = [(NSMutableDictionary *)pluginToSpecifiersMap objectForKey:?];

  v7 = [(ACUISettingsController *)selfCopy _specifiersForSettingsProvidedByPlugin:location[0]];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_3630(v11, "[ACUISettingsController specifiersDidChangeForPlugin:]", 959, v8, v7);
    _os_log_debug_impl(&dword_0, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) replacing specifiers %@ with specifiers %@", v11, 0x26u);
  }

  objc_storeStrong(&oslog, 0);
  [(ACUISettingsController *)selfCopy replaceContiguousSpecifiers:v8 withSpecifiers:v7 animated:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)accountWasAdded:(id)added
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, added);
  [(ACUISettingsController *)selfCopy _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

- (void)accountWasModified:(id)modified
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, modified);
  [(ACUISettingsController *)selfCopy _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

- (void)accountWasRemoved:(id)removed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, removed);
  [(ACUISettingsController *)selfCopy _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

@end