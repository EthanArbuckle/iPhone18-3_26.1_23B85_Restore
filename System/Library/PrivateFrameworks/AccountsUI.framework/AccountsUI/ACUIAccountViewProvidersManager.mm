@interface ACUIAccountViewProvidersManager
+ (ACUIAccountViewProvidersManager)sharedInstance;
- (ACUIAccountViewProvidersManager)init;
- (BOOL)setDelegate:(id)a3 forSignInController:(id)a4 forAccountWithType:(id)a5;
- (Class)controllerClassForCreatingAccountWithType:(id)a3;
- (Class)controllerClassForCreatingRemoteAccountWithType:(id)a3;
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3;
- (Class)viewControllerClassForViewingAccount:(id)a3;
- (Class)viewControllerClassForViewingAccount:(id)a3 specifier:(id)a4 presentingVC:(id)a5;
- (id)_accountViewProviderPluginForAccountTypeID:(id)a3;
- (id)_cachedPluginForName:(id)a3;
- (id)_loadAccountViewProviderPluginWithName:(id)a3;
- (id)_remoteAccountViewProviderPluginForAccountTypeID:(id)a3;
- (id)configurationInfoForCreatingAccountWithType:(id)a3;
- (id)configurationInfoForViewingAccount:(id)a3;
- (id)localizedStringForDataclass:(id)a3 withSuffix:(id)a4 forAccount:(id)a5;
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

- (Class)viewControllerClassForCreatingAccountWithType:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(ACUIAccountViewProvidersManager *)v7 _accountViewProviderPluginForAccountTypeID:location[0]];
  v4 = [v5 viewControllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (Class)viewControllerClassForViewingAccount:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v10;
  v6 = [location[0] accountType];
  v5 = [v6 identifier];
  v8 = [(ACUIAccountViewProvidersManager *)v4 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [v8 viewControllerClassForViewingAccount:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (Class)viewControllerClassForViewingAccount:(id)a3 specifier:(id)a4 presentingVC:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v9 = v16;
  v11 = [location[0] accountType];
  v10 = [v11 identifier];
  v12 = [(ACUIAccountViewProvidersManager *)v9 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
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

- (Class)controllerClassForCreatingAccountWithType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(ACUIAccountViewProvidersManager *)v8 _accountViewProviderPluginForAccountTypeID:location[0]];
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

- (Class)controllerClassForCreatingRemoteAccountWithType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(ACUIAccountViewProvidersManager *)v8 _remoteAccountViewProviderPluginForAccountTypeID:location[0]];
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

- (id)configurationInfoForCreatingAccountWithType:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(ACUIAccountViewProvidersManager *)v7 _accountViewProviderPluginForAccountTypeID:location[0]];
  v4 = [v5 configurationInfoForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)configurationInfoForViewingAccount:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v10;
  v6 = [location[0] accountType];
  v5 = [v6 identifier];
  v8 = [(ACUIAccountViewProvidersManager *)v4 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [v8 configurationInfoForViewingAccount:location[0]];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)localizedStringForDataclass:(id)a3 withSuffix:(id)a4 forAccount:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  v11 = v19;
  v13 = [v16 accountType];
  v12 = [v13 identifier];
  v14 = [(ACUIAccountViewProvidersManager *)v11 _accountViewProviderPluginForAccountTypeID:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
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

- (id)_accountViewProviderPluginForAccountTypeID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(NSDictionary *)v8->_accountTypeToPluginNameMap objectForKey:location[0]];
  if (v6)
  {
    v9 = [(ACUIAccountViewProvidersManager *)v8 _cachedPluginForName:v6];
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

- (id)_remoteAccountViewProviderPluginForAccountTypeID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(NSDictionary *)v12->_remoteAccountTypeToPluginNameMapOverride objectForKey:location[0]];
  v8 = 0;
  if (v6)
  {
    v3 = MEMORY[0x277D82BE0](v6);
  }

  else
  {
    v9 = [(NSDictionary *)v12->_accountTypeToPluginNameMap objectForKey:location[0]];
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
    v13 = [(ACUIAccountViewProvidersManager *)v12 _cachedPluginForName:v10];
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

- (id)_cachedPluginForName:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSMutableDictionary *)v7->_pluginCache objectForKey:location[0]];
  if (!v5)
  {
    v5 = [(ACUIAccountViewProvidersManager *)v7 _loadAccountViewProviderPluginWithName:location[0]];
    MEMORY[0x277D82BD8](0);
    if (v5)
    {
      [(NSMutableDictionary *)v7->_pluginCache setObject:v5 forKey:location[0]];
    }
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_loadAccountViewProviderPluginWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [ACUIPluginLoader pluginBundleWithName:location[0]];
  if (v15)
  {
    v11 = 0;
    v10 = [v15 principalClass];
    if ([(objc_class *)v10 conformsToProtocol:&unk_285035A00]== 1)
    {
      v3 = objc_alloc_init(v10);
      v4 = v11;
      v11 = v3;
      MEMORY[0x277D82BD8](v4);
    }

    else if ([(objc_class *)v10 conformsToProtocol:&unk_2850359A0]== 1)
    {
      v9 = objc_alloc_init(v10);
      v5 = [v9 accountViewsProvider];
      v6 = v11;
      v11 = v5;
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

- (BOOL)setDelegate:(id)a3 forSignInController:(id)a4 forAccountWithType:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(ACUIAccountViewProvidersManager *)v13 _accountViewProviderPluginForAccountTypeID:v10];
  v8 = [v9 setDelegate:location[0] forSignInController:v11];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v8;
}

@end