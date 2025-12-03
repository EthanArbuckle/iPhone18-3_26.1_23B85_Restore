@interface TKTokenAccessRequest
- (BOOL)isEqual:(id)equal;
- (TKTokenAccessRequest)initWithCaller:(id)caller tokenID:(id)d extension:(id)extension;
- (TKTokenAccessRequest)initWithClientBundleID:(id)d clientName:(id)name clientConnection:(id)connection clientHasAccessTokenEntitlement:(BOOL)entitlement tokenID:(id)iD providerBundleID:(id)bundleID providerName:(id)providerName correlationID:(id)self0;
@end

@implementation TKTokenAccessRequest

- (TKTokenAccessRequest)initWithClientBundleID:(id)d clientName:(id)name clientConnection:(id)connection clientHasAccessTokenEntitlement:(BOOL)entitlement tokenID:(id)iD providerBundleID:(id)bundleID providerName:(id)providerName correlationID:(id)self0
{
  dCopy = d;
  nameCopy = name;
  connectionCopy = connection;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  providerNameCopy = providerName;
  correlationIDCopy = correlationID;
  v27.receiver = self;
  v27.super_class = TKTokenAccessRequest;
  v18 = [(TKTokenAccessRequest *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientBundleID, d);
    objc_storeStrong(&v19->_clientName, name);
    objc_storeStrong(&v19->_clientConnection, connection);
    v19->_clientHasAccessTokenEntitlement = entitlement;
    objc_storeStrong(&v19->_tokenID, iD);
    objc_storeStrong(&v19->_providerBundleID, bundleID);
    objc_storeStrong(&v19->_providerName, providerName);
    objc_storeStrong(&v19->_correlationID, correlationID);
  }

  return v19;
}

- (TKTokenAccessRequest)initWithCaller:(id)caller tokenID:(id)d extension:(id)extension
{
  callerCopy = caller;
  dCopy = d;
  extensionCopy = extension;
  if (callerCopy)
  {
    [callerCopy auditToken];
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

  v28 = dCopy;
  selfCopy = self;
  v12 = v11;
  _Block_object_dispose(&v37, 8);
  v34 = v32;
  v35 = v33;
  v13 = [v11 tokenFromAuditToken:&v34];
  bundleID = [v13 bundleID];

  v15 = bundleID;
  v16 = objc_alloc_init(TKApplicationProxy);
  v31 = [(TKApplicationProxy *)v16 displayNameForBundleID:v15];

  v17 = [TKTokenAccessRequest alloc];
  v18 = [callerCopy valueForEntitlement:@"com.apple.private.ctk.token-access.allow"];
  bOOLValue = [v18 BOOLValue];
  _extensionBundle = [extensionCopy _extensionBundle];
  bundleIdentifier = [_extensionBundle bundleIdentifier];
  v30 = extensionCopy;
  _localizedShortName = [extensionCopy _localizedShortName];
  v23 = callerCopy;
  _localizedShortName2 = _localizedShortName;
  if (!_localizedShortName)
  {
    _localizedShortName2 = [v30 _localizedShortName];
  }

  v25 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v26 = [(TKTokenAccessRequest *)v17 initWithClientBundleID:v15 clientName:v31 clientConnection:v23 clientHasAccessTokenEntitlement:bOOLValue tokenID:v28 providerBundleID:bundleIdentifier providerName:_localizedShortName2 correlationID:v25];

  if (!_localizedShortName)
  {
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (!v5)
    {
      goto LABEL_15;
    }

    correlationID = [(TKTokenAccessRequest *)self correlationID];
    correlationID2 = [v5 correlationID];
    v8 = [correlationID isEqual:correlationID2];

    if (!v8)
    {
      goto LABEL_15;
    }

    clientBundleID = [(TKTokenAccessRequest *)self clientBundleID];
    if (clientBundleID)
    {
      v10 = clientBundleID;
      clientBundleID2 = [(TKTokenAccessRequest *)self clientBundleID];
      clientBundleID3 = [v5 clientBundleID];
      v13 = [clientBundleID2 isEqualToString:clientBundleID3];

      if (!v13)
      {
        goto LABEL_15;
      }
    }

    clientName = [(TKTokenAccessRequest *)self clientName];
    if (clientName)
    {
      v15 = clientName;
      clientName2 = [(TKTokenAccessRequest *)self clientName];
      clientName3 = [v5 clientName];
      v18 = [clientName2 isEqualToString:clientName3];

      if (!v18)
      {
        goto LABEL_15;
      }
    }

    clientHasAccessTokenEntitlement = [(TKTokenAccessRequest *)self clientHasAccessTokenEntitlement];
    if (clientHasAccessTokenEntitlement != [v5 clientHasAccessTokenEntitlement])
    {
      goto LABEL_15;
    }

    tokenID = [(TKTokenAccessRequest *)self tokenID];
    tokenID2 = [v5 tokenID];
    v22 = [tokenID isEqual:tokenID2];

    if (!v22)
    {
      goto LABEL_15;
    }

    providerBundleID = [(TKTokenAccessRequest *)self providerBundleID];
    if (!providerBundleID)
    {
      goto LABEL_12;
    }

    v24 = providerBundleID;
    providerBundleID2 = [(TKTokenAccessRequest *)self providerBundleID];
    providerBundleID3 = [v5 providerBundleID];
    v27 = [providerBundleID2 isEqual:providerBundleID3];

    if (v27)
    {
LABEL_12:
      providerName = [(TKTokenAccessRequest *)self providerName];
      if (providerName)
      {
        v29 = providerName;
        providerName2 = [(TKTokenAccessRequest *)self providerName];
        providerName3 = [v5 providerName];
        v32 = [providerName2 isEqual:providerName3];
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