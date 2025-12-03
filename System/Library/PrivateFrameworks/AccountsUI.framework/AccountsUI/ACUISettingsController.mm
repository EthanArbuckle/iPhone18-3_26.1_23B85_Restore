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
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(v13 + 184);
    *(v13 + 184) = v2;
    MEMORY[0x277D82BD8](v3);
    v4 = dispatch_group_create();
    v5 = *(v13 + 196);
    *(v13 + 196) = v4;
    MEMORY[0x277D82BD8](v5);
    dispatch_group_enter(*(v13 + 196));
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = *(v13 + 189);
    *(v13 + 189) = v6;
    MEMORY[0x277D82BD8](v7);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x277CCA5E8] object:?];
    [defaultCenter addObserver:v13 selector:sel__effectiveSettingsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
    objc_storeStrong(&defaultCenter, 0);
  }

  v9 = MEMORY[0x277D82BE0](v13);
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
  v4 = [specifier propertyForKey:*MEMORY[0x277D3FD90]];
  MEMORY[0x277D82BD8](specifier);
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
  v3 = +[(PSTableCell *)ACUIAccountSummaryCell];
  [table registerClass:v2 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](table);
  table2 = [(ACUISettingsController *)selfCopy table];
  v5 = objc_opt_class();
  v6 = +[(PSTableCell *)ACUIAccountCollectionLinkCell];
  [table2 registerClass:v5 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](table2);
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__ACUISettingsController__lowPowerModeChangedNotification___block_invoke;
  v10 = &unk_278BFA730;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_effectiveSettingsChangedNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__ACUISettingsController__effectiveSettingsChangedNotification___block_invoke;
  v10 = &unk_278BFA730;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __64__ACUISettingsController__effectiveSettingsChangedNotification___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 1560) & 1) != 1)
  {
    return [*(result + 32) reloadSpecifiers];
  }

  *(*(result + 32) + 1560) = 0;
  return result;
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
  v3[0] = [MEMORY[0x277CCAB98] defaultCenter];
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
  v3 = [location[0] propertyForKey:*MEMORY[0x277D3FD70]];
  filteredDataclass = selfCopy->_filteredDataclass;
  selfCopy->_filteredDataclass = v3;
  MEMORY[0x277D82BD8](filteredDataclass);
  objc_storeStrong(location, 0);
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v25 = 0;
  objc_storeStrong(&v25, dictionary);
  v24[1] = push;
  v24[0] = 0;
  objc_storeStrong(v24, completion);
  if (selfCopy->_specifierLoadGroup)
  {
    v23 = _ACUILogSystem();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v29, "[ACUISettingsController prepareHandlingURLForSpecifierID:resourceDictionary:animatePush:withCompletion:]", 217, v25);
      _os_log_debug_impl(&dword_23DC86000, v23, v22, "%s (%d) Deferring URL load for resources %@", v29, 0x1Cu);
    }

    objc_storeStrong(&v23, 0);
    group = selfCopy->_specifierLoadGroup;
    v8 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v8;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __105__ACUISettingsController_prepareHandlingURLForSpecifierID_resourceDictionary_animatePush_withCompletion___block_invoke;
    v18 = &unk_278BFAC88;
    v19 = MEMORY[0x277D82BE0](selfCopy);
    v20 = MEMORY[0x277D82BE0](v25);
    v21 = MEMORY[0x277D82BE0](v24[0]);
    dispatch_group_notify(group, queue, &v14);
    MEMORY[0x277D82BD8](queue);
    v28 = 0;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v28 = 1;
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v28 & 1;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v16 = _ACUILogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v21, "[ACUISettingsController handleURL:withCompletion:]", 229, location[0]);
    _os_log_debug_impl(&dword_23DC86000, v16, v15, "%s (%d) Handling URL load for resources %@", v21, 0x1Cu);
  }

  objc_storeStrong(&v16, 0);
  selfCopy->_isInHandleURL = 1;
  v14.receiver = selfCopy;
  v14.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v14 handleURL:location[0] withCompletion:&__block_literal_global_7];
  selfCopy->_isInHandleURL = 0;
  if (selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL)
  {
    viewControllerPushedByControllerLoadActionDuringHandleURL = selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [location[0] objectForKey:@"path"];
      v6 = MEMORY[0x277CBEB18];
      pathComponents = [v13 pathComponents];
      v12 = [v6 arrayWithArray:?];
      MEMORY[0x277D82BD8](pathComponents);
      if ([v12 count])
      {
        [v12 removeObjectAtIndex:0];
        v4 = [MEMORY[0x277CCACA8] pathWithComponents:v12];
        v5 = v13;
        v13 = v4;
        MEMORY[0x277D82BD8](v5);
        v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:location[0]];
        [v11 setObject:v13 forKey:@"path"];
        [(PSViewController *)selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL handleURL:v11 withCompletion:v17];
        objc_storeStrong(&v11, 0);
      }

      else if (v17)
      {
        (*(v17 + 2))();
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&selfCopy->_viewControllerPushedByControllerLoadActionDuringHandleURL, 0);
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v20, "[ACUISettingsController handleURL:withCompletion:]", 256, location[0]);
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) No subview to display matching dictionary %@", v20, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    if (v17)
    {
      (*(v17 + 2))();
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_accountStore
{
  if (!self->_accountStore)
  {
    v2 = +[ACUIViewController acuiAccountStore];
    accountStore = self->_accountStore;
    self->_accountStore = v2;
    MEMORY[0x277D82BD8](accountStore);
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
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __50__ACUISettingsController__accountsWithCompletion___block_invoke;
    v8 = &unk_278BFACB0;
    v9 = MEMORY[0x277D82BE0](selfCopy);
    v10 = MEMORY[0x277D82BE0](location[0]);
    [(ACUISettingsController *)v3 _loadAccountsWithCompletion:&v4];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

void __50__ACUISettingsController__accountsWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v7 = v6;
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  v3 = [location[0] copy];
  v4 = (a1[4] + 1464);
  v5 = *v4;
  *v4 = v3;
  MEMORY[0x277D82BD8](v5);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)_loadAccountsWithCompletion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v52 = 0;
  array = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  _accountStore = [(ACUISettingsController *)selfCopy _accountStore];
  obj = [_accountStore monitoredAccounts];
  MEMORY[0x277D82BD8](_accountStore);
  v20 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
  if (v20)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v20;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(__b[1] + 8 * v16);
      if ([v50 isVisible])
      {
        parentAccount = [v50 parentAccount];
        MEMORY[0x277D82BD8](parentAccount);
        if (!parentAccount)
        {
          enabledDataclasses = [v50 enabledDataclasses];
          if (selfCopy->_filteredDataclass)
          {
            provisionedDataclasses = [v50 provisionedDataclasses];
            v42 = MEMORY[0x277D85DD0];
            v43 = -1073741824;
            v44 = 0;
            v45 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke;
            v46 = &unk_278BFACD8;
            v47 = MEMORY[0x277D82BE0](selfCopy);
            v48 = [provisionedDataclasses objectsPassingTest:&v42];
            MEMORY[0x277D82BD8](provisionedDataclasses);
            if (![v48 count])
            {
              accountType = [v50 accountType];
              supportedDataclasses = [accountType supportedDataclasses];
              v36 = MEMORY[0x277D85DD0];
              v37 = -1073741824;
              v38 = 0;
              v39 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_2;
              v40 = &unk_278BFACD8;
              v41 = MEMORY[0x277D82BE0](selfCopy);
              v4 = [supportedDataclasses objectsPassingTest:&v36];
              v5 = v48;
              v48 = v4;
              MEMORY[0x277D82BD8](v5);
              MEMORY[0x277D82BD8](supportedDataclasses);
              MEMORY[0x277D82BD8](accountType);
              objc_storeStrong(&v41, 0);
            }

            if ([v48 count])
            {
              [array addObject:v50];
            }

            objc_storeStrong(&v48, 0);
            objc_storeStrong(&v47, 0);
          }

          else
          {
            [array addObject:v50];
          }
        }
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v55 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v52, array);
  v35 = ACUISortedAccountTypes();
  v7 = v52;
  v28 = MEMORY[0x277D85DD0];
  v29 = -1073741824;
  v30 = 0;
  v31 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_3;
  v32 = &unk_278BFAC30;
  v33 = MEMORY[0x277D82BE0](v35);
  v34 = [v7 sortedArrayUsingComparator:&v28];
  v8 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v8;
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_4;
  v25 = &unk_278BFA5E8;
  v27 = MEMORY[0x277D82BE0](location[0]);
  v26 = MEMORY[0x277D82BE0](v34);
  dispatch_async(queue, &v21);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&array, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] hasPrefix:*(a1[4] + 1552)];
  }

  *a3 = v6 & 1;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

