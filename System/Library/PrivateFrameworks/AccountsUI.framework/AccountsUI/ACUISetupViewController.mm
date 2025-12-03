@interface ACUISetupViewController
+ (id)_specifierForDataclassEditControllerClass:(Class)class withName:(id)name account:(id)account;
+ (id)dataclassConfigurationControllerForAccount:(id)account name:(id)name specifier:(id)specifier completion:(id)completion;
+ (void)showAlternateCreationControllerForAccountType:(id)type username:(id)username fromViewController:(id)controller specifier:(id)specifier completion:(id)completion;
+ (void)showDataclassConfigurationControllerForAccount:(id)account name:(id)name fromViewController:(id)controller specifier:(id)specifier completion:(id)completion;
- (void)_dismissAndNotifyParent;
- (void)controller:(id)controller didFinishSettingUpAccount:(id)account;
@end

@implementation ACUISetupViewController

- (void)controller:(id)controller didFinishSettingUpAccount:(id)account
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v33 = 0;
  objc_storeStrong(&v33, account);
  v32 = _ACUILogSystem();
  v31 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    username = [v33 username];
    __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v38, "[ACUISetupViewController controller:didFinishSettingUpAccount:]", 44, v17, username);
    _os_log_debug_impl(&dword_23DC86000, v32, v31, "%s (%d) Controller %@ reports being finished with setting up account %@.", v38, 0x26u);
    MEMORY[0x277D82BD8](username);
  }

  objc_storeStrong(&v32, 0);
  v30 = 0;
  if (!selfCopy->_didAttemptDataclassSetup)
  {
    selfCopy->_didAttemptDataclassSetup = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      specifier = [location[0] specifier];
      userInfo = [specifier userInfo];
      MEMORY[0x277D82BD8](specifier);
      v15 = [userInfo objectForKeyedSubscript:@"ACUIForceMailSetupKey"];
      bOOLValue = [v15 BOOLValue];
      MEMORY[0x277D82BD8](v15);
      if (bOOLValue == 1)
      {
        selfCopy->_shouldForceMailSetup = 1;
      }

      objc_storeStrong(&userInfo, 0);
    }

    v28 = +[ACUIAccountViewProvidersManager sharedInstance];
    v27 = [v28 viewControllerClassForViewingAccount:v33];
    v26 = _ACUILogSystem();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      username2 = [v33 username];
      __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v37, "[ACUISetupViewController controller:didFinishSettingUpAccount:]", 65, username2, v27);
      _os_log_debug_impl(&dword_23DC86000, v26, v25, "%s (%d) Dataclass configuration VC class for account %@ identified as %@", v37, 0x26u);
      MEMORY[0x277D82BD8](username2);
    }

    objc_storeStrong(&v26, 0);
    if (([(objc_class *)v27 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      topViewController = [(ACUISetupViewController *)selfCopy topViewController];
      v10 = v27;
      specifier2 = [topViewController specifier];
      name = [specifier2 name];
      v23 = [ACUISetupViewController _specifierForDataclassEditControllerClass:"_specifierForDataclassEditControllerClass:withName:account:" withName:v10 account:?];
      MEMORY[0x277D82BD8](name);
      MEMORY[0x277D82BD8](specifier2);
      v22 = objc_alloc_init(v27);
      [v22 setFirstTimeSetup:1];
      if (selfCopy->_shouldForceMailSetup)
      {
        [v22 forceMailSetup];
      }

      specifier3 = [location[0] specifier];
      userInfo2 = [specifier3 userInfo];
      MEMORY[0x277D82BD8](specifier3);
      v9 = [userInfo2 objectForKeyedSubscript:@"ACUIPreEnabledDataclasses"];
      MEMORY[0x277D82BD8](v9);
      if (v9)
      {
        v7 = [userInfo2 objectForKeyedSubscript:@"ACUIPreEnabledDataclasses"];
        [v22 setPreEnabledDataclasses:?];
        MEMORY[0x277D82BD8](v7);
      }

      [v22 setParentController:topViewController];
      v5 = v22;
      rootController = [(PSRootController *)selfCopy rootController];
      [v5 setRootController:?];
      MEMORY[0x277D82BD8](rootController);
      [v22 setSpecifier:v23];
      [topViewController pushController:v22];
      v30 = 1;
      objc_storeStrong(&userInfo2, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&topViewController, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v30)
    {
      v4 = @"NO";
    }

    else
    {
      v4 = @"YES";
    }

    __os_log_helper_16_2_3_8_32_4_0_8_64(v36, "[ACUISetupViewController controller:didFinishSettingUpAccount:]", 99, v4);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) Deciding wether to dismiss self: %@", v36, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if ((v30 & 1) == 0)
  {
    [(ACUISetupViewController *)selfCopy _dismissAndNotifyParent];
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)showAlternateCreationControllerForAccountType:(id)type username:(id)username fromViewController:(id)controller specifier:(id)specifier completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v27 = 0;
  objc_storeStrong(&v27, username);
  v26 = 0;
  objc_storeStrong(&v26, controller);
  v25 = 0;
  objc_storeStrong(&v25, specifier);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _ACUILogSystem();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_66(v29, "+[ACUISetupViewController showAlternateCreationControllerForAccountType:username:fromViewController:specifier:completion:]", 107, location[0]);
    _os_log_impl(&dword_23DC86000, v23, v22, "%s (%d) Showing Alternate Creation Controller for '%{public}@'", v29, 0x1Cu);
  }

  objc_storeStrong(&v23, 0);
  userInfo = [v25 userInfo];
  dictionary = [userInfo mutableCopy];
  MEMORY[0x277D82BD8](userInfo);
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    MEMORY[0x277D82BD8](0);
  }

  objc_storeStrong(location, *MEMORY[0x277CB8C60]);
  v10 = MEMORY[0x277D3FAD8];
  name = [v25 name];
  v20 = [v10 preferenceSpecifierNamed:name target:0 set:0 get:0 detail:objc_opt_class() cell:10 edit:0];
  MEMORY[0x277D82BD8](name);
  [dictionary setValue:@"YahooAccount" forKey:@"specifierAccount"];
  if (v27)
  {
    [dictionary setValue:v27 forKey:@"Username"];
  }

  [v20 setUserInfo:dictionary];
  v19 = +[ACUIAccountViewProvidersManager sharedInstance];
  v18 = [(ACUIAccountViewProvidersManager *)v19 viewControllerClassForCreatingAccountWithType:location[0]];
  v8 = v20;
  v9 = NSStringFromClass(v18);
  v7 = *MEMORY[0x277D400B8];
  [v8 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  v17 = [v26 controllerForSpecifier:v20];
  [v26 showController:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)showDataclassConfigurationControllerForAccount:(id)account name:(id)name fromViewController:(id)controller specifier:(id)specifier completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v17 = 0;
  objc_storeStrong(&v17, name);
  v16 = 0;
  objc_storeStrong(&v16, controller);
  v15 = 0;
  objc_storeStrong(&v15, specifier);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [selfCopy dataclassConfigurationControllerForAccount:location[0] name:v17 specifier:v15 completion:v14];
  if (v13)
  {
    parentController = [v16 parentController];
    [v13 setParentController:?];
    MEMORY[0x277D82BD8](parentController);
    rootController = [v16 rootController];
    [v13 setRootController:?];
    MEMORY[0x277D82BD8](rootController);
    [v16 pushController:v13];
  }

  else
  {
    (*(v14 + 2))(v14, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

+ (id)dataclassConfigurationControllerForAccount:(id)account name:(id)name specifier:(id)specifier completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v32 = 0;
  objc_storeStrong(&v32, name);
  v31 = 0;
  objc_storeStrong(&v31, specifier);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  userInfo = [v31 userInfo];
  v14 = [userInfo objectForKeyedSubscript:@"ACUIForceMailSetupKey"];
  bOOLValue = [v14 BOOLValue];
  MEMORY[0x277D82BD8](v14);
  v29 = bOOLValue == 1;
  v27 = +[ACUIAccountViewProvidersManager sharedInstance];
  v26 = [v27 viewControllerClassForViewingAccount:location[0]];
  v25 = _ACUILogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    username = [location[0] username];
    __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v35, "+[ACUISetupViewController dataclassConfigurationControllerForAccount:name:specifier:completion:]", 165, username, v26);
    _os_log_debug_impl(&dword_23DC86000, v25, v24, "%s (%d) Dataclass configuration VC class for account %@ identified as %@", v35, 0x26u);
    MEMORY[0x277D82BD8](username);
  }

  objc_storeStrong(&v25, 0);
  if (([(objc_class *)v26 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v23 = [objc_opt_class() _specifierForDataclassEditControllerClass:v26 withName:v32 account:location[0]];
    v22 = objc_alloc_init(v26);
    [v22 setFirstTimeSetup:1];
    if (v29)
    {
      [v22 forceMailSetup];
    }

    v9 = [userInfo objectForKeyedSubscript:@"ACUIPreEnabledDataclasses"];
    MEMORY[0x277D82BD8](v9);
    if (v9)
    {
      v8 = [userInfo objectForKeyedSubscript:@"ACUIPreEnabledDataclasses"];
      [v22 setPreEnabledDataclasses:?];
      MEMORY[0x277D82BD8](v8);
    }

    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __96__ACUISetupViewController_dataclassConfigurationControllerForAccount_name_specifier_completion___block_invoke;
    v20 = &unk_278BFA870;
    v21 = MEMORY[0x277D82BE0](v30);
    [v22 setConfigurationCompletion:&v16];
    [v22 setSpecifier:v23];
    v34 = MEMORY[0x277D82BE0](v22);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v34 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v34;

  return v6;
}

uint64_t __96__ACUISetupViewController_dataclassConfigurationControllerForAccount_name_specifier_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ACUIAccountSetupDidFinish" object:0];
  MEMORY[0x277D82BD8](v2);
  return (*(*(a1 + 32) + 16))();
}

- (void)_dismissAndNotifyParent
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ACUIAccountSetupDidFinish" object:0];
  MEMORY[0x277D82BD8](defaultCenter);
  if (!self->_shouldForceMailSetup)
  {
    [(PSSetupController *)self dismissAnimated:1];
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC70]));
  v4 = [WeakRetained conformsToProtocol:&unk_2850294C8];
  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC70]));
    [v2 setupViewControllerDidDismiss:self];
    MEMORY[0x277D82BD8](v2);
  }
}

+ (id)_specifierForDataclassEditControllerClass:(Class)class withName:(id)name account:(id)account
{
  obj = account;
  v27[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v24 = a2;
  classCopy = class;
  p_location = &location;
  v18 = 0;
  location = 0;
  objc_storeStrong(&location, name);
  v16 = &v21;
  v21 = 0;
  objc_storeStrong(&v21, obj);
  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:location target:0 set:0 get:0 detail:classCopy cell:1 edit:0];
  v15 = &v20;
  v20 = v5;
  v11 = v26;
  v26[0] = @"account";
  v10 = v27;
  v27[0] = v21;
  v26[1] = @"ACUISpecifierAccountIdentifier";
  identifier = [v21 identifier];
  v27[1] = identifier;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v11 count:2];
  v13 = &v19;
  v19 = v6;
  MEMORY[0x277D82BD8](identifier);
  [v20 setUserInfo:v19];
  v14 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(v13, v18);
  objc_storeStrong(v15, v18);
  objc_storeStrong(v16, v18);
  objc_storeStrong(p_location, v18);
  *MEMORY[0x277D85DE8];
  v7 = v14;

  return v7;
}

@end