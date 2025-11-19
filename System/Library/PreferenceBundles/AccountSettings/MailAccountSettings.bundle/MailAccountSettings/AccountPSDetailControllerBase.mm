@interface AccountPSDetailControllerBase
+ (id)normalizeAccountProperties:(id)a3 withAccountClass:(Class)a4;
- (Class)accountClass;
- (id)existingAccountForAccountValues:(id)a3;
- (id)fixAccountInputValues:(id)a3;
- (id)setOfKeysForAlteredValuesInDictionary:(id)a3 originalDictionary:(id)a4;
- (int64_t)validateAccount:(id)a3 withFallbacks:(BOOL)a4;
- (void)_presentAlertForAccount:(id)a3 accountValidator:(id)a4 error:(id)a5;
- (void)_promptUserForWebLoginForAccount:(id)a3 accountValidator:(id)a4 error:(id)a5;
- (void)_redirectToRecoveryURL:(id)a3;
- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5;
- (void)cancelAccountValidation;
- (void)dealloc;
- (void)displaySSLAlertForAccount:(id)a3 accountValidator:(id)a4;
- (void)displaySaveAccountAnywaysAlertSheet;
- (void)doneButtonClickedForExistingAccount;
- (void)doneButtonClickedForNewAccount;
- (void)doneButtonTapped:(id)a3;
- (void)handleSSLAlertForAccount:(id)a3 accountValidator:(id)a4 attemptWithoutSSL:(BOOL)a5;
- (void)setViewsEnabled:(BOOL)a3;
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

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"values"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    accountValues = self->_accountValues;
    self->_accountValues = v7;
  }

  v9 = [v4 objectForKey:@"originalValues"];

  if (v9)
  {
    v10 = [v9 mutableCopy];
    originalAccountValues = self->_originalAccountValues;
    self->_originalAccountValues = v10;
  }

  v12 = [(AccountPSDetailControllerBase *)self account];

  if (v12)
  {
    if (!self->_accountValues)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_accountValues;
      self->_accountValues = v13;

      v15 = [(AccountPSDetailControllerBase *)self account];
      v16 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
      v17 = [(AccountPSDetailControllerBase *)self accountValues];
      [v15 copyAccountPropertiesForSpecifiers:v16 intoDictionary:v17];
    }

    if (!self->_originalAccountValues)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = self->_originalAccountValues;
      self->_originalAccountValues = v18;

      v20 = [(AccountPSDetailControllerBase *)self account];
      v21 = *&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__specifiers];
      v22 = [(AccountPSDetailControllerBase *)self originalAccountValues];
      [v20 copyAccountPropertiesForSpecifiers:v21 intoDictionary:v22];
    }
  }

  v23 = [(AccountPSDetailControllerBase *)self navigationItem];
  v24 = [v23 title];
  initialTitle = self->_initialTitle;
  self->_initialTitle = v24;

  v26 = [(AccountPSDetailControllerBase *)self navigationItem];
  [v26 setHidesBackButton:1];
}

- (void)dealloc
{
  [(MFAccountValidator *)self->_accountValidator setDelegate:0];
  v3.receiver = self;
  v3.super_class = AccountPSDetailControllerBase;
  [(AccountPSDetailControllerBase *)&v3 dealloc];
}

- (void)doneButtonTapped:(id)a3
{
  [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:1];
  v4 = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v4 resignFirstResponder];

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
  v2 = [(AccountPSDetailControllerBase *)self account];
  v3 = objc_opt_class();

  return v3;
}

