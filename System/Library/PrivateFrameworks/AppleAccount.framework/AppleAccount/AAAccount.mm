@interface AAAccount
+ (id)accountTypeString;
- (AAAccount)init;
- (AAAccount)initWithAccount:(id)account;
- (AAAccount)initWithAccountIdentifier:(id)identifier;
- (BOOL)isProvisionedForDataclass:(id)dataclass;
- (BOOL)needsEmailConfiguration;
- (BOOL)needsRegistration;
- (BOOL)needsToVerifyTerms;
- (BOOL)presentQuotaDepletionAlertForDataclassIfNecessary:(id)necessary withHandler:(id)handler;
- (BOOL)primaryAccount;
- (BOOL)primaryEmailVerified;
- (BOOL)serviceUnavailable;
- (BOOL)useCellularForDataclass:(id)dataclass;
- (NSArray)supportedDataclasses;
- (NSDictionary)accountFirstDisplayAlert;
- (NSDictionary)accountFooterButton;
- (NSDictionary)serviceUnavailableInfo;
- (NSString)accountFooterText;
- (NSString)authToken;
- (NSString)password;
- (id)_mailChildAccount;
- (id)propertiesForDataclass:(id)dataclass;
- (void)authenticateWithHandler:(id)handler;
- (void)notifyUserOfQuotaDepletion;
- (void)presentQuotaDepletionAlertForDataclass:(id)dataclass withHandler:(id)handler;
- (void)renewCredentialsForAppleIDWithHandler:(id)handler;
- (void)setAuthToken:(id)token;
- (void)setPassword:(id)password;
- (void)setUseCellular:(BOOL)cellular forDataclass:(id)dataclass;
- (void)updateAccountPropertiesWithHandler:(id)handler;
- (void)updateAccountWithProvisioningResponse:(id)response;
@end

@implementation AAAccount

- (AAAccount)init
{
  v8.receiver = self;
  v8.super_class = AAAccount;
  v2 = [(AAAccount *)&v8 init];
  if (v2)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v4 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
    v5 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v4];
    account = v2->_account;
    v2->_account = v5;
  }

  return v2;
}

