@interface ACUISettingsController
- (ACUISettingsController)init;
- (BOOL)_isAccount:(id)a3 inList:(id)a4;
- (BOOL)_isAccountList:(id)a3 identicalToAccountList:(id)a4;
- (BOOL)_isAccountModificationDisabledByRestrictions;
- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5 withCompletion:(id)a6;
- (id)_accountGroupIdentifier:(id)a3 ignoringGroups:(id)a4;
- (id)_accountStore;
- (id)_addAccountSpecifier;
- (id)_scheduleSettingsModeForSpecifier:(id)a3;
- (id)_settingsPluginManager;
- (id)_specifierForAccount:(id)a3;
- (id)_specifierForCollectionCellLinkingToAccounts:(id)a3 withGroupIdentifier:(id)a4 underParentGroup:(id)a5;
- (id)_specifierForScheduleSettings;
- (id)_specifiersForLoadingMessage;
- (id)_specifiersForSettingsProvidedByPlugin:(id)a3;
- (id)specifiers;
- (void)_accountCellWasTappedWithSpecifier:(id)a3;
- (void)_accountStoreDidChange;
- (void)_accountsWithCompletion:(id)a3;
- (void)_effectiveSettingsChangedNotification:(id)a3;
- (void)_fetchLazyLoadedSpecifiers;
- (void)_filterAccounts:(id)a3 toTopLevel:(id)a4 grouped:(id)a5 ignoringGroups:(id)a6;
- (void)_loadAccountsWithCompletion:(id)a3;
- (void)_lowPowerModeChangedNotification:(id)a3;
- (void)_scheduleSettingsCellWasTappedWithSpecifier:(id)a3;
- (void)_specifiersForAccountsGroupWithCompletion:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)specifiersDidChangeForPlugin:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewController:(id)a3 didFinishRemovingAccountWithSuccess:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
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
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v13 selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x277CCA5E8] object:?];
    [v10 addObserver:v13 selector:sel__effectiveSettingsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
    objc_storeStrong(&v10, 0);
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 viewDidAppear:a3];
  v3 = [(ACUISettingsController *)v8 specifier];
  v4 = [v3 propertyForKey:*MEMORY[0x277D3FD90]];
  MEMORY[0x277D82BD8](v3);
  [ACUIUtils emitNavigationEventForSubPane:"emitNavigationEventForSubPane:subPath:account:inHostAppBundleID:" subPath:v8 account:@"root" inHostAppBundleID:?];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidLoad
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v8 viewDidLoad];
  v4 = [(ACUISettingsController *)v10 table];
  v2 = objc_opt_class();
  v3 = +[(PSTableCell *)ACUIAccountSummaryCell];
  [v4 registerClass:v2 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v7 = [(ACUISettingsController *)v10 table];
  v5 = objc_opt_class();
  v6 = +[(PSTableCell *)ACUIAccountCollectionLinkCell];
  [v7 registerClass:v5 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
}

- (void)_lowPowerModeChangedNotification:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__ACUISettingsController__lowPowerModeChangedNotification___block_invoke;
  v10 = &unk_278BFA730;
  v11 = MEMORY[0x277D82BE0](v13);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_effectiveSettingsChangedNotification:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__ACUISettingsController__effectiveSettingsChangedNotification___block_invoke;
  v10 = &unk_278BFA730;
  v11 = MEMORY[0x277D82BE0](v13);
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
  v4 = self;
  v3[1] = a2;
  if (self->_accountStore)
  {
    [(ACMonitoredAccountStore *)v4->_accountStore removeDelegate:v4];
  }

  [(ACUISettingsPluginManager *)v4->_settingsPluginManager parentViewControllerWillDisappear];
  v3[0] = [MEMORY[0x277CCAB98] defaultCenter];
  [v3[0] removeObserver:v4];
  objc_storeStrong(v3, 0);
  v2.receiver = v4;
  v2.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v2 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 setSpecifier:location[0]];
  v3 = [location[0] propertyForKey:*MEMORY[0x277D3FD70]];
  filteredDataclass = v7->_filteredDataclass;
  v7->_filteredDataclass = v3;
  MEMORY[0x277D82BD8](filteredDataclass);
  objc_storeStrong(location, 0);
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5 withCompletion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a5;
  v24[0] = 0;
  objc_storeStrong(v24, a6);
  if (v27->_specifierLoadGroup)
  {
    v23 = _ACUILogSystem();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v29, "[ACUISettingsController prepareHandlingURLForSpecifierID:resourceDictionary:animatePush:withCompletion:]", 217, v25);
      _os_log_debug_impl(&dword_23DC86000, v23, v22, "%s (%d) Deferring URL load for resources %@", v29, 0x1Cu);
    }

    objc_storeStrong(&v23, 0);
    group = v27->_specifierLoadGroup;
    v8 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v8;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __105__ACUISettingsController_prepareHandlingURLForSpecifierID_resourceDictionary_animatePush_withCompletion___block_invoke;
    v18 = &unk_278BFAC88;
    v19 = MEMORY[0x277D82BE0](v27);
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

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = _ACUILogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v21, "[ACUISettingsController handleURL:withCompletion:]", 229, location[0]);
    _os_log_debug_impl(&dword_23DC86000, v16, v15, "%s (%d) Handling URL load for resources %@", v21, 0x1Cu);
  }

  objc_storeStrong(&v16, 0);
  v19->_isInHandleURL = 1;
  v14.receiver = v19;
  v14.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v14 handleURL:location[0] withCompletion:&__block_literal_global_7];
  v19->_isInHandleURL = 0;
  if (v19->_viewControllerPushedByControllerLoadActionDuringHandleURL)
  {
    viewControllerPushedByControllerLoadActionDuringHandleURL = v19->_viewControllerPushedByControllerLoadActionDuringHandleURL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [location[0] objectForKey:@"path"];
      v6 = MEMORY[0x277CBEB18];
      v7 = [v13 pathComponents];
      v12 = [v6 arrayWithArray:?];
      MEMORY[0x277D82BD8](v7);
      if ([v12 count])
      {
        [v12 removeObjectAtIndex:0];
        v4 = [MEMORY[0x277CCACA8] pathWithComponents:v12];
        v5 = v13;
        v13 = v4;
        MEMORY[0x277D82BD8](v5);
        v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:location[0]];
        [v11 setObject:v13 forKey:@"path"];
        [(PSViewController *)v19->_viewControllerPushedByControllerLoadActionDuringHandleURL handleURL:v11 withCompletion:v17];
        objc_storeStrong(&v11, 0);
      }

      else if (v17)
      {
        (*(v17 + 2))();
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v19->_viewControllerPushedByControllerLoadActionDuringHandleURL, 0);
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

