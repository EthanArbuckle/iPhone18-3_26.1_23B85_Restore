@interface AMSUIWebNetworkAction
- (AMSUIWebNetworkAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_createSession;
- (id)runAction;
@end

@implementation AMSUIWebNetworkAction

- (AMSUIWebNetworkAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v45.receiver = self;
  v45.super_class = AMSUIWebNetworkAction;
  v7 = [(AMSUIWebAction *)&v45 initWithJSObject:v6 context:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(AMSUIWebAction *)v7 context];
    v10 = [v6 objectForKeyedSubscript:@"account"];
    v11 = [v9 iTunesAccountFromJSAccount:v10];
    account = v8->_account;
    v8->_account = v11;

    if (!v8->_account)
    {
      v13 = [(AMSUIWebAction *)v8 context];
      v14 = [v6 objectForKeyedSubscript:@"dsid"];
      v15 = [v13 iTunesAccountFromJSDSID:v14];
      v16 = v8->_account;
      v8->_account = v15;
    }

    v17 = [v6 objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    body = v8->_body;
    v8->_body = v18;

    v20 = [v6 objectForKeyedSubscript:@"gsTokenIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    gsTokenIdentifier = v8->_gsTokenIdentifier;
    v8->_gsTokenIdentifier = v21;

    v23 = [v6 objectForKeyedSubscript:@"headers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    headers = v8->_headers;
    v8->_headers = v24;

    v26 = [v6 objectForKeyedSubscript:@"includeAuthKitTokens"];
    if (objc_opt_respondsToSelector())
    {
      v27 = [v6 objectForKeyedSubscript:@"includeAuthKitTokens"];
      v8->_includeAuthKitTokens = [v27 BOOLValue];
    }

    else
    {
      v8->_includeAuthKitTokens = 0;
    }

    v28 = [v6 objectForKeyedSubscript:@"includeiCloudTokens"];
    if (objc_opt_respondsToSelector())
    {
      v29 = [v6 objectForKeyedSubscript:@"includeiCloudTokens"];
      v8->_includeiCloudTokens = [v29 BOOLValue];
    }

    else
    {
      v8->_includeiCloudTokens = 0;
    }

    v30 = [v6 objectForKeyedSubscript:@"method"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    method = v8->_method;
    v8->_method = v31;

    v33 = [v6 objectForKeyedSubscript:@"requiresCellularAccess"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [v6 objectForKeyedSubscript:@"requiresCellularAccess"];
      v8->_requiresCellularAccess = [v34 BOOLValue];
    }

    else
    {
      v8->_requiresCellularAccess = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"signatureData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    signatureData = v8->_signatureData;
    v8->_signatureData = v36;

    v38 = [v6 objectForKeyedSubscript:@"usePrimaryKeychain"];
    if (objc_opt_respondsToSelector())
    {
      v39 = [v6 objectForKeyedSubscript:@"usePrimaryKeychain"];
      v8->_usePrimaryKeychain = [v39 BOOLValue];
    }

    else
    {
      v8->_usePrimaryKeychain = 0;
    }

    v40 = [v6 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v41)
    {
      v42 = [MEMORY[0x1E695DFF8] URLWithString:v41];
      URL = v8->_URL;
      v8->_URL = v42;
    }
  }

  return v8;
}

- (id)runAction
{
  v82 = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = AMSUIWebNetworkAction;
  v3 = [(AMSUIWebAction *)&v74 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [(AMSUIWebNetworkAction *)self URL];
    v9 = AMSLogableURL();
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v80 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running network action for URL: %{public}@", buf, 0x20u);
  }

  v10 = [(AMSUIWebNetworkAction *)self URL];
  v11 = v10 == 0;

  if (v11)
  {
    v40 = MEMORY[0x1E698CAD0];
    v24 = AMSError();
    v41 = [v40 promiseWithError:v24];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AD68]);
    v13 = [(AMSUIWebNetworkAction *)self URL];
    v14 = [v12 initWithURL:v13];

    v15 = [(AMSUIWebNetworkAction *)self body];
    v16 = [v15 dataUsingEncoding:4];
    [v14 setHTTPBody:v16];

    v17 = [(AMSUIWebNetworkAction *)self method];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"GET";
    }

    [v14 setHTTPMethod:v19];

    v20 = [(AMSUIWebNetworkAction *)self headers];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke;
    v72[3] = &unk_1E7F25730;
    v21 = v14;
    v73 = v21;
    [v20 enumerateKeysAndObjectsUsingBlock:v72];

    v22 = [(AMSUIWebAction *)self context];
    v23 = [v22 additionalHeaders];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_2;
    v70[3] = &unk_1E7F25A18;
    v24 = v21;
    v71 = v24;
    [v23 enumerateKeysAndObjectsUsingBlock:v70];

    if ([(AMSUIWebNetworkAction *)self includeAuthKitTokens])
    {
      [v24 ak_addClientInfoHeader];
      [v24 ak_addPRKRequestHeader];
      v75 = 0;
      v76 = &v75;
      v77 = 0x2050000000;
      v25 = getAKAppleIDServerResourceLoadDelegateClass_softClass;
      v78 = getAKAppleIDServerResourceLoadDelegateClass_softClass;
      if (!getAKAppleIDServerResourceLoadDelegateClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAKAppleIDServerResourceLoadDelegateClass_block_invoke;
        v80 = &unk_1E7F241B0;
        v81 = &v75;
        __getAKAppleIDServerResourceLoadDelegateClass_block_invoke(buf);
        v25 = v76[3];
      }

      v26 = v25;
      _Block_object_dispose(&v75, 8);
      v27 = objc_alloc_init(v25);
      [v27 setShouldSendSigningHeaders:1];
      [v27 signRequest:v24];
    }

    if ([(AMSUIWebNetworkAction *)self includeiCloudTokens])
    {
      v28 = [(AMSUIWebAction *)self context];
      v29 = [v28 account];
      v30 = [v29 accountStore];
      v31 = [(AMSUIWebAction *)self context];
      v32 = [v31 account];
      v33 = [v30 ams_iCloudAccountForAccount:v32];

      v34 = [v33 accountStore];
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v35 = getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_ptr;
      v78 = getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_ptr;
      if (!getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_block_invoke;
        v80 = &unk_1E7F241B0;
        v81 = &v75;
        __getAppleIDAuthenticationAppleIDSettingsTokenIdentifierSymbolLoc_block_invoke(buf);
        v35 = v76[3];
      }

      _Block_object_dispose(&v75, 8);
      if (!v35)
      {
        [AIDAMutableServiceContext(AppleMediaServicesUI) _ams_installCDPUIWithCDPUIController:flowControllerDelegate:];
        __break(1u);
      }

      v36 = *v35;
      v69 = 0;
      v37 = v36;
      v38 = [v34 ams_fetchGrandSlamTokenForAccount:v33 withIdentifier:v37 error:&v69];
      v39 = v69;

      if (v39 || !v38)
      {
        v42 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v42)
        {
          v42 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v43 = [v42 OSLogObject];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = AMSLogKey();
          *buf = 138543874;
          *&buf[4] = v44;
          *&buf[12] = 2114;
          *&buf[14] = v45;
          *&buf[22] = 2114;
          v80 = v39;
          _os_log_impl(&dword_1BB036000, v43, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch GS token. %{public}@", buf, 0x20u);
        }
      }

      else
      {
        [v24 setValue:v38 forHTTPHeaderField:*MEMORY[0x1E698C588]];
      }
    }

    v46 = objc_alloc(MEMORY[0x1E698CB88]);
    v47 = [(AMSUIWebAction *)self context];
    v48 = [v47 bag];
    v49 = [v46 initWithBag:v48];

    v50 = [(AMSUIWebNetworkAction *)self account];
    [v49 setAccount:v50];

    v51 = [(AMSUIWebAction *)self context];
    v52 = [v51 clientInfo];
    [v49 setClientInfo:v52];

    [v49 setEnableRemoteSecuritySigning:1];
    v53 = AMSLogKey();
    [v49 setLogUUID:v53];

    v54 = [(AMSUIWebNetworkAction *)self gsTokenIdentifier];
    [v49 setGsTokenIdentifier:v54];

    v55 = objc_alloc_init(MEMORY[0x1E698C948]);
    [v55 setPurpose:{-[AMSUIWebNetworkAction usePrimaryKeychain](self, "usePrimaryKeychain") ^ 1}];
    [v55 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
    [v49 setKeychainOptions:v55];
    v56 = [v49 requestByEncodingRequest:v24 parameters:0];
    v57 = [(AMSUIWebNetworkAction *)self signatureData];
    v58 = v57;
    if (v57)
    {
      v59 = [v57 dataUsingEncoding:4];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_56;
      v67[3] = &unk_1E7F25780;
      v67[4] = self;
      v68 = v59;
      v60 = v59;
      v61 = [v56 thenWithBlock:v67];

      v56 = v61;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_2_69;
    v66[3] = &unk_1E7F26840;
    v66[4] = self;
    v62 = [v56 thenWithBlock:v66];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_3_72;
    v65[3] = &unk_1E7F24918;
    v65[4] = self;
    v41 = [v62 thenWithBlock:v65];
  }

  v63 = *MEMORY[0x1E69E9840];

  return v41;
}

id __34__AMSUIWebNetworkAction_runAction__block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 mescalSession];

  if (v5)
  {
    v6 = [*(a1 + 32) context];
    v7 = [v6 mescalSession];
    v8 = [v7 signData:*(a1 + 40)];
  }

  else
  {
    v6 = AMSError();
    v8 = [MEMORY[0x1E698CAD0] promiseWithError:v6];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_2_63;
  v20[3] = &unk_1E7F267F0;
  v9 = v3;
  v21 = v9;
  [v8 addSuccessBlock:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_3;
  v19[3] = &unk_1E7F24410;
  v19[4] = *(a1 + 32);
  [v8 addErrorBlock:v19];
  v10 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__AMSUIWebNetworkAction_runAction__block_invoke_66;
  v16[3] = &unk_1E7F26818;
  v11 = v10;
  v17 = v11;
  v18 = v9;
  v12 = v9;
  [v8 addFinishBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __34__AMSUIWebNetworkAction_runAction__block_invoke_2_63(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base64EncodedStringWithOptions:0];
  [v2 setValue:v3 forHTTPHeaderField:*MEMORY[0x1E698C5E8]];
}

void __34__AMSUIWebNetworkAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to sign a request: %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

id __34__AMSUIWebNetworkAction_runAction__block_invoke_2_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) account];

  if (v4)
  {
    [v3 ak_addClientInfoHeader];
  }

  v5 = [v3 mutableCopy];
  v6 = [*(a1 + 32) context];
  v7 = [v6 actionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) context];
    v10 = [v9 actionDelegate];
    [v10 action:*(a1 + 32) didEncodeNetworkRequest:v5];
  }

  v11 = [*(a1 + 32) _createSession];
  v12 = [v11 dataTaskPromiseWithRequest:v5];

  return v12;
}

