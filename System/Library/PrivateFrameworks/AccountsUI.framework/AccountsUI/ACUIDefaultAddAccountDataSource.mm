@interface ACUIDefaultAddAccountDataSource
- (BOOL)shouldAddSpecifierForAccountTypeID:(id)d;
- (Class)controllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager;
- (void)accountControllerCompletedWithAccount:(id)account action:(int64_t)action data:(id)data specifier:(id)specifier viewController:(id)controller completion:(id)completion;
- (void)configureAccountCreationController:(id)controller;
- (void)configureSpecifierForOtherAccountSpecifier:(id)specifier;
- (void)hasAccountWithType:(id)type accountStore:(id)store completion:(id)completion;
@end

@implementation ACUIDefaultAddAccountDataSource

- (BOOL)shouldAddSpecifierForAccountTypeID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)configureSpecifierForOtherAccountSpecifier:(id)specifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  objc_storeStrong(location, 0);
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v7 = 0;
  objc_storeStrong(&v7, manager);
  v6 = [v7 viewControllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (Class)controllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v7 = 0;
  objc_storeStrong(&v7, manager);
  v6 = [v7 controllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)hasAccountWithType:(id)type accountStore:(id)store completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v15 = 0;
  objc_storeStrong(&v15, store);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v8 = v15;
  v7 = location[0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__ACUIDefaultAddAccountDataSource_hasAccountWithType_accountStore_completion___block_invoke;
  v12 = &unk_278BFA570;
  v13 = MEMORY[0x277D82BE0](v14);
  [v8 accountsWithAccountType:v7 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __78__ACUIDefaultAddAccountDataSource_hasAccountWithType_accountStore_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = a1[4];
  v6 = [location[0] firstObject];
  (*(v5 + 16))();
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)configureAccountCreationController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(location, 0);
}

- (void)accountControllerCompletedWithAccount:(id)account action:(int64_t)action data:(id)data specifier:(id)specifier viewController:(id)controller completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  actionCopy = action;
  v21 = 0;
  objc_storeStrong(&v21, data);
  v20 = 0;
  objc_storeStrong(&v20, specifier);
  v19 = 0;
  objc_storeStrong(&v19, controller);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  if (location[0] && actionCopy == 1)
  {
    v10 = location[0];
    name = [v20 name];
    [ACUISetupViewController showDataclassConfigurationControllerForAccount:"showDataclassConfigurationControllerForAccount:name:fromViewController:specifier:completion:" name:v10 fromViewController:? specifier:? completion:?];
    MEMORY[0x277D82BD8](name);
  }

  else if (!location[0] && actionCopy == 2)
  {
    v17 = [v21 objectForKeyedSubscript:@"Username"];
    accountType = [location[0] accountType];
    identifier = [accountType identifier];
    [ACUISetupViewController showAlternateCreationControllerForAccountType:"showAlternateCreationControllerForAccountType:username:fromViewController:specifier:completion:" username:? fromViewController:? specifier:? completion:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](accountType);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end