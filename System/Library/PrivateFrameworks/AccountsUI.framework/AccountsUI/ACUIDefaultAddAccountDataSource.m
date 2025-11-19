@interface ACUIDefaultAddAccountDataSource
- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3;
- (Class)controllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4;
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4;
- (void)accountControllerCompletedWithAccount:(id)a3 action:(int64_t)a4 data:(id)a5 specifier:(id)a6 viewController:(id)a7 completion:(id)a8;
- (void)configureAccountCreationController:(id)a3;
- (void)configureSpecifierForOtherAccountSpecifier:(id)a3;
- (void)hasAccountWithType:(id)a3 accountStore:(id)a4 completion:(id)a5;
@end

@implementation ACUIDefaultAddAccountDataSource

- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)configureSpecifierForOtherAccountSpecifier:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v7 viewControllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (Class)controllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [v7 controllerClassForCreatingAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)hasAccountWithType:(id)a3 accountStore:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
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

- (void)configureAccountCreationController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)accountControllerCompletedWithAccount:(id)a3 action:(int64_t)a4 data:(id)a5 specifier:(id)a6 viewController:(id)a7 completion:(id)a8
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = 0;
  objc_storeStrong(&v18, a8);
  if (location[0] && v22 == 1)
  {
    v10 = location[0];
    v11 = [v20 name];
    [ACUISetupViewController showDataclassConfigurationControllerForAccount:"showDataclassConfigurationControllerForAccount:name:fromViewController:specifier:completion:" name:v10 fromViewController:? specifier:? completion:?];
    MEMORY[0x277D82BD8](v11);
  }

  else if (!location[0] && v22 == 2)
  {
    v17 = [v21 objectForKeyedSubscript:@"Username"];
    v9 = [location[0] accountType];
    v8 = [v9 identifier];
    [ACUISetupViewController showAlternateCreationControllerForAccountType:"showAlternateCreationControllerForAccountType:username:fromViewController:specifier:completion:" username:? fromViewController:? specifier:? completion:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

@end