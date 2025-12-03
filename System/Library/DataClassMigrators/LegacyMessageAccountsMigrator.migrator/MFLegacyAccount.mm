@interface MFLegacyAccount
+ (BOOL)_isActiveWithLegacyProperties:(id)properties;
+ (id)_copyLegacyAccountsWithAccountSettings:(id)settings allowedLegacyAccountTypes:(id)types;
+ (id)legacyAccountsWithAccountSettings:(id)settings;
- (BOOL)_isActive;
- (BOOL)_isMailAccountClass:(id)class;
- (BOOL)isValidDefaultSendingAccount;
- (MFLegacyAccount)initWithLegacyProperties:(id)properties allowedLegacyAccountTypes:(id)types;
- (id)_accountTypeIdentifier;
- (id)description;
- (id)performMigrationWithAccountStore:(id)store;
- (void)_configurePersistentAccount:(id)account withParentAccount:(id)parentAccount;
- (void)_setActiveForAccount:(id)account;
@end

@implementation MFLegacyAccount

- (MFLegacyAccount)initWithLegacyProperties:(id)properties allowedLegacyAccountTypes:(id)types
{
  propertiesCopy = properties;
  typesCopy = types;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [propertiesCopy objectForKeyedSubscript:kASSAccountType];
    if ([typesCopy count] && v8 && (objc_msgSend(typesCopy, "containsObject:", v8) & 1) == 0)
    {
      selfCopy = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = MFLegacyAccount;
      selfCopy = [(MFLegacyAccount *)&v13 init];
      if (selfCopy)
      {
        v10 = [propertiesCopy copy];
        legacyProperties = selfCopy->_legacyProperties;
        selfCopy->_legacyProperties = v10;

        self = selfCopy;
        selfCopy = self;
      }

      else
      {
        self = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)performMigrationWithAccountStore:(id)store
{
  storeCopy = store;
  v5 = storeCopy;
  p_migratedAccount = &self->_migratedAccount;
  migratedAccount = self->_migratedAccount;
  if (migratedAccount)
  {
    v8 = migratedAccount;
    goto LABEL_26;
  }

  if (!self->_parentAccountIdentifier)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = [storeCopy accountWithIdentifier:?];
  if (v9)
  {
LABEL_9:
    v10 = self->_legacyProperties;
    _accountTypeIdentifier = [(MFLegacyAccount *)self _accountTypeIdentifier];
    v21 = _accountTypeIdentifier;
    if (_accountTypeIdentifier)
    {
      v12 = [v5 accountTypeWithAccountTypeIdentifier:{_accountTypeIdentifier, _accountTypeIdentifier}];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(NSDictionary *)v10 objectForKeyedSubscript:kASSAccountIdentifier, v21];
    v23 = [(NSDictionary *)v10 objectForKeyedSubscript:kASSAccountType];
    if (v12)
    {
      v14 = [(NSDictionary *)v10 mutableCopy];
      [v14 removeObjectForKey:kASSAccountSyncIdentifier];
      [v14 removeObjectForKey:kASSAccountTypeString];
      [v14 removeObjectForKey:kASSAccountShortTypeString];
      [v14 removeObjectForKey:@"IsActive"];
      v15 = [v5 accountWithIdentifier:v13];
      if (v15 || (createACAccountWithASAccountPropertiesAndACAccountType(), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        parentAccount = [v15 parentAccount];

        if (!parentAccount)
        {
          [(MFLegacyAccount *)self _setActiveForAccount:v15];
        }

        [(MFLegacyAccount *)self _configurePersistentAccount:v15 withParentAccount:v9];
        v17 = dispatch_semaphore_create(0);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v29 = 1;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1A30;
        v24[3] = &unk_82B8;
        v18 = v15;
        v25 = v18;
        v27 = buf;
        v19 = v17;
        v26 = v19;
        [v5 saveVerifiedAccount:v18 withCompletionHandler:v24];
        dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
        if (*(*&buf[8] + 24) == 1)
        {
          objc_storeStrong(p_migratedAccount, v15);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v18 = 0;
      }

      v8 = *p_migratedAccount;
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "No account type for account %@ with type %@, skipping migration", buf, 0x16u);
      }

      v8 = 0;
    }

    goto LABEL_25;
  }

  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_29EC(&self->_parentAccountIdentifier, v9);
  }

  v8 = 0;
LABEL_25:

LABEL_26:

  return v8;
}

- (id)_accountTypeIdentifier
{
  v3 = kASSMailAccountType;
  v10[0] = kASSSMTPAccountType;
  v10[1] = kASSMailAccountType;
  v10[2] = kASSGmailAccountType;
  v10[3] = kASSYahooAccountType;
  v10[4] = kASSCastleIMAPAccountType;
  v4 = [NSArray arrayWithObjects:v10 count:5];
  v5 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountType];
  if (([v4 containsObject:v5] & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([v5 isEqualToString:v3])
  {
    if ([(MFLegacyAccount *)self _isMailAccountClass:@"POPAccount"])
    {
      v6 = &ACAccountTypeIdentifierPOP;
LABEL_9:
      v7 = *v6;
      goto LABEL_10;
    }

    if (![(MFLegacyAccount *)self _isMailAccountClass:@"LocalAccount"])
    {
      v6 = &ACAccountTypeIdentifierIMAP;
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = ACAccountTypeIdentifierForASSAccountType();
LABEL_10:
  v8 = v7;
LABEL_11:

  return v8;
}

- (void)_setActiveForAccount:(id)account
{
  accountCopy = account;
  _isActive = [(MFLegacyAccount *)self _isActive];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  if ([ACAccountTypeIdentifierSMTP isEqualToString:identifier])
  {
    [accountCopy setActive:_isActive];
  }

  else
  {
    v7 = kAccountDataclassMail;
    if (_isActive != [accountCopy isEnabledForDataclass:kAccountDataclassMail])
    {
      [accountCopy setEnabled:_isActive forDataclass:v7];
    }
  }
}

- (void)_configurePersistentAccount:(id)account withParentAccount:(id)parentAccount
{
  accountCopy = account;
  parentAccountCopy = parentAccount;
  if (parentAccountCopy)
  {
    [accountCopy setParentAccount:parentAccountCopy];
    accountType = [parentAccountCopy accountType];
    identifier = [accountType identifier];
    v8 = [ACAccountTypeIdentifierAppleAccount isEqualToString:identifier];

    if (v8)
    {
      [accountCopy setAuthenticationType:kAccountAuthenticationTypeParent];
    }
  }
}

+ (id)legacyAccountsWithAccountSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_alloc_init(NSMutableArray);
  v12[0] = kASSSMTPAccountType;
  v12[1] = kASSMailAccountType;
  v12[2] = kASSGmailAccountType;
  v12[3] = kASSYahooAccountType;
  v12[4] = kASSCastleIMAPAccountType;
  v6 = [NSArray arrayWithObjects:v12 count:5];
  v7 = [self _copyLegacyAccountsWithAccountSettings:settingsCopy allowedLegacyAccountTypes:v6];
  if ([v7 count])
  {
    [v5 addObjectsFromArray:v7];
  }

  v11 = kASSExchangeAccountType;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [self _copyLegacyAccountsWithAccountSettings:settingsCopy allowedLegacyAccountTypes:v8];
  if ([v9 count])
  {
    [v5 addObjectsFromArray:v9];
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

+ (id)_copyLegacyAccountsWithAccountSettings:(id)settings allowedLegacyAccountTypes:(id)types
{
  settingsCopy = settings;
  typesCopy = types;
  v19 = settingsCopy;
  if (settingsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      settingsCopy = objc_alloc_init(NSMutableArray);
      [v19 objectForKeyedSubscript:kASSPlistAccountsKey];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      obj = v33 = 0u;
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v24)
      {
        v23 = *v33;
        v22 = kASSAccountIdentifier;
        v21 = kASSAccountChildAccounts;
        do
        {
          v27 = 0;
          do
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v32 + 1) + 8 * v27);
            v8 = [[MFLegacyAccount alloc] initWithLegacyProperties:v7 allowedLegacyAccountTypes:typesCopy];
            v26 = v8;
            if (v8)
            {
              [settingsCopy addObject:v8];
            }

            v9 = [v7 objectForKeyedSubscript:{v22, v19}];
            v10 = [objc_opt_class() _isActiveWithLegacyProperties:v7];
            if (v9)
            {
              v11 = v10;
              v25 = [v7 objectForKeyedSubscript:v21];
              if (v25)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = 0u;
                  v31 = 0u;
                  v28 = 0u;
                  v29 = 0u;
                  v12 = v25;
                  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
                  if (v13)
                  {
                    v14 = *v29;
                    do
                    {
                      v15 = 0;
                      do
                      {
                        if (*v29 != v14)
                        {
                          objc_enumerationMutation(v12);
                        }

                        v16 = [[MFLegacyAccount alloc] initWithLegacyProperties:*(*(&v28 + 1) + 8 * v15) allowedLegacyAccountTypes:typesCopy];
                        v17 = v16;
                        if (v16)
                        {
                          [(MFLegacyAccount *)v16 setParentAccountIdentifier:v9];
                          [(MFLegacyAccount *)v17 setParentAccountIsActive:v11];
                          [settingsCopy addObject:v17];
                        }

                        v15 = v15 + 1;
                      }

                      while (v13 != v15);
                      v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
                    }

                    while (v13);
                  }
                }
              }
            }

            v27 = v27 + 1;
          }

          while (v27 != v24);
          v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v24);
      }
    }

    else
    {
      settingsCopy = 0;
    }
  }

  return settingsCopy;
}