uint64_t __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] hasPrefix:*(a1[4] + 1552)];
  }

  *a3 = v6 & 1;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

uint64_t __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_3(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [location[0] accountType];
    v13[0] = [v4 identifier];
    MEMORY[0x277D82BD8](v4);
    v5 = [v14 accountType];
    v12 = [v5 identifier];
    MEMORY[0x277D82BD8](v5);
    v11 = [a1[4] indexOfObject:v13[0]];
    v10 = [a1[4] indexOfObject:v12];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v16 = [v7 compare:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

uint64_t __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_4(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)_accountStoreDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = _ACUILogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_4_0(v12, "[ACUISettingsController _accountStoreDidChange]", 354);
    _os_log_impl(&dword_23DC86000, location[0], v9, "%s (%d) ACUISettingsController received monitored account delegate call.", v12, 0x12u);
  }

  objc_storeStrong(location, 0);
  v2 = selfCopy;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __48__ACUISettingsController__accountStoreDidChange__block_invoke;
  v7 = &unk_278BFAD28;
  v8 = MEMORY[0x277D82BE0](selfCopy);
  [(ACUISettingsController *)v2 _loadAccountsWithCompletion:&v3];
  objc_storeStrong(&v8, 0);
  *MEMORY[0x277D85DE8];
}

