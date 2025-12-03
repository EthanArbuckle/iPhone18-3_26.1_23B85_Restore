@interface ACUIAccountViewProvidersManager
+ (ACUIAccountViewProvidersManager)sharedInstance;
- (ACUIAccountViewProvidersManager)init;
- (BOOL)setDelegate:(id)delegate forSignInController:(id)controller forAccountWithType:(id)type;
- (Class)controllerClassForCreatingAccountWithType:(id)type;
- (Class)controllerClassForCreatingRemoteAccountWithType:(id)type;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (Class)viewControllerClassForViewingAccount:(id)account specifier:(id)specifier presentingVC:(id)c;
- (id)_accountViewProviderPluginForAccountTypeID:(id)d;
- (id)_cachedPluginForName:(id)name;
- (id)_loadAccountViewProviderPluginWithName:(id)name;
- (id)_remoteAccountViewProviderPluginForAccountTypeID:(id)d;
- (id)configurationInfoForCreatingAccountWithType:(id)type;
- (id)configurationInfoForViewingAccount:(id)account;
- (id)localizedStringForDataclass:(id)dataclass withSuffix:(id)suffix forAccount:(id)account;
@end

@implementation ACUIAccountViewProvidersManager

+ (ACUIAccountViewProvidersManager)sharedInstance
{
  if (!__ACUISharedAccountViewProviderManager)
  {
    v2 = objc_alloc_init(ACUIAccountViewProvidersManager);
    v3 = __ACUISharedAccountViewProviderManager;
    __ACUISharedAccountViewProviderManager = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v4 = __ACUISharedAccountViewProviderManager;

  return v4;
}

- (ACUIAccountViewProvidersManager)init
{
  v17[15] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = ACUIAccountViewProvidersManager;
  v13 = [(ACUIAccountViewProvidersManager *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginCache = v13->_pluginCache;
    v13->_pluginCache = v2;
    MEMORY[0x277D82BD8](pluginCache);
    v16[0] = *MEMORY[0x277CB8BA0];
    v17[0] = @"AppleAccountSettings.bundle";
    v16[1] = *MEMORY[0x277CB8C00];
    v17[1] = @"ActiveSyncSettings.bundle";
    v10 = MEMORY[0x277CB8C50];
    v16[2] = *MEMORY[0x277CB8C50];
    v17[2] = @"ActiveSyncSettings.bundle";
    v16[3] = *MEMORY[0x277CB8C40];
    v17[3] = @"MailAccountSettings.bundle";
    v16[4] = *MEMORY[0x277CB8D38];
    v17[4] = @"MailAccountSettings.bundle";
    v16[5] = *MEMORY[0x277CB8C68];
    v17[5] = @"MailAccountSettings.bundle";
    v16[6] = *MEMORY[0x277CB8C70];
    v17[6] = @"MailAccountSettings.bundle";
    v16[7] = *MEMORY[0x277CB8C60];
    v17[7] = @"MailAccountSettings.bundle";
    v16[8] = *MEMORY[0x277CB8CD8];
    v17[8] = @"MailAccountSettings.bundle";
    v16[9] = *MEMORY[0x277CB8C98];
    v17[9] = @"LDAPSettings.bundle";
    v16[10] = *MEMORY[0x277CB8BC8];
    v17[10] = @"DAVSettings.bundle";
    v16[11] = *MEMORY[0x277CB8BD8];
    v17[11] = @"DAVSettings.bundle";
    v16[12] = *MEMORY[0x277CB8D10];
    v17[12] = @"SubscribedCalendarSettings.bundle";
    v16[13] = *MEMORY[0x277CB8B98];
    v17[13] = @"MailAccountSettings.bundle";
    v16[14] = *MEMORY[0x277CB8CF0];
    v17[14] = @"RemoteManagementAccountSettings.bundle";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:15];
    accountTypeToPluginNameMap = v13->_accountTypeToPluginNameMap;
    v13->_accountTypeToPluginNameMap = v4;
    MEMORY[0x277D82BD8](accountTypeToPluginNameMap);
    v14 = *v10;
    v15 = @"MailAccountSettings.bundle";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    remoteAccountTypeToPluginNameMapOverride = v13->_remoteAccountTypeToPluginNameMapOverride;
    v13->_remoteAccountTypeToPluginNameMapOverride = v6;
    MEMORY[0x277D82BD8](remoteAccountTypeToPluginNameMapOverride);
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  return v9;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v5 = [(ACUIAccountViewProvidersManager *)selfCopy _accountViewProviderPluginForAccountTypeID:location[0]];
  v4 = [v5 viewControllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (Class)viewControllerClassForViewingAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = selfCopy;
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v8 = [(ACUIAccountViewProvidersManager *)v4 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  v7 = [v8 viewControllerClassForViewingAccount:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (Class)viewControllerClassForViewingAccount:(id)account specifier:(id)specifier presentingVC:(id)c
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v14 = 0;
  objc_storeStrong(&v14, specifier);
  v13 = 0;
  objc_storeStrong(&v13, c);
  v9 = selfCopy;
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v12 = [(ACUIAccountViewProvidersManager *)v9 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  if (objc_opt_respondsToSelector())
  {
    v17 = [v12 viewControllerClassForViewingAccount:location[0] specifier:v14 presentingVC:v13];
  }

  else
  {
    v17 = [v12 viewControllerClassForViewingAccount:location[0]];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v5 = v17;

  return v5;
}

- (Class)controllerClassForCreatingAccountWithType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v6 = [(ACUIAccountViewProvidersManager *)selfCopy _accountViewProviderPluginForAccountTypeID:location[0]];
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 controllerClassForCreatingAccountWithType:location[0]];
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (Class)controllerClassForCreatingRemoteAccountWithType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v6 = [(ACUIAccountViewProvidersManager *)selfCopy _remoteAccountViewProviderPluginForAccountTypeID:location[0]];
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 controllerClassForCreatingRemoteAccountWithType:location[0]];
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)configurationInfoForCreatingAccountWithType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v5 = [(ACUIAccountViewProvidersManager *)selfCopy _accountViewProviderPluginForAccountTypeID:location[0]];
  v4 = [v5 configurationInfoForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)configurationInfoForViewingAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = selfCopy;
  accountType = [location[0] accountType];
  identifier = [accountType identifier];
  v8 = [(ACUIAccountViewProvidersManager *)v4 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  v7 = [v8 configurationInfoForViewingAccount:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)localizedStringForDataclass:(id)dataclass withSuffix:(id)suffix forAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  v17 = 0;
  objc_storeStrong(&v17, suffix);
  v16 = 0;
  objc_storeStrong(&v16, account);
  v15 = 0;
  v11 = selfCopy;
  accountType = [v16 accountType];
  identifier = [accountType identifier];
  v14 = [(ACUIAccountViewProvidersManager *)v11 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v14 localizedStringForDataclass:location[0] withSuffix:v17 forAccount:v16];
    v6 = v15;
    v15 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_accountViewProviderPluginForAccountTypeID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(NSDictionary *)selfCopy->_accountTypeToPluginNameMap objectForKey:location[0]];
  if (v6)
  {
    v9 = [(ACUIAccountViewProvidersManager *)selfCopy _cachedPluginForName:v6];
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v10, "[ACUIAccountViewProvidersManager _accountViewProviderPluginForAccountTypeID:]", 130, location[0]);
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) ACUIAccountViewProvidersManager: somebody requested an account views provider for the unknown type %@!", v10, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v9;

  return v3;
}

- (id)_remoteAccountViewProviderPluginForAccountTypeID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(NSDictionary *)selfCopy->_remoteAccountTypeToPluginNameMapOverride objectForKey:location[0]];
  v8 = 0;
  if (v6)
  {
    v3 = MEMORY[0x277D82BE0](v6);
  }

  else
  {
    v9 = [(NSDictionary *)selfCopy->_accountTypeToPluginNameMap objectForKey:location[0]];
    v8 = 1;
    v3 = MEMORY[0x277D82BE0](v9);
  }

  v10 = v3;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v6);
  if (v10)
  {
    v13 = [(ACUIAccountViewProvidersManager *)selfCopy _cachedPluginForName:v10];
  }

  else
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v14, "[ACUIAccountViewProvidersManager _remoteAccountViewProviderPluginForAccountTypeID:]", 140, location[0]);
      _os_log_error_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_ERROR, "%s (%d) ACUIAccountViewProvidersManager: somebody requested a remote account views provider for the unknown type %@!", v14, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v13;

  return v4;
}

