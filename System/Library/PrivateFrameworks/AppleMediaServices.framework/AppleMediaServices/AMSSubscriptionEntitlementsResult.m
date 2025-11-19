@interface AMSSubscriptionEntitlementsResult
- (BOOL)isEqual:(id)a3;
- (id)exportObject;
@end

@implementation AMSSubscriptionEntitlementsResult

- (id)exportObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_1F0779A00;
  }

  [v3 setObject:v6 forKeyedSubscript:@"appAdamId"];

  v7 = [(AMSSubscriptionEntitlementsResult *)self appVersion];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_1F0779A00;
  }

  [v3 setObject:v9 forKeyedSubscript:@"appVersion"];

  v10 = [(AMSSubscriptionEntitlementsResult *)self serverResponse];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  [v3 setObject:v12 forKeyedSubscript:@"serverResponse"];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [(AMSSubscriptionEntitlementsResult *)self entitlements];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__AMSSubscriptionEntitlementsResult_exportObject__block_invoke;
  v17[3] = &unk_1E73BC5C0;
  v18 = v13;
  v15 = v13;
  [v14 enumerateKeysAndObjectsUsingBlock:v17];

  [v3 setObject:v15 forKeyedSubscript:@"entitlements"];

  return v3;
}

void __49__AMSSubscriptionEntitlementsResult_exportObject__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 exportObject];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  v9 = v8;
  if (self != v8)
  {
    v10 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v11 = v10;

    if (!v11)
    {
      v12 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v10 = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
    if (v10 || ([(AMSSubscriptionEntitlementsResult *)v11 appAdamId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(AMSSubscriptionEntitlementsResult *)self appAdamId];
      v5 = [(AMSSubscriptionEntitlementsResult *)v11 appAdamId];
      if (([v4 isEqual:v5] & 1) == 0)
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

    v13 = [(AMSSubscriptionEntitlementsResult *)self appVersion];
    if (v13 || ([(AMSSubscriptionEntitlementsResult *)v11 appVersion], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v3;
      v15 = [(AMSSubscriptionEntitlementsResult *)self appVersion];
      v16 = [(AMSSubscriptionEntitlementsResult *)v11 appVersion];
      if (([v15 isEqual:v16] & 1) == 0)
      {

        if (v13)
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

      v33 = v15;
      v38 = 1;
      v3 = v14;
      v6 = v16;
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    v17 = [(AMSSubscriptionEntitlementsResult *)self entitlements];
    if (v17 || ([(AMSSubscriptionEntitlementsResult *)v11 entitlements], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = v13;
      v18 = v5;
      v19 = v4;
      v20 = v6;
      v21 = [(AMSSubscriptionEntitlementsResult *)self entitlements];
      v34 = [(AMSSubscriptionEntitlementsResult *)v11 entitlements];
      v35 = v21;
      if (![v21 isEqual:v34])
      {
        v12 = 0;
        v6 = v20;
        v4 = v19;
        v5 = v18;
        v13 = v36;
LABEL_38:

LABEL_39:
        if (!v17)
        {
        }

        if (v38)
        {
        }

        if (!v13)
        {
        }

        if (!v40)
        {
          goto LABEL_47;
        }

LABEL_46:

LABEL_47:
        if (!v10)
        {
        }

        goto LABEL_49;
      }

      v32 = v17;
      v31 = 1;
      v6 = v20;
      v4 = v19;
      v5 = v18;
      v13 = v36;
    }

    else
    {
      v32 = 0;
      v29 = 0;
      v31 = 0;
    }

    v22 = [(AMSSubscriptionEntitlementsResult *)self serverResponse];
    if (v22 || ([(AMSSubscriptionEntitlementsResult *)v11 serverResponse], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v6;
      v37 = v3;
      v23 = [(AMSSubscriptionEntitlementsResult *)self serverResponse:v27];
      v24 = [(AMSSubscriptionEntitlementsResult *)v11 serverResponse];
      v12 = [v23 isEqual:v24];

      if (v22)
      {

        v6 = v30;
        if (!v31)
        {
          v3 = v37;
          v17 = v32;
          goto LABEL_39;
        }

        v3 = v37;
        v17 = v32;
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

    v17 = v32;
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