@interface ASSettingsHotmailAccountsUIController
- (id)accountSpecifiers;
- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5;
@end

@implementation ASSettingsHotmailAccountsUIController

- (void)beginAccountCreationWithSpecifier:(id)a3 fromViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong((&self->_completion + 2), a4);
  [(ASSettingsHotmailAccountsUIController *)self setCompletion:v10];
  v11 = [(ASSettingsAccountsUIController *)self accountFromSpecifier:v8];
  v12 = [v11 backingAccountInfo];

  v13 = [DAEASOAuthWebViewController alloc];
  v14 = v13;
  if (v12)
  {
    v15 = [v11 backingAccountInfo];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1B58C;
    v23[3] = &unk_30C38;
    v23[4] = self;
    v16 = [v14 initWithAccount:v15 isFirstTimeSetup:1 accountStore:0 presentationBlock:v23];
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
    v15 = *(&self->super._backgroundTaskID + 2);
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
  v2 = [(ASSettingsAccountsUIController *)&v4 accountSpecifiers];

  return v2;
}

@end