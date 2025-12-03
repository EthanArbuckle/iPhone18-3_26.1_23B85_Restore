@interface AccountCreationControllerBase
- (Class)accountClass;
- (void)_showDuplicateAccountAlertForAccount:(id)account completion:(id)completion;
- (void)beginAccountCreation;
- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion;
- (void)validateUniquenessAndAddAccountWithUsername:(id)username fullUserName:(id)name token:(id)token refreshToken:(id)refreshToken completion:(id)completion;
@end

@implementation AccountCreationControllerBase

- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  objc_storeStrong(&self->_specifier, specifier);
  completionCopy = completion;
  objc_storeStrong(&self->_viewController, controller);
  v11 = objc_retainBlock(completionCopy);

  completion = self->_completion;
  self->_completion = v11;

  v13 = objc_alloc_init(ACAccountStore);
  accountStore = self->_accountStore;
  self->_accountStore = v13;

  [(AccountCreationControllerBase *)self beginAccountCreation];
}

- (void)validateUniquenessAndAddAccountWithUsername:(id)username fullUserName:(id)name token:(id)token refreshToken:(id)refreshToken completion:(id)completion
{
  usernameCopy = username;
  nameCopy = name;
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  completionCopy = completion;
  if (!completionCopy)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"AccountCreationControllerBase.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20B4;
  block[3] = &unk_B8CA8;
  block[4] = self;
  v25 = usernameCopy;
  v26 = tokenCopy;
  v27 = refreshTokenCopy;
  v28 = nameCopy;
  v29 = completionCopy;
  v18 = nameCopy;
  v19 = refreshTokenCopy;
  v20 = tokenCopy;
  v21 = completionCopy;
  v22 = usernameCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showDuplicateAccountAlertForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v28 = [accountCopy accountPropertyForKey:MFMailAccountDescription];
  displayedAccountTypeString = [(objc_class *)[(AccountCreationControllerBase *)self accountClass] displayedAccountTypeString];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v27 = v8;
  v29 = [NSString stringWithFormat:v8, v28];
  if ([accountCopy isActive])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [NSString stringWithFormat:v11, displayedAccountTypeString];

    v13 = [UIAlertController alertControllerWithTitle:v29 message:v12 preferredStyle:1];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_2B80;
    v32[3] = &unk_B8CF8;
    v33 = completionCopy;
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v32];
    [v13 addAction:v16];
    v17 = &v33;
  }

  else
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATE_EXISTING_ACCOUNT_DESC"];
    v20 = [v18 localizedStringForKey:v19 value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [NSString stringWithFormat:v20, displayedAccountTypeString];

    v13 = [UIAlertController alertControllerWithTitle:v29 message:v12 preferredStyle:1];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SETTINGS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_2AD8;
    v36[3] = &unk_B8CD0;
    v37 = accountCopy;
    v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:v36];
    [v13 addAction:v23];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_2B70;
    v34[3] = &unk_B8CF8;
    v35 = completionCopy;
    v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:v34];
    [v13 addAction:v26];
    v17 = &v37;

    v14 = v35;
  }

  [(PSViewController *)self->_viewController presentViewController:v13 animated:1 completion:0];
}

- (void)beginAccountCreation
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AccountCreationControllerBase.m" lineNumber:113 description:@"Subclass must implement."];
}

- (Class)accountClass
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AccountCreationControllerBase.m" lineNumber:117 description:@"Subclass must implement."];

  return 0;
}

@end