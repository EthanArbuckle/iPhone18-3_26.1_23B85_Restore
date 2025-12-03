@interface AMSAuthenticateOptions
- (ACAccountStore)ams_accountStore;
- (AMSAuthenticateOptions)initWithLegacyOptionsDictionary:(id)dictionary;
@end

@implementation AMSAuthenticateOptions

- (ACAccountStore)ams_accountStore
{
  clientInfo = [(AMSAuthenticateOptions *)self clientInfo];
  accountMediaType = [clientInfo accountMediaType];
  v4 = [ACAccountStore ams_sharedAccountStoreForMediaType:accountMediaType];

  return v4;
}

- (AMSAuthenticateOptions)initWithLegacyOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AMSAuthenticateOptions *)self initWithOptionsDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_88;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventSecondaryAccountPETLookup"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"SSVerifyCredentialsAccountScope"];

  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"SSVerifyCredentialsAccountScope"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;

    integerValue = [v11 integerValue];
    if (integerValue == &dword_0 + 1)
    {
      v13 = AMSAccountMediaTypeAppStoreSandbox;
      clientInfo = [(AMSAuthenticateOptions *)v5 clientInfo];
      [clientInfo setAccountMediaType:v13];
    }
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitSuppressServerDialogs"];

  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitSuppressServerDialogs"];
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

  v18 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowPasswordReuse"];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitAllowSilentAuth"];
  v20 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPreventPrompt"];
  if (([v18 BOOLValue] & 1) != 0 || objc_msgSend(v19, "BOOLValue"))
  {
    bOOLValue = [v20 BOOLValue];
  }

  else
  {
    if (![v20 BOOLValue])
    {
      goto LABEL_22;
    }

    bOOLValue = 1;
  }

  [(AMSAuthenticateOptions *)v5 setAuthenticationType:bOOLValue];
LABEL_22:
  v22 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];

  if (v22)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCanSetActiveAccountKey"];
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

  v25 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];

  if (v25)
  {
    v26 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitCreateAccountQueryParamsKey"];
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

  v28 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];

  if (v28)
  {
    v29 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitOKButtonLabel"];
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

  v31 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];

  if (v31)
  {
    v32 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitLogUUIDKey"];
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
      logKey = [(AMSAuthenticateOptions *)v5 logKey];
      [(AMSAuthenticateOptions *)v5 setLogKey:logKey];
    }
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];

  if (v35)
  {
    v36 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitHTTPHeadersKey"];
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

  v38 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];

  if (v38)
  {
    v39 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitPromptTitle"];
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

  v41 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];

  if (v41)
  {
    v42 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppBundleIDKey"];
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

  v44 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];

  if (v44)
  {
    v45 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitProxiedAppNameKey"];
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

  v47 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];

  if (v47)
  {
    v48 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitReasonKey"];
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

  v50 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];

  if (v50)
  {
    v51 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentKey"];
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

  v53 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];

  if (v53)
  {
    v54 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreAuthKitUserAgentSuffixesKey"];
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

  v57 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];

  if (v57)
  {
    v58 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];
    if (objc_opt_respondsToSelector())
    {
      v59 = [dictionaryCopy objectForKeyedSubscript:@"SSAccountStoreIgnoreAccountConversionKey"];
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