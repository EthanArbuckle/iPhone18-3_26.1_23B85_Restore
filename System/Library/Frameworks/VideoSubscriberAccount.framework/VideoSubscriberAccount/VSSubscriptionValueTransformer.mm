@interface VSSubscriptionValueTransformer
+ (BOOL)_subscriptionIsCoreSpotlight:(id)spotlight;
+ (id)_legacySubscriptionInfoForUserAccount:(id)account;
+ (id)_subscriptionForUserAccount:(id)account;
+ (id)_userAccountWithLegacySubscriptionPrimitives:(id)primitives;
+ (void)_updateUserAccount:(id)account fromJSONWithSubscription:(id)subscription;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSSubscriptionValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v4 = [objc_opt_class() _userAccountWithLegacySubscriptionPrimitives:valueCopy];
  if ([objc_opt_class() _subscriptionIsCoreSpotlight:valueCopy])
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Subscription is legacy CoreSpotlight subscription, will update with JSON values.", v7, 2u);
    }

    [objc_opt_class() _updateUserAccount:v4 fromJSONWithSubscription:valueCopy];
  }

  return v4;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
    }

    v4 = valueCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      if (!valueCopy)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
      }

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, VSForceUnwrapNullable(valueOrNil) was %@, instead of VSUserAccount.", v9}];
    }

    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
    }

    v10 = v4;
    v11 = [objc_opt_class() _subscriptionForUserAccount:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_subscriptionIsCoreSpotlight:(id)spotlight
{
  spotlightCopy = spotlight;
  subscriptionInfo = [spotlightCopy subscriptionInfo];
  if (![subscriptionInfo length])
  {

    goto LABEL_5;
  }

  accessLevel = [spotlightCopy accessLevel];

  if (accessLevel)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

+ (id)_legacySubscriptionInfoForUserAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy accountType] == 1)
  {
    v4 = @"Subscription";
  }

  else
  {
    v4 = @"Account";
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:v4 forKeyedSubscript:@"availabilityType"];
  billingIdentifier = [accountCopy billingIdentifier];
  if (billingIdentifier)
  {
    [v5 setObject:billingIdentifier forKeyedSubscript:@"billingIdentifier"];
  }

  tierIdentifiers = [accountCopy tierIdentifiers];
  if ([tierIdentifiers count])
  {
    [v5 setObject:tierIdentifiers forKeyedSubscript:@"tiers"];
  }

  v14 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(VSSubscriptionValueTransformer *)v9 _legacySubscriptionInfoForUserAccount:v10];
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];

  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] parameter must not be nil."];
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];

  return v12;
}

+ (id)_userAccountWithLegacySubscriptionPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  source = [primitivesCopy source];
  kind = [source kind];

  if ([primitivesCopy accessLevel] == 2)
  {
    expirationDate = [primitivesCopy expirationDate];
    v7 = [expirationDate copy];

    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = [VSUserAccount alloc];
  source2 = [primitivesCopy source];
  identifier = [source2 identifier];
  v12 = [identifier copy];
  v13 = [(VSUserAccount *)v9 initWithAccountType:v8 updateURL:0 sourceType:kind == 1 sourceIdentifier:v12];

  [(VSUserAccount *)v13 setSubscriptionBillingCycleEndDate:v7];
  billingIdentifier = [primitivesCopy billingIdentifier];
  v15 = [billingIdentifier copy];
  [(VSUserAccount *)v13 setBillingIdentifier:v15];

  tierIdentifiers = [primitivesCopy tierIdentifiers];
  v17 = [tierIdentifiers copy];
  [(VSUserAccount *)v13 setTierIdentifiers:v17];

  modifierIdentifier = [primitivesCopy modifierIdentifier];
  [(VSUserAccount *)v13 setModifierIdentifier:modifierIdentifier];

  [(VSUserAccount *)v13 setModifierType:@"app"];
  [(VSUserAccount *)v13 setApi:@"subscription"];

  return v13;
}