void __48__ACUISettingsController__accountStoreDidChange__block_invoke(id *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  if ([a1[4] _isAccountList:location[0] identicalToAccountList:*(a1[4] + 183)])
  {
    v14[0] = _ACUILogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v16, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 358);
      _os_log_impl(&dword_23DC86000, v14[0], v13, "%s (%d) ACUISettingsController will ignore monitored account delegate call because the account list has not changed.", v16, 0x12u);
    }

    objc_storeStrong(v14, 0);
    v12 = 1;
  }

  else
  {
    objc_storeStrong(a1[4] + 183, location[0]);
    v11 = [*(a1[4] + 184) copy];
    v2 = a1[4];
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __48__ACUISettingsController__accountStoreDidChange__block_invoke_59;
    v8 = &unk_278BFAD00;
    v9 = MEMORY[0x277D82BE0](v11);
    v10 = MEMORY[0x277D82BE0](a1[4]);
    [v2 _specifiersForAccountsGroupWithCompletion:&v4];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __48__ACUISettingsController__accountStoreDidChange__block_invoke_59(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23[1] = a1;
  if ([*(a1 + 32) count])
  {
    if ([location[0] count])
    {
      oslog = _ACUILogSystem();
      v18 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v29, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 374);
        _os_log_debug_impl(&dword_23DC86000, oslog, v18, "%s (%d) ACUISettingsController _accountStoreDidChange: BEGIN UPDATES!", v29, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 40) beginUpdates];
      v17 = _ACUILogSystem();
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_32_4_0_8_64(v28, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 377, *(a1 + 32));
        _os_log_debug_impl(&dword_23DC86000, v17, v16, "%s (%d) ACUISettingsController _accountStoreDidChange: removing specifiers %@", v28, 0x1Cu);
      }

      objc_storeStrong(&v17, 0);
      memset(__b, 0, sizeof(__b));
      obj = [*(a1 + 32) reverseObjectEnumerator];
      v9 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
      if (v9)
      {
        v5 = *__b[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*__b[2] != v5)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(__b[1] + 8 * v6);
          v2 = *(a1 + 40);
          v3 = [v15 identifier];
          [v2 removeSpecifierID:?];
          MEMORY[0x277D82BD8](v3);
          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
            if (!v7)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      v13 = _ACUILogSystem();
      v12 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v26, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 382, location[0], *(*(a1 + 40) + 1480));
        _os_log_debug_impl(&dword_23DC86000, v13, v12, "%s (%d) ACUISettingsController _accountStoreDidChange: inserting specifiers %@ after specifier %@", v26, 0x26u);
      }

      objc_storeStrong(&v13, 0);
      [*(a1 + 40) insertContiguousSpecifiers:location[0] afterSpecifier:*(*(a1 + 40) + 1480)];
      v11 = _ACUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_4_0(v25, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 385);
        _os_log_debug_impl(&dword_23DC86000, v11, OS_LOG_TYPE_DEBUG, "%s (%d) ACUISettingsController _accountStoreDidChange: END UPDATES!", v25, 0x12u);
      }

      objc_storeStrong(&v11, 0);
      [*(a1 + 40) endUpdates];
    }

    else
    {
      v21 = _ACUILogSystem();
      v20 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_32_4_0_8_64(v30, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 370, *(a1 + 32));
        _os_log_debug_impl(&dword_23DC86000, v21, v20, "%s (%d) ACUISettingsController _accountStoreDidChange: removing specifiers %@", v30, 0x1Cu);
      }

      objc_storeStrong(&v21, 0);
      [*(a1 + 40) removeContiguousSpecifiers:*(a1 + 32) animated:0];
    }
  }

  else
  {
    v23[0] = _ACUILogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v31, "[ACUISettingsController _accountStoreDidChange]_block_invoke", 367, location[0], *(*(a1 + 40) + 1480));
      _os_log_debug_impl(&dword_23DC86000, v23[0], type, "%s (%d) ACUISettingsController _accountStoreDidChange: inserting specifiers %@ after specifier %@", v31, 0x26u);
    }

    objc_storeStrong(v23, 0);
    [*(a1 + 40) insertContiguousSpecifiers:location[0] afterSpecifier:*(*(a1 + 40) + 1480)];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_isAccountList:(id)list identicalToAccountList:(id)accountList
{
  v21 = *MEMORY[0x277D85DE8];
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
    v9 = MEMORY[0x277D82BE0](location[0]);
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

    MEMORY[0x277D82BD8](v9);
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
  *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)_isAccount:(id)account inList:(id)list
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v33 = 0;
  objc_storeStrong(&v33, list);
  memset(__b, 0, sizeof(__b));
  v12 = MEMORY[0x277D82BE0](v33);
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
        MEMORY[0x277D82BD8](provisionedDataclasses2);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](provisionedDataclasses);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](enabledDataclasses2);
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](enabledDataclasses);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](accountDescription2);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](accountDescription);
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](identifier2);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](identifier);
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

  MEMORY[0x277D82BD8](v12);
  if (!v14)
  {
    v35 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v35 & 1;
}

- (id)_settingsPluginManager
{
  if (!self->_settingsPluginManager)
  {
    v2 = [[ACUISettingsPluginManager alloc] initWithParentViewController:self];
    settingsPluginManager = self->_settingsPluginManager;
    self->_settingsPluginManager = v2;
    MEMORY[0x277D82BD8](settingsPluginManager);
  }

  v4 = self->_settingsPluginManager;

  return v4;
}

