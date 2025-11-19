@interface AccountCreationControllerBase
- (Class)accountClass;
- (void)_showDuplicateAccountAlertForAccount:(id)a3 completion:(id)a4;
- (void)beginAccountCreation;
- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5;
- (void)validateUniquenessAndAddAccountWithUsername:(id)a3 fullUserName:(id)a4 token:(id)a5 refreshToken:(id)a6 completion:(id)a7;
@end

@implementation AccountCreationControllerBase

- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5
{
  v15 = a3;
  v9 = a4;
  objc_storeStrong(&self->_specifier, a3);
  v10 = a5;
  objc_storeStrong(&self->_viewController, a4);
  v11 = objc_retainBlock(v10);

  completion = self->_completion;
  self->_completion = v11;

  v13 = objc_alloc_init(ACAccountStore);
  accountStore = self->_accountStore;
  self->_accountStore = v13;

  [(AccountCreationControllerBase *)self beginAccountCreation];
}

- (void)validateUniquenessAndAddAccountWithUsername:(id)a3 fullUserName:(id)a4 token:(id)a5 refreshToken:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v17)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"AccountCreationControllerBase.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20B4;
  block[3] = &unk_B8CA8;
  block[4] = self;
  v25 = v13;
  v26 = v15;
  v27 = v16;
  v28 = v14;
  v29 = v17;
  v18 = v14;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v13;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_showDuplicateAccountAlertForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v30 = a4;
  v28 = [v6 accountPropertyForKey:MFMailAccountDescription];
  v31 = [(objc_class *)[(AccountCreationControllerBase *)self accountClass] displayedAccountTypeString];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v27 = v8;
  v29 = [NSString stringWithFormat:v8, v28];
  if ([v6 isActive])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [NSString stringWithFormat:v11, v31];

    v13 = [UIAlertController alertControllerWithTitle:v29 message:v12 preferredStyle:1];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_2B80;
    v32[3] = &unk_B8CF8;
    v33 = v30;
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v32];
    [v13 addAction:v16];
    v17 = &v33;
  }

  else
  {
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATE_EXISTING_ACCOUNT_DESC"];
    v20 = [v18 localizedStringForKey:v19 value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [NSString stringWithFormat:v20, v31];

    v13 = [UIAlertController alertControllerWithTitle:v29 message:v12 preferredStyle:1];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SETTINGS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_2AD8;
    v36[3] = &unk_B8CD0;
    v37 = v6;
    v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:v36];
    [v13 addAction:v23];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_2B70;
    v34[3] = &unk_B8CF8;
    v35 = v30;
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