- (int64_t)validateAccount:(id)a3 withFallbacks:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_18DAC;
  v16[3] = &unk_B8EB0;
  v16[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v16];

  v8 = [(AccountPSDetailControllerBase *)self accountValidator];

  if (!v8)
  {
    v9 = objc_alloc_init([objc_opt_class() accountValidatorClass]);
    [(AccountPSDetailControllerBase *)self setAccountValidator:v9];
  }

  v10 = [(AccountPSDetailControllerBase *)self accountValidator];

  v11 = *(self + 184);
  if (v10)
  {
    *(self + 184) = v11 | 1;
    v12 = [(AccountPSDetailControllerBase *)self accountValidator];
    [v12 setDelegate:self];

    [(AccountPSDetailControllerBase *)self accountValidator];
    if (v4)
      v13 = {;
      [v13 validateAccount:v6 useSSL:1];
    }

    else
      v13 = {;
      [v13 validateAccountWithoutFallbacks:v6];
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

- (id)setOfKeysForAlteredValuesInDictionary:(id)a3 originalDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = objc_alloc_init(NSMutableSet);
  v7 = [NSSet alloc];
  v8 = [v5 allKeys];
  v27 = [v7 initWithArray:v8];

  v9 = [NSMutableSet alloc];
  v10 = [v6 allKeys];
  v11 = [v9 initWithArray:v10];

  v28 = v11;
  [v11 intersectSet:v27];
  v12 = [NSMutableSet alloc];
  v13 = [v6 allKeys];
  v14 = [v12 initWithArray:v13];

  v26 = v14;
  [v14 unionSet:v27];
  [v14 minusSet:v28];
  v15 = [v14 allObjects];
  [v29 addObjectsFromArray:v15];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v28 allObjects];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [v5 objectForKey:v20];

        if (v21)
        {
          v22 = [v6 objectForKey:v20];
          v23 = [v5 objectForKey:v20];
          v24 = [v22 isEqual:v23];

          if ((v24 & 1) == 0)
          {
            [v29 addObject:v20];
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  return v29;
}

- (void)setViewsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___PSListController__table;
  if (!a3)
  {
    v6 = [*&self->ACUIViewController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
    if ([v6 resignFirstResponder])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    lastFirstResponder = self->_lastFirstResponder;
    self->_lastFirstResponder = v7;
  }

  [*&self->ACUIViewController_opaque[v5] setUserInteractionEnabled:v3];
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
        [v14 setUserInteractionEnabled:v3];
      }
    }
  }

  if (v3)
  {
    v15 = self->_lastFirstResponder;
    if (v15)
    {

      [(UIResponder *)v15 becomeFirstResponder];
    }
  }
}

- (id)fixAccountInputValues:(id)a3
{
  v4 = a3;
  v5 = [(AccountPSDetailControllerBase *)self accountClass];
  v6 = [objc_opt_class() normalizeAccountProperties:v4 withAccountClass:v5];
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
      v13 = [v12 integerValue];

      v14 = [v9 substringToIndex:v11];

      [v6 setObject:v14 forKey:v7];
      v15 = [NSNumber numberWithInteger:v13];
      [v6 setObject:v15 forKey:MailAccountPortNumber];

      v9 = v14;
    }
  }

  if ([(objc_class *)v5 isSubclassOfClass:objc_opt_class()])
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

