@interface SOAuthorizationRequestParametersCore
- (SOAuthorizationRequestParametersCore)initWithAuthorizationParameters:(id)a3;
- (SOAuthorizationRequestParametersCore)initWithAuthorizationParametersCore:(id)a3;
- (SOAuthorizationRequestParametersCore)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAuthorizationRequestParametersCore

- (SOAuthorizationRequestParametersCore)initWithAuthorizationParameters:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SOAuthorizationRequestParametersCore;
  v5 = [(SOAuthorizationRequestParametersCore *)&v21 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 url];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 operation];
    requestedOperation = v5->_requestedOperation;
    v5->_requestedOperation = v10;

    v12 = [v4 httpHeaders];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v12;

    v14 = [v4 httpBody];
    httpBody = v5->_httpBody;
    v5->_httpBody = v14;

    v16 = [v4 auditTokenData];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v16;

    v5->_useInternalExtensions = [v4 useInternalExtensions];
    v5->_responseCode = [v4 responseCode];
    v5->_cfNetworkInterception = [v4 isCFNetworkInterception];
    v18 = [v4 impersonationBundleIdentifier];
    impersonationBundleIdentifier = v5->_impersonationBundleIdentifier;
    v5->_impersonationBundleIdentifier = v18;

    v5->_showOnCoverScreen = [v4 canShowOnCoverScreen];
  }

  return v5;
}

- (SOAuthorizationRequestParametersCore)initWithAuthorizationParametersCore:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SOAuthorizationRequestParametersCore;
  v5 = [(SOAuthorizationRequestParametersCore *)&v21 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 url];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 operation];
    requestedOperation = v5->_requestedOperation;
    v5->_requestedOperation = v10;

    v12 = [v4 httpHeaders];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v12;

    v14 = [v4 httpBody];
    httpBody = v5->_httpBody;
    v5->_httpBody = v14;

    v16 = [v4 auditTokenData];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v16;

    v5->_useInternalExtensions = [v4 useInternalExtensions];
    v5->_responseCode = [v4 responseCode];
    v5->_cfNetworkInterception = [v4 isCFNetworkInterception];
    v18 = [v4 impersonationBundleIdentifier];
    impersonationBundleIdentifier = v5->_impersonationBundleIdentifier;
    v5->_impersonationBundleIdentifier = v18;

    v5->_showOnCoverScreen = [v4 canShowOnCoverScreen];
  }

  return v5;
}

