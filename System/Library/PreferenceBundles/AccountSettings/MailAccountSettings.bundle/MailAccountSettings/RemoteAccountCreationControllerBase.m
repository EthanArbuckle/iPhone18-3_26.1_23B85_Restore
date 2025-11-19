@interface RemoteAccountCreationControllerBase
- (BOOL)_hasAccountWithDescription:(id)a3;
- (BOOL)_isAccountUsernameUnique:(id)a3 typeIdentifer:(id)a4;
- (Class)accountClass;
- (void)_displayAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)_showDuplicateAccountAlertWithCompletion:(id)a3;
- (void)beginAccountCreation;
- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5;
- (void)validateUniquenessAndAddAccountWithUsername:(id)a3 fullUserName:(id)a4 token:(id)a5 refreshToken:(id)a6 completion:(id)a7;
@end

@implementation RemoteAccountCreationControllerBase

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

  [(RemoteAccountCreationControllerBase *)self beginAccountCreation];
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
    [v23 handleFailureInMethod:a2 object:self file:@"RemoteAccountCreationControllerBase.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75F68;
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

- (BOOL)_isAccountUsernameUnique:(id)a3 typeIdentifer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(RemoteAccountCreationControllerBase *)self host];
  v9 = [v8 accounts];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 username];
        if ([v14 isEqualToString:v6])
        {
          v15 = [v13 accountType];
          v16 = [v15 identifier];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            v18 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (BOOL)_hasAccountWithDescription:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(RemoteAccountCreationControllerBase *)self host];
  v6 = [v5 accounts];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) accountDescription];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_showDuplicateAccountAlertWithCompletion:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performSyncBlock:&v5];
}

- (void)_displayAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v13 = a5;
  v8 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v8 addAction:v11];

  v12 = [(RemoteAccountCreationControllerBase *)self viewController];
  [v12 presentViewController:v8 animated:1 completion:v13];
}

- (void)beginAccountCreation
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RemoteAccountCreationControllerBase.m" lineNumber:132 description:@"Subclass must implement."];
}

- (Class)accountClass
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RemoteAccountCreationControllerBase.m" lineNumber:136 description:@"Subclass must implement."];

  return 0;
}

@end