- (void)_filterAccounts:(id)accounts toTopLevel:(id)level grouped:(id)grouped ignoringGroups:(id)groups
{
  v30 = *MEMORY[0x277D85DE8];
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
  v18 = MEMORY[0x277D82BE0](location[0]);
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
        MEMORY[0x277D82BD8](v10);
        if (!v20)
        {
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v7 = v20;
          v20 = v6;
          MEMORY[0x277D82BD8](v7);
        }

        [v20 addObject:v23];
        v8 = v25;
        v9 = [v20 copy];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v9);
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

  MEMORY[0x277D82BD8](v18);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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
  v9 = [identifier isEqualToString:*MEMORY[0x277CB8D10]];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  if (v9 & 1) == 0 || ([v10 containsObject:*MEMORY[0x277CB8D10]])
  {
    v12 = 0;
  }

  else
  {
    v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CB8D10]);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (id)specifiers
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    location[0] = _ACUILogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v31, "[ACUISettingsController specifiers]", 461);
      _os_log_impl(&dword_23DC86000, location[0], v28, "%s (%d) ACUISettingsController is loading specifiers.", v31, 0x12u);
    }

    objc_storeStrong(location, 0);
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:@"ACCOUNTS" value:&stru_2850054A0 table:@"Localizable"];
    v2 = [v13 groupSpecifierWithName:?];
    accountGroupSpecifier = selfCopy->_accountGroupSpecifier;
    selfCopy->_accountGroupSpecifier = v2;
    MEMORY[0x277D82BD8](accountGroupSpecifier);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    [v27 addObject:selfCopy->_accountGroupSpecifier];
    v26 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v25 = selfCopy->_accounts == 0;
    if (v25)
    {
      [v27 addObject:v26];
    }

    v12 = selfCopy;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __36__ACUISettingsController_specifiers__block_invoke;
    v20 = &unk_278BFAD50;
    v24 = v25;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](v26);
    v23 = MEMORY[0x277D82BE0](v27);
    [(ACUISettingsController *)v12 _specifiersForAccountsGroupWithCompletion:&v16];
    if (!ACUIIsSharedIPadMode())
    {
      v10 = v27;
      _addAccountSpecifier = [(ACUISettingsController *)selfCopy _addAccountSpecifier];
      [v10 addObject:?];
      MEMORY[0x277D82BD8](_addAccountSpecifier);
    }

    v6 = v27;
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:?];
    MEMORY[0x277D82BD8](emptyGroupSpecifier);
    v8 = v27;
    _specifierForScheduleSettings = [(ACUISettingsController *)selfCopy _specifierForScheduleSettings];
    [v8 addObject:?];
    MEMORY[0x277D82BD8](_specifierForScheduleSettings);
    objc_storeStrong((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v27);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  *MEMORY[0x277D85DE8];
  v4 = *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v4;
}

void __36__ACUISettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v4 = v3;
  dispatch_assert_queue_V2(v4);
  MEMORY[0x277D82BD8](v4);
  if (*(a1 + 56))
  {
    [*(a1 + 32) insertContiguousSpecifiers:location[0] afterSpecifier:*(a1 + 40)];
    [*(a1 + 32) removeSpecifier:*(a1 + 40)];
    if (*(*(a1 + 32) + 1568))
    {
      dispatch_group_leave(*(*(a1 + 32) + 1568));
      objc_storeStrong((*(a1 + 32) + 1568), 0);
    }
  }

  else
  {
    [*(a1 + 48) addObjectsFromArray:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)_specifiersForAccountsGroupWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v14 = _ACUILogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_4_0(v19, "[ACUISettingsController _specifiersForAccountsGroupWithCompletion:]", 516);
    _os_log_impl(&dword_23DC86000, v14, v13, "%s (%d) ACUISettingsController _specifiersForAccountsGroup called.", v19, 0x12u);
  }

  objc_storeStrong(&v14, 0);
  v18 = &_specifiersForAccountsGroupWithCompletion__onceToken;
  v17 = 0;
  objc_storeStrong(&v17, &__block_literal_global_74);
  if (*v18 != -1)
  {
    dispatch_once(v18, v17);
  }

  objc_storeStrong(&v17, 0);
  v12 = 1;
  if ((_specifiersForAccountsGroupWithCompletion__pluginsHandleModificationRestriction & 1) == 0)
  {
    v12 = ![(ACUISettingsController *)selfCopy _isAccountModificationDisabledByRestrictions];
  }

  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__ACUISettingsController__specifiersForAccountsGroupWithCompletion___block_invoke_2;
  v8 = &unk_278BFAD78;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v11 = v12;
  v10 = MEMORY[0x277D82BE0](location[0]);
  [(ACUISettingsController *)v3 _accountsWithCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __68__ACUISettingsController__specifiersForAccountsGroupWithCompletion___block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    _specifiersForAccountsGroupWithCompletion__pluginsHandleModificationRestriction = 1;
  }

  return result;
}

