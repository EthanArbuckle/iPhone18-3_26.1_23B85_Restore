@interface AMSAuthenticateOptions
- (ACAccountStore)ams_accountStore;
- (AMSAuthenticateOptions)initWithLegacyOptionsDictionary:(id)a3;
@end

@implementation AMSAuthenticateOptions

- (ACAccountStore)ams_accountStore
{
  v2 = [(AMSAuthenticateOptions *)self clientInfo];
  v3 = [v2 accountMediaType];
  v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:v3];

  return v4;
}

- (AMSAuthenticateOptions)initWithLegacyOptionsDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateOptions *)self initWithOptionsDictionary:v4];
  if (!v5)
  {
    goto LABEL_88;
  }

  v6 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    -[AMSAuthenticateOptions setAllowSecondaryCredentialSource:](v5, "setAllowSecondaryCredentialSource:", [v8 BOOLValue] ^ 1);
  }

  v9 = [v4 objectForKeyedSubscript:@"SSVerifyCredentialsAccountScope"];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"SSVerifyCredentialsAccountScope"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;

    v12 = [v11 integerValue];
    if (v12 == &dword_0 + 1)
    {
      v13 = AMSAccountMediaTypeAppStoreSandbox;
      v14 = [(AMSAuthenticateOptions *)v5 clientInfo];
      [v14 setAccountMediaType:v13];
    }
  }

  v15 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitSuppressServerDialogs"];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitSuppressServerDialogs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    -[AMSAuthenticateOptions setAllowServerDialogs:](v5, "setAllowServerDialogs:", [v17 BOOLValue] ^ 1);
  }

  v18 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
  v19 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
  v20 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  if (([v18 BOOLValue] & 1) != 0 || objc_msgSend(v19, "BOOLValue"))
  {
    v21 = [v20 BOOLValue];
  }

  else
  {
    if (![v20 BOOLValue])
    {
      goto LABEL_22;
    }

    v21 = 1;
  }

  [(AMSAuthenticateOptions *)v5 setAuthenticationType:v21];
LABEL_22:
  v22 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];

  if (v22)
  {
    v23 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    -[AMSAuthenticateOptions setCanMakeAccountActive:](v5, "setCanMakeAccountActive:", [v24 BOOLValue]);
  }

  v25 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];

  if (v25)
  {
    v26 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setCreateAccountQueryParams:v27];
  }

  v28 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];

  if (v28)
  {
    v29 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setDefaultButtonString:v30];
  }

  v31 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];

  if (v31)
  {
    v32 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      [(AMSAuthenticateOptions *)v5 setLogKey:v33];
    }

    else
    {
      v34 = [(AMSAuthenticateOptions *)v5 logKey];
      [(AMSAuthenticateOptions *)v5 setLogKey:v34];
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];

  if (v35)
  {
    v36 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setHTTPHeaders:v37];
  }

  v38 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];

  if (v38)
  {
    v39 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setPromptTitle:v40];
  }

  v41 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];

  if (v41)
  {
    v42 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setProxyAppBundleID:v43];
  }

  v44 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];

  if (v44)
  {
    v45 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setProxyAppName:v46];
  }

  v47 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];

  if (v47)
  {
    v48 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setReason:v49];
  }

  v50 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];

  if (v50)
  {
    v51 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    [(AMSAuthenticateOptions *)v5 setUserAgent:v52];
  }

  v53 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];

  if (v53)
  {
    v54 = [v4 objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v56 = [v55 ams_nonEmptyComponentsJoinedByString:@" "];
    [(AMSAuthenticateOptions *)v5 setUserAgentSuffix:v56];
  }

  v57 = [v4 objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];

  if (v57)
  {
    v58 = [v4 objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];
    if (objc_opt_respondsToSelector())
    {
      v59 = [v4 objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];
      -[AMSAuthenticateOptions setIgnoreAccountConversion:](v5, "setIgnoreAccountConversion:", [v59 BOOLValue]);
    }

    else
    {
      [(AMSAuthenticateOptions *)v5 setIgnoreAccountConversion:0];
    }
  }

LABEL_88:
  return v5;
}

@end