- (id)existingAccountForAccountValues:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:MailAccountHostname];
  if (![v5 length])
  {
    v6 = [(AccountPSDetailControllerBase *)self account];
    v7 = [v6 hostname];

    v5 = v7;
  }

  v8 = [v4 objectForKey:MFMailAccountUsername];
  v9 = [(AccountPSDetailControllerBase *)self accountClass];
  v10 = v9;
  if (!v5)
  {
    v5 = [(objc_class *)v9 hostname];
  }

  v11 = NSStringFromClass(v10);
  v12 = [(objc_class *)v10 existingAccountWithType:v11 hostname:v5 username:v8];

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

  v3 = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];

  if (!v3 || ([(AccountPSDetailControllerBase *)self accountValues], v4 = objc_claimAutoreleasedReturnValue(), [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation], v5 = objc_claimAutoreleasedReturnValue(), [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:v4 originalDictionary:v5], v8 = objc_claimAutoreleasedReturnValue(), v5, v4, !v8))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v6 = [(objc_class *)[(AccountPSDetailControllerBase *)self accountClass] propertiesWhichRequireValidation];
  v7 = [v6 intersectsSet:v8];

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
  v3 = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];

  if (v3)
  {
    v4 = [(AccountPSDetailControllerBase *)self accountValues];
    v5 = [(AccountPSDetailControllerBase *)self accountValuesAfterFailedValidation];
    v6 = [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:v4 originalDictionary:v5];

    if ([v6 count])
    {
      *(self + 184) &= ~2u;
    }
  }

  v7 = [(AccountPSDetailControllerBase *)self account];
  [v7 removeValueInAccountPropertiesForKey:MFHealAccountDateLastFetched];

  v8 = [(AccountPSDetailControllerBase *)self account];
  [v8 removeValueInAccountPropertiesForKey:MFHealAccountShouldShowAlert];

  if ((*(self + 184) & 2) != 0)
  {

    [(AccountPSDetailControllerBase *)self displaySaveAccountAnywaysAlertSheet];
  }

  else
  {
    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    v9 = [(AccountPSDetailControllerBase *)self setOfKeysForAlteredValuesInDictionary:self->_accountValues originalDictionary:self->_originalAccountValues];
    v10 = [(AccountPSDetailControllerBase *)self account];
    v11 = [objc_opt_class() propertiesWhichRequireValidation];
    v12 = [v11 intersectsSet:v9];

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
            v15 = [(AccountPSDetailControllerBase *)self account];
            v19 = 138412290;
            v20 = v15;
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

      v18 = [(AccountPSDetailControllerBase *)self account];
      [v18 setAccountPropertiesWithDictionary:v17];

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

- (void)displaySSLAlertForAccount:(id)a3 accountValidator:(id)a4
{
  v24 = a3;
  v23 = a4;
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
  v13 = v24;
  v29 = v13;
  v14 = v23;
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

- (void)handleSSLAlertForAccount:(id)a3 accountValidator:(id)a4 attemptWithoutSSL:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if (v5)
  {
    [v11 applySettingsAsDefault:self->_originalConnectionSettings];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailControllerBase *)self startValidationWithPrompt:v10];

    [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:1];
    [v8 validateAccount:v11 useSSL:0];
  }

  else
  {
    [(AccountPSDetailControllerBase *)self handleInvalidAccount:v11];
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

- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5
{
  v5 = a5;
  v28 = a3;
  v8 = a4;
  *(self + 184) &= ~1u;
  v9 = +[MFNetworkController sharedInstance];
  if ([v28 accountIsValid])
  {
    [(AccountPSDetailControllerBase *)self handleValidAccount:v8];
    goto LABEL_27;
  }

  v10 = [v28 error];
  if ([v9 isNetworkUp] & v5) != 1 || (v11 = objc_msgSend(v10, "code"), v12 = objc_msgSend(v10, "code"), v13 = objc_msgSend(v10, "code"), v14 = objc_msgSend(v10, "code"), v15 = objc_msgSend(v10, "code"), v11 == &stru_3D8.reserved1) || v12 == &stru_3D8.reserved1 + 3 || v13 == &stru_3D8.reserved2 || v14 == &stru_3D8.offset || v15 == &stru_3D8.reserved2 + 3 || objc_msgSend(v10, "code") == &stru_3D8.align + 3 || !objc_msgSend(objc_opt_class(), "isSSLEditable") || (objc_msgSend(v8, "shouldEnableAfterError:", v10))
  {
    v16 = [v10 code];
    if (v16 == &stru_3D8.offset)
    {
      v18 = MFLookupLocalizedString();
      v19 = [v8 hostname];
      v20 = [NSString stringWithFormat:v18, v19];
      [v10 setLocalizedDescription:v20];
    }

    else if (v16 == (&stru_3D8.align + 3))
    {
      v18 = MFLookupLocalizedString();
      v19 = [v8 displayName];
      v20 = [NSString stringWithFormat:v18, v19];
      [v10 setLocalizedDescription:v20];
    }

    else
    {
      if (v16 != (&stru_3D8.reserved2 + 2))
      {
        goto LABEL_19;
      }

      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"ACCOUNT_IN_USE" value:&stru_B9FC8 table:@"AccountPreferences"];

      v19 = [v8 displayName];
      v20 = [NSString stringWithFormat:v18, v19];
      [v10 setLocalizedDescription:v20];
    }

LABEL_19:
    if ([v8 shouldEnableAfterError:v10])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"GMAIL_IMAP_ACCESS_NEEDED" value:&stru_B9FC8 table:@"AccountPreferences"];

        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"GMAIL" value:&stru_B9FC8 table:@"AccountPreferences"];
        v25 = [NSString stringWithFormat:v22, v24];
        [v10 setLocalizedDescription:v25];
      }
    }

    [(AccountPSDetailControllerBase *)self setAccountValuesAfterFailedValidation:self->_accountValues];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"VERIFYING_ACCOUNT" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(AccountPSDetailControllerBase *)self stopValidationWithPrompt:v27 showButtons:1];

    [(AccountPSDetailControllerBase *)self setViewsEnabled:1];
    if ([v10 code] == &stru_3D8.reserved2 + 3)
    {
      [(AccountPSDetailControllerBase *)self _promptUserForWebLoginForAccount:v8 accountValidator:v28 error:v10];
    }

    else
    {
      [(AccountPSDetailControllerBase *)self _presentAlertForAccount:v8 accountValidator:v28 error:v10];
    }

    [(AccountPSDetailControllerBase *)self setTaskCompletionAssertionEnabled:0];
    [(AccountPSDetailControllerBase *)self handleInvalidAccount:v8];
    goto LABEL_26;
  }

  [(AccountPSDetailControllerBase *)self displaySSLAlertForAccount:v8 accountValidator:v28];
