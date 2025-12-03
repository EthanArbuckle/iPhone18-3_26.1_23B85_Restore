@interface VSJSUserAccount
+ (id)jsUserAccountsFromUserAccounts:(id)accounts;
+ (id)userAccountsFromJSUserAccounts:(id)accounts;
- (VSJSUserAccount)initWithUserAccount:(id)account;
- (id)userAccount;
- (id)userAccountForProviderID:(id)d allowedBundleIDs:(id)ds;
@end

@implementation VSJSUserAccount

- (VSJSUserAccount)initWithUserAccount:(id)account
{
  accountCopy = account;
  v36.receiver = self;
  v36.super_class = VSJSUserAccount;
  v6 = [(VSJSObject *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originatingUserAccount, account);
    updateURL = [accountCopy updateURL];
    absoluteString = [updateURL absoluteString];
    v10 = [absoluteString copy];
    updateURL = v7->_updateURL;
    v7->_updateURL = v10;

    v7->_requiresSystemTrust = [accountCopy requiresSystemTrust];
    if (![accountCopy sourceType])
    {
      sourceIdentifier = [accountCopy sourceIdentifier];
      v13 = [sourceIdentifier copy];
      bundleId = v7->_bundleId;
      v7->_bundleId = v13;
    }

    identifier = [accountCopy identifier];
    v16 = [identifier copy];
    identifier = v7->_identifier;
    v7->_identifier = v16;

    v7->_accountType = [accountCopy accountType];
    v7->_signedOut = [accountCopy isSignedOut];
    subscriptionBillingCycleEndDate = [accountCopy subscriptionBillingCycleEndDate];
    v19 = [subscriptionBillingCycleEndDate copy];
    subscriptionBillingCycleEndDate = v7->_subscriptionBillingCycleEndDate;
    v7->_subscriptionBillingCycleEndDate = v19;

    tierIdentifiers = [accountCopy tierIdentifiers];
    v22 = [tierIdentifiers copy];
    tierIdentifiers = v7->_tierIdentifiers;
    v7->_tierIdentifiers = v22;

    billingIdentifier = [accountCopy billingIdentifier];
    v25 = [billingIdentifier copy];
    billingIdentifier = v7->_billingIdentifier;
    v7->_billingIdentifier = v25;

    authenticationData = [accountCopy authenticationData];
    v28 = [authenticationData copy];
    authenticationData = v7->_authenticationData;
    v7->_authenticationData = v28;

    v7->_deviceCategory = [accountCopy deviceCategory];
    appleSubscription = [accountCopy appleSubscription];
    if (appleSubscription)
    {
      v31 = [VSJSAppleSubscription alloc];
      v32 = [appleSubscription copy];
      v33 = [(VSJSAppleSubscription *)v31 initWithAppleSubscription:v32];
      appleSubscription = v7->_appleSubscription;
      v7->_appleSubscription = v33;
    }
  }

  return v7;
}

