@interface AMSSubscriptionEntitlementsResult
- (BOOL)isEqual:(id)equal;
- (id)exportObject;
@end

@implementation AMSSubscriptionEntitlementsResult

- (id)exportObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  appAdamId = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
  v5 = appAdamId;
  if (appAdamId)
  {
    v6 = appAdamId;
  }

  else
  {
    v6 = &unk_1F0779A00;
  }

  [v3 setObject:v6 forKeyedSubscript:@"appAdamId"];

  appVersion = [(AMSSubscriptionEntitlementsResult *)self appVersion];
  v8 = appVersion;
  if (appVersion)
  {
    v9 = appVersion;
  }

  else
  {
    v9 = &unk_1F0779A00;
  }

  [v3 setObject:v9 forKeyedSubscript:@"appVersion"];

  serverResponse = [(AMSSubscriptionEntitlementsResult *)self serverResponse];
  v11 = serverResponse;
  if (serverResponse)
  {
    v12 = serverResponse;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  [v3 setObject:v12 forKeyedSubscript:@"serverResponse"];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entitlements = [(AMSSubscriptionEntitlementsResult *)self entitlements];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__AMSSubscriptionEntitlementsResult_exportObject__block_invoke;
  v17[3] = &unk_1E73BC5C0;
  v18 = v13;
  v15 = v13;
  [entitlements enumerateKeysAndObjectsUsingBlock:v17];

  [v3 setObject:v15 forKeyedSubscript:@"entitlements"];

  return v3;
}

void __49__AMSSubscriptionEntitlementsResult_exportObject__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 exportObject];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = equalCopy;
  if (self != equalCopy)
  {
    appAdamId = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v11 = appAdamId;

    if (!v11)
    {
      v12 = 0;
LABEL_50:

      goto LABEL_51;
    }

    appAdamId = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
    if (appAdamId || ([(AMSSubscriptionEntitlementsResult *)v11 appAdamId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      appAdamId2 = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
      appAdamId3 = [(AMSSubscriptionEntitlementsResult *)v11 appAdamId];
      if (([appAdamId2 isEqual:appAdamId3] & 1) == 0)
      {

        v12 = 0;
        goto LABEL_47;
      }

      v40 = 1;
    }

    else
    {
      v40 = 0;
    }

    appVersion = [(AMSSubscriptionEntitlementsResult *)self appVersion];
    if (appVersion || ([(AMSSubscriptionEntitlementsResult *)v11 appVersion], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v3;
      appVersion2 = [(AMSSubscriptionEntitlementsResult *)self appVersion];
      appVersion3 = [(AMSSubscriptionEntitlementsResult *)v11 appVersion];
      if (([appVersion2 isEqual:appVersion3] & 1) == 0)
      {

        if (appVersion)
        {
        }

        else
        {
        }

        v12 = 0;
        v3 = v14;
        if ((v40 & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v33 = appVersion2;
      v38 = 1;
      v3 = v14;
      v6 = appVersion3;
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    entitlements = [(AMSSubscriptionEntitlementsResult *)self entitlements];
    if (entitlements || ([(AMSSubscriptionEntitlementsResult *)v11 entitlements], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = appVersion;
      v18 = appAdamId3;
      v19 = appAdamId2;
      v20 = v6;
      entitlements2 = [(AMSSubscriptionEntitlementsResult *)self entitlements];
      entitlements3 = [(AMSSubscriptionEntitlementsResult *)v11 entitlements];
      v35 = entitlements2;
      if (![entitlements2 isEqual:entitlements3])
      {
        v12 = 0;
        v6 = v20;
        appAdamId2 = v19;
        appAdamId3 = v18;
        appVersion = v36;
LABEL_38:

LABEL_39:
        if (!entitlements)
        {
        }

        if (v38)
        {
        }

        if (!appVersion)
        {
        }

        if (!v40)
        {
          goto LABEL_47;
        }

LABEL_46:

LABEL_47:
        if (!appAdamId)
        {
        }

        goto LABEL_49;
      }

      v32 = entitlements;
      v31 = 1;
      v6 = v20;
      appAdamId2 = v19;
      appAdamId3 = v18;
      appVersion = v36;
    }

    else
    {
      v32 = 0;
      v29 = 0;
      v31 = 0;
    }

    serverResponse = [(AMSSubscriptionEntitlementsResult *)self serverResponse];
    if (serverResponse || ([(AMSSubscriptionEntitlementsResult *)v11 serverResponse], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v6;
      v37 = v3;
      v23 = [(AMSSubscriptionEntitlementsResult *)self serverResponse:v27];
      serverResponse2 = [(AMSSubscriptionEntitlementsResult *)v11 serverResponse];
      v12 = [v23 isEqual:serverResponse2];

      if (serverResponse)
      {

        v6 = v30;
        if (!v31)
        {
          v3 = v37;
          entitlements = v32;
          goto LABEL_39;
        }

        v3 = v37;
        entitlements = v32;
        goto LABEL_38;
      }

      v3 = v37;
      v6 = v30;
      v25 = v28;
    }

    else
    {
      v25 = 0;
      v12 = 1;
    }

    entitlements = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v12 = 1;
LABEL_51:

  return v12;
}

@end