LABEL_26:

LABEL_27:
}

- (void)_promptUserForWebLoginForAccount:(id)a3 accountValidator:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 userInfo];
  v12 = [v11 objectForKey:MFRequestedWebLoginURLKey];

  if (!v12 || (v14 = _NSConcreteStackBlock, v15 = 3221225472, v16 = sub_1AC18, v17 = &unk_B8F28, v18 = self, v19 = v8, v13 = [v19 promptUserForWebLoginWithURL:v12 shouldConfirm:1 completionHandler:&v14], v19, (v13 & 1) == 0))
  {
    [(AccountPSDetailControllerBase *)self _presentAlertForAccount:v8 accountValidator:v9 error:v10, v14, v15, v16, v17, v18];
  }
}

- (void)_presentAlertForAccount:(id)a3 accountValidator:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [v6 recoveryAttempter];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 localizedRecoverySuggestion], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

  v12 = [v6 mf_shortDescription];
  v13 = [v6 localizedDescription];
  v14 = [UIAlertController alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v14 addAction:v15];

  if ((v11 & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1B020;
    v17[3] = &unk_B8F00;
    v17[4] = self;
    v18 = v7;
    v19 = v6;
    v16 = [UIAlertAction actionWithTitle:v8 style:0 handler:v17];
    [v14 addAction:v16];
  }

  [(AccountPSDetailControllerBase *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_redirectToRecoveryURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = +[UIApplication sharedApplication];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];

    v3 = v5;
  }
}

+ (id)normalizeAccountProperties:(id)a3 withAccountClass:(Class)a4
{
  v5 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1B200;
  v11 = &unk_B8F50;
  v13 = a4;
  v6 = objc_alloc_init(NSMutableDictionary);
  v12 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v8];
  if (![v6 count])
  {

    v6 = 0;
  }

  return v6;
}

@end