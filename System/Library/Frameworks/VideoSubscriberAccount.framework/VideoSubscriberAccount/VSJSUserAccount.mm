@interface VSJSUserAccount
+ (id)jsUserAccountsFromUserAccounts:(id)a3;
+ (id)userAccountsFromJSUserAccounts:(id)a3;
- (VSJSUserAccount)initWithUserAccount:(id)a3;
- (id)userAccount;
- (id)userAccountForProviderID:(id)a3 allowedBundleIDs:(id)a4;
@end

@implementation VSJSUserAccount

- (VSJSUserAccount)initWithUserAccount:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = VSJSUserAccount;
  v6 = [(VSJSObject *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingUserAccount, a3);
    v8 = [v5 updateURL];
    v9 = [v8 absoluteString];
    v10 = [v9 copy];
    updateURL = v7->_updateURL;
    v7->_updateURL = v10;

    v7->_requiresSystemTrust = [v5 requiresSystemTrust];
    if (![v5 sourceType])
    {
      v12 = [v5 sourceIdentifier];
      v13 = [v12 copy];
      bundleId = v7->_bundleId;
      v7->_bundleId = v13;
    }

    v15 = [v5 identifier];
    v16 = [v15 copy];
    identifier = v7->_identifier;
    v7->_identifier = v16;

    v7->_accountType = [v5 accountType];
    v7->_signedOut = [v5 isSignedOut];
    v18 = [v5 subscriptionBillingCycleEndDate];
    v19 = [v18 copy];
    subscriptionBillingCycleEndDate = v7->_subscriptionBillingCycleEndDate;
    v7->_subscriptionBillingCycleEndDate = v19;

    v21 = [v5 tierIdentifiers];
    v22 = [v21 copy];
    tierIdentifiers = v7->_tierIdentifiers;
    v7->_tierIdentifiers = v22;

    v24 = [v5 billingIdentifier];
    v25 = [v24 copy];
    billingIdentifier = v7->_billingIdentifier;
    v7->_billingIdentifier = v25;

    v27 = [v5 authenticationData];
    v28 = [v27 copy];
    authenticationData = v7->_authenticationData;
    v7->_authenticationData = v28;

    v7->_deviceCategory = [v5 deviceCategory];
    v30 = [v5 appleSubscription];
    if (v30)
    {
      v31 = [VSJSAppleSubscription alloc];
      v32 = [v30 copy];
      v33 = [(VSJSAppleSubscription *)v31 initWithAppleSubscription:v32];
      appleSubscription = v7->_appleSubscription;
      v7->_appleSubscription = v33;
    }
  }

  return v7;
}

- (id)userAccount
{
  v3 = [(VSJSUserAccount *)self bundleId];
  if (v3)
  {
    v4 = [(VSJSUserAccount *)self updateURL];
    if (v4)
    {
      v5 = MEMORY[0x277CBEBC0];
      v6 = [(VSJSUserAccount *)self updateURL];

      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
      }

      v7 = [(VSJSUserAccount *)self updateURL];
      v8 = [v5 URLWithString:v7];

      if (!v8)
      {
        v8 = VSErrorLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(VSJSUserAccount *)v8 userAccount:v9];
        }

        v16 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = [[VSUserAccount alloc] initWithAccountType:[(VSJSUserAccount *)self accountType] updateURL:v8 sourceType:0 sourceIdentifier:v3];
    v24 = [(VSJSUserAccount *)self identifier];
    v25 = [v24 copy];
    [(VSUserAccount *)v16 setIdentifier:v25];

    [(VSUserAccount *)v16 setSignedOut:[(VSJSUserAccount *)self isSignedOut]];
    v26 = [(VSJSUserAccount *)self subscriptionBillingCycleEndDate];
    v27 = [v26 copy];
    [(VSUserAccount *)v16 setSubscriptionBillingCycleEndDate:v27];

    v28 = [(VSJSUserAccount *)self tierIdentifiers];
    v29 = [v28 copy];
    [(VSUserAccount *)v16 setTierIdentifiers:v29];

    v30 = [(VSJSUserAccount *)self billingIdentifier];
    v31 = [v30 copy];
    [(VSUserAccount *)v16 setBillingIdentifier:v31];

    v32 = [(VSJSUserAccount *)self authenticationData];
    v33 = [v32 copy];
    [(VSUserAccount *)v16 setAuthenticationData:v33];

    v34 = [(VSJSUserAccount *)self appleSubscription];
    v35 = [v34 appleSubscription];
    v36 = [v35 copy];
    [(VSUserAccount *)v16 setAppleSubscription:v36];

LABEL_14:
    goto LABEL_15;
  }

  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(VSJSUserAccount *)v4 userAccount:v17];
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (id)userAccountForProviderID:(id)a3 allowedBundleIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSJSUserAccount *)self bundleId];
  v9 = [(VSJSUserAccount *)self bundleId];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [(VSJSUserAccount *)self bundleId];

  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self bundleId] parameter must not be nil."];
  }

  v12 = [(VSJSUserAccount *)self bundleId];
  v13 = [v7 containsObject:v12];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
LABEL_6:
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "JS User Account with no bundle ID, setting source type to VSUserAccountSourceTypeProvider", v43, 2u);
    }

    v16 = v6;
    v14 = 2;
    v8 = v16;
  }

  v17 = [(VSJSUserAccount *)self updateURL];

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBEBC0];
  v19 = [(VSJSUserAccount *)self updateURL];

  if (!v19)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
  }

  v20 = [(VSJSUserAccount *)self updateURL];
  v17 = [v18 URLWithString:v20];

  if (!v17)
  {
    v17 = VSErrorLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(VSJSUserAccount *)v17 userAccount:v35];
    }

    v21 = 0;
  }

  else
  {
LABEL_13:
    v21 = [[VSUserAccount alloc] initWithAccountType:[(VSJSUserAccount *)self accountType] updateURL:v17 sourceType:v14 sourceIdentifier:v8];
    v22 = [(VSJSUserAccount *)self identifier];
    v23 = [v22 copy];
    [(VSUserAccount *)v21 setIdentifier:v23];

    [(VSUserAccount *)v21 setSignedOut:[(VSJSUserAccount *)self isSignedOut]];
    v24 = [(VSJSUserAccount *)self subscriptionBillingCycleEndDate];
    v25 = [v24 copy];
    [(VSUserAccount *)v21 setSubscriptionBillingCycleEndDate:v25];

    v26 = [(VSJSUserAccount *)self tierIdentifiers];
    v27 = [v26 copy];
    [(VSUserAccount *)v21 setTierIdentifiers:v27];

    v28 = [(VSJSUserAccount *)self billingIdentifier];
    v29 = [v28 copy];
    [(VSUserAccount *)v21 setBillingIdentifier:v29];

    v30 = [(VSJSUserAccount *)self authenticationData];
    v31 = [v30 copy];
    [(VSUserAccount *)v21 setAuthenticationData:v31];

    v32 = [(VSJSUserAccount *)self appleSubscription];
    v33 = [v32 appleSubscription];
    v34 = [v33 copy];
    [(VSUserAccount *)v21 setAppleSubscription:v34];
  }

  return v21;
}

+ (id)userAccountsFromJSUserAccounts:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) userAccount];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)jsUserAccountsFromUserAccounts:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc(objc_opt_class());
        v12 = [v11 initWithUserAccount:{v10, v14}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end