@interface AccountPSDetailControllerBase
+ (id)normalizeAccountProperties:(id)properties withAccountClass:(Class)class;
- (Class)accountClass;
- (id)existingAccountForAccountValues:(id)values;
- (id)fixAccountInputValues:(id)values;
- (id)setOfKeysForAlteredValuesInDictionary:(id)dictionary originalDictionary:(id)originalDictionary;
- (int64_t)validateAccount:(id)account withFallbacks:(BOOL)fallbacks;
- (void)_presentAlertForAccount:(id)account accountValidator:(id)validator error:(id)error;
- (void)_promptUserForWebLoginForAccount:(id)account accountValidator:(id)validator error:(id)error;
- (void)_redirectToRecoveryURL:(id)l;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)cancelAccountValidation;
- (void)dealloc;
- (void)displaySSLAlertForAccount:(id)account accountValidator:(id)validator;
- (void)displaySaveAccountAnywaysAlertSheet;
- (void)doneButtonClickedForExistingAccount;
- (void)doneButtonClickedForNewAccount;
- (void)doneButtonTapped:(id)tapped;
- (void)handleSSLAlertForAccount:(id)account accountValidator:(id)validator attemptWithoutSSL:(BOOL)l;
- (void)setViewsEnabled:(BOOL)enabled;
- (void)suspend;
- (void)viewDidLoad;
@end

@implementation AccountPSDetailControllerBase

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AccountPSDetailControllerBase;
  [(AccountPSDetailControllerBase *)&v27 viewDidLoad];
  v3 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSViewController__specifier];
  if (!v3)
  {
    sub_7965C();
  }

  userInfo = [v3 userInfo];
  v5 = [userInfo objectForKey:@"values"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    accountValues = self->_accountValues;
    self->_accountValues = v7;
  }

  v9 = [userInfo objectForKey:@"originalValues"];

  if (v9)
  {
    v10 = [v9 mutableCopy];
    originalAccountValues = self->_originalAccountValues;
    self->_originalAccountValues = v10;
  }

  account = [(AccountPSDetailControllerBase *)self account];

  if (account)
  {
    if (!self->_accountValues)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_accountValues;
      self->_accountValues = v13;

      account2 = [(AccountPSDetailControllerBase *)self account];
      v16 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
      accountValues = [(AccountPSDetailControllerBase *)self accountValues];
      [account2 copyAccountPropertiesForSpecifiers:v16 intoDictionary:accountValues];
    }

    if (!self->_originalAccountValues)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = self->_originalAccountValues;
      self->_originalAccountValues = v18;

      account3 = [(AccountPSDetailControllerBase *)self account];
      v21 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
      originalAccountValues = [(AccountPSDetailControllerBase *)self originalAccountValues];
      [account3 copyAccountPropertiesForSpecifiers:v21 intoDictionary:originalAccountValues];
    }
  }

  navigationItem = [(AccountPSDetailControllerBase *)self navigationItem];
  title = [navigationItem title];
  initialTitle = self->_initialTitle;
  self->_initialTitle = title;

  navigationItem2 = [(AccountPSDetailControllerBase *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];
}

- (void)dealloc
{
  [(MFAccountValidator *)self->_accountValidator setDelegate:0];
  v3.receiver = self;
  v3.super_class = AccountPSDetailControllerBase;
  [(AccountPSDetailControllerBase *)&v3 dealloc];
}

- (void)doneButtonTapped:(id)tapped
{
  [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:1];
  firstResponder = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  if (self->_account)
  {

    [(AccountPSDetailControllerBase *)self doneButtonClickedForExistingAccount];
  }

  else
  {

    [(AccountPSDetailControllerBase *)self doneButtonClickedForNewAccount];
  }
}

- (void)suspend
{
  if (*(self + 184))
  {
    [(AccountPSDetailControllerBase *)self cancelAccountValidation];
  }

  v3.receiver = self;
  v3.super_class = AccountPSDetailControllerBase;
  [(AccountPSDetailControllerBase *)&v3 suspend];
}

- (Class)accountClass
{
  account = [(AccountPSDetailControllerBase *)self account];
  v3 = objc_opt_class();

  return v3;
}