void __68__ACUISettingsController__specifiersForAccountsGroupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v53[1] = a1;
  v53[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [*(a1 + 32) _filterAccounts:location[0] toTopLevel:v53[0] grouped:v52 ignoringGroups:0];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v53[0]);
  v33 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
  if (v33)
  {
    v28 = *__b[2];
    v29 = 0;
    v30 = v33;
    while (1)
    {
      v27 = v29;
      if (*__b[2] != v28)
      {
        objc_enumerationMutation(obj);
      }

      v50 = *(__b[1] + 8 * v29);
      v48 = [*(a1 + 32) _specifierForAccount:v50];
      if (v48)
      {
        if ((_specifiersForAccountsGroupWithCompletion__pluginsHandleModificationRestriction & 1) == 0)
        {
          v24 = [v50 accountType];
          v25 = [v24 identifier];
          LOBYTE(v26) = 0;
          if ([v25 isEqualToString:*MEMORY[0x277CB8C40]])
          {
            v26 = [v50 isAuthenticated] ^ 1;
          }

          MEMORY[0x277D82BD8](v25);
          MEMORY[0x277D82BD8](v24);
          v47 = v26 & 1;
          v21 = [v50 accountType];
          v22 = [v21 identifier];
          v2 = [v22 isEqualToString:*MEMORY[0x277CB8C00]];
          v44 = 0;
          v42 = 0;
          v23 = 1;
          if ((v2 & 1) == 0)
          {
            v45 = [v50 accountType];
            v44 = 1;
            v43 = [v45 identifier];
            v42 = 1;
            v23 = [v43 isEqualToString:*MEMORY[0x277CB8C50]];
          }

          if (v42)
          {
            MEMORY[0x277D82BD8](v43);
          }

          if (v44)
          {
            MEMORY[0x277D82BD8](v45);
          }

          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v21);
          v46 = v23 & 1;
          v19 = v48;
          v20 = 1;
          if ((*(a1 + 48) & 1) == 0)
          {
            v20 = 1;
            if ((v47 & 1) == 0)
            {
              v20 = v46;
            }
          }

          v18 = [MEMORY[0x277CCABB0] numberWithInt:v20 & 1];
          v3 = *MEMORY[0x277D3FF38];
          [v19 setProperty:? forKey:?];
          MEMORY[0x277D82BD8](v18);
        }

        v15 = [v50 accountType];
        v16 = [v15 identifier];
        v4 = [v16 isEqualToString:*MEMORY[0x277CB8BA0]];
        v40 = 0;
        v17 = 0;
        if (v4)
        {
          v41 = [v50 objectForKeyedSubscript:@"primaryAccount"];
          v40 = 1;
          v17 = [v41 BOOLValue];
        }

        if (v40)
        {
          MEMORY[0x277D82BD8](v41);
        }

        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v15);
        if (v17)
        {
          oslog = _ACUILogSystem();
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            __os_log_helper_16_2_3_8_32_4_0_8_64(v56, "[ACUISettingsController _specifiersForAccountsGroupWithCompletion:]_block_invoke_2", 557, v50);
            _os_log_impl(&dword_23DC86000, log, type, "%s (%d) Hit our primary account, lets ensure this is at the top - %@", v56, 0x1Cu);
          }

          objc_storeStrong(&oslog, 0);
          [v51 insertObject:v48 atIndex:0];
        }

        else
        {
          [v51 addObject:v48];
        }
      }

      objc_storeStrong(&v48, 0);
      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v30)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v36, 0, sizeof(v36));
  v12 = [v52 allKeys];
  v13 = [v12 countByEnumeratingWithState:v36 objects:v55 count:16];
  if (v13)
  {
    v9 = *v36[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*v36[2] != v9)
      {
        objc_enumerationMutation(v12);
      }

      v37 = *(v36[1] + 8 * v10);
      v35 = [v52 objectForKey:v37];
      v34 = [*(a1 + 32) _specifierForCollectionCellLinkingToAccounts:v35 withGroupIdentifier:v37 underParentGroup:0];
      if (v34)
      {
        if ((_specifiersForAccountsGroupWithCompletion__pluginsHandleModificationRestriction & 1) == 0)
        {
          v6 = v34;
          v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48) & 1];
          v5 = *MEMORY[0x277D3FF38];
          [v6 setProperty:? forKey:?];
          MEMORY[0x277D82BD8](v7);
        }

        [v51 addObject:v34];
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v12 countByEnumeratingWithState:v36 objects:v55 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v12);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong((*(a1 + 32) + 1472), v51);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_specifierForCollectionCellLinkingToAccounts:(id)accounts withGroupIdentifier:(id)identifier underParentGroup:(id)group
{
  v61 = *MEMORY[0x277D85DE8];
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
  v33 = MEMORY[0x277D82BE0](location[0]);
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
      MEMORY[0x277D82BD8](identifier);
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
    MEMORY[0x277D82BD8](v6);
    v48 = 2;
  }

  else
  {
LABEL_9:
    v48 = 0;
  }

  MEMORY[0x277D82BD8](v33);
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = [MEMORY[0x277CBEB58] setWithObject:v53];
  if (v52)
  {
    [v45 addObject:v52];
  }

  [(ACUISettingsController *)selfCopy _filterAccounts:location[0] toTopLevel:v47 grouped:v46 ignoringGroups:v45];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(v42, 0, sizeof(v42));
  v23 = MEMORY[0x277D82BE0](v47);
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
      MEMORY[0x277D82BD8](identifier2);
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

  MEMORY[0x277D82BD8](v23);
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

  MEMORY[0x277D82BD8](allKeys);
  if ([v53 isEqualToString:*MEMORY[0x277CB8D10]])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v10 localizedStringForKey:@"SUBSCRIBED_CALENDARS" value:&stru_2850054A0 table:@"Localizable"];
    v36 = [ACUIAccountCollectionLinkCell specifierWithTitle:"specifierWithTitle:accounts:" accounts:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v56 = MEMORY[0x277D82BE0](v36);
    v48 = 1;
    objc_storeStrong(&v36, 0);
  }

  else if (v51)
  {
    [v51 setProperty:v44 forKey:@"ACUIAccountCollectionSpecifiers"];
    v56 = MEMORY[0x277D82BE0](v51);
    v48 = 1;
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v57, "[ACUISettingsController _specifierForCollectionCellLinkingToAccounts:withGroupIdentifier:underParentGroup:]", 634, location[0]);
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) No principle account specifier found, grouping can not be made for accounts %@", v57, 0x1Cu);
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
  *MEMORY[0x277D85DE8];
  v7 = v56;

  return v7;
}

