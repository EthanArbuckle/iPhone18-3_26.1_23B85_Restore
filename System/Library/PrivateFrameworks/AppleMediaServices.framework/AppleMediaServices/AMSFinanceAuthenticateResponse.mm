@interface AMSFinanceAuthenticateResponse
+ (id)_authenticateRequestWithAuthType:(unint64_t)a3 taskInfo:(id)a4 dialogResponse:(id)a5 serviceIdentifier:(id)a6;
+ (id)_handleAuthResult:(id)a3 authError:(id)a4 originalRequest:(id)a5 actionResult:(id)a6 redirectURL:(id)a7 taskInfo:(id)a8;
+ (id)_performAuthRequest:(id)a3 actionResult:(id)a4 redirectURL:(id)a5 taskInfo:(id)a6;
+ (id)_presentAuthRequest:(id)a3 taskInfo:(id)a4;
+ (id)_serviceIdentifierForResponse:(id)a3 taskInfo:(id)a4;
+ (id)performAuthFromResponse:(id)a3 taskInfo:(id)a4;
+ (unint64_t)authenticationTypeForResponse:(id)a3 responseDictionary:(id)a4;
+ (void)_handleDialogFromAuthError:(id)a3 taskInfo:(id)a4;
+ (void)_updateTaskWithAuthedAccount:(id)a3 taskInfo:(id)a4;
+ (void)_updateTaskWithLastCredentialSource:(id)a3 taskInfo:(id)a4;
- (AMSFinanceAuthenticateResponse)initWithResponseDictionary:(id)a3 taskInfo:(id)a4;
- (id)_locateActionableButtonUsingDialogResponse:(id)a3;
- (id)performWithTaskInfo:(id)a3;
- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4;
@end

@implementation AMSFinanceAuthenticateResponse

- (AMSFinanceAuthenticateResponse)initWithResponseDictionary:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = AMSFinanceAuthenticateResponse;
  v8 = [(AMSFinanceAuthenticateResponse *)&v23 init];
  if (v8)
  {
    v9 = [AMSFinanceResponse valueForProtocolKey:@"dialog" inResponse:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    dialogDictionary = v8->_dialogDictionary;
    v8->_dialogDictionary = v10;

    if (v8->_dialogDictionary)
    {
      v12 = [[AMSFinanceDialogResponse alloc] initWithResponseDictionary:v6 kind:2 taskInfo:v7];
      dialogResponse = v8->_dialogResponse;
      v8->_dialogResponse = v12;
    }

    v14 = objc_opt_class();
    v15 = [v7 response];
    v16 = [v14 authenticationTypeForResponse:v15 responseDictionary:v6];

    v17 = objc_opt_class();
    v18 = [v7 response];
    v19 = [v17 _serviceIdentifierForResponse:v18 taskInfo:v7];

    v20 = [objc_opt_class() _authenticateRequestWithAuthType:v16 taskInfo:v7 dialogResponse:v8->_dialogResponse serviceIdentifier:v19];
    authenticateRequest = v8->_authenticateRequest;
    v8->_authenticateRequest = v20;
  }

  return v8;
}

+ (unint64_t)authenticationTypeForResponse:(id)a3 responseDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 ams_valueForHTTPHeaderField:@"X-Apple-Allow-Auth-Types"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v7 componentsSeparatedByString:@" "];
  v10 = [v8 setWithArray:v9];

  v11 = [v10 containsObject:@"loud"];
  v12 = [v10 containsObject:@"silent"];
  v13 = [v6 ams_statusCode];

  if (v13 != 401)
  {
    if (v12)
    {
LABEL_10:
      v15 = 0;
      goto LABEL_16;
    }

    v16 = [v5 objectForKeyedSubscript:@"failureType"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v5 objectForKeyedSubscript:@"failureType"];
      v18 = [v17 longLongValue];

      if (v18 == 2002)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v15 = 2;
    goto LABEL_16;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v14 = 1;
  }

  if (v11)
  {
    v14 = 2;
  }

  if (v11 & v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

LABEL_16:

  return v15;
}