- (int64_t)validateAccount:(id)account withFallbacks:(BOOL)fallbacks
{
  fallbacksCopy = fallbacks;
  accountCopy = account;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_18DAC;
  v16[3] = &unk_B8EB0;
  v16[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v16];

  accountValidator = [(AccountPSDetailControllerBase *)self accountValidator];

  if (!accountValidator)
  {
    v9 = objc_alloc_init([objc_opt_class() accountValidatorClass]);
    [(AccountPSDetailControllerBase *)self setAccountValidator:v9];
  }

  accountValidator2 = [(AccountPSDetailControllerBase *)self accountValidator];

  v11 = *(self + 184);
  if (accountValidator2)
  {
    *(self + 184) = v11 | 1;
    accountValidator3 = [(AccountPSDetailControllerBase *)self accountValidator];
    [accountValidator3 setDelegate:self];

    [(AccountPSDetailControllerBase *)self accountValidator];
    if (fallbacksCopy)
      v13 = {;
      [v13 validateAccount:accountCopy useSSL:1];
    }

    else
      v13 = {;
      [v13 validateAccountWithoutFallbacks:accountCopy];
    }

    *(self + 184) |= 2u;
    v14 = 2;
  }

  else
  {
    *(self + 184) = v11 & 0xFE;
    v14 = 3;
  }

  return v14;
}

- (id)setOfKeysForAlteredValuesInDictionary:(id)dictionary originalDictionary:(id)originalDictionary
{
  dictionaryCopy = dictionary;
  originalDictionaryCopy = originalDictionary;
  v29 = objc_alloc_init(NSMutableSet);
  v7 = [NSSet alloc];
  allKeys = [dictionaryCopy allKeys];
  v27 = [v7 initWithArray:allKeys];

  v9 = [NSMutableSet alloc];
  allKeys2 = [originalDictionaryCopy allKeys];
  v11 = [v9 initWithArray:allKeys2];

  v28 = v11;
  [v11 intersectSet:v27];
  v12 = [NSMutableSet alloc];
  allKeys3 = [originalDictionaryCopy allKeys];
  v14 = [v12 initWithArray:allKeys3];

  v26 = v14;
  [v14 unionSet:v27];
  [v14 minusSet:v28];
  allObjects = [v14 allObjects];
  [v29 addObjectsFromArray:allObjects];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allObjects2 = [v28 allObjects];
  v17 = [allObjects2 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(allObjects2);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [dictionaryCopy objectForKey:v20];

        if (v21)
        {
          v22 = [originalDictionaryCopy objectForKey:v20];
          v23 = [dictionaryCopy objectForKey:v20];
          v24 = [v22 isEqual:v23];

          if ((v24 & 1) == 0)
          {
            [v29 addObject:v20];
          }
        }
      }

      v17 = [allObjects2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

- (void)setViewsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = OBJC_IVAR___PSListController__table;
  if (!enabled)
  {
    firstResponder = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
    if ([firstResponder resignFirstResponder])
    {
      v7 = firstResponder;
    }

    else
    {
      v7 = 0;
    }

    lastFirstResponder = self->_lastFirstResponder;
    self->_lastFirstResponder = v7;
  }

  [*&self->ACUIViewController_opaque[v5] setUserInteractionEnabled:enabledCopy];
  v9 = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers] count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = *&self->ACUIViewController_opaque[v5];
      v13 = [(AccountPSDetailControllerBase *)self indexPathForIndex:i];
      v14 = [v12 cellForRowAtIndexPath:v13];

      if (v14)
      {
        [v14 setUserInteractionEnabled:enabledCopy];
      }
    }
  }

  if (enabledCopy)
  {
    v15 = self->_lastFirstResponder;
    if (v15)
    {

      [(UIResponder *)v15 becomeFirstResponder];
    }
  }
}

- (id)fixAccountInputValues:(id)values
{
  valuesCopy = values;
  accountClass = [(AccountPSDetailControllerBase *)self accountClass];
  v6 = [objc_opt_class() normalizeAccountProperties:valuesCopy withAccountClass:accountClass];
  v7 = MailAccountHostname;
  v8 = [v6 objectForKey:MailAccountHostname];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 rangeOfString:@":"];
    v11 = v10;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v9 substringFromIndex:v10 + 1];
      integerValue = [v12 integerValue];

      v14 = [v9 substringToIndex:v11];

      [v6 setObject:v14 forKey:v7];
      v15 = [NSNumber numberWithInteger:integerValue];
      [v6 setObject:v15 forKey:MailAccountPortNumber];

      v9 = v14;
    }
  }

  if ([(objc_class *)accountClass isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v6 objectForKey:MFMailAccountUsername];

    if (v16)
    {
      [v6 setObject:@"YES" forKey:DeliveryAccountShouldUseAuthentication];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = MailAccountPassword;
    v18 = [v6 objectForKey:MailAccountPassword];
    v19 = [v18 isEqualToString:@"********"];

    if (v19)
    {
      [v6 removeObjectForKey:v17];
    }
  }

  return v6;
}