- (id)_specifierForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] copy];
  v11 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:target:controllerLoadAction:" account:3 target:? controllerLoadAction:?];
  MEMORY[0x277D82BD8](v5);
  v7 = v11;
  specifier = [(ACUISettingsController *)selfCopy specifier];
  v6 = MEMORY[0x277D3FD90];
  v8 = [specifier propertyForKey:*MEMORY[0x277D3FD90]];
  v3 = *v6;
  [v7 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](specifier);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)_addAccountSpecifier
{
  if (!self->_addAccountSpecifier)
  {
    v14 = MEMORY[0x277D3FAD8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:? value:? table:?];
    v2 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    addAccountSpecifier = self->_addAccountSpecifier;
    self->_addAccountSpecifier = v2;
    MEMORY[0x277D82BD8](addAccountSpecifier);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    [(PSSpecifier *)self->_addAccountSpecifier setProperty:@"ADD_ACCOUNT" forKey:*MEMORY[0x277D3FFB8]];
    if (self->_filteredDataclass)
    {
      [(PSSpecifier *)self->_addAccountSpecifier setProperty:self->_filteredDataclass forKey:*MEMORY[0x277D3FD70]];
    }
  }

  v17 = ![(ACUISettingsController *)self _isAccountModificationDisabledByRestrictions];
  v8 = self->_addAccountSpecifier;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v4 = *MEMORY[0x277D3FF38];
  [PSSpecifier setProperty:v8 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v9);
  v11 = self->_addAccountSpecifier;
  specifier = [(ACUISettingsController *)self specifier];
  v10 = MEMORY[0x277D3FD90];
  v12 = [specifier propertyForKey:*MEMORY[0x277D3FD90]];
  v5 = *v10;
  [PSSpecifier setProperty:v11 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](specifier);
  v6 = self->_addAccountSpecifier;

  return v6;
}

- (id)_specifierForScheduleSettings
{
  selfCopy = self;
  v7[1] = a2;
  v4 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:? value:? table:?];
  v7[0] = [v4 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v7[0] setProperty:@"FETCH_NEW_DATA" forKey:*MEMORY[0x277D3FFB8]];
  [v7[0] setControllerLoadAction:sel__scheduleSettingsCellWasTappedWithSpecifier_];
  if ([(ACUISettingsController *)selfCopy _isAccountModificationDisabledByRestrictions])
  {
    [v7[0] setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (void)_scheduleSettingsCellWasTappedWithSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v6 = 0;
  v10 = &_scheduleSettingsCellWasTappedWithSpecifier__onceToken;
  v9 = 0;
  objc_storeStrong(&v9, &__block_literal_global_95);
  if (*v10 != -1)
  {
    dispatch_once(v10, v9);
  }

  objc_storeStrong(&v9, 0);
  v3 = objc_alloc_init([_scheduleSettingsCellWasTappedWithSpecifier___scheduleSettingsBundle principalClass]);
  v4 = v6;
  v6 = v3;
  MEMORY[0x277D82BD8](v4);
  if (v6)
  {
    [v6 setSpecifier:location[0]];
    [v6 setParentController:selfCopy];
    rootController = [(ACUISettingsController *)selfCopy rootController];
    [v6 setRootController:?];
    MEMORY[0x277D82BD8](rootController);
    [(ACUISettingsController *)selfCopy showController:v6 animate:1];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void __70__ACUISettingsController__scheduleSettingsCellWasTappedWithSpecifier___block_invoke(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = MEMORY[0x277D82BE0](@"/System/Library/PreferenceBundles/ScheduleSettings.bundle");
  v1 = [MEMORY[0x277CCA8D8] bundleWithPath:v3[0]];
  v2 = _scheduleSettingsCellWasTappedWithSpecifier___scheduleSettingsBundle;
  _scheduleSettingsCellWasTappedWithSpecifier___scheduleSettingsBundle = v1;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v3, 0);
}

- (id)_scheduleSettingsModeForSpecifier:(id)specifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v16 = 0;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
  MEMORY[0x277D82BD8](processInfo);
  if (isLowPowerModeEnabled)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v12 localizedStringForKey:@"OFF" value:&stru_2850054A0 table:@"Localizable"];
    v4 = v16;
    v16 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v12);
    v18 = MEMORY[0x277D82BE0](v16);
  }

  else
  {
    if (PCSettingsGetClassPushEnabled())
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v11 localizedStringForKey:@"PUSH" value:&stru_2850054A0 table:@"Localizable"];
      v6 = v16;
      v16 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      ClassPollInterval = PCSettingsGetClassPollInterval();
      v7 = ACUIFetchSettingTitle(ClassPollInterval);
      v8 = v16;
      v16 = v7;
      MEMORY[0x277D82BD8](v8);
    }

    v18 = MEMORY[0x277D82BE0](v16);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v9 = v18;

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
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __52__ACUISettingsController__fetchLazyLoadedSpecifiers__block_invoke;
    v7 = &unk_278BFA730;
    v8[0] = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v3);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v8, 0);
  }
}

