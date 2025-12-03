@interface iCloudMailboxSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (iCloudMailboxSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (void)_presentAdvancedSettings:(int64_t)settings specifier:(id)specifier;
@end

@implementation iCloudMailboxSpecifierProvider

- (iCloudMailboxSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = iCloudMailboxSpecifierProvider;
  v9 = [(iCloudMailboxSpecifierProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_presenter, presenterCopy);
  }

  return v10;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    accounts = [(AIDAAccountManager *)self->_accountManager accounts];
    v5 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

    v6 = ACUIAccountKey;
    v22 = ACUIAccountKey;
    v23 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

    if ([v5 aa_isAccountClass:AAAccountClassPrimary])
    {
      aa_childMailAccount = [v5 aa_childMailAccount];
      if (aa_childMailAccount)
      {
        [v8 setObject:aa_childMailAccount forKeyedSubscript:v6];
      }
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MAILBOX_BEHAVIORS" value:&stru_B9FC8 table:@"AccountPreferences"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v12 setIdentifier:@"iCloudMailboxBehaviorID"];
    [v12 setUserInfo:v8];
    [v12 setControllerLoadAction:"_mailboxBehaviorWasTapped:"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SIGNING_AND_ENCRYPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v15 setIdentifier:@"iCloudMailboxSMIMEID"];
    v16 = [v8 copy];
    [v15 setUserInfo:v16];

    [v15 setControllerLoadAction:"_smimeWasTapped:"];
    v21[0] = v12;
    v21[1] = v15;
    v17 = [NSArray arrayWithObjects:v21 count:2];
    v19 = self->_specifiers;
    p_specifiers = &self->_specifiers;
    *p_specifiers = v17;

    specifiers = *p_specifiers;
  }

  return specifiers;
}

- (void)_presentAdvancedSettings:(int64_t)settings specifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (WeakRetained)
  {
    v7 = objc_alloc_init(PSSetupController);
    userInfo = [specifierCopy userInfo];
    v9 = [userInfo mutableCopy];

    v10 = [v9 objectForKey:ACUIAccountKey];
    v11 = [MFAccount accountWithPersistentAccount:v10];
    [v9 setObject:v11 forKeyedSubscript:@"ExistingMessageAccount"];
    v12 = objc_opt_new();
    accountValues = self->_accountValues;
    self->_accountValues = v12;

    v14 = objc_opt_new();
    originalAccountValues = self->_originalAccountValues;
    self->_originalAccountValues = v14;

    [v9 setObject:self->_accountValues forKeyedSubscript:@"values"];
    [v9 setObject:self->_originalAccountValues forKeyedSubscript:@"originalValues"];
    [specifierCopy setUserInfo:v9];
    v16 = [[iCloudMailAdvancedController alloc] initWithPageType:settings];
    [(iCloudMailAdvancedController *)v16 setSpecifier:specifierCopy];
    [(iCloudMailAdvancedController *)v16 setParentController:v7];
    [(iCloudMailAdvancedController *)v16 setRootController:v7];
    [v7 showController:v16];
    [v7 setParentController:WeakRetained];
    [v7 setSpecifier:specifierCopy];
    [v7 setModalPresentationStyle:2];
    [WeakRetained presentViewController:v7 animated:1 completion:0];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end