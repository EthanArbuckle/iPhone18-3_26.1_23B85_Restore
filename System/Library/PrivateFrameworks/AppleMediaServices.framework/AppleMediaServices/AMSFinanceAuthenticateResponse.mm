@interface AMSFinanceAuthenticateResponse
+ (id)_authenticateRequestWithAuthType:(unint64_t)type taskInfo:(id)info dialogResponse:(id)response serviceIdentifier:(id)identifier;
+ (id)_handleAuthResult:(id)result authError:(id)error originalRequest:(id)request actionResult:(id)actionResult redirectURL:(id)l taskInfo:(id)info;
+ (id)_performAuthRequest:(id)request actionResult:(id)result redirectURL:(id)l taskInfo:(id)info;
+ (id)_presentAuthRequest:(id)request taskInfo:(id)info;
+ (id)_serviceIdentifierForResponse:(id)response taskInfo:(id)info;
+ (id)performAuthFromResponse:(id)response taskInfo:(id)info;
+ (unint64_t)authenticationTypeForResponse:(id)response responseDictionary:(id)dictionary;
+ (void)_handleDialogFromAuthError:(id)error taskInfo:(id)info;
+ (void)_updateTaskWithAuthedAccount:(id)account taskInfo:(id)info;
+ (void)_updateTaskWithLastCredentialSource:(id)source taskInfo:(id)info;
- (AMSFinanceAuthenticateResponse)initWithResponseDictionary:(id)dictionary taskInfo:(id)info;
- (id)_locateActionableButtonUsingDialogResponse:(id)response;
- (id)performWithTaskInfo:(id)info;
- (void)performWithTaskInfo:(id)info completionHandler:(id)handler;
@end

@implementation AMSFinanceAuthenticateResponse

- (AMSFinanceAuthenticateResponse)initWithResponseDictionary:(id)dictionary taskInfo:(id)info
{
  dictionaryCopy = dictionary;
  infoCopy = info;
  v23.receiver = self;
  v23.super_class = AMSFinanceAuthenticateResponse;
  v8 = [(AMSFinanceAuthenticateResponse *)&v23 init];
  if (v8)
  {
    v9 = [AMSFinanceResponse valueForProtocolKey:@"dialog" inResponse:dictionaryCopy];
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
      v12 = [[AMSFinanceDialogResponse alloc] initWithResponseDictionary:dictionaryCopy kind:2 taskInfo:infoCopy];
      dialogResponse = v8->_dialogResponse;
      v8->_dialogResponse = v12;
    }

    v14 = objc_opt_class();
    response = [infoCopy response];
    v16 = [v14 authenticationTypeForResponse:response responseDictionary:dictionaryCopy];

    v17 = objc_opt_class();
    response2 = [infoCopy response];
    v19 = [v17 _serviceIdentifierForResponse:response2 taskInfo:infoCopy];

    v20 = [objc_opt_class() _authenticateRequestWithAuthType:v16 taskInfo:infoCopy dialogResponse:v8->_dialogResponse serviceIdentifier:v19];
    authenticateRequest = v8->_authenticateRequest;
    v8->_authenticateRequest = v20;
  }

  return v8;
}