+ (id)performAuthFromResponse:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 authenticationTypeForResponse:v6 responseDictionary:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[AMSOptional optionalWithNil];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v11 = v8;
    v9 = [objc_opt_class() _serviceIdentifierForResponse:v6 taskInfo:v7];
    v12 = [a1 _authenticateRequestWithAuthType:v11 taskInfo:v7 dialogResponse:0 serviceIdentifier:v9];
    v13 = [v7 properties];
    v14 = [v13 bag];
    v15 = [v14 stringForKey:@"skip-authenticate-header"];
    v16 = [v15 valueWithError:0];

    if (v16)
    {
      v17 = [v6 ams_valueForHTTPHeaderField:v16];

      if (v17)
      {
        v18 = [v12 options];
        [v18 setServiceTokenOnly:1];
      }
    }

    v19 = [v6 ams_valueForHTTPHeaderField:@"Location"];
    if (v19)
    {
      v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];
    }

    else
    {
      v20 = 0;
    }

    v10 = [a1 _performAuthRequest:v12 actionResult:0 redirectURL:v20 taskInfo:v7];
  }

  return v10;
}

- (id)performWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSFinanceAuthenticateResponse_performWithTaskInfo___block_invoke;
  v10[3] = &unk_1E73B7C48;
  v11 = v5;
  v6 = v5;
  [(AMSFinanceAuthenticateResponse *)self performWithTaskInfo:v4 completionHandler:v10];

  v7 = [(AMSPromise *)v6 resultWithError:0];
  v8 = [v7 value];

  return v8;
}

void __54__AMSFinanceAuthenticateResponse_performWithTaskInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSFinanceAuthenticateResponse *)self dialogResponse];
  v9 = [(AMSFinanceAuthenticateResponse *)self _locateActionableButtonUsingDialogResponse:v8];

  v10 = [AMSDialogResult alloc];
  v11 = [(AMSFinanceAuthenticateResponse *)self dialogResponse];
  v12 = [v11 dialogRequest];
  v13 = [v9 identifier];
  v14 = [(AMSDialogResult *)v10 initWithOriginalRequest:v12 selectedActionIdentifier:v13];

  v15 = [v9 deepLink];

  if (v15)
  {
    v16 = [v9 ams_rawURL];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v9 deepLink];
    }

    v15 = v18;
  }

  v19 = objc_opt_class();
  v20 = [(AMSFinanceAuthenticateResponse *)self authenticateRequest];
  v21 = [v19 _performAuthRequest:v20 actionResult:v14 redirectURL:v15 taskInfo:v6];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__AMSFinanceAuthenticateResponse_performWithTaskInfo_completionHandler___block_invoke;
  v24[3] = &unk_1E73B7C70;
  v24[4] = self;
  v25 = v6;
  v26 = v7;
  v22 = v7;
  v23 = v6;
  [v21 resultWithCompletion:v24];
}

void __72__AMSFinanceAuthenticateResponse_performWithTaskInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v11 = v9;
    v12 = [v10 properties];
    v13 = [v12 logUUID];
    v14 = AMSLogableError(v6);
    v17 = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication request from response complete. action = %{public}@ | error = %{public}@", &v17, 0x2Au);
  }

  v15 = *(a1 + 48);
  v16 = [v5 value];
  (*(v15 + 16))(v15, v16);
}

+ (id)_authenticateRequestWithAuthType:(unint64_t)a3 taskInfo:(id)a4 dialogResponse:(id)a5 serviceIdentifier:(id)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 properties];
  if ([v12 dialogOptions])
  {
  }

  else
  {
    v13 = [v9 properties];
    v14 = [v13 dialogOptions];

    if ((v14 & 4) == 0)
    {
      goto LABEL_10;
    }
  }

  v15 = +[AMSLogConfig sharedAccountsConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v64 = v17;
    [v9 properties];
    v18 = v11;
    v20 = v19 = v9;
    [v20 logUUID];
    v22 = v21 = v10;
    *buf = 138544130;
    v72 = v17;
    v73 = 2114;
    v74 = v22;
    v75 = 2048;
    v76 = a3;
    v77 = 2048;
    v78 = 1;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding the authentication type. originalAuthenticationType = %lu | newAuthenticationType = %lu", buf, 0x2Au);

    v10 = v21;
    v9 = v19;
    v11 = v18;
  }

  a3 = 1;
