@interface AMUISelectedConfigurations
+ (id)lastUpdatedDateFromDictionaryRepresentation:(id)representation;
+ (id)lastUsedDateFromDictionaryRepresentation:(id)representation;
- (AMUISelectedConfigurations)init;
- (AMUISelectedConfigurations)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (id)_initWithLastUseDate:(void *)date lastUpdateDate:(void *)updateDate selections:;
- (id)lastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)identifier;
- (void)setLastSelectedConfigurationUUID:(id)d forProviderBundleIdentifier:(id)identifier;
@end

@implementation AMUISelectedConfigurations

- (AMUISelectedConfigurations)init
{
  date = [MEMORY[0x277CBEAA8] date];
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(AMUISelectedConfigurations *)&self->super.isa _initWithLastUseDate:date lastUpdateDate:date selections:dictionary];

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

+ (id)lastUsedDateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy bs_safeObjectForKey:@"lastUseDate" ofType:objc_opt_class()];

  return v4;
}

+ (id)lastUpdatedDateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy bs_safeObjectForKey:@"lastUpdateDate" ofType:objc_opt_class()];

  return v4;
}

- (id)lastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  date = [v4 date];
  lastUseDate = self->_lastUseDate;
  self->_lastUseDate = date;

  v8 = [(NSMutableDictionary *)self->_selections objectForKeyedSubscript:identifierCopy];

  return v8;
}

- (void)setLastSelectedConfigurationUUID:(id)d forProviderBundleIdentifier:(id)identifier
{
  v6 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  dCopy = d;
  date = [v6 date];
  objc_storeStrong(&self->_lastUpdateDate, date);
  lastUseDate = self->_lastUseDate;
  self->_lastUseDate = date;
  v10 = date;

  [(NSMutableDictionary *)self->_selections setObject:dCopy forKeyedSubscript:identifierCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  lastUseDate = self->_lastUseDate;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__AMUISelectedConfigurations_isEqual___block_invoke;
  v20[3] = &unk_278C761D0;
  v7 = equalCopy;
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

- (id)_initWithLastUseDate:(void *)date lastUpdateDate:(void *)updateDate selections:
{
  v8 = a2;
  dateCopy = date;
  updateDateCopy = updateDate;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = AMUISelectedConfigurations;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, date);
      v12 = [updateDateCopy mutableCopy];
      v13 = self[3];
      self[3] = v12;
    }
  }

  return self;
}

- (AMUISelectedConfigurations)initWithDictionaryRepresentation:(id)representation
{
  v4 = MEMORY[0x277CBEAA8];
  representationCopy = representation;
  date = [v4 date];
  v7 = [representationCopy bs_safeObjectForKey:@"lastUseDate" ofType:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = date;
  }

  v10 = v9;

  v11 = [representationCopy bs_safeObjectForKey:@"lastUpdateDate" ofType:objc_opt_class()];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = date;
  }

  v14 = v13;

  v15 = [representationCopy bs_safeDictionaryForKey:@"selections"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__AMUISelectedConfigurations_initWithDictionaryRepresentation___block_invoke;
  v20[3] = &unk_278C76180;
  v21 = dictionary;
  v17 = dictionary;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];
  v18 = [(AMUISelectedConfigurations *)&self->super.isa _initWithLastUseDate:v10 lastUpdateDate:v14 selections:v17];

  return v18;
}

@end