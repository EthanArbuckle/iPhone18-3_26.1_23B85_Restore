@interface AAAccount
+ (id)accountTypeString;
- (AAAccount)init;
- (AAAccount)initWithAccount:(id)a3;
- (AAAccount)initWithAccountIdentifier:(id)a3;
- (BOOL)isProvisionedForDataclass:(id)a3;
- (BOOL)needsEmailConfiguration;
- (BOOL)needsRegistration;
- (BOOL)needsToVerifyTerms;
- (BOOL)presentQuotaDepletionAlertForDataclassIfNecessary:(id)a3 withHandler:(id)a4;
- (BOOL)primaryAccount;
- (BOOL)primaryEmailVerified;
- (BOOL)serviceUnavailable;
- (BOOL)useCellularForDataclass:(id)a3;
- (NSArray)supportedDataclasses;
- (NSDictionary)accountFirstDisplayAlert;
- (NSDictionary)accountFooterButton;
- (NSDictionary)serviceUnavailableInfo;
- (NSString)accountFooterText;
- (NSString)authToken;
- (NSString)password;
- (id)_mailChildAccount;
- (id)propertiesForDataclass:(id)a3;
- (void)authenticateWithHandler:(id)a3;
- (void)notifyUserOfQuotaDepletion;
- (void)presentQuotaDepletionAlertForDataclass:(id)a3 withHandler:(id)a4;
- (void)renewCredentialsForAppleIDWithHandler:(id)a3;
- (void)setAuthToken:(id)a3;
- (void)setPassword:(id)a3;
- (void)setUseCellular:(BOOL)a3 forDataclass:(id)a4;
- (void)updateAccountPropertiesWithHandler:(id)a3;
- (void)updateAccountWithProvisioningResponse:(id)a3;
@end

@implementation AAAccount

- (AAAccount)init
{
  v8.receiver = self;
  v8.super_class = AAAccount;
  v2 = [(AAAccount *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
    v4 = [v3 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
    v5 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v4];
    account = v2->_account;
    v2->_account = v5;
  }

  return v2;
}

- (AAAccount)initWithAccountIdentifier:(id)a3
{
  v4 = MEMORY[0x1E6959A48];
  v5 = a3;
  v6 = [v4 defaultStore];
  v7 = [v6 accountWithIdentifier:v5];

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

- (AAAccount)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAAccount;
  v6 = [(AAAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

+ (id)accountTypeString
{
  v2 = [MEMORY[0x1E6959A48] defaultStore];
  v3 = [v2 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  v4 = [v3 accountTypeDescription];

  return v4;
}

- (BOOL)primaryAccount
{
  v2 = [(ACAccount *)self->_account accountPropertyForKey:@"primaryAccount"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)primaryEmailVerified
{
  v2 = [(ACAccount *)self->_account accountPropertyForKey:@"primaryEmailVerified"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)authToken
{
  v2 = [(ACAccount *)self->_account credential];
  v3 = [v2 token];

  return v3;
}

- (void)setAuthToken:(id)a3
{
  v9 = a3;
  v4 = [(ACAccount *)self->_account credential];
  v5 = [v4 token];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(ACAccount *)self->_account credential];

    if (v7)
    {
      v8 = [(ACAccount *)self->_account credential];
      [v8 setToken:v9];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E6959A30]);
      [v8 setToken:v9];
      [(ACAccount *)self->_account setCredential:v8];
    }

    [(ACAccount *)self->_account setAuthenticated:1];
  }
}

- (NSString)password
{
  v2 = [(ACAccount *)self->_account credential];
  v3 = [v2 password];

  return v3;
}

- (void)setPassword:(id)a3
{
  v9 = a3;
  v4 = [(ACAccount *)self->_account credential];
  v5 = [v4 password];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(ACAccount *)self->_account credential];

    if (v7)
    {
      v8 = [(ACAccount *)self->_account credential];
      [v8 setPassword:v9];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:v9];
      [(ACAccount *)self->_account setCredential:v8];
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

- (BOOL)isProvisionedForDataclass:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(ACAccount *)account provisionedDataclasses];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)propertiesForDataclass:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(ACAccount *)account dataclassProperties];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)updateAccountWithProvisioningResponse:(id)a3
{
  v4 = a3;
  v5 = [(AAAccount *)self account];
  [v5 aa_updateWithProvisioningResponse:v4];
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
  v3 = [(AAAccount *)self dataclassProperties];
  if (v3)
  {
    v4 = [(AAAccount *)self personID];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)useCellularForDataclass:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(ACAccount *)account accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (void)setUseCellular:(BOOL)a3 forDataclass:(id)a4
{
  v8 = a4;
  v6 = [(ACAccount *)self->_account accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a3)
  {
    [v7 removeObject:v8];
  }

  else
  {
    [v7 addObject:v8];
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
          v10 = [v9 accountType];
          v11 = [v10 identifier];

          if ([v11 isEqualToString:v7])
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

  v4 = [(AAAccount *)self _mailChildAccount];

  if (v4)
  {
    return 0;
  }

  v7 = [(AAAccount *)self propertiesForDataclass:v3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 allKeys];
    v5 = [v9 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NSArray)supportedDataclasses
{
  v2 = [(AAAccount *)self account];
  v3 = [v2 accountType];
  v4 = [v3 supportedDataclasses];
  v5 = [v4 allObjects];

  return v5;
}

- (void)notifyUserOfQuotaDepletion
{
  v2 = objc_alloc_init(AAQuotaDepletionAlert);
  [(AAQuotaDepletionAlert *)v2 showWithHandler:0];
}

- (void)presentQuotaDepletionAlertForDataclass:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AAQuotaDepletionAlert alloc] initForDataclass:v6];

  [v7 showWithHandler:v5];
}

- (BOOL)presentQuotaDepletionAlertForDataclassIfNecessary:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AAQuotaDepletionAlert alloc] initForDataclass:v6];

  LOBYTE(v6) = [v7 showIfNecessaryWithHandler:v5];
  return v6;
}

- (void)updateAccountPropertiesWithHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AAAccount_updateAccountPropertiesWithHandler___block_invoke;
  v7[3] = &unk_1E7C9BC78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__AAAccount_updateAccountPropertiesWithHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) account];
  v2 = [v4 accountStore];
  v3 = [*(a1 + 32) account];
  [v2 aa_updatePropertiesForAppleAccount:v3 completion:*(a1 + 40)];
}

- (void)authenticateWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(AAAccount *)self account];
  v6 = [v5 accountStore];
  v7 = [(AAAccount *)self account];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AAAccount_authenticateWithHandler___block_invoke;
  v9[3] = &unk_1E7C9C880;
  v10 = v4;
  v8 = v4;
  [v6 verifyCredentialsForAccount:v7 saveWhenAuthorized:0 withHandler:v9];
}

- (void)renewCredentialsForAppleIDWithHandler:(id)a3
{
  v4 = a3;
  v7 = [(AAAccount *)self account];
  v5 = [v7 accountStore];
  v6 = [(AAAccount *)self account];
  [v5 renewCredentialsForAccount:v6 force:0 reason:0 completion:v4];
}

- (BOOL)needsToVerifyTerms
{
  v2 = [(AAAccount *)self accountPropertyForKey:@"needsToVerifyTerms"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end