- (id)existingAccountForAccountValues:(id)values
{
  valuesCopy = values;
  hostname2 = [valuesCopy objectForKey:MailAccountHostname];
  if (![hostname2 length])
  {
    account = [(AccountPSDetailControllerBase *)self account];
    hostname = [account hostname];

    hostname2 = hostname;
  }

  v8 = [valuesCopy objectForKey:MFMailAccountUsername];
  accountClass = [(AccountPSDetailControllerBase *)self accountClass];
  v10 = accountClass;
  if (!hostname2)
  {
    hostname2 = [(objc_class *)accountClass hostname];
  }

  v11 = NSStringFromClass(v10);
  v12 = [(objc_class *)v10 existingAccountWithType:v11 hostname:hostname2 username:v8];

  return v12;
}

- (void)doneButtonClickedForNewAccount
{
  if ((*(self + 184) & 2) == 0)
  {
    if ((*(self + 184) & 1) == 0 && [(AccountPSDetailControllerBase *)self haveEnoughValues])
    {
      *(self + 184) |= 1u;
      [(AccountPSDetailControllerBase *)self setViewsEnabled:0];

      [(AccountPSDetailControllerBase *)self validateForNewAccount];
    }

    return;
  }

  accountValuesAfterFailedValidation = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];

  if (!accountValuesAfterFailedValidation || ([(AccountPSDetailControllerBase *)self accountValues], v4 = objc_claimAutoreleasedReturnValue(), [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation], v5 = objc_claimAutoreleasedReturnValue(), [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:v4 originalDictionary:v5], v8 = objc_claimAutoreleasedReturnValue(), v5, v4, !v8))
  {
    v8 = 0;
    goto LABEL_13;
  }

  propertiesWhichRequireValidation = [(objc_class *)[(AccountPSDetailControllerBase *)self accountClass] propertiesWhichRequireValidation];
  v7 = [propertiesWhichRequireValidation intersectsSet:v8];

  if (!v7)
  {
LABEL_13:
    [(AccountPSDetailControllerBase *)self displaySaveAccountAnywaysAlertSheet];
    goto LABEL_14;
  }

  [(AccountPSDetailControllerBase *)self validateForNewAccount];
LABEL_14:
}

- (void)doneButtonClickedForExistingAccount
{
  accountValuesAfterFailedValidation = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];

  if (accountValuesAfterFailedValidation)
  {
    accountValues = [(AccountPSDetailControllerBase *)self accountValues];
    accountValuesAfterFailedValidation2 = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];
    v6 = [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:accountValues originalDictionary:accountValuesAfterFailedValidation2];

    if ([v6 count])
    {
      *(self + 184) &= ~2u;
    }
  }

  account = [(AccountPSDetailControllerBase *)self account];
  [account removeValueInAccountPropertiesForKey:MFHealAccountDateLastFetched];

  account2 = [(AccountPSDetailControllerBase *)self account];
  [account2 removeValueInAccountPropertiesForKey:MFHealAccountShouldShowAlert];

  if ((*(self + 184) & 2) != 0)
  {

    [(AccountPSDetailControllerBase *)self displaySaveAccountAnywaysAlertSheet];
  }

  else
  {
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    v9 = [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:self->_accountValues originalDictionary:self->_originalAccountValues];
    account3 = [(AccountPSDetailControllerBase *)self account];
    propertiesWhichRequireValidation = [objc_opt_class() propertiesWhichRequireValidation];
    v12 = [propertiesWhichRequireValidation intersectsSet:v9];

    if (v12)
    {
      if ([v9 containsObject:MailAccountHostname])
      {
        v13 = MailAccountPassword;
        if (([v9 containsObject:MailAccountPassword] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_accountValues setValue:&stru_B9FC8 forKey:v13];
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            account4 = [(AccountPSDetailControllerBase *)self account];
            v19 = 138412290;
            v20 = account4;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "#Warning Reset password because host was changed, account %@ ", &v19, 0xCu);
          }
        }
      }

      [(AccountPSDetailControllerBase *)self validateForExistingAccount];
    }

    else
    {
      if ([v9 count])
      {
        [(AccountPSDetailControllerBase *)self accountValues];
      }

      else
      {
        [(AccountPSDetailControllerBase *)self originalAccountValues];
      }
      v16 = ;
      v17 = [(AccountPSDetailControllerBase *)self fixAccountInputValues:v16];

      account5 = [(AccountPSDetailControllerBase *)self account];
      [account5 setAccountPropertiesWithDictionary:v17];

      [(AccountPSDetailControllerBase *)self saveAndDismiss];
    }
  }
}