LABEL_10:
  v23 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v23 setAuthenticationType:a3];
  [(AMSAuthenticateOptions *)v23 setAllowServerDialogs:a3 != 1];
  [(AMSAuthenticateOptions *)v23 setAllowSecondaryCredentialSource:0];
  [(AMSAuthenticateOptions *)v23 setCanMakeAccountActive:0];
  v24 = [v9 properties];
  v25 = [v24 clientInfo];

  if (v25)
  {
    v26 = [v9 properties];
    v27 = [v26 clientInfo];
    [(AMSAuthenticateOptions *)v23 setClientInfo:v27];
  }

  v65 = v11;
  [(AMSAuthenticateOptions *)v23 setServiceIdentifier:v11];
  if (v10)
  {
    v28 = [v10 dialogRequest];
    v29 = [v28 title];
    [(AMSAuthenticateOptions *)v23 setPromptTitle:v29];

    v30 = [v10 dialogRequest];
    v31 = [v30 message];
    [(AMSAuthenticateOptions *)v23 setReason:v31];

    v62 = v10;
    v32 = MEMORY[0x1E696AEC0];
    v33 = [v9 response];
    v34 = [v33 URL];
    v35 = AMSLogableURL(v34);
    v36 = v9;
    v37 = MEMORY[0x1E696AD98];
    v38 = [v36 response];
    v39 = [v37 numberWithInteger:{objc_msgSend(v38, "ams_statusCode")}];
    v63 = v36;
    v40 = [v36 response];
    v41 = [v40 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
    v42 = AMSHashIfNeeded(v41);
    v43 = [v32 stringWithFormat:@"url: %@ status: %@; correlation: %@", v35, v39, v42];;
    [(AMSAuthenticateOptions *)v23 setDebugReason:v43];

    v10 = v62;
    v44 = [v62 dialogRequest];
    v45 = [v44 buttonActions];

    if ([v45 count] <= 2)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v67;
        while (2)
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v67 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v66 + 1) + 8 * i);
            if ([v51 ams_actionType] && objc_msgSend(v51, "ams_actionType") != 6)
            {
              v52 = [v51 title];
              [(AMSAuthenticateOptions *)v23 setDefaultButtonString:v52];

              goto LABEL_26;
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:
    }

    v9 = v63;
  }

  else
  {
    [(AMSAuthenticateOptions *)v23 setDebugReason:@"no dialogResponse in AMSFinanceAuthenticateResponse"];
  }

  v53 = [v9 properties];
  v54 = [v53 account];
  v55 = [v54 ams_isLocalAccount];

  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = [v9 properties];
    v56 = [v57 account];
  }

  v58 = [[AMSAuthenticateRequest alloc] initWithAccount:v56 options:v23];
  v59 = [v9 properties];
  v60 = [v59 logUUID];
  [(AMSAuthenticateRequest *)v58 setLogKey:v60];

  [(AMSAuthenticateRequest *)v58 setIsServerRequested:1];

  return v58;
}

- (id)_locateActionableButtonUsingDialogResponse:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 dialogRequest];
  v5 = [v4 buttonActions];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      if ([v11 ams_actionType])
      {
        v12 = v11;

        v8 = v12;
      }

      if ([v11 ams_actionType] == 1)
      {
        v13 = [v11 ams_subtarget];
        v14 = [v13 lowercaseString];
        v15 = [v14 containsString:@"signup"];

        if (!v15)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_performAuthRequest:(id)a3 actionResult:(id)a4 redirectURL:(id)a5 taskInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 _presentAuthRequest:v10 taskInfo:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__AMSFinanceAuthenticateResponse__performAuthRequest_actionResult_redirectURL_taskInfo___block_invoke;
  v21[3] = &unk_1E73B7C98;
  v25 = v13;
  v26 = a1;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [v14 continueWithBlock:v21];

  return v19;
}

