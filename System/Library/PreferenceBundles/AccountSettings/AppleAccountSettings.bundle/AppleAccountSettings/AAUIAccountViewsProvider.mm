@interface AAUIAccountViewsProvider
- (ACUISignInControllerDelegate)delegate;
- (BOOL)setDelegate:(id)delegate forSignInController:(id)controller;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (Class)viewControllerClassForViewingAccount:(id)account specifier:(id)specifier presentingVC:(id)c;
- (id)_accountStore;
- (id)configurationInfoForCreatingAccountWithType:(id)type;
- (id)localizedStringForDataclass:(id)dataclass withSuffix:(id)suffix forAccount:(id)account;
- (id)supportedAccountTypeIdentifiers;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation AAUIAccountViewsProvider

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)supportedAccountTypeIdentifiers
{
  v4 = ACAccountTypeIdentifierAppleAccount;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  _accountStore = [(AAUIAccountViewsProvider *)self _accountStore];
  aa_primaryAppleAccount = [_accountStore aa_primaryAppleAccount];

  v5 = AAUISignInController_ptr;
  if (aa_primaryAppleAccount)
  {
    v5 = &off_58830;
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return v7;
}

- (Class)viewControllerClassForViewingAccount:(id)account
{
  accountCopy = account;
  name = protocol_getMethodDescription(&OBJC_PROTOCOL___ACUIAccountViewsProviderProtocol, "viewControllerClassForViewingAccount:specifier:presentingVC:", 0, 1).name;
  v5 = _AAUILogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (name)
  {
    if (v6)
    {
      sub_339F4();
    }
  }

  else
  {
    if (v6)
    {
      sub_33A28();
    }

    if (+[AAUIFeatureFlags isShowDataclassDetailFromAppsEnabled](AAUIFeatureFlags, "isShowDataclassDetailFromAppsEnabled") && ([accountCopy aa_isAccountClass:AAAccountClassPrimary] & 1) != 0)
    {
      v7 = off_58828;
      goto LABEL_11;
    }
  }

  v7 = off_58820;
LABEL_11:
  v8 = *v7;
  v9 = objc_opt_class();

  return v9;
}

- (Class)viewControllerClassForViewingAccount:(id)account specifier:(id)specifier presentingVC:(id)c
{
  specifierCopy = specifier;
  cCopy = c;
  if ([account aa_isAccountClass:AAAccountClassPrimary])
  {
    v9 = [specifierCopy propertyForKey:PSAppSettingsBundleIDKey];
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_33A90(v9, v10);
    }

    if ([v9 isEqualToString:@"com.apple.mobilemail"])
    {
      if (cCopy)
      {
        v11 = [[iCloudMailUnifiedSettingsProviderObjc alloc] initWithPresenter:cCopy];
        [v11 navigateToiCloudMailSettingsWithDeeplink:0];
LABEL_21:

        v13 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v11 = _AAUILogSystem();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (![v9 isEqualToString:@"com.apple.mobilecal"])
      {
        if (([v9 isEqualToString:@"com.apple.MobileAddressBook"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.mobilenotes") & 1) == 0)
        {
          [v9 isEqualToString:@"com.apple.reminders"];
        }

        v13 = objc_opt_class();
        goto LABEL_22;
      }

      if (cCopy)
      {
        v11 = [[iCloudCalendarUnifiedSettingsProviderObjc alloc] initWithPresenter:cCopy];
        [v11 navigateToiCloudCalendarSettingsWithDeeplink:0];
        goto LABEL_21;
      }

      v11 = _AAUILogSystem();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

    sub_33B08();
    goto LABEL_21;
  }

  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_33A5C();
  }

  v13 = objc_opt_class();
LABEL_23:

  return v13;
}

- (id)configurationInfoForCreatingAccountWithType:(id)type
{
  _accountStore = [(AAUIAccountViewsProvider *)self _accountStore];
  aa_primaryAppleAccount = [_accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v11 = ACUIAccountIdentifierKey;
    v12 = @"secondary";
    v5 = &v12;
    v6 = &v11;
  }

  else
  {
    v9 = ACUIAccountIdentifierKey;
    v10 = @"primary";
    v5 = &v10;
    v6 = &v9;
  }

  v7 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:1];

  return v7;
}

- (id)localizedStringForDataclass:(id)dataclass withSuffix:(id)suffix forAccount:(id)account
{
  suffixCopy = suffix;
  if ([dataclass isEqualToString:kAccountDataclassMail])
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [@"ICLOUD_MAIL_" stringByAppendingString:suffixCopy];
    v9 = [v7 localizedStringForKey:v8 value:&stru_5A5F0 table:@"Localizable"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setDelegate:(id)delegate forSignInController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  if (controllerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [controllerCopy setDelegate:self];
    objc_storeWeak(&self->_delegate, delegateCopy);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)signInControllerDidCancel:(id)cancel
{
  delegate = [(AAUIAccountViewsProvider *)self delegate];

  if (delegate)
  {
    delegate2 = [(AAUIAccountViewsProvider *)self delegate];
    [delegate2 signInControllerDidCancel];
  }
}

- (ACUISignInControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end