id __34__AMSUIWebNetworkAction_runAction__block_invoke_3_72(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 account];
  [v5 ams_addCookiesForResult:v3];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v3 object];
  v8 = [v7 ams_sanitizeServerObject];
  [v6 setObject:v8 forKeyedSubscript:@"body"];

  v9 = [v3 responseHeaders];
  [v6 setObject:v9 forKeyedSubscript:@"headers"];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v3 responseStatusCode];

  v12 = [v10 numberWithInteger:v11];
  [v6 setObject:v12 forKeyedSubscript:@"status"];

  v13 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  return v13;
}

- (id)_createSession
{
  v3 = [(AMSUIWebAction *)self context];
  v4 = [v3 URLSession];

  if ([(AMSUIWebNetworkAction *)self requiresCellularAccess])
  {
    v5 = MEMORY[0x1E696AF80];
    v6 = [(AMSUIWebAction *)self context];
    v7 = [v6 clientInfo];
    v8 = [(AMSUIWebAction *)self context];
    v9 = [v8 bag];
    v10 = [v5 ams_configurationWithProcessInfo:v7 bag:v9];

    [v10 set_CTDataConnectionServiceType:*MEMORY[0x1E6965270]];
    v11 = [objc_alloc(MEMORY[0x1E698CBA8]) initWithConfiguration:v10];

    v4 = v11;
  }

  return v4;
}

@end