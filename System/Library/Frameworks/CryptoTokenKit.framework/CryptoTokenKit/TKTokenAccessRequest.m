@interface TKTokenAccessRequest
- (BOOL)isEqual:(id)a3;
- (TKTokenAccessRequest)initWithCaller:(id)a3 tokenID:(id)a4 extension:(id)a5;
- (TKTokenAccessRequest)initWithClientBundleID:(id)a3 clientName:(id)a4 clientConnection:(id)a5 clientHasAccessTokenEntitlement:(BOOL)a6 tokenID:(id)a7 providerBundleID:(id)a8 providerName:(id)a9 correlationID:(id)a10;
@end

@implementation TKTokenAccessRequest

- (TKTokenAccessRequest)initWithClientBundleID:(id)a3 clientName:(id)a4 clientConnection:(id)a5 clientHasAccessTokenEntitlement:(BOOL)a6 tokenID:(id)a7 providerBundleID:(id)a8 providerName:(id)a9 correlationID:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = TKTokenAccessRequest;
  v18 = [(TKTokenAccessRequest *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientBundleID, a3);
    objc_storeStrong(&v19->_clientName, a4);
    objc_storeStrong(&v19->_clientConnection, a5);
    v19->_clientHasAccessTokenEntitlement = a6;
    objc_storeStrong(&v19->_tokenID, a7);
    objc_storeStrong(&v19->_providerBundleID, a8);
    objc_storeStrong(&v19->_providerName, a9);
    objc_storeStrong(&v19->_correlationID, a10);
  }

  return v19;
}

- (TKTokenAccessRequest)initWithCaller:(id)a3 tokenID:(id)a4 extension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v11 = getBSAuditTokenClass_softClass;
  v40 = getBSAuditTokenClass_softClass;
  if (!getBSAuditTokenClass_softClass)
  {
    *&v34 = MEMORY[0x1E69E9820];
    *(&v34 + 1) = 3221225472;
    *&v35 = __getBSAuditTokenClass_block_invoke;
    *(&v35 + 1) = &unk_1E86B6FC0;
    v36 = &v37;
    __getBSAuditTokenClass_block_invoke(&v34);
    v11 = v38[3];
  }

  v28 = v9;
  v29 = self;
  v12 = v11;
  _Block_object_dispose(&v37, 8);
  v34 = v32;
  v35 = v33;
  v13 = [v11 tokenFromAuditToken:&v34];
  v14 = [v13 bundleID];

  v15 = v14;
  v16 = objc_alloc_init(TKApplicationProxy);
  v31 = [(TKApplicationProxy *)v16 displayNameForBundleID:v15];

  v17 = [TKTokenAccessRequest alloc];
  v18 = [v8 valueForEntitlement:@"com.apple.private.ctk.token-access.allow"];
  v19 = [v18 BOOLValue];
  v20 = [v10 _extensionBundle];
  v21 = [v20 bundleIdentifier];
  v30 = v10;
  v22 = [v10 _localizedShortName];
  v23 = v8;
  v24 = v22;
  if (!v22)
  {
    v24 = [v30 _localizedShortName];
  }

  v25 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v26 = [(TKTokenAccessRequest *)v17 initWithClientBundleID:v15 clientName:v31 clientConnection:v23 clientHasAccessTokenEntitlement:v19 tokenID:v28 providerBundleID:v21 providerName:v24 correlationID:v25];

  if (!v22)
  {
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = [(TKTokenAccessRequest *)self correlationID];
    v7 = [v5 correlationID];
    v8 = [v6 isEqual:v7];

    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = [(TKTokenAccessRequest *)self clientBundleID];
    if (v9)
    {
      v10 = v9;
      v11 = [(TKTokenAccessRequest *)self clientBundleID];
      v12 = [v5 clientBundleID];
      v13 = [v11 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = [(TKTokenAccessRequest *)self clientName];
    if (v14)
    {
      v15 = v14;
      v16 = [(TKTokenAccessRequest *)self clientName];
      v17 = [v5 clientName];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_15;
      }
    }

    v19 = [(TKTokenAccessRequest *)self clientHasAccessTokenEntitlement];
    if (v19 != [v5 clientHasAccessTokenEntitlement])
    {
      goto LABEL_15;
    }

    v20 = [(TKTokenAccessRequest *)self tokenID];
    v21 = [v5 tokenID];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_15;
    }

    v23 = [(TKTokenAccessRequest *)self providerBundleID];
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = [(TKTokenAccessRequest *)self providerBundleID];
    v26 = [v5 providerBundleID];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
LABEL_12:
      v28 = [(TKTokenAccessRequest *)self providerName];
      if (v28)
      {
        v29 = v28;
        v30 = [(TKTokenAccessRequest *)self providerName];
        v31 = [v5 providerName];
        v32 = [v30 isEqual:v31];
      }

      else
      {
        v32 = 1;
      }
    }

    else
    {
LABEL_15:
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

@end