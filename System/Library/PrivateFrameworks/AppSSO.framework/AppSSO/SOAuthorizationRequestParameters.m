@interface SOAuthorizationRequestParameters
- (SOAuthorizationRequestParameters)initWithAuthorizationRequestParametersCore:(id)a3;
- (SOAuthorizationRequestParameters)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAuthorizationRequestParameters

- (SOAuthorizationRequestParameters)initWithAuthorizationRequestParametersCore:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SOAuthorizationRequestParameters;
  v5 = [(SOAuthorizationRequestParameters *)&v33 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 url];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 httpHeaders];
    httpHeaders = v5->_httpHeaders;
    v5->_httpHeaders = v10;

    v12 = [v4 httpBody];
    httpBody = v5->_httpBody;
    v5->_httpBody = v12;

    v14 = [v4 requestedOperation];
    requestedOperation = v5->_requestedOperation;
    v5->_requestedOperation = v14;

    v16 = [v4 auditTokenData];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v16;

    v18 = [v4 authorizationOptions];
    authorizationOptions = v5->_authorizationOptions;
    v5->_authorizationOptions = v18;

    v5->_useInternalExtensions = [v4 useInternalExtensions];
    v20 = [v4 realm];
    realm = v5->_realm;
    v5->_realm = v20;

    v22 = [v4 extensionData];
    extensionData = v5->_extensionData;
    v5->_extensionData = v22;

    v24 = [v4 callerBundleIdentifier];
    callerBundleIdentifier = v5->_callerBundleIdentifier;
    v5->_callerBundleIdentifier = v24;

    v5->_responseCode = [v4 responseCode];
    v5->_cfNetworkInterception = [v4 isCFNetworkInterception];
    v5->_callerManaged = [v4 isCallerManaged];
    v26 = [v4 callerTeamIdentifier];
    callerTeamIdentifier = v5->_callerTeamIdentifier;
    v5->_callerTeamIdentifier = v26;

    v28 = [v4 localizedCallerDisplayName];
    localizedCallerDisplayName = v5->_localizedCallerDisplayName;
    v5->_localizedCallerDisplayName = v28;

    v5->_enableUserInteraction = [v4 isUserInteractionEnabled];
    v30 = [v4 impersonationBundleIdentifier];
    impersonationBundleIdentifier = v5->_impersonationBundleIdentifier;
    v5->_impersonationBundleIdentifier = v30;

    v5->_showOnCoverScreen = [v4 canShowOnCoverScreen];
  }

  return v5;
}

- (SOAuthorizationRequestParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v94.receiver = self;
  v94.super_class = SOAuthorizationRequestParameters;
  v5 = [(SOAuthorizationRequestParameters *)&v94 init];
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
    v88 = NSStringFromSelector(sel_pssoAuthenticationMethod);
    v89 = [v4 decodeObjectOfClass:v87 forKey:v88];
    v5->_pssoAuthenticationMethod = [v89 integerValue];

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_canShowOnCoverScreen);
    v92 = [v4 decodeObjectOfClass:v90 forKey:v91];
    v5->_showOnCoverScreen = [v92 BOOLValue];
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

  v41 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pssoAuthenticationMethod];
  v42 = NSStringFromSelector(sel_pssoAuthenticationMethod);
  [v5 encodeObject:v41 forKey:v42];

  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_showOnCoverScreen];
  v43 = NSStringFromSelector(sel_canShowOnCoverScreen);
  [v5 encodeObject:v44 forKey:v43];
}

- (id)description
{
  v47 = *MEMORY[0x1E69E9840];
  v22 = @"Identifier";
  v23 = @"URL";
  v20 = vdupq_n_s64(@"(null)");
  v35 = vbslq_s8(vceqzq_s64(*&self->_identifier), v20, *&self->_identifier);
  requestedOperation = self->_requestedOperation;
  if (!requestedOperation)
  {
    requestedOperation = @"(null)";
  }

  v24 = @"RequestedOperation";
  v25 = @"Realm";
  realm = self->_realm;
  if (!realm)
  {
    realm = @"(null)";
  }

  v36 = requestedOperation;
  v37 = realm;
  authorizationOptions = self->_authorizationOptions;
  responseCode = self->_responseCode;
  if (!authorizationOptions)
  {
    authorizationOptions = @"(null)";
  }

  v26 = @"AuthorizationOptions";
  v27 = @"UseInternalExtensions";
  if (self->_useInternalExtensions)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v38 = authorizationOptions;
  v39 = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{responseCode, *&v20, v22, v23, v24, v25, v26, v27, @"ResponseCode"}];
  v9 = v8;
  if (self->_cfNetworkInterception)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v40 = v8;
  v41 = v10;
  v28 = @"CFNetworkInterception";
  v29 = @"CallerManaged";
  if (self->_callerManaged)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v42 = v11;
  v30 = @"CallerTeamIdentifier";
  v31 = @"LocalizedCallerDisplayName";
  v43 = vbslq_s8(vceqzq_s64(*&self->_callerTeamIdentifier), v21, *&self->_callerTeamIdentifier);
  if (self->_enableUserInteraction)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v32 = @"EnableUserInteraction";
  v33 = @"ImpersonationBundleIdentifier";
  impersonationBundleIdentifier = self->_impersonationBundleIdentifier;
  pssoAuthenticationMethod = self->_pssoAuthenticationMethod;
  if (!impersonationBundleIdentifier)
  {
    impersonationBundleIdentifier = @"(null)";
  }

  v44 = v12;
  v45 = impersonationBundleIdentifier;
  v34 = @"AuthenticationMethod";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:pssoAuthenticationMethod];
  v46 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v22 count:14];
  v17 = [v16 description];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end