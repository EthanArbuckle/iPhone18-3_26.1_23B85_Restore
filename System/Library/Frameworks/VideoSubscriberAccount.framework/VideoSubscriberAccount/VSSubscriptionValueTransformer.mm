@interface VSSubscriptionValueTransformer
+ (BOOL)_subscriptionIsCoreSpotlight:(id)a3;
+ (id)_legacySubscriptionInfoForUserAccount:(id)a3;
+ (id)_subscriptionForUserAccount:(id)a3;
+ (id)_userAccountWithLegacySubscriptionPrimitives:(id)a3;
+ (void)_updateUserAccount:(id)a3 fromJSONWithSubscription:(id)a4;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSSubscriptionValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _userAccountWithLegacySubscriptionPrimitives:v3];
  if ([objc_opt_class() _subscriptionIsCoreSpotlight:v3])
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Subscription is legacy CoreSpotlight subscription, will update with JSON values.", v7, 2u);
    }

    [objc_opt_class() _updateUserAccount:v4 fromJSONWithSubscription:v3];
  }

  return v4;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
    }

    v4 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      if (!v3)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
      }

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, VSForceUnwrapNullable(valueOrNil) was %@, instead of VSUserAccount.", v9}];
    }

    if (!v3)
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

+ (BOOL)_subscriptionIsCoreSpotlight:(id)a3
{
  v3 = a3;
  v4 = [v3 subscriptionInfo];
  if (![v4 length])
  {

    goto LABEL_5;
  }

  v5 = [v3 accessLevel];

  if (v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

+ (id)_legacySubscriptionInfoForUserAccount:(id)a3
{
  v3 = a3;
  if ([v3 accountType] == 1)
  {
    v4 = @"Subscription";
  }

  else
  {
    v4 = @"Account";
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:v4 forKeyedSubscript:@"availabilityType"];
  v6 = [v3 billingIdentifier];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"billingIdentifier"];
  }

  v7 = [v3 tierIdentifiers];
  if ([v7 count])
  {
    [v5 setObject:v7 forKeyedSubscript:@"tiers"];
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

+ (id)_userAccountWithLegacySubscriptionPrimitives:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = [v4 kind];

  if ([v3 accessLevel] == 2)
  {
    v6 = [v3 expirationDate];
    v7 = [v6 copy];

    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = [VSUserAccount alloc];
  v10 = [v3 source];
  v11 = [v10 identifier];
  v12 = [v11 copy];
  v13 = [(VSUserAccount *)v9 initWithAccountType:v8 updateURL:0 sourceType:v5 == 1 sourceIdentifier:v12];

  [(VSUserAccount *)v13 setSubscriptionBillingCycleEndDate:v7];
  v14 = [v3 billingIdentifier];
  v15 = [v14 copy];
  [(VSUserAccount *)v13 setBillingIdentifier:v15];

  v16 = [v3 tierIdentifiers];
  v17 = [v16 copy];
  [(VSUserAccount *)v13 setTierIdentifiers:v17];

  v18 = [v3 modifierIdentifier];
  [(VSUserAccount *)v13 setModifierIdentifier:v18];

  [(VSUserAccount *)v13 setModifierType:@"app"];
  [(VSUserAccount *)v13 setApi:@"subscription"];

  return v13;
}

+ (void)_updateUserAccount:(id)a3 fromJSONWithSubscription:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 subscriptionInfo];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dataUsingEncoding:4];
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
      v21 = v5;
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
        v16 = [v21 expirationDate];
        v17 = 1;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v5 = v21;
    }

    else
    {
      v18 = v12;
      v19 = VSErrorLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [VSSubscriptionValueTransformer _updateUserAccount:v18 fromJSONWithSubscription:v19];
      }

      v16 = [v5 expirationDate];
      v15 = 0;
      v13 = 0;
      v17 = 1;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v13 = 0;
    v17 = 0;
  }

  [v6 setAccountType:v17];
  [v6 setBillingIdentifier:v13];
  [v6 setTierIdentifiers:v15];
  [v6 setSubscriptionBillingCycleEndDate:v16];
  [v6 setApi:@"coreSpotlight"];
}

+ (id)_subscriptionForUserAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 sourceIdentifier];
  if (v4)
  {
    v5 = objc_alloc_init(VSSubscription);
    if ([v3 accountType] == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(VSSubscription *)v5 setAccessLevel:v6];
    v7 = [v3 tierIdentifiers];
    v8 = [v7 copy];
    [(VSSubscription *)v5 setTierIdentifiers:v8];

    v9 = [v3 billingIdentifier];
    v10 = [v9 copy];
    [(VSSubscription *)v5 setBillingIdentifier:v10];

    v11 = [v3 modified];
    v12 = [v11 copy];
    [(VSSubscription *)v5 setModificationDate:v12];

    v13 = [v3 created];
    v14 = [v13 copy];
    [(VSSubscription *)v5 setCreationDate:v14];

    if ([v3 isSignedOut])
    {
      [(VSSubscription *)v5 setAccessLevel:1];
    }

    v15 = [v3 subscriptionBillingCycleEndDate];
    v16 = [v15 copy];

    if (!v16)
    {
      v16 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    [(VSSubscription *)v5 setExpirationDate:v16];
    v17 = [objc_opt_class() _legacySubscriptionInfoForUserAccount:v3];
    if (v17)
    {
      [(VSSubscription *)v5 setSubscriptionInfo:v17];
    }

    v18 = objc_alloc_init(VSSubscriptionSource);
    v19 = [v4 copy];
    [(VSSubscriptionSource *)v18 setIdentifier:v19];

    v20 = [v3 sourceType];
    if (v20 >= 2)
    {
      v21 = VSErrorLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [VSSubscriptionValueTransformer _subscriptionForUserAccount:v21];
      }

      v20 = 0;
    }

    [(VSSubscriptionSource *)v18 setKind:v20];
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