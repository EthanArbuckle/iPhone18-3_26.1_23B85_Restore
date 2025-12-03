@interface ACAccountStore(AppleIDAuthentication)
- (id)_primaryiCloudAccount;
- (id)aida_AppleIDAuthenticationAccounts;
- (id)aida_accountForAltDSID:()AppleIDAuthentication;
- (id)aida_accountForPrimaryiCloudAccount;
- (id)aida_accountForiCloudAccount:()AppleIDAuthentication;
- (id)aida_iCloudAccountMatchingAppleIDAuthAccount:()AppleIDAuthentication;
- (void)aida_renewCredentialsForAccount:()AppleIDAuthentication services:force:completion:;
@end

@implementation ACAccountStore(AppleIDAuthentication)

- (id)aida_accountForPrimaryiCloudAccount
{
  _primaryiCloudAccount = [self _primaryiCloudAccount];
  v3 = [self aida_accountForiCloudAccount:_primaryiCloudAccount];

  return v3;
}

- (id)_primaryiCloudAccount
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [self accountsWithAccountType:v2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 accountPropertyForKey:{@"primaryAccount", v14}];
        bOOLValue = [v9 BOOLValue];

        if (bOOLValue)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)aida_AppleIDAuthenticationAccounts
{
  aida_AppleIDAuthenticationAccountType = [self aida_AppleIDAuthenticationAccountType];
  v3 = [self accountsWithAccountType:aida_AppleIDAuthenticationAccountType];

  return v3;
}

- (id)aida_accountForiCloudAccount:()AppleIDAuthentication
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  aida_alternateDSID = [v19 aida_alternateDSID];
  [self aida_AppleIDAuthenticationAccounts];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        aida_alternateDSID2 = [v9 aida_alternateDSID];
        if ([aida_alternateDSID2 isEqualToString:aida_alternateDSID])
        {
          goto LABEL_14;
        }

        v11 = [v9 accountPropertyForKey:@"adsid"];
        if ([v11 isEqualToString:aida_alternateDSID])
        {

LABEL_14:
LABEL_15:
          v15 = v9;
          goto LABEL_16;
        }

        username = [v9 username];
        username2 = [v19 username];
        v14 = [username isEqualToString:username2];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)aida_accountForAltDSID:()AppleIDAuthentication
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self aida_AppleIDAuthenticationAccounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        aida_alternateDSID = [v10 aida_alternateDSID];
        if ([aida_alternateDSID isEqualToString:v4])
        {

LABEL_13:
          v14 = v10;
          goto LABEL_14;
        }

        v12 = [v10 accountPropertyForKey:@"adsid"];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)aida_iCloudAccountMatchingAppleIDAuthAccount:()AppleIDAuthentication
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 accountPropertyForKey:@"altDSID"];
  if (!v5)
  {
    v6 = [v4 accountPropertyForKey:@"adsid"];
  }

  v7 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [self accountsWithAccountType:v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = v4;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 accountPropertyForKey:@"altDSID"];
        v15 = [v14 isEqual:v5];

        if (v15)
        {
          v16 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_13:
    v4 = v19;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)aida_renewCredentialsForAccount:()AppleIDAuthentication services:force:completion:
{
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E6959AA8];
  v18[0] = @"Services";
  v18[1] = v10;
  v19[0] = a4;
  v11 = MEMORY[0x1E696AD98];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v11 numberWithBool:a5];
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  [self renewCredentialsForAccount:v14 options:v16 completion:v12];
  v17 = *MEMORY[0x1E69E9840];
}

@end