+ (void)_updateUserAccount:(id)account fromJSONWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  accountCopy = account;
  subscriptionInfo = [subscriptionCopy subscriptionInfo];
  v8 = subscriptionInfo;
  if (subscriptionInfo)
  {
    v9 = [subscriptionInfo dataUsingEncoding:4];
    v10 = MEMORY[0x277CCAAA0];
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The data parameter must not be nil."];
    }

    v23 = 0;
    v11 = [v10 JSONObjectWithData:v9 options:0 error:&v23];
    v12 = v23;
    v22 = v12;
    if (v11)
    {
      v21 = subscriptionCopy;
      v13 = [v11 objectForKeyedSubscript:@"billingIdentifier"];
      v14 = [v11 objectForKeyedSubscript:@"tiers"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 copy];
      }

      else
      {
        v15 = 0;
      }

      v20 = [v11 objectForKeyedSubscript:@"availabilityType"];
      if ([v20 length] && !objc_msgSend(v20, "caseInsensitiveCompare:", @"Subscription"))
      {
        expirationDate = [v21 expirationDate];
        v17 = 1;
      }

      else
      {
        expirationDate = 0;
        v17 = 0;
      }

      subscriptionCopy = v21;
    }

    else
    {
      v18 = v12;
      v19 = VSErrorLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionValueTransformer _updateUserAccount:v18 fromJSONWithSubscription:v19];
      }

      expirationDate = [subscriptionCopy expirationDate];
      v15 = 0;
      v13 = 0;
      v17 = 1;
    }
  }

  else
  {
    expirationDate = 0;
    v15 = 0;
    v13 = 0;
    v17 = 0;
  }

  [accountCopy setAccountType:v17];
  [accountCopy setBillingIdentifier:v13];
  [accountCopy setTierIdentifiers:v15];
  [accountCopy setSubscriptionBillingCycleEndDate:expirationDate];
  [accountCopy setApi:@"coreSpotlight"];
}

+ (id)_subscriptionForUserAccount:(id)account
{
  accountCopy = account;
  sourceIdentifier = [accountCopy sourceIdentifier];
  if (sourceIdentifier)
  {
    v5 = objc_alloc_init(VSSubscription);
    if ([accountCopy accountType] == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(VSSubscription *)v5 setAccessLevel:v6];
    tierIdentifiers = [accountCopy tierIdentifiers];
    v8 = [tierIdentifiers copy];
    [(VSSubscription *)v5 setTierIdentifiers:v8];

    billingIdentifier = [accountCopy billingIdentifier];
    v10 = [billingIdentifier copy];
    [(VSSubscription *)v5 setBillingIdentifier:v10];

    modified = [accountCopy modified];
    v12 = [modified copy];
    [(VSSubscription *)v5 setModificationDate:v12];

    created = [accountCopy created];
    v14 = [created copy];
    [(VSSubscription *)v5 setCreationDate:v14];

    if ([accountCopy isSignedOut])
    {
      [(VSSubscription *)v5 setAccessLevel:1];
    }

    subscriptionBillingCycleEndDate = [accountCopy subscriptionBillingCycleEndDate];
    distantFuture = [subscriptionBillingCycleEndDate copy];

    if (!distantFuture)
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    [(VSSubscription *)v5 setExpirationDate:distantFuture];
    v17 = [objc_opt_class() _legacySubscriptionInfoForUserAccount:accountCopy];
    if (v17)
    {
      [(VSSubscription *)v5 setSubscriptionInfo:v17];
    }

    v18 = objc_alloc_init(VSSubscriptionSource);
    v19 = [sourceIdentifier copy];
    [(VSSubscriptionSource *)v18 setIdentifier:v19];

    sourceType = [accountCopy sourceType];
    if (sourceType >= 2)
    {
      v21 = VSErrorLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [VSSubscriptionValueTransformer _subscriptionForUserAccount:v21];
      }

      sourceType = 0;
    }

    [(VSSubscriptionSource *)v18 setKind:sourceType];
    [(VSSubscription *)v5 setSource:v18];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_legacySubscriptionInfoForUserAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "Error serializing legacy subscription info JSON: %@", &v2, 0xCu);
}

+ (void)_updateUserAccount:(uint64_t)a1 fromJSONWithSubscription:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error deserializing legacy subscription JSON: %@", &v2, 0xCu);
}

@end