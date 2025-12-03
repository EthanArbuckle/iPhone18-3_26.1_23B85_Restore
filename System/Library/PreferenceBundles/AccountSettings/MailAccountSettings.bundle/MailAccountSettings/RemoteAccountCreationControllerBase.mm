@interface RemoteAccountCreationControllerBase
- (BOOL)_hasAccountWithDescription:(id)description;
- (BOOL)_isAccountUsernameUnique:(id)unique typeIdentifer:(id)identifer;
- (Class)accountClass;
- (void)_displayAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)_showDuplicateAccountAlertWithCompletion:(id)completion;
- (void)beginAccountCreation;
- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion;
- (void)validateUniquenessAndAddAccountWithUsername:(id)username fullUserName:(id)name token:(id)token refreshToken:(id)refreshToken completion:(id)completion;
@end

@implementation RemoteAccountCreationControllerBase

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

  [(RemoteAccountCreationControllerBase *)self beginAccountCreation];
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
    [v23 handleFailureInMethod:a2 object:self file:@"RemoteAccountCreationControllerBase.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_75F68;
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

- (BOOL)_isAccountUsernameUnique:(id)unique typeIdentifer:(id)identifer
{
  uniqueCopy = unique;
  identiferCopy = identifer;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  host = [(RemoteAccountCreationControllerBase *)self host];
  accounts = [host accounts];

  v10 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(accounts);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        username = [v13 username];
        if ([username isEqualToString:uniqueCopy])
        {
          accountType = [v13 accountType];
          identifier = [accountType identifier];
          v17 = [identifier isEqualToString:identiferCopy];

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

      v10 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (BOOL)_hasAccountWithDescription:(id)description
{
  descriptionCopy = description;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  host = [(RemoteAccountCreationControllerBase *)self host];
  accounts = [host accounts];

  v7 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        accountDescription = [*(*(&v13 + 1) + 8 * i) accountDescription];
        v11 = [accountDescription isEqualToString:descriptionCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_showDuplicateAccountAlertWithCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v7 = completionCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performSyncBlock:&v5];
}

- (void)_displayAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  completionCopy = completion;
  v8 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v8 addAction:v11];

  viewController = [(RemoteAccountCreationControllerBase *)self viewController];
  [viewController presentViewController:v8 animated:1 completion:completionCopy];
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