@interface ACUIAddMailAccountViewController
- (id)giantSpecifierWithName:(id)a3 forAccountTypeID:(id)a4;
- (id)specifierForOtherAccounts;
- (void)nonModalDataclassConfigurationControllerDidCompleteWithSuccess:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ACUIAddMailAccountViewController

- (void)viewWillAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = ACUIAddMailAccountViewController;
  [(ACUIAddAccountViewController *)&v6 viewWillAppear:a3];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    v5 = [(ACUIAddMailAccountViewController *)v9 navigationItem];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"WELCOME_TO_MAIL" value:&stru_2850054A0 table:@"Localizable"];
    [v5 setTitle:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }
}

- (id)giantSpecifierWithName:(id)a3 forAccountTypeID:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v9.receiver = v13;
  v9.super_class = ACUIAddMailAccountViewController;
  v10 = [(ACUIAddAccountViewController *)&v9 giantSpecifierWithName:location[0] forAccountTypeID:v11];
  v7 = [v10 userInfo];
  v8 = [v7 mutableCopy];
  MEMORY[0x277D82BD8](v7);
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    MEMORY[0x277D82BD8](0);
  }

  [v8 setObject:MEMORY[0x277CBEC38] forKey:@"ACUIForceMailSetupKey"];
  [v10 setUserInfo:v8];
  v5 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)specifierForOtherAccounts
{
  v15 = self;
  v14[1] = a2;
  v5 = MEMORY[0x277D3FAD8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"OTHER" value:&stru_2850054A0 table:@"Localizable"];
  v14[0] = [v5 preferenceSpecifierNamed:v6 target:v15 set:0 get:0 detail:objc_opt_class() cell:11 edit:0];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = [(ACUIAddAccountViewController *)v15 viewProvidersManager];
  v9 = MEMORY[0x277CB8C60];
  v13 = [(ACUIAccountViewProvidersManager *)v8 viewControllerClassForCreatingAccountWithType:*MEMORY[0x277CB8C60]];
  MEMORY[0x277D82BD8](v8);
  v10 = [(ACUIAddAccountViewController *)v15 viewProvidersManager];
  location = [(ACUIAccountViewProvidersManager *)v10 configurationInfoForCreatingAccountWithType:*v9];
  MEMORY[0x277D82BD8](v10);
  v11 = NSStringFromClass(v13);
  v2 = *MEMORY[0x277D400B8];
  [v14[0] setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  if (location)
  {
    [v14[0] setUserInfo:location];
  }

  v4 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v4;
}

- (void)nonModalDataclassConfigurationControllerDidCompleteWithSuccess:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(ACUIAddMailAccountViewController *)self navigationController];
    v3 = [v4 popToViewController:self animated:1];
    MEMORY[0x277D82BD8](v4);
  }
}

@end