+ (id)_handleAuthResult:(id)a3 authError:(id)a4 originalRequest:(id)a5 actionResult:(id)a6 redirectURL:(id)a7 taskInfo:(id)a8
{
  v87 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v76 = a7;
  v17 = a8;
  v18 = +[AMSLogConfig sharedAccountsConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  v20 = v77;
  v74 = a1;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v16;
    v22 = v15;
    v23 = objc_opt_class();
    v72 = v23;
    v24 = [v17 properties];
    [v24 logUUID];
    v26 = v25 = v17;
    *buf = 138543874;
    v80 = v23;
    v15 = v22;
    v16 = v21;
    v81 = 2114;
    v82 = v26;
    v83 = 1024;
    LODWORD(v84) = v77 != 0;
    _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication finished (success: %d)", buf, 0x1Cu);

    v17 = v25;
    a1 = v74;
  }

  v75 = v14;
  if (v14)
  {
    [a1 _handleDialogFromAuthError:v14 taskInfo:v17];
    v27 = [AMSURLAction actionWithError:v14];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      if ([v27 actionType])
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    [a1 _updateTaskWithAuthedAccount:v77 taskInfo:v17];
    [a1 _updateTaskWithLastCredentialSource:v77 taskInfo:v17];
    v28 = 0;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = [v16 originalRequest];
  v32 = [v16 selectedActionIdentifier];
  v33 = [v31 locateActionWithIdentifier:v32];

  v73 = v33;
  if ([v33 ams_URLType] == 1 || objc_msgSend(v33, "ams_actionType") == 5)
  {
    v34 = [AMSFinanceDialogResponse handleDialogResult:v16 taskInfo:v17];
  }

  else
  {
    if (v76)
    {
      [AMSURLAction redirectActionWithURL:?];
    }

    else
    {
      +[AMSURLAction retryAction];
    }
    v34 = ;
  }

  v29 = v34;

  [v29 setRetryIdentifier:0x1F071ED58];
  [v29 setReason:@"authentication"];
  [v29 setDialogResult:v16];
  [v29 setAuthenticateResult:v77];
  v35 = [v15 options];
  v36 = [v35 serviceIdentifier];

  if (v36)
  {
    v71 = v36;
    v37 = +[AMSLogConfig sharedConfig];
    if (!v37)
    {
      v37 = +[AMSLogConfig sharedConfig];
    }

    v38 = [v37 OSLogObject];
    v67 = v17;
    v68 = v15;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = AMSLogKey();
      v41 = [v77 authKitUpdateResult];
      [v41 authenticationResults];
      v42 = v69 = v16;
      v43 = [v42 ak_redactedCopy];
      v44 = AMSHashIfNeeded(v43);
      *buf = 138544130;
      v80 = v39;
      v20 = v77;
      v81 = 2114;
      v82 = v40;
      v83 = 2112;
      v84 = v71;
      v85 = 2112;
      v86 = v44;
      _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth request service identifier: %@. Authentication results: %@", buf, 0x2Au);

      v16 = v69;
    }

    v45 = [MEMORY[0x1E698B890] currentInfo];
    v78 = [v45 clientInfoHeader];

    v70 = +[AMSDevice uniqueDeviceId];
    v46 = [v20 authKitUpdateResult];
    v47 = [v46 authenticationResults];
    v48 = [v47 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v36 = v71;

    v50 = [v49 objectForKeyedSubscript:v71];
    [v30 setObject:v78 forKeyedSubscript:@"X-MMe-Client-Info"];
    [v30 setObject:v70 forKeyedSubscript:@"X-Mme-Device-Id"];
    [v30 setObject:v50 forKeyedSubscript:@"X-Apple-GS-Token"];
    [v30 setObject:v71 forKeyedSubscript:@"X-Apple-GS-Token-Identifier"];
    v51 = +[AMSLogConfig sharedConfig];
    v52 = v51;
    if (v50)
    {
      if (!v51)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      v53 = [v52 OSLogObject];
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v54 = objc_opt_class();
      AMSLogKey();
      v56 = v55 = v16;
      *buf = 138543874;
      v80 = v54;
      v81 = 2114;
      v82 = v56;
      v83 = 2112;
      v84 = v50;
      v57 = "%{public}@: [%{public}@] Received an updated GrandSlam token %@";
      v58 = v53;
      v59 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!v51)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      v53 = [v52 OSLogObject];
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v60 = objc_opt_class();
      AMSLogKey();
      v56 = v55 = v16;
      *buf = 138543874;
      v80 = v60;
      v81 = 2114;
      v82 = v56;
      v83 = 2112;
      v84 = v20;
      v57 = "%{public}@: [%{public}@] Unable to locate GrandSlam token in auth result: %@";
      v58 = v53;
      v59 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_192869000, v58, v59, v57, buf, 0x20u);

    v16 = v55;
    v36 = v71;
LABEL_34:

    v17 = v67;
    v15 = v68;
  }

  v61 = [v20 account];
  v62 = [AMSBiometrics stateForAccount:v61];

  if (v20 && v62 == 1)
  {
    [v30 setObject:0x1F07212F8 forKeyedSubscript:@"X-Apple-TID-Action"];
  }

  v63 = [v30 copy];
  [v29 setUpdatedHeaders:v63];

LABEL_39:
  v64 = [[AMSOptional alloc] initWithValue:v29];
  v65 = [AMSPromise promiseWithResult:v64];

  return v65;
}

