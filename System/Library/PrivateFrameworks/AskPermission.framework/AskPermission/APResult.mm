@interface APResult
- (APResult)initWithBundleIdentifier:(id)a3 buyParams:(id)a4 itemIdentifier:(id)a5 productType:(id)a6;
- (APResult)initWithDictionary:(id)a3;
- (id)compile;
- (id)description;
@end

@implementation APResult

- (APResult)initWithBundleIdentifier:(id)a3 buyParams:(id)a4 itemIdentifier:(id)a5 productType:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = APResult;
  v15 = [(APResult *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, a3);
    objc_storeStrong(&v16->_itemIdentifier, a5);
    objc_storeStrong(&v16->_productType, a6);
    if (v12)
    {
      v17 = [MEMORY[0x277CEE438] buyParamsWithString:v12];
      v18 = [v17 objectForKeyedSubscript:@"forceAskToBuyReason"];

      if (v18)
      {
        v19 = +[APLogConfig sharedDaemonConfig];
        if (!v19)
        {
          v19 = +[APLogConfig sharedConfig];
        }

        v20 = [v19 OSLogObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          *buf = 138543362;
          v28 = v21;
          v22 = v21;
          _os_log_impl(&dword_241063000, v20, OS_LOG_TYPE_INFO, "%{public}@: Buy params contains forceAskToBuyReason - removing it for replayed buy", buf, 0xCu);
        }

        [v17 setObject:0 forKeyedSubscript:@"forceAskToBuyReason"];
        v23 = [v17 stringValue];

        v12 = v23;
      }
    }

    objc_storeStrong(&v16->_buyParams, v12);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (APResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"buyParams"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"itemIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"productType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  if (v8 && v10 && v12)
  {
    self = [(APResult *)self initWithBundleIdentifier:v6 buyParams:v8 itemIdentifier:v10 productType:v12];
    v13 = self;
  }

  return v13;
}

- (id)compile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(APResult *)self bundleIdentifier];
  [v3 ap_setNullableObject:v4 forKey:@"bundleIdentifier"];

  v5 = [(APResult *)self buyParams];
  [v3 ap_setNullableObject:v5 forKey:@"buyParams"];

  v6 = [(APResult *)self itemIdentifier];
  [v3 ap_setNullableObject:v6 forKey:@"itemIdentifier"];

  v7 = [(APResult *)self productType];
  [v3 ap_setNullableObject:v7 forKey:@"productType"];

  return v3;
}

- (id)description
{
  v3 = [(APResult *)self compile];
  v4 = [self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end