+ (unint64_t)authenticationTypeForResponse:(id)response responseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  responseCopy = response;
  v7 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-Allow-Auth-Types"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v7 componentsSeparatedByString:@" "];
  v10 = [v8 setWithArray:v9];

  v11 = [v10 containsObject:@"loud"];
  v12 = [v10 containsObject:@"silent"];
  ams_statusCode = [responseCopy ams_statusCode];

  if (ams_statusCode != 401)
  {
    if (v12)
    {
LABEL_10:
      v15 = 0;
      goto LABEL_16;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"failureType"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"failureType"];
      longLongValue = [v17 longLongValue];

      if (longLongValue == 2002)
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

+ (id)performAuthFromResponse:(id)response taskInfo:(id)info
{
  responseCopy = response;
  infoCopy = info;
  v8 = [self authenticationTypeForResponse:responseCopy responseDictionary:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[AMSOptional optionalWithNil];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v11 = v8;
    v9 = [objc_opt_class() _serviceIdentifierForResponse:responseCopy taskInfo:infoCopy];
    v12 = [self _authenticateRequestWithAuthType:v11 taskInfo:infoCopy dialogResponse:0 serviceIdentifier:v9];
    properties = [infoCopy properties];
    v14 = [properties bag];
    v15 = [v14 stringForKey:@"skip-authenticate-header"];
    v16 = [v15 valueWithError:0];

    if (v16)
    {
      v17 = [responseCopy ams_valueForHTTPHeaderField:v16];

      if (v17)
      {
        options = [v12 options];
        [options setServiceTokenOnly:1];
      }
    }

    v19 = [responseCopy ams_valueForHTTPHeaderField:@"Location"];
    if (v19)
    {
      v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];
    }

    else
    {
      v20 = 0;
    }

    v10 = [self _performAuthRequest:v12 actionResult:0 redirectURL:v20 taskInfo:infoCopy];
  }

  return v10;
}

- (id)performWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSFinanceAuthenticateResponse_performWithTaskInfo___block_invoke;
  v10[3] = &unk_1E73B7C48;
  v11 = v5;
  v6 = v5;
  [(AMSFinanceAuthenticateResponse *)self performWithTaskInfo:infoCopy completionHandler:v10];

  v7 = [(AMSPromise *)v6 resultWithError:0];
  value = [v7 value];

  return value;
}

void __54__AMSFinanceAuthenticateResponse_performWithTaskInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

- (void)performWithTaskInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  dialogResponse = [(AMSFinanceAuthenticateResponse *)self dialogResponse];
  v9 = [(AMSFinanceAuthenticateResponse *)self _locateActionableButtonUsingDialogResponse:dialogResponse];

  v10 = [AMSDialogResult alloc];
  dialogResponse2 = [(AMSFinanceAuthenticateResponse *)self dialogResponse];
  dialogRequest = [dialogResponse2 dialogRequest];
  identifier = [v9 identifier];
  v14 = [(AMSDialogResult *)v10 initWithOriginalRequest:dialogRequest selectedActionIdentifier:identifier];

  deepLink = [v9 deepLink];

  if (deepLink)
  {
    ams_rawURL = [v9 ams_rawURL];
    v17 = ams_rawURL;
    if (ams_rawURL)
    {
      deepLink2 = ams_rawURL;
    }

    else
    {
      deepLink2 = [v9 deepLink];
    }

    deepLink = deepLink2;
  }

  v19 = objc_opt_class();
  authenticateRequest = [(AMSFinanceAuthenticateResponse *)self authenticateRequest];
  v21 = [v19 _performAuthRequest:authenticateRequest actionResult:v14 redirectURL:deepLink taskInfo:infoCopy];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__AMSFinanceAuthenticateResponse_performWithTaskInfo_completionHandler___block_invoke;
  v24[3] = &unk_1E73B7C70;
  v24[4] = self;
  v25 = infoCopy;
  v26 = handlerCopy;
  v22 = handlerCopy;
  v23 = infoCopy;
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