+ (void)_handleDialogFromAuthError:(id)a3 taskInfo:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"AMSAuthenticateErrorDialog"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    if (v9)
    {
LABEL_7:
      v14 = +[AMSLogConfig sharedAccountsConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [v6 properties];
        v19 = [v18 logUUID];
        v21 = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v19;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication returned a dialog.", &v21, 0x16u);
      }

      v20 = [AMSFinanceDialogResponse performFinanceDialog:v9 taskInfo:v6];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = [v5 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v12 = [v11 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"AMSAuthenticateErrorDialog"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_13;
  }

  v9 = v13;

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_13:
}

+ (id)_presentAuthRequest:(id)a3 taskInfo:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 session];
  v8 = [v7 delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  if (v9 & 1) != 0 || (v10)
  {
    v18 = +[AMSLogConfig sharedAccountsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v30 = v20;
      v21 = [v6 properties];
      v22 = [v21 logUUID];
      *buf = 138543618;
      v33 = v20;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing authentication", buf, 0x16u);
    }

    v17 = objc_alloc_init(AMSPromise);
    if (v9)
    {
      v16 = [v6 task];
      v23 = [(AMSPromise *)v17 completionHandlerAdapter];
      [v8 AMSURLSession:v7 task:v16 handleAuthenticateRequest:v5 completion:v23];
    }

    else
    {
      v24 = +[AMSLogConfig sharedAccountsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v31 = v26;
        v27 = [v6 properties];
        v28 = [v27 logUUID];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v28;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for authentication handling", buf, 0x16u);
      }

      v16 = [(AMSPromise *)v17 completionHandlerAdapter];
      [v8 AMSURLSession:v7 handleAuthenticateRequest:v5 completion:v16];
    }
  }

  else
  {
    v16 = AMSErrorWithFormat(2, @"Finance Authentication Error", @"No delegate to perform authentication: %@", v11, v12, v13, v14, v15, v5);
    v17 = [AMSPromise promiseWithError:v16];
  }

  return v17;
}