- (AAAccount)initWithAccountIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E6959A48];
  identifierCopy = identifier;
  defaultStore = [v4 defaultStore];
  v7 = [defaultStore accountWithIdentifier:identifierCopy];

  if (v7)
  {
    v11.receiver = self;
    v11.super_class = AAAccount;
    v8 = [(AAAccount *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_account, v7);
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (AAAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAAccount;
  v6 = [(AAAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

+ (id)accountTypeString
{
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v3 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  accountTypeDescription = [v3 accountTypeDescription];

  return accountTypeDescription;
}

- (BOOL)primaryAccount
{
  v2 = [(ACAccount *)self->_account accountPropertyForKey:@"primaryAccount"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)primaryEmailVerified
{
  v2 = [(ACAccount *)self->_account accountPropertyForKey:@"primaryEmailVerified"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)authToken
{
  credential = [(ACAccount *)self->_account credential];
  token = [credential token];

  return token;
}

- (void)setAuthToken:(id)token
{
  tokenCopy = token;
  credential = [(ACAccount *)self->_account credential];
  token = [credential token];
  v6 = [tokenCopy isEqualToString:token];

  if ((v6 & 1) == 0)
  {
    credential2 = [(ACAccount *)self->_account credential];

    if (credential2)
    {
      credential3 = [(ACAccount *)self->_account credential];
      [credential3 setToken:tokenCopy];
    }

    else
    {
      credential3 = objc_alloc_init(MEMORY[0x1E6959A30]);
      [credential3 setToken:tokenCopy];
      [(ACAccount *)self->_account setCredential:credential3];
    }

    [(ACAccount *)self->_account setAuthenticated:1];
  }
}

- (NSString)password
{
  credential = [(ACAccount *)self->_account credential];
  password = [credential password];

  return password;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  credential = [(ACAccount *)self->_account credential];
  password = [credential password];
  v6 = [passwordCopy isEqualToString:password];

  if ((v6 & 1) == 0)
  {
    credential2 = [(ACAccount *)self->_account credential];

    if (credential2)
    {
      credential3 = [(ACAccount *)self->_account credential];
      [credential3 setPassword:passwordCopy];
    }

    else
    {
      credential3 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:passwordCopy];
      [(ACAccount *)self->_account setCredential:credential3];
    }

    [(ACAccount *)self->_account setAuthenticated:1];
  }
}

- (NSString)accountFooterText
{
  v2 = [(AAAccount *)self propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"accountFooterText"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)accountFooterButton
{
  v2 = [(AAAccount *)self propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"accountFooterButton"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)accountFirstDisplayAlert
{
  v2 = [(AAAccount *)self propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"firstDisplayAlert"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isProvisionedForDataclass:(id)dataclass
{
  account = self->_account;
  dataclassCopy = dataclass;
  provisionedDataclasses = [(ACAccount *)account provisionedDataclasses];
  v6 = [provisionedDataclasses containsObject:dataclassCopy];

  return v6;
}

- (id)propertiesForDataclass:(id)dataclass
{
  account = self->_account;
  dataclassCopy = dataclass;
  dataclassProperties = [(ACAccount *)account dataclassProperties];
  v6 = [dataclassProperties objectForKey:dataclassCopy];

  return v6;
}

- (void)updateAccountWithProvisioningResponse:(id)response
{
  responseCopy = response;
  account = [(AAAccount *)self account];
  [account aa_updateWithProvisioningResponse:responseCopy];
}

- (BOOL)serviceUnavailable
{
  v2 = [(AAAccount *)self propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"notAvailable"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)serviceUnavailableInfo
{
  v2 = [(AAAccount *)self propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"notAvailable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)needsRegistration
{
  dataclassProperties = [(AAAccount *)self dataclassProperties];
  if (dataclassProperties)
  {
    personID = [(AAAccount *)self personID];
    v5 = personID == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)useCellularForDataclass:(id)dataclass
{
  account = self->_account;
  dataclassCopy = dataclass;
  v5 = [(ACAccount *)account accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v6 = [v5 containsObject:dataclassCopy];

  return v6 ^ 1;
}

- (void)setUseCellular:(BOOL)cellular forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v6 = [(ACAccount *)self->_account accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (cellular)
  {
    [v7 removeObject:dataclassCopy];
  }

  else
  {
    [v7 addObject:dataclassCopy];
  }

  [(AAAccount *)self setAccountProperty:v7 forKey:@"dataclassesDisabledForCellular"];
}

- (id)_mailChildAccount
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AAAccount *)self isProvisionedForDataclass:*MEMORY[0x1E6959B28]])
  {
    [(ACAccount *)self->_account childAccounts];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v18 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      v7 = *MEMORY[0x1E6959898];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          accountType = [v9 accountType];
          identifier = [accountType identifier];

          if ([identifier isEqualToString:v7])
          {
            v12 = v9;

            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)needsEmailConfiguration
{
  v3 = *MEMORY[0x1E6959B28];
  if (![(AAAccount *)self isProvisionedForDataclass:*MEMORY[0x1E6959B28]])
  {
    return 0;
  }

  _mailChildAccount = [(AAAccount *)self _mailChildAccount];

  if (_mailChildAccount)
  {
    return 0;
  }

  v7 = [(AAAccount *)self propertiesForDataclass:v3];
  v8 = v7;
  if (v7)
  {
    allKeys = [v7 allKeys];
    v5 = [allKeys count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NSArray)supportedDataclasses
{
  account = [(AAAccount *)self account];
  accountType = [account accountType];
  supportedDataclasses = [accountType supportedDataclasses];
  allObjects = [supportedDataclasses allObjects];

  return allObjects;
}

- (void)notifyUserOfQuotaDepletion
{
  v2 = objc_alloc_init(AAQuotaDepletionAlert);
  [(AAQuotaDepletionAlert *)v2 showWithHandler:0];
}

- (void)presentQuotaDepletionAlertForDataclass:(id)dataclass withHandler:(id)handler
{
  handlerCopy = handler;
  dataclassCopy = dataclass;
  v7 = [[AAQuotaDepletionAlert alloc] initForDataclass:dataclassCopy];

  [v7 showWithHandler:handlerCopy];
}

- (BOOL)presentQuotaDepletionAlertForDataclassIfNecessary:(id)necessary withHandler:(id)handler
{
  handlerCopy = handler;
  necessaryCopy = necessary;
  v7 = [[AAQuotaDepletionAlert alloc] initForDataclass:necessaryCopy];

  LOBYTE(necessaryCopy) = [v7 showIfNecessaryWithHandler:handlerCopy];
  return necessaryCopy;
}

- (void)updateAccountPropertiesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AAAccount_updateAccountPropertiesWithHandler___block_invoke;
  v7[3] = &unk_1E7C9BC78;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __48__AAAccount_updateAccountPropertiesWithHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) account];
  v2 = [v4 accountStore];
  v3 = [*(a1 + 32) account];
  [v2 aa_updatePropertiesForAppleAccount:v3 completion:*(a1 + 40)];
}

- (void)authenticateWithHandler:(id)handler
{
  handlerCopy = handler;
  account = [(AAAccount *)self account];
  accountStore = [account accountStore];
  account2 = [(AAAccount *)self account];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AAAccount_authenticateWithHandler___block_invoke;
  v9[3] = &unk_1E7C9C880;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [accountStore verifyCredentialsForAccount:account2 saveWhenAuthorized:0 withHandler:v9];
}

- (void)renewCredentialsForAppleIDWithHandler:(id)handler
{
  handlerCopy = handler;
  account = [(AAAccount *)self account];
  accountStore = [account accountStore];
  account2 = [(AAAccount *)self account];
  [accountStore renewCredentialsForAccount:account2 force:0 reason:0 completion:handlerCopy];
}

- (BOOL)needsToVerifyTerms
{
  v2 = [(AAAccount *)self accountPropertyForKey:@"needsToVerifyTerms"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end