+ (id)_authenticateRequestWithAuthType:(unint64_t)type taskInfo:(id)info dialogResponse:(id)response serviceIdentifier:(id)identifier
{
  v79 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  responseCopy = response;
  identifierCopy = identifier;
  properties = [infoCopy properties];
  if ([properties dialogOptions])
  {
  }

  else
  {
    properties2 = [infoCopy properties];
    dialogOptions = [properties2 dialogOptions];

    if ((dialogOptions & 4) == 0)
    {
      goto LABEL_10;
    }
  }

  v15 = +[AMSLogConfig sharedAccountsConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v64 = v17;
    [infoCopy properties];
    v18 = identifierCopy;
    v20 = v19 = infoCopy;
    [v20 logUUID];
    v22 = v21 = responseCopy;
    *buf = 138544130;
    v72 = v17;
    v73 = 2114;
    v74 = v22;
    v75 = 2048;
    typeCopy = type;
    v77 = 2048;
    v78 = 1;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding the authentication type. originalAuthenticationType = %lu | newAuthenticationType = %lu", buf, 0x2Au);

    responseCopy = v21;
    infoCopy = v19;
    identifierCopy = v18;
  }

  type = 1;
LABEL_10:
  v23 = objc_alloc_init(AMSAuthenticateOptions);
  [(AMSAuthenticateOptions *)v23 setAuthenticationType:type];
  [(AMSAuthenticateOptions *)v23 setAllowServerDialogs:type != 1];
  [(AMSAuthenticateOptions *)v23 setAllowSecondaryCredentialSource:0];
  [(AMSAuthenticateOptions *)v23 setCanMakeAccountActive:0];
  properties3 = [infoCopy properties];
  clientInfo = [properties3 clientInfo];

  if (clientInfo)
  {
    properties4 = [infoCopy properties];
    clientInfo2 = [properties4 clientInfo];
    [(AMSAuthenticateOptions *)v23 setClientInfo:clientInfo2];
  }

  v65 = identifierCopy;
  [(AMSAuthenticateOptions *)v23 setServiceIdentifier:identifierCopy];
  if (responseCopy)
  {
    dialogRequest = [responseCopy dialogRequest];
    title = [dialogRequest title];
    [(AMSAuthenticateOptions *)v23 setPromptTitle:title];

    dialogRequest2 = [responseCopy dialogRequest];
    message = [dialogRequest2 message];
    [(AMSAuthenticateOptions *)v23 setReason:message];

    v62 = responseCopy;
    v32 = MEMORY[0x1E696AEC0];
    response = [infoCopy response];
    v34 = [response URL];
    v35 = AMSLogableURL(v34);
    v36 = infoCopy;
    v37 = MEMORY[0x1E696AD98];
    response2 = [v36 response];
    v39 = [v37 numberWithInteger:{objc_msgSend(response2, "ams_statusCode")}];
    v63 = v36;
    response3 = [v36 response];
    v41 = [response3 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
    v42 = AMSHashIfNeeded(v41);
    v43 = [v32 stringWithFormat:@"url: %@ status: %@; correlation: %@", v35, v39, v42];;
    [(AMSAuthenticateOptions *)v23 setDebugReason:v43];

    responseCopy = v62;
    dialogRequest3 = [v62 dialogRequest];
    buttonActions = [dialogRequest3 buttonActions];

    if ([buttonActions count] <= 2)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v46 = buttonActions;
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
              title2 = [v51 title];
              [(AMSAuthenticateOptions *)v23 setDefaultButtonString:title2];

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

    infoCopy = v63;
  }

  else
  {
    [(AMSAuthenticateOptions *)v23 setDebugReason:@"no dialogResponse in AMSFinanceAuthenticateResponse"];
  }

  properties5 = [infoCopy properties];
  account = [properties5 account];
  ams_isLocalAccount = [account ams_isLocalAccount];

  if (ams_isLocalAccount)
  {
    account2 = 0;
  }

  else
  {
    properties6 = [infoCopy properties];
    account2 = [properties6 account];
  }

  v58 = [[AMSAuthenticateRequest alloc] initWithAccount:account2 options:v23];
  properties7 = [infoCopy properties];
  logUUID = [properties7 logUUID];
  [(AMSAuthenticateRequest *)v58 setLogKey:logUUID];

  [(AMSAuthenticateRequest *)v58 setIsServerRequested:1];

  return v58;
}

- (id)_locateActionableButtonUsingDialogResponse:(id)response
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  dialogRequest = [responseCopy dialogRequest];
  buttonActions = [dialogRequest buttonActions];

  v6 = [buttonActions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(buttonActions);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      if ([v11 ams_actionType])
      {
        v12 = v11;

        v8 = v12;
      }

      if ([v11 ams_actionType] == 1)
      {
        ams_subtarget = [v11 ams_subtarget];
        lowercaseString = [ams_subtarget lowercaseString];
        v15 = [lowercaseString containsString:@"signup"];

        if (!v15)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [buttonActions countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)_performAuthRequest:(id)request actionResult:(id)result redirectURL:(id)l taskInfo:(id)info
{
  requestCopy = request;
  resultCopy = result;
  lCopy = l;
  infoCopy = info;
  v14 = [self _presentAuthRequest:requestCopy taskInfo:infoCopy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__AMSFinanceAuthenticateResponse__performAuthRequest_actionResult_redirectURL_taskInfo___block_invoke;
  v21[3] = &unk_1E73B7C98;
  v25 = infoCopy;
  selfCopy = self;
  v22 = requestCopy;
  v23 = resultCopy;
  v24 = lCopy;
  v15 = infoCopy;
  v16 = lCopy;
  v17 = resultCopy;
  v18 = requestCopy;
  v19 = [v14 continueWithBlock:v21];

  return v19;
}

+ (id)_handleAuthResult:(id)result authError:(id)error originalRequest:(id)request actionResult:(id)actionResult redirectURL:(id)l taskInfo:(id)info
{
  v87 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  requestCopy = request;
  actionResultCopy = actionResult;
  lCopy = l;
  infoCopy = info;
  v18 = +[AMSLogConfig sharedAccountsConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v18 OSLogObject];
  v20 = resultCopy;
  selfCopy = self;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v21 = actionResultCopy;
    v22 = requestCopy;
    v23 = objc_opt_class();
    v72 = v23;
    properties = [infoCopy properties];
    [properties logUUID];
    v26 = v25 = infoCopy;
    *buf = 138543874;
    v80 = v23;
    requestCopy = v22;
    actionResultCopy = v21;
    v81 = 2114;
    v82 = v26;
    v83 = 1024;
    LODWORD(v84) = resultCopy != 0;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication finished (success: %d)", buf, 0x1Cu);

    infoCopy = v25;
    self = selfCopy;
  }

  v75 = errorCopy;
  if (errorCopy)
  {
    [self _handleDialogFromAuthError:errorCopy taskInfo:infoCopy];
    v27 = [AMSURLAction actionWithError:errorCopy];
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
    [self _updateTaskWithAuthedAccount:resultCopy taskInfo:infoCopy];
    [self _updateTaskWithLastCredentialSource:resultCopy taskInfo:infoCopy];
    v28 = 0;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  originalRequest = [actionResultCopy originalRequest];
  selectedActionIdentifier = [actionResultCopy selectedActionIdentifier];
  v33 = [originalRequest locateActionWithIdentifier:selectedActionIdentifier];

  v73 = v33;
  if ([v33 ams_URLType] == 1 || objc_msgSend(v33, "ams_actionType") == 5)
  {
    v34 = [AMSFinanceDialogResponse handleDialogResult:actionResultCopy taskInfo:infoCopy];
  }

  else
  {
    if (lCopy)
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
  [v29 setDialogResult:actionResultCopy];
  [v29 setAuthenticateResult:resultCopy];
  options = [requestCopy options];
  serviceIdentifier = [options serviceIdentifier];

  if (serviceIdentifier)
  {
    v71 = serviceIdentifier;
    v37 = +[AMSLogConfig sharedConfig];
    if (!v37)
    {
      v37 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v37 OSLogObject];
    v67 = infoCopy;
    v68 = requestCopy;
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = AMSLogKey();
      authKitUpdateResult = [resultCopy authKitUpdateResult];
      [authKitUpdateResult authenticationResults];
      v42 = v69 = actionResultCopy;
      ak_redactedCopy = [v42 ak_redactedCopy];
      v44 = AMSHashIfNeeded(ak_redactedCopy);
      *buf = 138544130;
      v80 = v39;
      v20 = resultCopy;
      v81 = 2114;
      v82 = v40;
      v83 = 2112;
      v84 = v71;
      v85 = 2112;
      v86 = v44;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth request service identifier: %@. Authentication results: %@", buf, 0x2Au);

      actionResultCopy = v69;
    }

    currentInfo = [MEMORY[0x1E698B890] currentInfo];
    clientInfoHeader = [currentInfo clientInfoHeader];

    v70 = +[AMSDevice uniqueDeviceId];
    authKitUpdateResult2 = [v20 authKitUpdateResult];
    authenticationResults = [authKitUpdateResult2 authenticationResults];
    v48 = [authenticationResults objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    serviceIdentifier = v71;

    v50 = [v49 objectForKeyedSubscript:v71];
    [v30 setObject:clientInfoHeader forKeyedSubscript:@"X-MMe-Client-Info"];
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

      oSLogObject3 = [v52 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v54 = objc_opt_class();
      AMSLogKey();
      v56 = v55 = actionResultCopy;
      *buf = 138543874;
      v80 = v54;
      v81 = 2114;
      v82 = v56;
      v83 = 2112;
      v84 = v50;
      v57 = "%{public}@: [%{public}@] Received an updated GrandSlam token %@";
      v58 = oSLogObject3;
      v59 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!v51)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v52 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v60 = objc_opt_class();
      AMSLogKey();
      v56 = v55 = actionResultCopy;
      *buf = 138543874;
      v80 = v60;
      v81 = 2114;
      v82 = v56;
      v83 = 2112;
      v84 = v20;
      v57 = "%{public}@: [%{public}@] Unable to locate GrandSlam token in auth result: %@";
      v58 = oSLogObject3;
      v59 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_192869000, v58, v59, v57, buf, 0x20u);

    actionResultCopy = v55;
    serviceIdentifier = v71;
LABEL_34:

    infoCopy = v67;
    requestCopy = v68;
  }

  account = [v20 account];
  v62 = [AMSBiometrics stateForAccount:account];

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

+ (void)_handleDialogFromAuthError:(id)error taskInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  infoCopy = info;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"AMSAuthenticateErrorDialog"];

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

      oSLogObject = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        properties = [infoCopy properties];
        logUUID = [properties logUUID];
        v21 = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = logUUID;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authentication returned a dialog.", &v21, 0x16u);
      }

      v20 = [AMSFinanceDialogResponse performFinanceDialog:v9 taskInfo:infoCopy];
      goto LABEL_13;
    }
  }

  else
  {
  }

  userInfo2 = [errorCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  userInfo3 = [v11 userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"AMSAuthenticateErrorDialog"];

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

+ (id)_presentAuthRequest:(id)request taskInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  session = [infoCopy session];
  delegate = [session delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  if (v9 & 1) != 0 || (v10)
  {
    v18 = +[AMSLogConfig sharedAccountsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v30 = v20;
      properties = [infoCopy properties];
      logUUID = [properties logUUID];
      *buf = 138543618;
      v33 = v20;
      v34 = 2114;
      v35 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing authentication", buf, 0x16u);
    }

    v17 = objc_alloc_init(AMSPromise);
    if (v9)
    {
      task = [infoCopy task];
      completionHandlerAdapter = [(AMSPromise *)v17 completionHandlerAdapter];
      [delegate AMSURLSession:session task:task handleAuthenticateRequest:requestCopy completion:completionHandlerAdapter];
    }

    else
    {
      v24 = +[AMSLogConfig sharedAccountsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v31 = v26;
        properties2 = [infoCopy properties];
        logUUID2 = [properties2 logUUID];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = logUUID2;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Calling legacy delegate for authentication handling", buf, 0x16u);
      }

      task = [(AMSPromise *)v17 completionHandlerAdapter];
      [delegate AMSURLSession:session handleAuthenticateRequest:requestCopy completion:task];
    }
  }

  else
  {
    task = AMSErrorWithFormat(2, @"Finance Authentication Error", @"No delegate to perform authentication: %@", v11, v12, v13, v14, v15, requestCopy);
    v17 = [AMSPromise promiseWithError:task];
  }

  return v17;
}

+ (id)_serviceIdentifierForResponse:(id)response taskInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  infoCopy = info;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    properties = [infoCopy properties];
    logUUID = [properties logUUID];
    *buf = 138543618;
    v59 = v9;
    v60 = 2114;
    v61 = logUUID;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Getting service identifier from response", buf, 0x16u);
  }

  v13 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-Auth-Services"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = [v13 componentsSeparatedByString:@" "];
  v16 = [v14 setWithArray:v15];

  v17 = [v16 containsObject:@"GS"];
  ams_statusCode = [responseCopy ams_statusCode];
  v19 = +[AMSLogConfig sharedAccountsConfig];
  v20 = v19;
  if (ams_statusCode == 401 && v17)
  {
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v55 = v22;
      [infoCopy properties];
      v23 = responseCopy;
      v24 = v16;
      v25 = v13;
      v27 = v26 = infoCopy;
      logUUID2 = [v27 logUUID];
      *buf = 138543618;
      v59 = v22;
      v60 = 2114;
      v61 = logUUID2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth services header contain GS", buf, 0x16u);

      infoCopy = v26;
      v13 = v25;
      v16 = v24;
      responseCopy = v23;
    }

    v29 = [responseCopy ams_valueForHTTPHeaderField:@"X-Apple-GS-Token-Identifier"];
    v30 = +[AMSLogConfig sharedAccountsConfig];
    v31 = v30;
    if (v29)
    {
      if (!v30)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v56 = v33;
        properties2 = [infoCopy properties];
        [properties2 logUUID];
        v35 = responseCopy;
        v36 = v16;
        v37 = v13;
        v39 = v38 = infoCopy;
        *buf = 138543874;
        v59 = v33;
        v60 = 2114;
        v61 = v39;
        v62 = 2112;
        v63 = v29;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found GS token header: %@", buf, 0x20u);

        infoCopy = v38;
        v13 = v37;
        v16 = v36;
        responseCopy = v35;
      }

      v20 = v29;
      gsTokenIdentifier2 = v20;
    }

    else
    {
      if (!v30)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        properties3 = [infoCopy properties];
        logUUID3 = [properties3 logUUID];
        v49 = objc_opt_class();
        v54 = v49;
        [infoCopy properties];
        v50 = v57 = infoCopy;
        gsTokenIdentifier = [v50 gsTokenIdentifier];
        *buf = 138543874;
        v59 = logUUID3;
        v60 = 2114;
        v61 = v49;
        v62 = 2112;
        v63 = gsTokenIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No GS token header. Falling back to that of the task info: %@", buf, 0x20u);

        infoCopy = v57;
      }

      properties4 = [infoCopy properties];
      gsTokenIdentifier2 = [properties4 gsTokenIdentifier];

      v20 = 0;
    }
  }

  else
  {
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      v43 = v42;
      properties5 = [infoCopy properties];
      logUUID4 = [properties5 logUUID];
      *buf = 138543618;
      v59 = v42;
      v60 = 2114;
      v61 = logUUID4;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auth services missing GS", buf, 0x16u);
    }

    gsTokenIdentifier2 = 0;
  }

  return gsTokenIdentifier2;
}

