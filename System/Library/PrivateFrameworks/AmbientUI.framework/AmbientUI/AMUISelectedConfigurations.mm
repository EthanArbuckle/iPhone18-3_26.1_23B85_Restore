@interface AMUISelectedConfigurations
+ (id)lastUpdatedDateFromDictionaryRepresentation:(id)a3;
+ (id)lastUsedDateFromDictionaryRepresentation:(id)a3;
- (AMUISelectedConfigurations)init;
- (AMUISelectedConfigurations)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)_initWithLastUseDate:(void *)a3 lastUpdateDate:(void *)a4 selections:;
- (id)lastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)a3;
- (void)setLastSelectedConfigurationUUID:(id)a3 forProviderBundleIdentifier:(id)a4;
@end

@implementation AMUISelectedConfigurations

- (AMUISelectedConfigurations)init
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(AMUISelectedConfigurations *)&self->super.isa _initWithLastUseDate:v3 lastUpdateDate:v3 selections:v4];

  return v5;
}

void __63__AMUISelectedConfigurations_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v15 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_opt_class();
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v9 && v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
    if (v14)
    {
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v9];
    }
  }
}

+ (id)lastUsedDateFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"lastUseDate" ofType:objc_opt_class()];

  return v4;
}

+ (id)lastUpdatedDateFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"lastUpdateDate" ofType:objc_opt_class()];

  return v4;
}

- (id)lastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  lastUseDate = self->_lastUseDate;
  self->_lastUseDate = v6;

  v8 = [(NSMutableDictionary *)self->_selections objectForKeyedSubscript:v5];

  return v8;
}

- (void)setLastSelectedConfigurationUUID:(id)a3 forProviderBundleIdentifier:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v11 = a3;
  v8 = [v6 date];
  objc_storeStrong(&self->_lastUpdateDate, v8);
  lastUseDate = self->_lastUseDate;
  self->_lastUseDate = v8;
  v10 = v8;

  [(NSMutableDictionary *)self->_selections setObject:v11 forKeyedSubscript:v7];
}

- (NSDictionary)dictionaryRepresentation
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_selections, "count")}];
  selections = self->_selections;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__AMUISelectedConfigurations_dictionaryRepresentation__block_invoke;
  v13 = &unk_278C761A8;
  v14 = v3;
  v5 = v3;
  [(NSMutableDictionary *)selections enumerateKeysAndObjectsUsingBlock:&v10];
  v15[0] = @"lastUseDate";
  v15[1] = @"lastUpdateDate";
  lastUpdateDate = self->_lastUpdateDate;
  v16[0] = self->_lastUseDate;
  v16[1] = lastUpdateDate;
  v15[2] = @"selections";
  v16[2] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:{3, v10, v11, v12, v13}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __54__AMUISelectedConfigurations_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 UUIDString];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  lastUseDate = self->_lastUseDate;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__AMUISelectedConfigurations_isEqual___block_invoke;
  v20[3] = &unk_278C761D0;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:lastUseDate counterpart:v20];
  lastUpdateDate = self->_lastUpdateDate;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__AMUISelectedConfigurations_isEqual___block_invoke_2;
  v18[3] = &unk_278C761D0;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:lastUpdateDate counterpart:v18];
  selections = self->_selections;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__AMUISelectedConfigurations_isEqual___block_invoke_3;
  v16[3] = &unk_278C761D0;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:selections counterpart:v16];
  LOBYTE(selections) = [v5 isEqual];

  return selections;
}

- (id)_initWithLastUseDate:(void *)a3 lastUpdateDate:(void *)a4 selections:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = AMUISelectedConfigurations;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v12 = [v10 mutableCopy];
      v13 = a1[3];
      a1[3] = v12;
    }
  }

  return a1;
}

- (AMUISelectedConfigurations)initWithDictionaryRepresentation:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [v5 bs_safeObjectForKey:@"lastUseDate" ofType:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  v11 = [v5 bs_safeObjectForKey:@"lastUpdateDate" ofType:objc_opt_class()];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  v14 = v13;

  v15 = [v5 bs_safeDictionaryForKey:@"selections"];

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__AMUISelectedConfigurations_initWithDictionaryRepresentation___block_invoke;
  v20[3] = &unk_278C76180;
  v21 = v16;
  v17 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];
  v18 = [(AMUISelectedConfigurations *)&self->super.isa _initWithLastUseDate:v10 lastUpdateDate:v14 selections:v17];

  return v18;
}

@end