void __52__ACUISettingsController__fetchLazyLoadedSpecifiers__block_invoke(void *a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v5 = a1[4];
  v7 = [v5 _settingsPluginManager];
  v6 = [v7 contactsSettingsPlugin];
  v17[0] = [v5 _specifiersForSettingsProvidedByPlugin:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = a1[4];
  v10 = [v8 _settingsPluginManager];
  v9 = [v10 calendarSettingsPlugin];
  v16 = [v8 _specifiersForSettingsProvidedByPlugin:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v1 = [v17[0] arrayByAddingObjectsFromArray:v16];
  v2 = (a1[4] + 1504);
  v3 = *v2;
  *v2 = v1;
  MEMORY[0x277D82BD8](v3);
  v11 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__ACUISettingsController__fetchLazyLoadedSpecifiers__block_invoke_2;
  v14[3] = &unk_278BFA730;
  v15 = MEMORY[0x277D82BE0](a1[4]);
  dispatch_async(queue, v14);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
}

void __52__ACUISettingsController__fetchLazyLoadedSpecifiers__block_invoke_2(NSObject *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _ACUILogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v31, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke_2", 759, *(a1[4].isa + 187));
    _os_log_debug_impl(&dword_23DC86000, oslog[0], type, "%s (%d) ACUISettingsController is removing loading-in-progress specifiers: %@", v31, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa removeContiguousSpecifiers:*(a1[4].isa + 187)];
  v25 = [MEMORY[0x277CBEB18] array];
  location = [*(a1[4].isa + *MEMORY[0x277D3FC48]) lastObject];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1[4].isa + 188));
  v15 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v12);
      v1 = *&v23[*MEMORY[0x277D3FC90]];
      v20 = 0;
      v9 = 0;
      if (!v1)
      {
        v8 = v23;
        v21 = [*(a1[4].isa + 188) objectAtIndexedSubscript:0];
        v20 = 1;
        v9 = v8 != v21;
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](v21);
      }

      if (v9)
      {
        v19 = _ACUILogSystem();
        v18 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v7 = v19;
          __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v29, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke", 767, v25, location);
          _os_log_debug_impl(&dword_23DC86000, v7, v18, "%s (%d) ACUISettingsController is inserting specifiers: %@ after specifier: %@", v29, 0x26u);
        }

        objc_storeStrong(&v19, 0);
        [(objc_class *)a1[4].isa insertContiguousSpecifiers:v25 afterSpecifier:location animated:0];
        v2 = [v25 lastObject];
        v3 = location;
        location = v2;
        MEMORY[0x277D82BD8](v3);
        [v25 removeAllObjects];
      }

      [v25 addObject:v23];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if ([v25 count])
  {
    v17 = _ACUILogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v28, "[ACUISettingsController _fetchLazyLoadedSpecifiers]_block_invoke", 777, v25, location);
      _os_log_debug_impl(&dword_23DC86000, v17, OS_LOG_TYPE_DEBUG, "%s (%d) ACUISettingsController is inserting specifiers: %@ after specifier: %@", v28, 0x26u);
    }

    objc_storeStrong(&v17, 0);
    [(objc_class *)a1[4].isa insertContiguousSpecifiers:v25 afterSpecifier:location animated:0];
  }

  v6 = MEMORY[0x277D3FC60];
  [*(a1[4].isa + *MEMORY[0x277D3FC60]) contentOffset];
  [*(a1[4].isa + *v6) setContentOffset:0 animated:{v4, v5}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v25, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_specifiersForSettingsProvidedByPlugin:(id)plugin
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, plugin);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  specifiers = [location[0] specifiers];
  if ([specifiers count])
  {
    v14 = [specifiers mutableCopy];
    v11 = MEMORY[0x277D3FAD8];
    headerText = [location[0] headerText];
    v13 = [v11 groupSpecifierWithName:?];
    MEMORY[0x277D82BD8](headerText);
    [v14 insertObject:v13 atIndex:0];
    if (objc_opt_respondsToSelector())
    {
      footerText = [location[0] footerText];
      v3 = *MEMORY[0x277D3FF88];
      [v13 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](footerText);
    }

    pluginToSpecifiersMap = selfCopy->_pluginToSpecifiersMap;
    v7 = v14;
    v4 = objc_opt_class();
    v9 = NSStringFromClass(v4);
    [(NSMutableDictionary *)pluginToSpecifiersMap setObject:v7 forKey:?];
    MEMORY[0x277D82BD8](v9);
    [v16 addObjectsFromArray:v14];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  v6 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&specifiers, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_specifiersForLoadingMessage
{
  v18[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16[1] = a2;
  if (!self->_loadingInProgressSpecifiers)
  {
    v12 = 0x277D3F000uLL;
    v9 = MEMORY[0x277D3FAD8];
    v8 = MEMORY[0x277CCA8D8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"LOADING_CONTACTS_CALENDARS" value:&stru_2850054A0 table:@"Localizable"];
    v15 = 0;
    v2 = [v9 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    v14 = v16;
    v16[0] = v2;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    [v16[0] setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    emptyGroupSpecifier = [*(v12 + 2776) emptyGroupSpecifier];
    v18[0] = emptyGroupSpecifier;
    v18[1] = v16[0];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    loadingInProgressSpecifiers = selfCopy->_loadingInProgressSpecifiers;
    selfCopy->_loadingInProgressSpecifiers = v3;
    MEMORY[0x277D82BD8](loadingInProgressSpecifiers);
    MEMORY[0x277D82BD8](emptyGroupSpecifier);
    objc_storeStrong(v14, v15);
  }

  v7 = selfCopy->_loadingInProgressSpecifiers;
  *MEMORY[0x277D85DE8];
  v5 = v7;

  return v5;
}

- (void)_accountCellWasTappedWithSpecifier:(id)specifier
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v23 = [location[0] propertyForKey:@"account"];
  if (!v23)
  {
    v22 = _ACUILogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v28, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 834, location[0]);
      _os_log_error_impl(&dword_23DC86000, v22, v21, "%s (%d) An account cell was tapped but had no account associated with it! %@", v28, 0x1Cu);
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
    if ([identifier isEqualToString:*MEMORY[0x277CB8BA0]])
    {
      v14 = [v23 objectForKeyedSubscript:@"accountClass"];
      v13 = 1;
      v6 = [v14 isEqualToString:@"primary"];
    }
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](identifier);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](accountType);
  }

  if (v6)
  {
    v5 = +[ACUIAccountViewProvidersManager sharedInstance];
    v19 = [(ACUIAccountViewProvidersManager *)v5 viewControllerClassForViewingAccount:v23 specifier:location[0] presentingVC:selfCopy];
    MEMORY[0x277D82BD8](v5);
    if (!v19)
    {
      oslog = _ACUILogSystem();
      v11 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_32_4_0_8_64(v27, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 846, v23);
        _os_log_debug_impl(&dword_23DC86000, oslog, v11, "%s (%d) No view controller available for account %@", v27, 0x1Cu);
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
    MEMORY[0x277D82BD8](v4);
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
      MEMORY[0x277D82BD8](rootController);
      [(ACUISettingsController *)selfCopy showController:obj animate:1];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D3FAC8]) initWithRootViewController:obj];
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
      __os_log_helper_16_2_3_8_32_4_0_8_64(v26, "[ACUISettingsController _accountCellWasTappedWithSpecifier:]", 858, v23);
      _os_log_error_impl(&dword_23DC86000, v10, v9, "%s (%d) No view controller available for account %@", v26, 0x1Cu);
    }

    objc_storeStrong(&v10, 0);
    v20 = 1;
  }