- (id)_cachedPluginForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = [(NSMutableDictionary *)selfCopy->_pluginCache objectForKey:location[0]];
  if (!v5)
  {
    v5 = [(ACUIAccountViewProvidersManager *)selfCopy _loadAccountViewProviderPluginWithName:location[0]];
    MEMORY[0x277D82BD8](0);
    if (v5)
    {
      [(NSMutableDictionary *)selfCopy->_pluginCache setObject:v5 forKey:location[0]];
    }
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_loadAccountViewProviderPluginWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v15 = [ACUIPluginLoader pluginBundleWithName:location[0]];
  if (v15)
  {
    v11 = 0;
    principalClass = [v15 principalClass];
    if ([(objc_class *)principalClass conformsToProtocol:&unk_285035A00]== 1)
    {
      v3 = objc_alloc_init(principalClass);
      v4 = v11;
      v11 = v3;
      MEMORY[0x277D82BD8](v4);
    }

    else if ([(objc_class *)principalClass conformsToProtocol:&unk_2850359A0]== 1)
    {
      v9 = objc_alloc_init(principalClass);
      accountViewsProvider = [v9 accountViewsProvider];
      v6 = v11;
      v11 = accountViewsProvider;
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v9, 0);
    }

    v17 = MEMORY[0x277D82BE0](v11);
    v12 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v14 = _ACUILogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v18, "[ACUIAccountViewProvidersManager _loadAccountViewProviderPluginWithName:]", 162, location[0]);
      _os_log_error_impl(&dword_23DC86000, v14, v13, "%s (%d) ACUIAccountViewProvidersManager failed to load the requested plugin with name %@", v18, 0x1Cu);
    }

    objc_storeStrong(&v14, 0);
    v17 = 0;
    v12 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v17;

  return v7;
}

- (BOOL)setDelegate:(id)delegate forSignInController:(id)controller forAccountWithType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v11 = 0;
  objc_storeStrong(&v11, controller);
  v10 = 0;
  objc_storeStrong(&v10, type);
  v9 = [(ACUIAccountViewProvidersManager *)selfCopy _accountViewProviderPluginForAccountTypeID:v10];
  v8 = [v9 setDelegate:location[0] forSignInController:v11];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v8;
}

@end