- (void)_accountsWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v12->_accounts)
  {
    if (location[0])
    {
      (*(location[0] + 2))(location[0], v12->_accounts);
    }
  }

  else
  {
    v3 = v12;
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __50__ACUISettingsController__accountsWithCompletion___block_invoke;
    v8 = &unk_278BFACB0;
    v9 = MEMORY[0x277D82BE0](v12);
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

- (void)_loadAccountsWithCompletion:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = 0;
  v51 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  v18 = [(ACUISettingsController *)v54 _accountStore];
  obj = [v18 monitoredAccounts];
  MEMORY[0x277D82BD8](v18);
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
        v13 = [v50 parentAccount];
        MEMORY[0x277D82BD8](v13);
        if (!v13)
        {
          v3 = [v50 enabledDataclasses];
          if (v54->_filteredDataclass)
          {
            v12 = [v50 provisionedDataclasses];
            v42 = MEMORY[0x277D85DD0];
            v43 = -1073741824;
            v44 = 0;
            v45 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke;
            v46 = &unk_278BFACD8;
            v47 = MEMORY[0x277D82BE0](v54);
            v48 = [v12 objectsPassingTest:&v42];
            MEMORY[0x277D82BD8](v12);
            if (![v48 count])
            {
              v11 = [v50 accountType];
              v10 = [v11 supportedDataclasses];
              v36 = MEMORY[0x277D85DD0];
              v37 = -1073741824;
              v38 = 0;
              v39 = __54__ACUISettingsController__loadAccountsWithCompletion___block_invoke_2;
              v40 = &unk_278BFACD8;
              v41 = MEMORY[0x277D82BE0](v54);
              v4 = [v10 objectsPassingTest:&v36];
              v5 = v48;
              v48 = v4;
              MEMORY[0x277D82BD8](v5);
              MEMORY[0x277D82BD8](v10);
              MEMORY[0x277D82BD8](v11);
              objc_storeStrong(&v41, 0);
            }

            if ([v48 count])
            {
              [v51 addObject:v50];
            }

            objc_storeStrong(&v48, 0);
            objc_storeStrong(&v47, 0);
          }

          else
          {
            [v51 addObject:v50];
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
  objc_storeStrong(&v52, v51);
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
  objc_storeStrong(&v51, 0);
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
  v11 = self;
  location[1] = a2;
  location[0] = _ACUILogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_4_0(v12, "[ACUISettingsController _accountStoreDidChange]", 354);
    _os_log_impl(&dword_23DC86000, location[0], v9, "%s (%d) ACUISettingsController received monitored account delegate call.", v12, 0x12u);
  }

  objc_storeStrong(location, 0);
  v2 = v11;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __48__ACUISettingsController__accountStoreDidChange__block_invoke;
  v7 = &unk_278BFAD28;
  v8 = MEMORY[0x277D82BE0](v11);
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

- (BOOL)_isAccountList:(id)a3 identicalToAccountList:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
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
        if (![(ACUISettingsController *)v18 _isAccount:v14 inList:v16])
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

- (BOOL)_isAccount:(id)a3 inList:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
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
      v5 = [v32 isAuthenticated];
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 0;
      v21 = 0;
      v19 = 0;
      v17 = 0;
      v15 = 0;
      v6 = 0;
      if (v5 == [location[0] isAuthenticated])
      {
        v30 = [v32 identifier];
        v29 = 1;
        v28 = [location[0] identifier];
        v27 = 1;
        v6 = 0;
        if ([v30 isEqualToString:?])
        {
          v26 = [v32 accountDescription];
          v25 = 1;
          v24 = [location[0] accountDescription];
          v23 = 1;
          v6 = 0;
          if ([v26 isEqualToString:?])
          {
            v22 = [v32 enabledDataclasses];
            v21 = 1;
            v20 = [location[0] enabledDataclasses];
            v19 = 1;
            v6 = 0;
            if ([v22 isEqualToSet:?])
            {
              v18 = [v32 provisionedDataclasses];
              v17 = 1;
              v16 = [location[0] provisionedDataclasses];
              v15 = 1;
              v6 = [v18 isEqualToSet:?];
            }
          }
        }
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](v16);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](v30);
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

- (void)_filterAccounts:(id)a3 toTopLevel:(id)a4 grouped:(id)a5 ignoringGroups:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
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
      v21 = [(ACUISettingsController *)v28 _accountGroupIdentifier:v23 ignoringGroups:v24];
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

- (id)_accountGroupIdentifier:(id)a3 ignoringGroups:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [location[0] accountType];
  v7 = [v8 identifier];
  v9 = [v7 isEqualToString:*MEMORY[0x277CB8D10]];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
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
  v30 = self;
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
    accountGroupSpecifier = v30->_accountGroupSpecifier;
    v30->_accountGroupSpecifier = v2;
    MEMORY[0x277D82BD8](accountGroupSpecifier);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    [v27 addObject:v30->_accountGroupSpecifier];
    v26 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v25 = v30->_accounts == 0;
    if (v25)
    {
      [v27 addObject:v26];
    }

    v12 = v30;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __36__ACUISettingsController_specifiers__block_invoke;
    v20 = &unk_278BFAD50;
    v24 = v25;
    v21 = MEMORY[0x277D82BE0](v30);
    v22 = MEMORY[0x277D82BE0](v26);
    v23 = MEMORY[0x277D82BE0](v27);
    [(ACUISettingsController *)v12 _specifiersForAccountsGroupWithCompletion:&v16];
    if (!ACUIIsSharedIPadMode())
    {
      v10 = v27;
      v11 = [(ACUISettingsController *)v30 _addAccountSpecifier];
      [v10 addObject:?];
      MEMORY[0x277D82BD8](v11);
    }

    v6 = v27;
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:?];
    MEMORY[0x277D82BD8](v7);
    v8 = v27;
    v9 = [(ACUISettingsController *)v30 _specifierForScheduleSettings];
    [v8 addObject:?];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong((&v30->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v27);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  *MEMORY[0x277D85DE8];
  v4 = *(&v30->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

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

- (void)_specifiersForAccountsGroupWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v12 = ![(ACUISettingsController *)v16 _isAccountModificationDisabledByRestrictions];
  }

  v3 = v16;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__ACUISettingsController__specifiersForAccountsGroupWithCompletion___block_invoke_2;
  v8 = &unk_278BFAD78;
  v9 = MEMORY[0x277D82BE0](v16);
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

- (id)_specifierForCollectionCellLinkingToAccounts:(id)a3 withGroupIdentifier:(id)a4 underParentGroup:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52 = 0;
  objc_storeStrong(&v52, a5);
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
      v25 = [v50 identifier];
      v26 = [v25 isEqualToString:v53];
      MEMORY[0x277D82BD8](v25);
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

    v5 = [(ACUISettingsController *)v55 _specifierForAccount:v50];
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

  [(ACUISettingsController *)v55 _filterAccounts:location[0] toTopLevel:v47 grouped:v46 ignoringGroups:v45];
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
      v17 = [v43 identifier];
      v18 = [v17 isEqualToString:v53];
      MEMORY[0x277D82BD8](v17);
      if ((v18 & 1) == 0)
      {
        v41 = [(ACUISettingsController *)v55 _specifierForAccount:v43];
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
  v15 = [v46 allKeys];
  v16 = [v15 countByEnumeratingWithState:v39 objects:v58 count:16];
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
        objc_enumerationMutation(v15);
      }

      v40 = *(v39[1] + 8 * v13);
      v38 = [v46 objectForKey:v40];
      v37 = [(ACUISettingsController *)v55 _specifierForCollectionCellLinkingToAccounts:v38 withGroupIdentifier:v40 underParentGroup:v53];
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
        v14 = [v15 countByEnumeratingWithState:v39 objects:v58 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v15);
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

- (id)_specifierForAccount:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] copy];
  v11 = [ACUIAccountSummaryCell specifierWithStyle:"specifierWithStyle:account:target:controllerLoadAction:" account:3 target:? controllerLoadAction:?];
  MEMORY[0x277D82BD8](v5);
  v7 = v11;
  v9 = [(ACUISettingsController *)v13 specifier];
  v6 = MEMORY[0x277D3FD90];
  v8 = [v9 propertyForKey:*MEMORY[0x277D3FD90]];
  v3 = *v6;
  [v7 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
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
  v13 = [(ACUISettingsController *)self specifier];
  v10 = MEMORY[0x277D3FD90];
  v12 = [v13 propertyForKey:*MEMORY[0x277D3FD90]];
  v5 = *v10;
  [PSSpecifier setProperty:v11 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v6 = self->_addAccountSpecifier;

  return v6;
}

- (id)_specifierForScheduleSettings
{
  v8 = self;
  v7[1] = a2;
  v4 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:? value:? table:?];
  v7[0] = [v4 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v7[0] setProperty:@"FETCH_NEW_DATA" forKey:*MEMORY[0x277D3FFB8]];
  [v7[0] setControllerLoadAction:sel__scheduleSettingsCellWasTappedWithSpecifier_];
  if ([(ACUISettingsController *)v8 _isAccountModificationDisabledByRestrictions])
  {
    [v7[0] setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (void)_scheduleSettingsCellWasTappedWithSpecifier:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    [v6 setParentController:v8];
    v5 = [(ACUISettingsController *)v8 rootController];
    [v6 setRootController:?];
    MEMORY[0x277D82BD8](v5);
    [(ACUISettingsController *)v8 showController:v6 animate:1];
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

- (id)_scheduleSettingsModeForSpecifier:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  v13 = [MEMORY[0x277CCAC38] processInfo];
  v14 = [v13 isLowPowerModeEnabled];
  MEMORY[0x277D82BD8](v13);
  if (v14)
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
  v9 = self;
  v8[1] = a2;
  if (!self->_isLazyLoadingPluginSpecifiers)
  {
    v9->_isLazyLoadingPluginSpecifiers = 1;
    queue = dispatch_get_global_queue(-32768, 0);
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __52__ACUISettingsController__fetchLazyLoadedSpecifiers__block_invoke;
    v7 = &unk_278BFA730;
    v8[0] = MEMORY[0x277D82BE0](v9);
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

- (id)_specifiersForSettingsProvidedByPlugin:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [location[0] specifiers];
  if ([v15 count])
  {
    v14 = [v15 mutableCopy];
    v11 = MEMORY[0x277D3FAD8];
    v12 = [location[0] headerText];
    v13 = [v11 groupSpecifierWithName:?];
    MEMORY[0x277D82BD8](v12);
    [v14 insertObject:v13 atIndex:0];
    if (objc_opt_respondsToSelector())
    {
      v10 = [location[0] footerText];
      v3 = *MEMORY[0x277D3FF88];
      [v13 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v10);
    }

    pluginToSpecifiersMap = v18->_pluginToSpecifiersMap;
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
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_specifiersForLoadingMessage
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17 = self;
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
    v13 = [*(v12 + 2776) emptyGroupSpecifier];
    v18[0] = v13;
    v18[1] = v16[0];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    loadingInProgressSpecifiers = v17->_loadingInProgressSpecifiers;
    v17->_loadingInProgressSpecifiers = v3;
    MEMORY[0x277D82BD8](loadingInProgressSpecifiers);
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(v14, v15);
  }

  v7 = v17->_loadingInProgressSpecifiers;
  *MEMORY[0x277D85DE8];
  v5 = v7;

  return v5;
}

- (void)_accountCellWasTappedWithSpecifier:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if ([(ACUISettingsController *)v25 isShowDataclassDetailFromAppsEnabled])
  {
    v18 = [v23 accountType];
    v17 = 1;
    v16 = [v18 identifier];
    v15 = 1;
    v6 = 0;
    if ([v16 isEqualToString:*MEMORY[0x277CB8BA0]])
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
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v6)
  {
    v5 = +[ACUIAccountViewProvidersManager sharedInstance];
    v19 = [(ACUIAccountViewProvidersManager *)v5 viewControllerClassForViewingAccount:v23 specifier:location[0] presentingVC:v25];
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
    [obj setAccountChangeObserver:v25];
    if (([(objc_class *)v19 isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      [obj setParentController:v25];
      v3 = [(ACUISettingsController *)v25 rootController];
      [obj setRootController:?];
      MEMORY[0x277D82BD8](v3);
      [(ACUISettingsController *)v25 showController:obj animate:1];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D3FAC8]) initWithRootViewController:obj];
      [v7 setSpecifier:location[0]];
      [v7 setParentController:v25];
      [obj setParentController:v7];
      [obj setRootController:v7];
      [(ACUISettingsController *)v25 showController:v7 animate:1];
      objc_storeStrong(&v7, 0);
    }

    if (v25->_isInHandleURL)
    {
      objc_storeStrong(&v25->_viewControllerPushedByControllerLoadActionDuringHandleURL, obj);
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [*(&v9->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{-[ACUISettingsController indexForIndexPath:](v9, "indexForIndexPath:", v7)}];
  [*(&v9->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) deselectRowAtIndexPath:v7 animated:1];
  v5.receiver = v9;
  v5.super_class = ACUISettingsController;
  [(ACUISettingsController *)&v5 tableView:location[0] didSelectRowAtIndexPath:v7];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)viewController:(id)a3 didFinishRemovingAccountWithSuccess:(BOOL)a4
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = a4;
  if (a4)
  {
    v26 = [(ACUISettingsController *)v37 navigationController];
    v27 = [v26 topViewController];
    v33 = 0;
    v31 = 0;
    isKindOfClass = 0;
    if (v27 != v37)
    {
      v34 = [(ACUISettingsController *)v37 navigationController];
      v33 = 1;
      v32 = [v34 topViewController];
      v31 = 1;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v26);
    if (isKindOfClass)
    {
      v22 = [(ACUISettingsController *)v37 navigationController];
      v30 = [v22 topViewController];
      MEMORY[0x277D82BD8](v22);
      v24 = [v30 specifiers];
      v23 = [location[0] specifier];
      v25 = [v24 containsObject:?];
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      if (v25)
      {
        v18 = [location[0] specifier];
        v19 = [MEMORY[0x277D75418] currentDevice];
        v20 = [v19 userInterfaceIdiom];
        MEMORY[0x277D82BD8](v19);
        v38 = v20;
        v21 = 1;
        if (v20 != 1)
        {
          v21 = v38 == 5;
        }

        [v30 removeSpecifier:v18 animated:v21];
        MEMORY[0x277D82BD8](v18);
      }

      objc_storeStrong(&v30, 0);
    }

    [location[0] setParentController:?];
    [location[0] setRootController:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [(ACUISettingsController *)v37 navigationController];
      v15 = [v16 viewControllers];
      v17 = [v15 containsObject:v37];
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      if (v17)
      {
        v14 = [(ACUISettingsController *)v37 navigationController];
        v4 = [v14 popToViewController:v37 animated:1];
        MEMORY[0x277D82BD8](v14);
      }

      else
      {
        v12 = [(ACUISettingsController *)v37 navigationController];
        v11 = [v12 viewControllers];
        v10 = [(ACUISettingsController *)v37 parentViewController];
        v13 = [v11 containsObject:?];
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        if (v13)
        {
          v9 = [(ACUISettingsController *)v37 navigationController];
          v8 = [(ACUISettingsController *)v37 parentViewController];
          v5 = [v9 popToViewController:? animated:?];
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
        }

        else
        {
          v7 = [(ACUISettingsController *)v37 navigationController];
          v6 = [v7 popToRootViewControllerAnimated:1];
          MEMORY[0x277D82BD8](v7);
        }
      }
    }

    else
    {
      [(ACUISettingsController *)v37 dismissViewControllerAnimated:1 completion:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_isAccountModificationDisabledByRestrictions
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)specifiersDidChangeForPlugin:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  pluginToSpecifiersMap = v10->_pluginToSpecifiersMap;
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  v8 = [(NSMutableDictionary *)pluginToSpecifiersMap objectForKey:?];
  MEMORY[0x277D82BD8](v5);
  v7 = [(ACUISettingsController *)v10 _specifiersForSettingsProvidedByPlugin:location[0]];
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v11, "[ACUISettingsController specifiersDidChangeForPlugin:]", 959, v8, v7);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) replacing specifiers %@ with specifiers %@", v11, 0x26u);
  }

  objc_storeStrong(&oslog, 0);
  [(ACUISettingsController *)v10 replaceContiguousSpecifiers:v8 withSpecifiers:v7 animated:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)accountWasAdded:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUISettingsController *)v4 _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

- (void)accountWasModified:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUISettingsController *)v4 _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUISettingsController *)v4 _accountStoreDidChange];
  objc_storeStrong(location, 0);
}

@end