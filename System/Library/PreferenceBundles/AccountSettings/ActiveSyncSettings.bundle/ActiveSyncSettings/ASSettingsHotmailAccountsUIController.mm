@interface ASSettingsHotmailAccountsUIController
- (id)accountSpecifiers;
- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion;
@end

@implementation ASSettingsHotmailAccountsUIController

- (void)beginAccountCreationWithSpecifier:(id)specifier fromViewController:(id)controller completion:(id)completion
{
  specifierCopy = specifier;
  controllerCopy = controller;
  completionCopy = completion;
  objc_storeStrong((&self->_completion + 2), controller);
  [(ASSettingsHotmailAccountsUIController *)self setCompletion:completionCopy];
  v11 = [(ASSettingsAccountsUIController *)self accountFromSpecifier:specifierCopy];
  backingAccountInfo = [v11 backingAccountInfo];

  v13 = [DAEASOAuthWebViewController alloc];
  v14 = v13;
  if (backingAccountInfo)
  {
    backingAccountInfo2 = [v11 backingAccountInfo];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1B58C;
    v23[3] = &unk_30C38;
    v23[4] = self;
    v16 = [v14 initWithAccount:backingAccountInfo2 isFirstTimeSetup:1 accountStore:0 presentationBlock:v23];
    v17 = *(&self->super._backgroundTaskID + 2);
    *(&self->super._backgroundTaskID + 2) = v16;
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1B5AC;
    v22[3] = &unk_30C38;
    v22[4] = self;
    v18 = [v13 initWithAccountDescription:@"Outlook" presentationBlock:v22];
    backingAccountInfo2 = *(&self->super._backgroundTaskID + 2);
    *(&self->super._backgroundTaskID + 2) = v18;
  }

  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1B5CC;
  v19[3] = &unk_30B58;
  objc_copyWeak(&v20, &location);
  [*(&self->super._backgroundTaskID + 2) setCompletion:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (id)accountSpecifiers
{
  v4.receiver = self;
  v4.super_class = ASSettingsHotmailAccountsUIController;
  accountSpecifiers = [(ASSettingsAccountsUIController *)&v4 accountSpecifiers];

  return accountSpecifiers;
}

@end