- (void)displaySaveAccountAnywaysAlertSheet
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONFIRM_SAVE_ACCOUNT_ANYWAYS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SAVE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11[0] = v6;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"EDIT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_19E9C;
  v10[3] = &unk_B8E60;
  v10[4] = self;
  [(AccountPSDetailControllerBase *)self showConfirmationWithButtons:v9 title:0 message:v4 destructive:0 completion:v10];
}

- (void)displaySSLAlertForAccount:(id)account accountValidator:(id)validator
{
  accountCopy = account;
  validatorCopy = validator;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SETUP_WITHOUT_SSL_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SETUP_WITHOUT_SSL_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"YES" value:&stru_B9FC8 table:@"AccountPreferences"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1A34C;
  v28[3] = &unk_B8F00;
  v28[4] = self;
  v13 = accountCopy;
  v29 = v13;
  v14 = validatorCopy;
  v30 = v14;
  v15 = [UIAlertAction actionWithTitle:v12 style:1 handler:v28];
  [v10 addAction:v15];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"NO" value:&stru_B9FC8 table:@"AccountPreferences"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1A360;
  v25[3] = &unk_B8F00;
  v25[4] = self;
  v18 = v13;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = [UIAlertAction actionWithTitle:v17 style:0 handler:v25];
  [v10 addAction:v20];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(AccountPSDetailControllerBase *)self stopValidationWithPrompt:v22 showButtons:0];

  [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
  [(AccountPSDetailControllerBase *)self presentViewController:v10 animated:1 completion:0];
  [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:0];
}

- (void)handleSSLAlertForAccount:(id)account accountValidator:(id)validator attemptWithoutSSL:(BOOL)l
{
  lCopy = l;
  accountCopy = account;
  validatorCopy = validator;
  if (lCopy)
  {
    [accountCopy applySettingsAsDefault:self->_originalConnectionSettings];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailControllerBase *)self startValidationWithPrompt:v10];

    [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:1];
    [validatorCopy validateAccount:accountCopy useSSL:0];
  }

  else
  {
    [(AccountPSDetailControllerBase *)self handleInvalidAccount:accountCopy];
    [(AccountPSDetailControllerBase *)self setAccountValuesAfterFailedValidation:self->_accountValues];
    [(AccountPSDetailControllerBase *)self stopValidationWithPrompt:self->_initialTitle showButtons:1];
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
  }
}