- (id)userAccount
{
  bundleId = [(VSJSUserAccount *)self bundleId];
  if (bundleId)
  {
    updateURL = [(VSJSUserAccount *)self updateURL];
    if (updateURL)
    {
      v5 = MEMORY[0x277CBEBC0];
      updateURL2 = [(VSJSUserAccount *)self updateURL];

      if (!updateURL2)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
      }

      updateURL3 = [(VSJSUserAccount *)self updateURL];
      v8 = [v5 URLWithString:updateURL3];

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

    v16 = [[VSUserAccount alloc] initWithAccountType:[(VSJSUserAccount *)self accountType] updateURL:v8 sourceType:0 sourceIdentifier:bundleId];
    identifier = [(VSJSUserAccount *)self identifier];
    v25 = [identifier copy];
    [(VSUserAccount *)v16 setIdentifier:v25];

    [(VSUserAccount *)v16 setSignedOut:[(VSJSUserAccount *)self isSignedOut]];
    subscriptionBillingCycleEndDate = [(VSJSUserAccount *)self subscriptionBillingCycleEndDate];
    v27 = [subscriptionBillingCycleEndDate copy];
    [(VSUserAccount *)v16 setSubscriptionBillingCycleEndDate:v27];

    tierIdentifiers = [(VSJSUserAccount *)self tierIdentifiers];
    v29 = [tierIdentifiers copy];
    [(VSUserAccount *)v16 setTierIdentifiers:v29];

    billingIdentifier = [(VSJSUserAccount *)self billingIdentifier];
    v31 = [billingIdentifier copy];
    [(VSUserAccount *)v16 setBillingIdentifier:v31];

    authenticationData = [(VSJSUserAccount *)self authenticationData];
    v33 = [authenticationData copy];
    [(VSUserAccount *)v16 setAuthenticationData:v33];

    appleSubscription = [(VSJSUserAccount *)self appleSubscription];
    v34AppleSubscription = [appleSubscription appleSubscription];
    v36 = [v34AppleSubscription copy];
    [(VSUserAccount *)v16 setAppleSubscription:v36];

LABEL_14:
    goto LABEL_15;
  }

  updateURL = VSErrorLogObject();
  if (os_log_type_enabled(updateURL, OS_LOG_TYPE_ERROR))
  {
    [(VSJSUserAccount *)updateURL userAccount:v17];
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (id)userAccountForProviderID:(id)d allowedBundleIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  bundleId = [(VSJSUserAccount *)self bundleId];
  bundleId2 = [(VSJSUserAccount *)self bundleId];
  if (!bundleId2)
  {
    goto LABEL_6;
  }

  v10 = bundleId2;
  bundleId3 = [(VSJSUserAccount *)self bundleId];

  if (!bundleId3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self bundleId] parameter must not be nil."];
  }

  bundleId4 = [(VSJSUserAccount *)self bundleId];
  v13 = [dsCopy containsObject:bundleId4];

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

    v16 = dCopy;
    v14 = 2;
    bundleId = v16;
  }

  updateURL = [(VSJSUserAccount *)self updateURL];

  if (!updateURL)
  {
    goto LABEL_13;
  }

  v18 = MEMORY[0x277CBEBC0];
  updateURL2 = [(VSJSUserAccount *)self updateURL];

  if (!updateURL2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self updateURL] parameter must not be nil."];
  }

  updateURL3 = [(VSJSUserAccount *)self updateURL];
  updateURL = [v18 URLWithString:updateURL3];

  if (!updateURL)
  {
    updateURL = VSErrorLogObject();
    if (os_log_type_enabled(updateURL, OS_LOG_TYPE_ERROR))
    {
      [(VSJSUserAccount *)updateURL userAccount:v35];
    }

    v21 = 0;
  }

  else
  {
LABEL_13:
    v21 = [[VSUserAccount alloc] initWithAccountType:[(VSJSUserAccount *)self accountType] updateURL:updateURL sourceType:v14 sourceIdentifier:bundleId];
    identifier = [(VSJSUserAccount *)self identifier];
    v23 = [identifier copy];
    [(VSUserAccount *)v21 setIdentifier:v23];

    [(VSUserAccount *)v21 setSignedOut:[(VSJSUserAccount *)self isSignedOut]];
    subscriptionBillingCycleEndDate = [(VSJSUserAccount *)self subscriptionBillingCycleEndDate];
    v25 = [subscriptionBillingCycleEndDate copy];
    [(VSUserAccount *)v21 setSubscriptionBillingCycleEndDate:v25];

    tierIdentifiers = [(VSJSUserAccount *)self tierIdentifiers];
    v27 = [tierIdentifiers copy];
    [(VSUserAccount *)v21 setTierIdentifiers:v27];

    billingIdentifier = [(VSJSUserAccount *)self billingIdentifier];
    v29 = [billingIdentifier copy];
    [(VSUserAccount *)v21 setBillingIdentifier:v29];

    authenticationData = [(VSJSUserAccount *)self authenticationData];
    v31 = [authenticationData copy];
    [(VSUserAccount *)v21 setAuthenticationData:v31];

    appleSubscription = [(VSJSUserAccount *)self appleSubscription];
    v32AppleSubscription = [appleSubscription appleSubscription];
    v34 = [v32AppleSubscription copy];
    [(VSUserAccount *)v21 setAppleSubscription:v34];
  }

  return v21;
}

+ (id)userAccountsFromJSUserAccounts:(id)accounts
{
  v17 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = accountsCopy;
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

        userAccount = [*(*(&v12 + 1) + 8 * i) userAccount];
        if (userAccount)
        {
          [v4 addObject:userAccount];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)jsUserAccountsFromUserAccounts:(id)accounts
{
  v19 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = accountsCopy;
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