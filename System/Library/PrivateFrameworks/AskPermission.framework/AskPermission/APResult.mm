@interface APResult
- (APResult)initWithBundleIdentifier:(id)identifier buyParams:(id)params itemIdentifier:(id)itemIdentifier productType:(id)type;
- (APResult)initWithDictionary:(id)dictionary;
- (id)compile;
- (id)description;
@end

@implementation APResult

- (APResult)initWithBundleIdentifier:(id)identifier buyParams:(id)params itemIdentifier:(id)itemIdentifier productType:(id)type
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  paramsCopy = params;
  itemIdentifierCopy = itemIdentifier;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = APResult;
  v15 = [(APResult *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_itemIdentifier, itemIdentifier);
    objc_storeStrong(&v16->_productType, type);
    if (paramsCopy)
    {
      v17 = [MEMORY[0x277CEE438] buyParamsWithString:paramsCopy];
      v18 = [v17 objectForKeyedSubscript:@"forceAskToBuyReason"];

      if (v18)
      {
        v19 = +[APLogConfig sharedDaemonConfig];
        if (!v19)
        {
          v19 = +[APLogConfig sharedConfig];
        }

        oSLogObject = [v19 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          *buf = 138543362;
          v28 = v21;
          v22 = v21;
          _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Buy params contains forceAskToBuyReason - removing it for replayed buy", buf, 0xCu);
        }

        [v17 setObject:0 forKeyedSubscript:@"forceAskToBuyReason"];
        stringValue = [v17 stringValue];

        paramsCopy = stringValue;
      }
    }

    objc_storeStrong(&v16->_buyParams, paramsCopy);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (APResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = 0;
  if (v8 && v10 && v12)
  {
    self = [(APResult *)self initWithBundleIdentifier:v6 buyParams:v8 itemIdentifier:v10 productType:v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)compile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  bundleIdentifier = [(APResult *)self bundleIdentifier];
  [v3 ap_setNullableObject:bundleIdentifier forKey:@"bundleIdentifier"];

  buyParams = [(APResult *)self buyParams];
  [v3 ap_setNullableObject:buyParams forKey:@"buyParams"];

  itemIdentifier = [(APResult *)self itemIdentifier];
  [v3 ap_setNullableObject:itemIdentifier forKey:@"itemIdentifier"];

  productType = [(APResult *)self productType];
  [v3 ap_setNullableObject:productType forKey:@"productType"];

  return v3;
}

- (id)description
{
  compile = [(APResult *)self compile];
  v4 = [self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end