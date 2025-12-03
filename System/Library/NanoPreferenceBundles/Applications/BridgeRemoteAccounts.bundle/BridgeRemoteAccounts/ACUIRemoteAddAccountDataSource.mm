@interface ACUIRemoteAddAccountDataSource
- (ACUIRemoteAddAccountDataSource)initWithSyncController:(id)controller settingsController:(id)settingsController;
- (BOOL)shouldAddSpecifierForAccountTypeID:(id)d;
- (Class)controllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type withViewProviderManager:(id)manager;
- (void)accountControllerCompletedWithAccount:(id)account action:(int64_t)action data:(id)data specifier:(id)specifier viewController:(id)controller completion:(id)completion;
- (void)configureAccountCreationController:(id)controller;
- (void)configureSpecifierForOtherAccountSpecifier:(id)specifier;
- (void)hasAccountWithType:(id)type accountStore:(id)store completion:(id)completion;
@end

@implementation ACUIRemoteAddAccountDataSource

- (ACUIRemoteAddAccountDataSource)initWithSyncController:(id)controller settingsController:(id)settingsController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, settingsController);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = ACUIRemoteAddAccountDataSource;
  v8 = [(ACUIRemoteAddAccountDataSource *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(ACUIRemoteAddAccountDataSource *)selfCopy setSyncController:location[0]];
    [(ACUIRemoteAddAccountDataSource *)selfCopy setSettingsController:v10];
  }

  v6 = selfCopy;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BOOL)shouldAddSpecifierForAccountTypeID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = +[ACUIAccountViewProvidersManager sharedInstance];
  v5 = [(ACUIAccountViewProvidersManager *)v4 controllerClassForCreatingRemoteAccountWithType:location[0]]!= 0;

  objc_storeStrong(location, 0);
  return v5;
}

- (void)configureSpecifierForOtherAccountSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  [location[0] setProperty:selfCopy forKey:ACUIAddAccountDataSourceKey];
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
  v6 = [v7 controllerClassForCreatingRemoteAccountWithType:location[0]];
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
  v6 = [v7 controllerClassForCreatingRemoteAccountWithType:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)hasAccountWithType:(id)type accountStore:(id)store completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v19 = 0;
  objc_storeStrong(&v19, store);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  memset(__b, 0, sizeof(__b));
  accounts = [(ACUIRemoteAccountSyncController *)selfCopy->_syncController accounts];
  v14 = [(NSArray *)accounts countByEnumeratingWithState:__b objects:v22 count:16];
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
        objc_enumerationMutation(accounts);
      }

      v17 = *(__b[1] + 8 * v9);
      accountType = [v17 accountType];
      v6 = [accountType isEqual:location[0]];

      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [(NSArray *)accounts countByEnumeratingWithState:__b objects:v22 count:16];
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

- (void)configureAccountCreationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (objc_opt_respondsToSelector())
  {
    [location[0] setHost:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)accountControllerCompletedWithAccount:(id)account action:(int64_t)action data:(id)data specifier:(id)specifier viewController:(id)controller completion:(id)completion
{
  actionCopy = action;
  obj = data;
  specifierCopy = specifier;
  controllerCopy = controller;
  completionCopy = completion;
  v18 = "[ACUIRemoteAddAccountDataSource accountControllerCompletedWithAccount:action:data:specifier:viewController:completion:]";
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v32 = actionCopy;
  v31 = 0;
  objc_storeStrong(&v31, obj);
  v30 = 0;
  objc_storeStrong(&v30, specifierCopy);
  v29 = 0;
  objc_storeStrong(&v29, controllerCopy);
  v28 = 0;
  objc_storeStrong(&v28, completionCopy);
  if (v32 == 1)
  {
    v27 = objc_alloc_init(ACUIRemoteAccountDataclassViewController);
    [(ACUIRemoteAccountDataclassViewController *)v27 setAccount:location[0]];
    [(ACUIRemoteAccountDataclassViewController *)v27 setSyncController:selfCopy->_syncController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setSettingsController:selfCopy->_settingsController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setIsFirstTimeSetup:1];
    [(ACUIRemoteAccountDataclassViewController *)v27 setShowDeleteButton:0];
    parentController = [v29 parentController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setParentController:?];

    rootController = [v29 rootController];
    [(ACUIRemoteAccountDataclassViewController *)v27 setRootController:?];

    v16 = PSSpecifier;
    name = [v30 name];
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