LABEL_32:
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  v6 = [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{-[ACUISettingsController indexForIndexPath:](selfCopy, "indexForIndexPath:", v7)}];
  [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) deselectRowAtIndexPath:v7 animated:1];
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
      MEMORY[0x277D82BD8](topViewController2);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](navigationController2);
    }

    MEMORY[0x277D82BD8](topViewController);
    MEMORY[0x277D82BD8](navigationController);
    if (isKindOfClass)
    {
      navigationController3 = [(ACUISettingsController *)selfCopy navigationController];
      topViewController3 = [navigationController3 topViewController];
      MEMORY[0x277D82BD8](navigationController3);
      specifiers = [topViewController3 specifiers];
      specifier = [location[0] specifier];
      v25 = [specifiers containsObject:?];
      MEMORY[0x277D82BD8](specifier);
      MEMORY[0x277D82BD8](specifiers);
      if (v25)
      {
        specifier2 = [location[0] specifier];
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];
        MEMORY[0x277D82BD8](currentDevice);
        v38 = userInterfaceIdiom;
        v21 = 1;
        if (userInterfaceIdiom != 1)
        {
          v21 = v38 == 5;
        }

        [topViewController3 removeSpecifier:specifier2 animated:v21];
        MEMORY[0x277D82BD8](specifier2);
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
      MEMORY[0x277D82BD8](viewControllers);
      MEMORY[0x277D82BD8](navigationController4);
      if (v17)
      {
        navigationController5 = [(ACUISettingsController *)selfCopy navigationController];
        v4 = [navigationController5 popToViewController:selfCopy animated:1];
        MEMORY[0x277D82BD8](navigationController5);
      }

      else
      {
        navigationController6 = [(ACUISettingsController *)selfCopy navigationController];
        viewControllers2 = [navigationController6 viewControllers];
        parentViewController = [(ACUISettingsController *)selfCopy parentViewController];
        v13 = [viewControllers2 containsObject:?];
        MEMORY[0x277D82BD8](parentViewController);
        MEMORY[0x277D82BD8](viewControllers2);
        MEMORY[0x277D82BD8](navigationController6);
        if (v13)
        {
          navigationController7 = [(ACUISettingsController *)selfCopy navigationController];
          parentViewController2 = [(ACUISettingsController *)selfCopy parentViewController];
          v5 = [navigationController7 popToViewController:? animated:?];
          MEMORY[0x277D82BD8](parentViewController2);
          MEMORY[0x277D82BD8](navigationController7);
        }

        else
        {
          navigationController8 = [(ACUISettingsController *)selfCopy navigationController];
          v6 = [navigationController8 popToRootViewControllerAnimated:1];
          MEMORY[0x277D82BD8](navigationController8);
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
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;
  MEMORY[0x277D82BD8](mEMORY[0x277D262A0]);
  return v4;
}

- (void)specifiersDidChangeForPlugin:(id)plugin
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, plugin);
  pluginToSpecifiersMap = selfCopy->_pluginToSpecifiersMap;
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  v8 = [(NSMutableDictionary *)pluginToSpecifiersMap objectForKey:?];
  MEMORY[0x277D82BD8](v5);
  v7 = [(ACUISettingsController *)selfCopy _specifiersForSettingsProvidedByPlugin:location[0]];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v11, "[ACUISettingsController specifiersDidChangeForPlugin:]", 959, v8, v7);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) replacing specifiers %@ with specifiers %@", v11, 0x26u);
  }

  objc_storeStrong(&oslog, 0);
  [(ACUISettingsController *)selfCopy replaceContiguousSpecifiers:v8 withSpecifiers:v7 animated:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
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