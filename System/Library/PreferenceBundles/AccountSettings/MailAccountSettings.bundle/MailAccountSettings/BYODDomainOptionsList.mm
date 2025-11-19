@interface BYODDomainOptionsList
- (BYODDomainOptionsList)initWithDictionary:(id)a3;
@end

@implementation BYODDomainOptionsList

- (BYODDomainOptionsList)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BYODDomainOptionsList;
  v5 = [(BYODDomainOptionsList *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAvailable"];
    v5->_isAvailable = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"isKeywordSearch"];
    v5->_isKeywordSearch = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"dnsProviderName"];
    dnsProviderName = v5->_dnsProviderName;
    v5->_dnsProviderName = v8;

    v10 = [BYODDomainOption alloc];
    v11 = [v4 objectForKeyedSubscript:@"searchedDomain"];
    v12 = [(BYODDomainOption *)v10 initWithDictionary:v11];
    searchedDomain = v5->_searchedDomain;
    v5->_searchedDomain = v12;

    v14 = [v4 objectForKeyedSubscript:@"suggestedDomains"];
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
          v21 = [BYODDomainOption alloc];
          v22 = [(BYODDomainOption *)v21 initWithDictionary:v20, v25];
          [(NSArray *)v15 addObject:v22];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    suggestedDomains = v5->_suggestedDomains;
    v5->_suggestedDomains = v15;
  }

  return v5;
}

@end