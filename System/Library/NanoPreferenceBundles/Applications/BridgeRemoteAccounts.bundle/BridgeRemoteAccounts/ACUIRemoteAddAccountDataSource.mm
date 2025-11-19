@interface ACUIRemoteAddAccountDataSource
- (ACUIRemoteAddAccountDataSource)initWithSyncController:(id)a3 settingsController:(id)a4;
- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3;
- (Class)controllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4;
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3 withViewProviderManager:(id)a4;
- (void)accountControllerCompletedWithAccount:(id)a3 action:(int64_t)a4 data:(id)a5 specifier:(id)a6 viewController:(id)a7 completion:(id)a8;
- (void)configureAccountCreationController:(id)a3;
- (void)configureSpecifierForOtherAccountSpecifier:(id)a3;
- (void)hasAccountWithType:(id)a3 accountStore:(id)a4 completion:(id)a5;
@end

@implementation ACUIRemoteAddAccountDataSource

- (ACUIRemoteAddAccountDataSource)initWithSyncController:(id)a3 settingsController:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = ACUIRemoteAddAccountDataSource;
  v8 = [(ACUIRemoteAddAccountDataSource *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    [(ACUIRemoteAddAccountDataSource *)v12 setSyncController:location[0]];
    [(ACUIRemoteAddAccountDataSource *)v12 setSettingsController:v10];
  }

  v6 = v12;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = +[ACUIAccountViewProvidersManager sharedInstance];
  v5 = [(ACUIAccountViewProvidersManager *)v4 controllerClassForCreatingRemoteAccountWithType:location[0]]!= 0;

  objc_storeStrong(location, 0);
  return v5;
}

- (void)configureSpecifierForOtherAccountSpecifier:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setProperty:v4 forKey:ACUIAddAccountDataSourceKey];
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
  v6 = [v7 controllerClassForCreatingRemoteAccountWithType:location[0]];
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
  v6 = [v7 controllerClassForCreatingRemoteAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)hasAccountWithType:(id)a3 accountStore:(id)a4 completion:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  memset(__b, 0, sizeof(__b));
  v13 = [(ACUIRemoteAccountSyncController *)v21->_syncController accounts];
  v14 = [(NSArray *)v13 countByEnumeratingWithState:__b objects:v22 count:16];
  if (v14)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v14;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(__b[1] + 8 * v9);
      v5 = [v17 accountType];
      v6 = [v5 isEqual:location[0]];

      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [(NSArray *)v13 countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    (*(v18 + 2))(v18, v17);
    v15 = 1;
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  if (!v15)
  {
    (*(v18 + 2))(v18, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)configureAccountCreationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (objc_opt_respondsToSelector())
  {
    [location[0] setHost:v4];
  }

  objc_storeStrong(location, 0);
}

- (void)accountControllerCompletedWithAccount:(id)a3 action:(int64_t)a4 data:(id)a5 specifier:(id)a6 viewController:(id)a7 completion:(id)a8
{
  v19 = a4;
  obj = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v18 = "[ACUIRemoteAddAccountDataSource accountControllerCompletedWithAccount:action:data:specifier:viewController:completion:]";
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = v19;
  v31 = 0;
  objc_storeStrong(&v31, obj);
  v30 = 0;
  objc_storeStrong(&v30, v21);
  v29 = 0;
  objc_storeStrong(&v29, v22);
  v28 = 0;
  objc_storeStrong(&v28, v23);
  if (v32 == 1)
  {
    v27 = objc_alloc_init(ACUIRemoteAccountDataclassViewController);
    [(ACUIRemoteAccountDataclassViewController *)v27 setAccount:location[0]];
    [(ACUIRemoteAccountDataclassViewController *)v27 setSyncController:v34->_syncController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setSettingsController:v34->_settingsController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setIsFirstTimeSetup:1];
    [(ACUIRemoteAccountDataclassViewController *)v27 setShowDeleteButton:0];
    v14 = [v29 parentController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setParentController:?];

    v15 = [v29 rootController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setRootController:?];

    v16 = PSSpecifier;
    v17 = [v30 name];
    v26 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];

    [(ACUIRemoteAccountDataclassViewController *)v27 setSpecifier:v26];
    v25 = _ACUILogSystem();
    v24 = 0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      *type = v24;
      buf = v35;
      sub_26EC(v35, v18, 93);
      _os_log_impl(&dword_0, log, type[0], "%s (%d) Presenting new account data class configuration", buf, 0x12u);
    }

    v10 = 0;
    objc_storeStrong(&v25, 0);
    v9 = &v27;
    [v29 showController:v27 animate:1];
    objc_storeStrong(&v26, v10);
    objc_storeStrong(v9, v10);
  }

  v8 = 0;
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, v8);
  objc_storeStrong(&v30, v8);
  objc_storeStrong(&v31, v8);
  objc_storeStrong(location, v8);
}

@end