- (BOOL)isValidDefaultSendingAccount
{
  v10[0] = kASSMailAccountType;
  v10[1] = kASSGmailAccountType;
  v10[2] = kASSYahooAccountType;
  v10[3] = kASSCastleIMAPAccountType;
  v10[4] = kASSExchangeAccountType;
  v3 = [NSArray arrayWithObjects:v10 count:5];
  v4 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountType];
  if (self->_parentAccountIdentifier)
  {
    parentAccountIsActive = self->_parentAccountIsActive;
  }

  else
  {
    parentAccountIsActive = [(MFLegacyAccount *)self _isActive];
  }

  if ([v3 containsObject:v4] && !-[MFLegacyAccount _isMailAccountClass:](self, "_isMailAccountClass:", @"LocalAccount") && parentAccountIsActive)
  {
    v7 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:MFMailAccountRestrictSendingFromExternalProcesses];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_isMailAccountClass:(id)class
{
  classCopy = class;
  v5 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountType];
  v6 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountClass];
  if ([v5 isEqualToString:kASSMailAccountType])
  {
    v7 = [v6 isEqualToString:classCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isActive
{
  v3 = objc_opt_class();
  legacyProperties = self->_legacyProperties;

  return [v3 _isActiveWithLegacyProperties:legacyProperties];
}

+ (BOOL)_isActiveWithLegacyProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"IsActive"];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v6 = [propertiesCopy objectForKeyedSubscript:kASSAccountType];
    if ([kASSSMTPAccountType isEqualToString:v6])
    {
      bOOLValue = 1;
    }

    else
    {
      v7 = [propertiesCopy objectForKeyedSubscript:kASSAccountEnabledDataclasses];
      bOOLValue = [v7 containsObject:kAccountDataclassMail];
    }
  }

  return bOOLValue;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountIdentifier];
  v6 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountDisplayName];
  v7 = [(NSDictionary *)self->_legacyProperties objectForKeyedSubscript:kASSAccountType];
  v8 = [NSString stringWithFormat:@"<%@:%p identifier:%@ description:%@ type:%@>", v4, self, v5, v6, v7];

  return v8;
}

@end