+ (void)_updateTaskWithAuthedAccount:(id)account taskInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  account = [account account];
  if (account)
  {
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      properties = [infoCopy properties];
      logUUID = [properties logUUID];
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (logUUID)
      {
        self = [infoCopy properties];
        logUUID2 = [self logUUID];
        [v13 stringWithFormat:@"%@: [%@] ", v15, logUUID2];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      selfCopy = ;
      v17 = AMSHashIfNeeded(account);
      *buf = 138543618;
      v25 = selfCopy;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account on URL task. account = %{public}@", buf, 0x16u);
      if (logUUID)
      {

        selfCopy = self;
      }
    }

    properties2 = [infoCopy properties];
    [properties2 setAccount:account];

    properties3 = [infoCopy properties];
    purchaseInfo = [properties3 purchaseInfo];
    purchase = [purchaseInfo purchase];
    [purchase setAccount:account];

    properties4 = [infoCopy properties];
    purchaseInfo2 = [properties4 purchaseInfo];
    [purchaseInfo2 setAccount:account];
  }
}

+ (void)_updateTaskWithLastCredentialSource:(id)source taskInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  account = [source account];
  [infoCopy setPreviousAuthorizationCredentialSource:{objc_msgSend(account, "ams_lastAuthenticationCredentialSource")}];

  if (![infoCopy previousAuthorizationCredentialSource])
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      properties = [infoCopy properties];
      logUUID = [properties logUUID];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = logUUID;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine the credential source from authentication.", &v13, 0x16u);
    }
  }
}

@end