@interface VSApplicationUserAccount
+ (id)applicationUserAccountsFromUserAccounts:(id)a3;
+ (id)userAccountsFromApplicationUserAccounts:(id)a3 ForProviderID:(id)a4 allowedBundleIDs:(id)a5;
- (VSApplicationUserAccount)init;
- (VSApplicationUserAccount)initWithUserAccount:(id)a3;
- (id)userAccountForProviderID:(id)a3 allowedBundleIDs:(id)a4;
@end

@implementation VSApplicationUserAccount

- (VSApplicationUserAccount)init
{
  v3.receiver = self;
  v3.super_class = VSApplicationUserAccount;
  return [(VSApplicationUserAccount *)&v3 init];
}

- (VSApplicationUserAccount)initWithUserAccount:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = VSApplicationUserAccount;
  v6 = [(VSApplicationUserAccount *)&v38 init];
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
      v31 = [VSApplicationAppleSubscription alloc];
      v32 = [v5 appleSubscription];

      if (!v32)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [userAccount appleSubscription] parameter must not be nil."];
      }

      v33 = [v5 appleSubscription];
      v34 = [v33 copy];
      v35 = [(VSApplicationAppleSubscription *)v31 initWithAppleSubscription:v34];
      appleSubscription = v7->_appleSubscription;
      v7->_appleSubscription = v35;
    }
  }

  return v7;
}

- (id)userAccountForProviderID:(id)a3 allowedBundleIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSApplicationUserAccount *)self bundleId];
  v9 = [(VSApplicationUserAccount *)self bundleId];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [(VSApplicationUserAccount *)self bundleId];

  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self bundleId] parameter must not be nil."];
  }

  v12 = [(VSApplicationUserAccount *)self bundleId];
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
      *v36 = 0;
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "JS User Account with no bundle ID, setting source type to VSUserAccountSourceTypeProvider", v36, 2u);
    }

    v16 = v6;
    v14 = 2;
    v8 = v16;
  }

  v17 = [(VSApplicationUserAccount *)self updateURL];

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBEBC0];
  v19 = [(VSApplicationUserAccount *)self updateURL];

  if (!v19)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
  }

  v20 = [(VSApplicationUserAccount *)self updateURL];
  v17 = [v18 URLWithString:v20];

  if (!v17)
  {
    v17 = VSErrorLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VSApplicationUserAccount userAccountForProviderID:v17 allowedBundleIDs:?];
    }

    v21 = 0;
  }

  else
  {
LABEL_13:
    v21 = [[VSUserAccount alloc] initWithAccountType:[(VSApplicationUserAccount *)self accountType] updateURL:v17 sourceType:v14 sourceIdentifier:v8];
    v22 = [(VSApplicationUserAccount *)self identifier];
    v23 = [v22 copy];
    [(VSUserAccount *)v21 setIdentifier:v23];

    [(VSUserAccount *)v21 setSignedOut:[(VSApplicationUserAccount *)self isSignedOut]];
    v24 = [(VSApplicationUserAccount *)self subscriptionBillingCycleEndDate];
    v25 = [v24 copy];
    [(VSUserAccount *)v21 setSubscriptionBillingCycleEndDate:v25];

    v26 = [(VSApplicationUserAccount *)self tierIdentifiers];
    v27 = [v26 copy];
    [(VSUserAccount *)v21 setTierIdentifiers:v27];

    v28 = [(VSApplicationUserAccount *)self billingIdentifier];
    v29 = [v28 copy];
    [(VSUserAccount *)v21 setBillingIdentifier:v29];

    v30 = [(VSApplicationUserAccount *)self authenticationData];
    v31 = [v30 copy];
    [(VSUserAccount *)v21 setAuthenticationData:v31];

    v32 = [(VSApplicationUserAccount *)self appleSubscription];
    v33 = [v32 appleSubscription];
    v34 = [v33 copy];
    [(VSUserAccount *)v21 setAppleSubscription:v34];
  }

  return v21;
}

+ (id)userAccountsFromApplicationUserAccounts:(id)a3 ForProviderID:(id)a4 allowedBundleIDs:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) userAccountForProviderID:v8 allowedBundleIDs:{v9, v18}];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (id)applicationUserAccountsFromUserAccounts:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc(objc_opt_class());
        v10 = [v9 initWithUserAccount:{v8, v12}];
        [v3 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v3;
}

@end