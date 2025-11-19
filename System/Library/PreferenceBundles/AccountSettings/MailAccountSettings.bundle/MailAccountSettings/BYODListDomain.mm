@interface BYODListDomain
- (BYODListDomain)initWithDictionary:(id)a3;
- (id)domainFromDomainName:(id)a3;
@end

@implementation BYODListDomain

- (BYODListDomain)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BYODListDomain;
  v5 = [(BYODListDomain *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"maxDomainsAllowed"];
    v5->_maxDomainsAllowed = [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"showWelcomeScreen"];
    v5->_showWelcomeScreen = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"enablePurchaseDomain"];
    v5->_enablePurchaseDomain = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"iCloudPlusSubscriptionExpired"];
    v5->_iCloudPlusSubscriptionExpired = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"iCloudPlusSubscriptionEndDate"];
    iCloudPlusSubscriptionEndTimestamp = v5->_iCloudPlusSubscriptionEndTimestamp;
    v5->_iCloudPlusSubscriptionEndTimestamp = v10;

    v12 = [v4 objectForKeyedSubscript:@"domainPurchaseProviderName"];
    domainPurchaseProviderName = v5->_domainPurchaseProviderName;
    v5->_domainPurchaseProviderName = v12;

    v14 = [v4 objectForKeyedSubscript:@"domains"];
    v15 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v21 = [BYODDomain alloc];
          v22 = [(BYODDomain *)v21 initWithDictionary:v20, v25];
          [(NSArray *)v15 addObject:v22];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    domains = v5->_domains;
    v5->_domains = v15;
  }

  return v5;
}

- (id)domainFromDomainName:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_domains;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end