- (SOAuthorizationRequestParametersCore)initWithCoder:(id)a3
{
  v4 = a3;
  v91.receiver = self;
  v91.super_class = SOAuthorizationRequestParametersCore;
  v5 = [(SOAuthorizationRequestParametersCore *)&v91 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("url");
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    url = v5->_url;
    v5->_url = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_requestedOperation);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    requestedOperation = v5->_requestedOperation;
    v5->_requestedOperation = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_httpHeaders);
    v22 = [v4 decodeObjectOfClasses:v20 forKey:v21];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_httpBody);
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    httpBody = v5->_httpBody;
    v5->_httpBody = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v28 setWithObjects:{v29, v30, v31, v32, v33, objc_opt_class(), 0}];
    v35 = NSStringFromSelector(sel_extensionData);
    v36 = [v4 decodeObjectOfClasses:v34 forKey:v35];
    extensionData = v5->_extensionData;
    v5->_extensionData = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_callerBundleIdentifier);
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    callerBundleIdentifier = v5->_callerBundleIdentifier;
    v5->_callerBundleIdentifier = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_auditTokenData);
    v44 = [v4 decodeObjectOfClass:v42 forKey:v43];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_realm);
    v48 = [v4 decodeObjectOfClass:v46 forKey:v47];
    realm = v5->_realm;
    v5->_realm = v48;

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = [v50 setWithObjects:{v51, v52, v53, v54, v55, objc_opt_class(), 0}];
    v57 = NSStringFromSelector(sel_authorizationOptions);
    v58 = [v4 decodeObjectOfClasses:v56 forKey:v57];
    authorizationOptions = v5->_authorizationOptions;
    v5->_authorizationOptions = v58;

    v60 = objc_opt_class();
    v61 = NSStringFromSelector(sel_useInternalExtensions);
    v62 = [v4 decodeObjectOfClass:v60 forKey:v61];
    v5->_useInternalExtensions = [v62 BOOLValue];

    v63 = objc_opt_class();
    v64 = NSStringFromSelector(sel_responseCode);
    v65 = [v4 decodeObjectOfClass:v63 forKey:v64];
    v5->_responseCode = [v65 integerValue];

    v66 = objc_opt_class();
    v67 = NSStringFromSelector(sel_isCFNetworkInterception);
    v68 = [v4 decodeObjectOfClass:v66 forKey:v67];
    v5->_cfNetworkInterception = [v68 BOOLValue];

    v69 = objc_opt_class();
    v70 = NSStringFromSelector(sel_isCallerManaged);
    v71 = [v4 decodeObjectOfClass:v69 forKey:v70];
    v5->_callerManaged = [v71 BOOLValue];

    v72 = objc_opt_class();
    v73 = NSStringFromSelector(sel_callerTeamIdentifier);
    v74 = [v4 decodeObjectOfClass:v72 forKey:v73];
    callerTeamIdentifier = v5->_callerTeamIdentifier;
    v5->_callerTeamIdentifier = v74;

    v76 = objc_opt_class();
    v77 = NSStringFromSelector(sel_localizedCallerDisplayName);
    v78 = [v4 decodeObjectOfClass:v76 forKey:v77];
    localizedCallerDisplayName = v5->_localizedCallerDisplayName;
    v5->_localizedCallerDisplayName = v78;

    v80 = objc_opt_class();
    v81 = NSStringFromSelector(sel_isUserInteractionEnabled);
    v82 = [v4 decodeObjectOfClass:v80 forKey:v81];
    v5->_enableUserInteraction = [v82 BOOLValue];

    v83 = objc_opt_class();
    v84 = NSStringFromSelector(sel_impersonationBundleIdentifier);
    v85 = [v4 decodeObjectOfClass:v83 forKey:v84];
    impersonationBundleIdentifier = v5->_impersonationBundleIdentifier;
    v5->_impersonationBundleIdentifier = v85;

    v87 = objc_opt_class();
    v88 = NSStringFromSelector(sel_canShowOnCoverScreen);
    v89 = [v4 decodeObjectOfClass:v87 forKey:v88];
    v5->_showOnCoverScreen = [v89 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v6];

  url = self->_url;
  v8 = NSStringFromSelector("url");
  [v5 encodeObject:url forKey:v8];

  requestedOperation = self->_requestedOperation;
  v10 = NSStringFromSelector(sel_requestedOperation);
  [v5 encodeObject:requestedOperation forKey:v10];

  httpHeaders = self->_httpHeaders;
  v12 = NSStringFromSelector(sel_httpHeaders);
  [v5 encodeObject:httpHeaders forKey:v12];

  httpBody = self->_httpBody;
  v14 = NSStringFromSelector(sel_httpBody);
  [v5 encodeObject:httpBody forKey:v14];

  extensionData = self->_extensionData;
  v16 = NSStringFromSelector(sel_extensionData);
  [v5 encodeObject:extensionData forKey:v16];

  callerBundleIdentifier = self->_callerBundleIdentifier;
  v18 = NSStringFromSelector(sel_callerBundleIdentifier);
  [v5 encodeObject:callerBundleIdentifier forKey:v18];

  auditTokenData = self->_auditTokenData;
  v20 = NSStringFromSelector(sel_auditTokenData);
  [v5 encodeObject:auditTokenData forKey:v20];

  realm = self->_realm;
  v22 = NSStringFromSelector(sel_realm);
  [v5 encodeObject:realm forKey:v22];

  authorizationOptions = self->_authorizationOptions;
  v24 = NSStringFromSelector(sel_authorizationOptions);
  [v5 encodeObject:authorizationOptions forKey:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_useInternalExtensions];
  v26 = NSStringFromSelector(sel_useInternalExtensions);
  [v5 encodeObject:v25 forKey:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:self->_responseCode];
  v28 = NSStringFromSelector(sel_responseCode);
  [v5 encodeObject:v27 forKey:v28];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_cfNetworkInterception];
  v30 = NSStringFromSelector(sel_isCFNetworkInterception);
  [v5 encodeObject:v29 forKey:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_callerManaged];
  v32 = NSStringFromSelector(sel_isCallerManaged);
  [v5 encodeObject:v31 forKey:v32];

  callerTeamIdentifier = self->_callerTeamIdentifier;
  v34 = NSStringFromSelector(sel_callerTeamIdentifier);
  [v5 encodeObject:callerTeamIdentifier forKey:v34];

  localizedCallerDisplayName = self->_localizedCallerDisplayName;
  v36 = NSStringFromSelector(sel_localizedCallerDisplayName);
  [v5 encodeObject:localizedCallerDisplayName forKey:v36];

  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableUserInteraction];
  v38 = NSStringFromSelector(sel_isUserInteractionEnabled);
  [v5 encodeObject:v37 forKey:v38];

  impersonationBundleIdentifier = self->_impersonationBundleIdentifier;
  v40 = NSStringFromSelector(sel_impersonationBundleIdentifier);
  [v5 encodeObject:impersonationBundleIdentifier forKey:v40];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:self->_showOnCoverScreen];
  v41 = NSStringFromSelector(sel_canShowOnCoverScreen);
  [v5 encodeObject:v42 forKey:v41];
}