- (void)cancelAccountValidation
{
  accountValidator = self->_accountValidator;
  if (accountValidator)
  {
    [(MFAccountValidator *)accountValidator cancelValidation];
    [(MFAccountValidator *)self->_accountValidator setDelegate:0];
    v4 = self->_accountValidator;
    self->_accountValidator = 0;
  }

  *(self + 184) &= ~2u;
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  lCopy = l;
  validatorCopy = validator;
  accountCopy = account;
  *(self + 184) &= ~1u;
  v9 = +[MFNetworkController sharedInstance];
  if ([validatorCopy accountIsValid])
  {
    [(AccountPSDetailControllerBase *)self handleValidAccount:accountCopy];
    goto LABEL_27;
  }

  error = [validatorCopy error];
  if ([v9 isNetworkUp] & lCopy) != 1 || (v11 = objc_msgSend(error, "code"), v12 = objc_msgSend(error, "code"), v13 = objc_msgSend(error, "code"), v14 = objc_msgSend(error, "code"), v15 = objc_msgSend(error, "code"), v11 == &stru_3D8.reserved1) || v12 == &stru_3D8.reserved1 + 3 || v13 == &stru_3D8.reserved2 || v14 == &stru_3D8.offset || v15 == &stru_3D8.reserved2 + 3 || objc_msgSend(error, "code") == &stru_3D8.align + 3 || !objc_msgSend(objc_opt_class(), "isSSLEditable") || (objc_msgSend(accountCopy, "shouldEnableAfterError:", error))
  {
    code = [error code];
    if (code == &stru_3D8.offset)
    {
      v18 = MFLookupLocalizedString();
      hostname = [accountCopy hostname];
      v20 = [NSString stringWithFormat:v18, hostname];
      [error setLocalizedDescription:v20];
    }

    else if (code == (&stru_3D8.align + 3))
    {
      v18 = MFLookupLocalizedString();
      hostname = [accountCopy displayName];
      v20 = [NSString stringWithFormat:v18, hostname];
      [error setLocalizedDescription:v20];
    }

    else
    {
      if (code != (&stru_3D8.reserved2 + 2))
      {
        goto LABEL_19;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"ACCOUNT_IN_USE" value:&stru_B9FC8 table:@"AccountPreferences"];

      hostname = [accountCopy displayName];
      v20 = [NSString stringWithFormat:v18, hostname];
      [error setLocalizedDescription:v20];
    }

LABEL_19:
    if ([accountCopy shouldEnableAfterError:error])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"GMAIL_IMAP_ACCESS_NEEDED" value:&stru_B9FC8 table:@"AccountPreferences"];

        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"GMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
        v25 = [NSString stringWithFormat:v22, v24];
        [error setLocalizedDescription:v25];
      }
    }

    [(AccountPSDetailControllerBase *)self setAccountValuesAfterFailedValidation:self->_accountValues];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailControllerBase *)self stopValidationWithPrompt:v27 showButtons:1];

    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    if ([error code] == &stru_3D8.reserved2 + 3)
    {
      [(AccountPSDetailControllerBase *)self _promptUserForWebLoginForAccount:accountCopy accountValidator:validatorCopy error:error];
    }

    else
    {
      [(AccountPSDetailControllerBase *)self _presentAlertForAccount:accountCopy accountValidator:validatorCopy error:error];
    }

    [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:0];
    [(AccountPSDetailControllerBase *)self handleInvalidAccount:accountCopy];
    goto LABEL_26;
  }

  [(AccountPSDetailControllerBase *)self displaySSLAlertForAccount:accountCopy accountValidator:validatorCopy];
LABEL_26:

LABEL_27:
}

- (void)_promptUserForWebLoginForAccount:(id)account accountValidator:(id)validator error:(id)error
{
  accountCopy = account;
  validatorCopy = validator;
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v12 = [userInfo objectForKey:MFRequestedWebLoginURLKey];

  if (!v12 || (v14 = _NSConcreteStackBlock, v15 = 3221225472, v16 = sub_1AC18, v17 = &unk_B8F28, v18 = self, v19 = accountCopy, v13 = [v19 promptUserForWebLoginWithURL:v12 shouldConfirm:1 completionHandler:&v14], v19, (v13 & 1) == 0))
  {
    [(AccountPSDetailControllerBase *)self _presentAlertForAccount:accountCopy accountValidator:validatorCopy error:errorCopy, v14, v15, v16, v17, v18];
  }
}

- (void)_presentAlertForAccount:(id)account accountValidator:(id)validator error:(id)error
{
  errorCopy = error;
  recoveryAttempter = [errorCopy recoveryAttempter];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([errorCopy localizedRecoverySuggestion], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    v11 = 0;
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v8 = 0;
    v11 = 1;
  }

  mf_shortDescription = [errorCopy mf_shortDescription];
  localizedDescription = [errorCopy localizedDescription];
  v14 = [UIAlertController alertControllerWithTitle:mf_shortDescription message:localizedDescription preferredStyle:1];

  v15 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v14 addAction:v15];

  if ((v11 & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1B020;
    v17[3] = &unk_B8F00;
    v17[4] = self;
    v18 = recoveryAttempter;
    v19 = errorCopy;
    v16 = [UIAlertAction actionWithTitle:v8 style:0 handler:v17];
    [v14 addAction:v16];
  }

  [(AccountPSDetailControllerBase *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_redirectToRecoveryURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v4 = +[UIApplication sharedApplication];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];

    lCopy = v5;
  }
}

+ (id)normalizeAccountProperties:(id)properties withAccountClass:(Class)class
{
  propertiesCopy = properties;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1B200;
  v11 = &unk_B8F50;
  classCopy = class;
  v6 = objc_alloc_init(NSMutableDictionary);
  v12 = v6;
  [propertiesCopy enumerateKeysAndObjectsUsingBlock:&v8];
  if (![v6 count])
  {

    v6 = 0;
  }

  return v6;
}

@end