+ (id)_serviceIdentifierForResponse:(id)a3 taskInfo:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v6 properties];
    v12 = [v11 logUUID];
    *buf = 138543618;
    v59 = v9;
    v60 = 2114;
    v61 = v12;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Getting service identifier from response", buf, 0x16u);
  }

  v13 = [v5 ams_valueForHTTPHeaderField:@"X-Apple-Auth-Services"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = [v13 componentsSeparatedByString:@" "];
  v16 = [v14 setWithArray:v15];

  v17 = [v16 containsObject:@"GS"];
  v18 = [v5 ams_statusCode];
  v19 = +[AMSLogConfig sharedAccountsConfig];
  v20 = v19;
  if (v18 == 401 && v17)
  {
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v55 = v22;
      [v6 properties];
      v23 = v5;
      v24 = v16;
      v25 = v13;
      v27 = v26 = v6;
      v28 = [v27 logUUID];
      *buf = 138543618;
      v59 = v22;
      v60 = 2114;
      v61 = v28;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth services header contain GS", buf, 0x16u);

      v6 = v26;
      v13 = v25;
      v16 = v24;
      v5 = v23;
    }

    v29 = [v5 ams_valueForHTTPHeaderField:@"X-Apple-GS-Token-Identifier"];
    v30 = +[AMSLogConfig sharedAccountsConfig];
    v31 = v30;
    if (v29)
    {
      if (!v30)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v56 = v33;
        v34 = [v6 properties];
        [v34 logUUID];
        v35 = v5;
        v36 = v16;
        v37 = v13;
        v39 = v38 = v6;
        *buf = 138543874;
        v59 = v33;
        v60 = 2114;
        v61 = v39;
        v62 = 2112;
        v63 = v29;
        _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found GS token header: %@", buf, 0x20u);

        v6 = v38;
        v13 = v37;
        v16 = v36;
        v5 = v35;
      }

      v20 = v29;
      v40 = v20;
    }

    else
    {
      if (!v30)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v46 = [v31 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v6 properties];
        v48 = [v47 logUUID];
        v49 = objc_opt_class();
        v54 = v49;
        [v6 properties];
        v50 = v57 = v6;
        v51 = [v50 gsTokenIdentifier];
        *buf = 138543874;
        v59 = v48;
        v60 = 2114;
        v61 = v49;
        v62 = 2112;
        v63 = v51;
        _os_log_impl(&dword_192869000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No GS token header. Falling back to that of the task info: %@", buf, 0x20u);

        v6 = v57;
      }

      v52 = [v6 properties];
      v40 = [v52 gsTokenIdentifier];

      v20 = 0;
    }
  }

  else
  {
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v41 = [v20 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = [v6 properties];
      v45 = [v44 logUUID];
      *buf = 138543618;
      v59 = v42;
      v60 = 2114;
      v61 = v45;
      _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth services missing GS", buf, 0x16u);
    }

    v40 = 0;
  }

  return v40;
}

+ (void)_updateTaskWithAuthedAccount:(id)a3 taskInfo:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 account];
  if (v8)
  {
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 properties];
      v12 = [v11 logUUID];
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        a1 = [v7 properties];
        v4 = [a1 logUUID];
        [v13 stringWithFormat:@"%@: [%@] ", v15, v4];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v17 = AMSHashIfNeeded(v8);
      *buf = 138543618;
      v25 = v16;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account on URL task. account = %{public}@", buf, 0x16u);
      if (v12)
      {

        v16 = a1;
      }
    }

    v18 = [v7 properties];
    [v18 setAccount:v8];

    v19 = [v7 properties];
    v20 = [v19 purchaseInfo];
    v21 = [v20 purchase];
    [v21 setAccount:v8];

    v22 = [v7 properties];
    v23 = [v22 purchaseInfo];
    [v23 setAccount:v8];
  }
}

+ (void)_updateTaskWithLastCredentialSource:(id)a3 taskInfo:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 account];
  [v5 setPreviousAuthorizationCredentialSource:{objc_msgSend(v6, "ams_lastAuthenticationCredentialSource")}];

  if (![v5 previousAuthorizationCredentialSource])
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v5 properties];
      v12 = [v11 logUUID];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine the credential source from authentication.", &v13, 0x16u);
    }
  }
}

@end