- (id)description
{
  v32 = *MEMORY[0x1E69E9840];
  v20[0] = @"Identifier";
  v20[1] = @"URL";
  v18 = vdupq_n_s64(@"(null)");
  v21 = vbslq_s8(vceqzq_s64(*&self->_identifier), v18, *&self->_identifier);
  requestedOperation = self->_requestedOperation;
  if (!requestedOperation)
  {
    requestedOperation = @"(null)";
  }

  v20[2] = @"RequestedOperation";
  v20[3] = @"Realm";
  realm = self->_realm;
  if (!realm)
  {
    realm = @"(null)";
  }

  v22 = requestedOperation;
  v23 = realm;
  authorizationOptions = self->_authorizationOptions;
  responseCode = self->_responseCode;
  if (!authorizationOptions)
  {
    authorizationOptions = @"(null)";
  }

  v20[4] = @"AuthorizationOptions";
  v20[5] = @"UseInternalExtensions";
  if (self->_useInternalExtensions)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v24 = authorizationOptions;
  v25 = v7;
  v20[6] = @"ResponseCode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{responseCode, *&v18}];
  v9 = v8;
  if (self->_cfNetworkInterception)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v26 = v8;
  v27 = v10;
  v20[7] = @"CFNetworkInterception";
  v20[8] = @"CallerManaged";
  if (self->_callerManaged)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v28 = v11;
  v20[9] = @"CallerTeamIdentifier";
  v20[10] = @"LocalizedCallerDisplayName";
  v29 = vbslq_s8(vceqzq_s64(*&self->_callerTeamIdentifier), v19, *&self->_callerTeamIdentifier);
  if (self->_enableUserInteraction)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v20[11] = @"EnableUserInteraction";
  v20[12] = @"ImpersonationBundleIdentifier";
  impersonationBundleIdentifier = self->_impersonationBundleIdentifier;
  if (!impersonationBundleIdentifier)
  {
    impersonationBundleIdentifier = @"(null)";
  }

  v30 = v12;
  v31 = impersonationBundleIdentifier;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:v20 count:13];
  v15 = [v14 description];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end