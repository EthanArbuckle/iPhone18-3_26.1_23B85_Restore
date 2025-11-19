@interface ASAuthorizationController
- (ASAuthorizationController)init;
- (ASAuthorizationController)initWithAuthorizationRequests:(NSArray *)authorizationRequests;
- (BOOL)_onlyHasAppleIDRequest:(id)a3;
- (BOOL)_shouldConvertExtensionAndWebKitErrors;
- (id)_authKitRequestFromAppleIDRequest:(id)a3;
- (id)_authKitRequests;
- (id)_authenticatedResponseFromHTTPResponse:(id)a3 httpBody:(id)a4;
- (id)_authenticationServicesAgentProxy;
- (id)_authorizationFromAuthKitResult:(id)a3;
- (id)_convertCoreErrorToPublicError:(id)a3;
- (id)_convertCredentialProviderErrorToPublicError:(id)a3;
- (id)_convertWebKitErrorToPublicError:(id)a3;
- (id)_publicErrorFromAuthKitError:(id)a3;
- (id)_requestContextWithRequests:(id)a3 error:(id *)a4;
- (id)delegate;
- (id)presentationContextProvider;
- (id)publicKeyAccountRegistrationOptionsForRequest:(id)a3;
- (id)relyingPartyIdentifierForRequest:(id)a3;
- (id)testOptionsIfNeeded;
- (void)_completeWithAuthorization:(id)a3;
- (void)_failWithError:(id)a3;
- (void)_finishAppSSO;
- (void)_performAuthKitRequests:(id)a3 options:(unint64_t)a4;
- (void)_performAuthorizationRequests:(id)a3 requestStyle:(int64_t)a4 requestOptions:(unint64_t)a5;
- (void)_performRequestsWithStyle:(int64_t)a3 options:(unint64_t)a4;
- (void)_shouldConvertExtensionAndWebKitErrors;
- (void)authorization:(id)a3 didCompleteWithAuthorizationResult:(id)a4;
- (void)authorization:(id)a3 didCompleteWithError:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5;
- (void)authorization:(id)a3 presentViewController:(id)a4 withCompletion:(id)a5;
- (void)authorizationDidCancel:(id)a3;
- (void)authorizationDidComplete:(id)a3;
- (void)authorizationDidNotHandle:(id)a3;
- (void)cancel;
- (void)deleteAllPasskeysForRelyingParty:(id)a3 completionHandler:(id)a4;
- (void)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 completionHandler:(id)a5;
- (void)getPasskeysDataForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
- (void)performAutoFillAssistedRequests;
- (void)performRequestsWithOptions:(ASAuthorizationControllerRequestOptions)options;
- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)a3;
@end

@implementation ASAuthorizationController

- (ASAuthorizationController)init
{
  [(ASAuthorizationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationController)initWithAuthorizationRequests:(NSArray *)authorizationRequests
{
  v6 = authorizationRequests;
  if (![(NSArray *)v6 count])
  {
    [(ASAuthorizationController *)a2 initWithAuthorizationRequests:?];
  }

  v10.receiver = self;
  v10.super_class = ASAuthorizationController;
  v7 = [(ASAuthorizationController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_authorizationRequests, authorizationRequests);
  }

  return v8;
}

- (void)_performRequestsWithStyle:(int64_t)a3 options:(unint64_t)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  authorizationRequests = self->_authorizationRequests;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke;
  v64[3] = &__block_descriptor_40_e32_B16__0__ASAuthorizationRequest_8l;
  v64[4] = a3;
  v48 = [(NSArray *)authorizationRequests safari_filterObjectsUsingBlock:v64];
  if ([v48 count])
  {
    if (a3 == 1)
    {
      v8 = @"%@ does not support AutoFill assistance.";
    }

    else
    {
      if (a3 != 2)
      {
        v9 = @"Unexpected failure.";
        goto LABEL_10;
      }

      v8 = @"%@ does not support conditional requests.";
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = [v48 firstObject];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v9 = [v10 stringWithFormat:v8, v13];

LABEL_10:
    v14 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E696A588];
    v67[0] = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v15];

    [(ASAuthorizationController *)self _failWithError:v16];
    goto LABEL_11;
  }

  if ([(ASAuthorizationController *)self _shouldPerformRequestsWithAuthKit:self->_authorizationRequests])
  {
    v9 = [(ASAuthorizationController *)self _authKitRequests];
    [(ASAuthorizationController *)self _performAuthKitRequests:v9 options:a4];
  }

  else
  {
    v9 = [(ASAuthorizationController *)self _authorizationRequestsHandledByAuthenticationServicesDaemon:self->_authorizationRequests];
    if ([(__CFString *)v9 count])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_2;
      block[3] = &unk_1E7AF8738;
      block[4] = self;
      v9 = v9;
      v61 = v9;
      v62 = a3;
      v63 = a4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__1;
      v58 = __Block_byref_object_dispose__1;
      v59 = 0;
      v18 = self->_authorizationRequests;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_42;
      v53[3] = &unk_1E7AF8760;
      v53[4] = &v54;
      [(NSArray *)v18 enumerateObjectsUsingBlock:v53];
      v19 = v55[5];
      if (v19)
      {
        v20 = [v19 provider];
        v21 = [v20 url];
        appSSORequestURL = self->_appSSORequestURL;
        self->_appSSORequestURL = v21;

        v23 = [MEMORY[0x1E695DF90] dictionary];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = [v55[5] authorizationOptions];
        v25 = [v24 countByEnumeratingWithState:&v49 objects:v65 count:16];
        if (v25)
        {
          v26 = *v50;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v50 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v49 + 1) + 8 * i);
              v29 = [v28 value];
              v30 = [v28 name];
              if (v29)
              {
                v31 = v29;
              }

              else
              {
                v31 = &stru_1F28DE020;
              }

              [v23 setObject:v31 forKeyedSubscript:v30];
            }

            v25 = [v24 countByEnumeratingWithState:&v49 objects:v65 count:16];
          }

          while (v25);
        }

        v32 = [v55[5] state];

        if (v32)
        {
          v33 = [v55[5] state];
          [v23 setObject:v33 forKeyedSubscript:@"state"];
        }

        v34 = [v55[5] nonce];

        if (v34)
        {
          v35 = [v55[5] nonce];
          [v23 setObject:v35 forKeyedSubscript:@"nonce"];
        }

        v36 = [v55[5] requestedScopes];

        if (v36)
        {
          v37 = [v55[5] requestedScopes];
          v38 = [v37 componentsJoinedByString:@" "];
          [v23 setObject:v38 forKeyedSubscript:@"scope"];
        }

        v39 = objc_alloc_init(MEMORY[0x1E698B130]);
        v40 = [v55[5] requestedOperation];
        [v39 setOperation:v40];

        [v39 setUrl:self->_appSSORequestURL];
        v41 = [v23 copy];
        [v39 setHttpHeaders:v41];

        v42 = objc_alloc_init(MEMORY[0x1E695DEF0]);
        [v39 setHttpBody:v42];

        [v39 setUseInternalExtensions:0];
        v43 = objc_alloc_init(MEMORY[0x1E698B128]);
        appSSOAuthorization = self->_appSSOAuthorization;
        self->_appSSOAuthorization = v43;

        v45 = [v23 copy];
        [self->_appSSOAuthorization setAuthorizationOptions:v45];

        -[SOAuthorization setEnableUserInteraction:](self->_appSSOAuthorization, "setEnableUserInteraction:", [v55[5] isUserInterfaceEnabled]);
        [self->_appSSOAuthorization setDelegate:self];
        v46 = [(ASAuthorizationController *)self presentationContextProvider];
        v47 = [v46 presentationAnchorForAuthorizationController:self];
        [self->_appSSOAuthorization setEnableEmbeddedAuthorizationViewController:v47 != 0];

        [self->_appSSOAuthorization beginAuthorizationWithParameters:v39];
        _Block_object_dispose(&v54, 8);
      }

      else
      {
        _Block_object_dispose(&v54, 8);
      }
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
}

void __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_performAuthKitRequests:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E698DD58];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setCredentialRequests:v7];

  [v8 setRequestOptions:v4 & 1];
  v9 = objc_alloc_init(MEMORY[0x1E698DCE0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ASAuthorizationController__performAuthKitRequests_options___block_invoke;
  v10[3] = &unk_1E7AF8788;
  v10[4] = self;
  [v9 performAuthorizationWithContext:v8 completion:v10];
}

void __61__ASAuthorizationController__performAuthKitRequests_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 _authorizationFromAuthKitResult:a2];
    [*(a1 + 32) _completeWithAuthorization:?];
  }

  else
  {
    v4 = [v3 _publicErrorFromAuthKitError:?];
    [*(a1 + 32) _failWithError:?];
  }
}

- (id)_publicErrorFromAuthKitError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E698DB28]];

  if (v5)
  {
    v6 = [v3 code];
    if (v6 == -7089 || v6 == -7003)
    {
      v8 = 1001;
    }

    else
    {
      v8 = 1000;
    }
  }

  else
  {
    v8 = 1000;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v8 userInfo:0];

  return v9;
}

- (void)performAutoFillAssistedRequests
{
  v3 = _os_activity_create(&dword_1B1C8D000, "AutoFill authorization request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  authorizationActivity = self->_authorizationActivity;
  self->_authorizationActivity = v3;

  v5 = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ASAuthorizationController_performAutoFillAssistedRequests__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  os_activity_apply(v5, block);
}

- (void)getPasskeysDataForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [v8 getPasskeysDataForRelyingParty:v7 withCompletionHandler:v6];
}

- (void)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [v11 deletePasskeyForRelyingParty:v10 withCredentialID:v9 completionHandler:v8];
}

- (void)deleteAllPasskeysForRelyingParty:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [v8 deleteAllPasskeysForRelyingParty:v7 completionHandler:v6];
}

- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [v5 preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:v4];
}

- (void)cancel
{
  v2 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [v2 cancelCurrentRequest];
}

- (id)_authKitRequests
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  authorizationRequests = self->_authorizationRequests;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__ASAuthorizationController__authKitRequests__block_invoke;
  v11 = &unk_1E7AF87B0;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [(NSArray *)authorizationRequests enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __45__ASAuthorizationController__authKitRequests__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) _authKitRequestFromAppleIDRequest:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = objc_alloc_init(MEMORY[0x1E698DDB0]);
  }

  v4 = v3;
  [*(a1 + 40) addObject:v3];

LABEL_6:
}

- (id)_authKitRequestFromAppleIDRequest:(id)a3
{
  v3 = MEMORY[0x1E698DD08];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 user];
  [v5 setUserIdentifier:v6];

  v7 = [v4 state];
  [v5 setState:v7];

  v8 = [v4 nonce];
  [v5 setNonce:v8];

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [v4 requestedScopes];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__ASAuthorizationController__authKitRequestFromAppleIDRequest___block_invoke;
  v13[3] = &unk_1E7AF87D8;
  v14 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v13];

  [v5 setRequestedScopes:v11];

  return v5;
}

void __63__ASAuthorizationController__authKitRequestFromAppleIDRequest___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqualToString:@"full_name"])
  {
    v3 = MEMORY[0x1E698DC00];
  }

  else
  {
    if (![v4 isEqualToString:@"email"])
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x1E698DBF8];
  }

  [*(a1 + 32) addObject:*v3];
LABEL_6:
}

- (id)_authorizationFromAuthKitResult:(id)a3
{
  v3 = a3;
  v4 = [v3 credential];
  v5 = [v3 credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 authenticationServicesCredential];
    v8 = off_1E7AF67B0;
LABEL_5:
    v14 = objc_alloc_init(*v8);
    goto LABEL_7;
  }

  v9 = [v3 credential];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [ASPasswordCredential alloc];
    v12 = [v4 userIdentifier];
    v13 = [v4 password];
    v7 = [(ASPasswordCredential *)v11 initWithUser:v12 password:v13];

    v8 = off_1E7AF67C8;
    goto LABEL_5;
  }

  v7 = 0;
  v14 = 0;
LABEL_7:
  v15 = [[ASAuthorization alloc] initWithProvider:v14 credential:v7];

  return v15;
}

- (void)_finishAppSSO
{
  appSSOAuthorization = self->_appSSOAuthorization;
  self->_appSSOAuthorization = 0;

  appSSORequestURL = self->_appSSORequestURL;
  self->_appSSORequestURL = 0;

  appSSOViewController = self->_appSSOViewController;
  if (appSSOViewController)
  {
    [(UIViewController *)appSSOViewController dismissViewControllerAnimated:1 completion:0];
    v6 = self->_appSSOViewController;
    self->_appSSOViewController = 0;

    appSSOPresentationAnchor = self->_appSSOPresentationAnchor;
    self->_appSSOPresentationAnchor = 0;
  }
}

- (id)_authenticatedResponseFromHTTPResponse:(id)a3 httpBody:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a4 options:0 error:0];
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v6 count])
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = [v5 allHeaderFields];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [v5 allHeaderFields];
        [v8 addEntriesFromDictionary:v11];
      }

      [v8 addEntriesFromDictionary:v6];
      v12 = objc_alloc(MEMORY[0x1E696AC68]);
      v13 = [v5 URL];
      v7 = [v12 initWithURL:v13 statusCode:objc_msgSend(v5 HTTPVersion:"statusCode") headerFields:{@"HTTP/1.1", v8}];
    }
  }

  return v7;
}

- (void)performRequestsWithOptions:(ASAuthorizationControllerRequestOptions)options
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1B1C8D000, "Modal authorization request with options", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  authorizationActivity = self->_authorizationActivity;
  self->_authorizationActivity = v5;

  v7 = [(NSArray *)self->_authorizationRequests safari_firstObjectPassingTest:&__block_literal_global_15];
  v8 = v7;
  if (v7 && [v7 requestStyle] == 1)
  {
    v15[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    authorizationRequests = self->_authorizationRequests;
    self->_authorizationRequests = v9;

    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASAuthorizationController_performRequestsWithOptions___block_invoke_2;
  block[3] = &unk_1E7AF8820;
  block[4] = self;
  block[5] = v11;
  block[6] = options;
  os_activity_apply(v12, block);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __56__ASAuthorizationController_performRequestsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)authorizationDidNotHandle:(id)a3
{
  if (dyld_program_sdk_at_least() & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), WeakRetained, (isKindOfClass))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1003 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
  }

  else
  {
    v6 = +[ASAuthorizationSingleSignOnCredential emptyCredential];
    v7 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v8 = [[ASAuthorization alloc] initWithProvider:v7 credential:v6];
    [(ASAuthorizationController *)self _completeWithAuthorization:v8];
  }

  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorizationDidCancel:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1001 userInfo:0];
  [(ASAuthorizationController *)self _failWithError:v4];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorizationDidComplete:(id)a3
{
  v6 = +[ASAuthorizationSingleSignOnCredential emptyCredential];
  v4 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
  v5 = [[ASAuthorization alloc] initWithProvider:v4 credential:v6];
  [(ASAuthorizationController *)self _completeWithAuthorization:v5];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
  [(ASAuthorizationController *)self _failWithError:v5];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5
{
  v9 = [(ASAuthorizationController *)self _authenticatedResponseFromHTTPResponse:a4 httpBody:a5];
  if (v9)
  {
    v6 = [[ASAuthorizationSingleSignOnCredential alloc] initWithAuthenticatedResponse:v9];
    v7 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v8 = [[ASAuthorization alloc] initWithProvider:v7 credential:v6];
    [(ASAuthorizationController *)self _completeWithAuthorization:v8];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
  }

  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)a3 didCompleteWithAuthorizationResult:(id)a4
{
  v14 = a4;
  v5 = [v14 httpAuthorizationHeaders];

  if (v5)
  {
    goto LABEL_2;
  }

  v6 = [v14 httpResponse];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v14 httpResponse];
  v8 = [v14 httpBody];
  v6 = [(ASAuthorizationController *)self _authenticatedResponseFromHTTPResponse:v7 httpBody:v8];

  if (!v6)
  {
LABEL_2:
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
    [(ASAuthorizationController *)self _finishAppSSO];
  }

  else
  {
LABEL_5:
    v9 = [ASAuthorizationSingleSignOnCredential alloc];
    v10 = [v14 privateKeys];
    v11 = [(ASAuthorizationSingleSignOnCredential *)v9 initWithAuthenticatedResponse:v6 privateKeys:v10];

    v12 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v13 = [[ASAuthorization alloc] initWithProvider:v12 credential:v11];
    [(ASAuthorizationController *)self _completeWithAuthorization:v13];
    [(ASAuthorizationController *)self _finishAppSSO];
  }
}

- (void)authorization:(id)a3 didCompleteWithError:(id)a4
{
  v10 = a4;
  v5 = [v10 domain];
  v6 = [v5 isEqualToString:@"com.apple.AuthenticationServices.AuthorizationError"];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    if ([v10 safari_matchesErrorDomain:*MEMORY[0x1E698B140] andCode:-12])
    {
      v8 = 1005;
    }

    else
    {
      v8 = 1000;
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v8 userInfo:0];

    v7 = v9;
  }

  v11 = v7;
  [(ASAuthorizationController *)self _failWithError:v7];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)a3 presentViewController:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7AF8848;
  v11 = v10;
  v37 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(ASAuthorizationController *)self presentationContextProvider];
  v14 = [v13 presentationAnchorForAuthorizationController:self];
  appSSOPresentationAnchor = self->_appSSOPresentationAnchor;
  self->_appSSOPresentationAnchor = v14;

  if (self->_appSSOPresentationAnchor)
  {
    objc_storeStrong(&self->_appSSOViewController, a4);
    v16 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:self->_appSSOPresentationAnchor];
    if (v16)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__1;
      v34 = __Block_byref_object_dispose__1;
      v35 = 0;
      v17 = MEMORY[0x1E695DFF0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2;
      v27[3] = &unk_1E7AF8870;
      v29 = &v30;
      v18 = v12;
      v28 = v18;
      v19 = [v17 timerWithTimeInterval:0 repeats:v27 block:3.0];
      v20 = v31[5];
      v31[5] = v19;

      v21 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v21 addTimer:v31[5] forMode:*MEMORY[0x1E695DA28]];

      appSSOViewController = self->_appSSOViewController;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_94;
      v24[3] = &unk_1E7AF8898;
      v26 = &v30;
      v25 = v18;
      [v16 presentViewController:appSSOViewController animated:1 completion:v24];

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x1E69DD4B8]);
      [v23 _presentViewController:self->_appSSOViewController sendingView:0 animated:1];
      (*(v12 + 2))(v12, 1, 0);
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
    (*(v12 + 2))(v12, 0, v16);
  }
}

uint64_t __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2_cold_1(v2);
    }

    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void *__80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_94(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    [result invalidate];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

- (BOOL)_onlyHasAppleIDRequest:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t __89__ASAuthorizationController__authorizationRequestsHandledByAuthenticationServicesDaemon___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_performAuthorizationRequests:(id)a3 requestStyle:(int64_t)a4 requestOptions:(unint64_t)a5
{
  v5 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__ASAuthorizationController__performAuthorizationRequests_requestStyle_requestOptions___block_invoke;
  aBlock[3] = &unk_1E7AF88C0;
  aBlock[4] = self;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v19 = 0;
  v10 = [(ASAuthorizationController *)self _requestContextWithRequests:v8 error:&v19];

  v11 = v19;
  if (v10)
  {
    v12 = [v10 authenticatedContext];

    if (v12)
    {
      a4 = 2;
    }

    [v10 setRequestStyle:a4];
    [v10 setRequestOptions:v5 & 1];
    v13 = [(ASAuthorizationController *)self presentationContextProvider];
    v14 = [v13 presentationAnchorForAuthorizationController:self];

    v15 = [v14 windowScene];
    v16 = [v15 _sceneIdentifier];
    [v10 setWindowSceneIdentifier:v16];

    if (a4 >= 2)
    {
      if (a4 != 2)
      {
LABEL_12:

        goto LABEL_13;
      }

      v17 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
      [v17 performSilentAuthorizationRequestsForContext:v10 withCompletionHandler:v9];
    }

    else
    {
      v17 = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
      [v17 performAuthorizationRequestsForContext:v10 withCompletionHandler:v9];
    }

    goto LABEL_12;
  }

  v18 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [ASAuthorizationController _performAuthorizationRequests:v18 requestStyle:? requestOptions:?];
  }

  v9[2](v9, 0, v11);
LABEL_13:
}

void __87__ASAuthorizationController__performAuthorizationRequests_requestStyle_requestOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [ASAuthorization authorizationFromCredential:a2];
    [v2 _completeWithAuthorization:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _failWithError:?];
  }
}

- (id)_authenticationServicesAgentProxy
{
  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  if (!authenticationServicesAgentProxy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DFA0]);
    v5 = self->_authenticationServicesAgentProxy;
    self->_authenticationServicesAgentProxy = v4;

    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  }

  return authenticationServicesAgentProxy;
}

- (id)_requestContextWithRequests:(id)a3 error:(id *)a4
{
  v110[1] = *MEMORY[0x1E69E9840];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v78 objects:v98 count:16];
  if (!v5)
  {
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v7 = 0;
    v75 = 0;
    v77 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_55;
  }

  v6 = v5;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v7 = 0;
  v75 = 0;
  v77 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v79;
  v12 = 0x1E7AF6000uLL;
  v76 = v4;
  v71 = *v79;
  do
  {
    v69 = v7;
    v13 = 0;
    do
    {
      if (*v79 != v11)
      {
        objc_enumerationMutation(v4);
      }

      v14 = *(*(&v78 + 1) + 8 * v13);
      v15 = *(v12 + 2000);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = objc_alloc_init(MEMORY[0x1E698DD08]);

          v19 = [v14 user];
          [v18 setUserIdentifier:v19];

          v20 = [v14 state];
          [v18 setState:v20];

          v21 = [v14 nonce];
          [v18 setNonce:v21];
          v16 = 0;
          v17 = 2;
          v9 = v18;
          v4 = v76;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v9;
            v21 = v14;
            v23 = [v21 coreCredentialCreationOptions];

            v16 = [v21 relyingPartyIdentifier];
            v24 = [v21 attestationPreference];
            v25 = [v24 isEqualToString:@"none"];

            if ((v25 & 1) == 0)
            {
              v26 = [v21 attestationPreference];
              v27 = [v26 isEqualToString:@"enterprise"];

              if ((v27 & 1) == 0)
              {
                v57 = MEMORY[0x1E696ABC0];
                v96 = *MEMORY[0x1E696A578];
                v97 = @"Passkeys do not support attestation.";
                v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
                *a4 = [v57 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v58];

                v44 = 0;
                v59 = v76;
                v39 = v76;
                v77 = v23;
LABEL_84:
                v4 = v59;
                v7 = v69;
                v41 = v73;
                v9 = v22;
                goto LABEL_80;
              }
            }

            v17 = 4;
            v77 = v23;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v14;
              v16 = [v21 relyingPartyIdentifier];
              [v21 coreCredentialAssertionOptions];
              v28 = v22 = v9;

              v29 = [v21 authenticatedContext];

              v17 = 8;
              v73 = v28;
              v74 = v29;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v66 = v9;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v14;
                  v16 = [v21 relyingPartyIdentifier];
                  v35 = [v21 coreCredentialAssertionOptions];

                  v17 = 32;
                  v69 = v35;
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v37 = WBS_LOG_CHANNEL_PREFIXAuthorization();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      [(ASAuthorizationController *)v90 _requestContextWithRequests:v37 error:v14, &v91];
                    }

                    v4 = v76;
                    goto LABEL_41;
                  }

                  v21 = v14;
                  v36 = [(ASAuthorizationController *)self publicKeyAccountRegistrationOptionsForRequest:v21];

                  v16 = [(ASAuthorizationController *)self relyingPartyIdentifierForRequest:v21];
                  if (!v36)
                  {
                    v64 = MEMORY[0x1E696ABC0];
                    v92 = *MEMORY[0x1E696A578];
                    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
                    *a4 = [v64 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v65];

                    v72 = 0;
                    v44 = 0;
                    v4 = v76;
                    v39 = v76;
                    v7 = v69;
                    v41 = v73;
                    v9 = v66;
                    goto LABEL_80;
                  }

                  v17 = 512;
                  v72 = v36;
                  v4 = v76;
                }

                v9 = v66;
                goto LABEL_20;
              }

              v22 = v9;
              v21 = v14;
              v30 = [v21 coreCredentialCreationOptions];

              v31 = [v30 supportedAlgorithmIdentifiers];
              v32 = [v31 count];

              if (!v32)
              {
                v62 = MEMORY[0x1E696ABC0];
                v94 = *MEMORY[0x1E696A578];
                v95 = @"No algorithms specified for ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest.";
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                *a4 = [v62 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v63];

                v44 = 0;
                v16 = v21;
                v59 = v76;
                v39 = v76;
                v75 = v30;
                goto LABEL_84;
              }

              v16 = [v21 relyingPartyIdentifier];
              v17 = 16;
              v75 = v30;
            }
          }

          v4 = v76;
          v9 = v22;
          v11 = v71;
        }

LABEL_20:

        v12 = 0x1E7AF6000;
        goto LABEL_21;
      }

      v16 = 0;
      v17 = 1;
LABEL_21:
      v33 = dyld_program_sdk_at_least();
      if ((v17 & v10) != 0 && v33)
      {
        v51 = v9;
        v52 = MEMORY[0x1E696ABC0];
        v109 = *MEMORY[0x1E696A578];
        v110[0] = @"Found duplicate requests. Only one of each type of request is currently supported.";
        v53 = MEMORY[0x1E695DF20];
        v54 = v110;
        v55 = &v109;
        goto LABEL_71;
      }

      if (v17 > 0x20)
      {
LABEL_33:
        if (v17 != 512)
        {
          goto LABEL_73;
        }

        if (v10)
        {
          v51 = v9;
          v52 = MEMORY[0x1E696ABC0];
          v99 = *MEMORY[0x1E696A578];
          v100 = @"Account registration requests cannot be used with other types of requests.";
          v53 = MEMORY[0x1E695DF20];
          v54 = &v100;
          v55 = &v99;
LABEL_71:
          v56 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:1];
          *a4 = [v52 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v56];

LABEL_72:
          v9 = v51;
LABEL_73:
          v44 = 0;
          v39 = v4;
          v7 = v69;
          v41 = v73;
          goto LABEL_80;
        }

        goto LABEL_35;
      }

      if (((1 << v17) & 6) == 0)
      {
        if (((1 << v17) & 0x10010) != 0)
        {
          if ((v10 & 0x200) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v107 = *MEMORY[0x1E696A578];
            v108 = @"Account registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v108;
            v55 = &v107;
            goto LABEL_71;
          }

          if ((v10 & 0xFFFFFFFFFFFFFDEBLL) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v105 = *MEMORY[0x1E696A578];
            v106 = @"Registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v106;
            v55 = &v105;
            goto LABEL_71;
          }
        }

        else
        {
          if (((1 << v17) & 0x100000100) == 0)
          {
            goto LABEL_33;
          }

          if ((v10 & 0x200) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v103 = *MEMORY[0x1E696A578];
            v104 = @"Account registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v104;
            v55 = &v103;
            goto LABEL_71;
          }

          if ((v10 & 0x14) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v101 = *MEMORY[0x1E696A578];
            v102 = @"Registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v102;
            v55 = &v101;
            goto LABEL_71;
          }
        }
      }

LABEL_35:
      v10 |= v17;
      if (v16 && v8)
      {
        if (([v16 isEqualToString:v8] & 1) == 0)
        {
          v48 = MEMORY[0x1E696ABC0];
          v88 = *MEMORY[0x1E696A578];
          v89 = @"All Public Key Credential requests must use the same relyingPartyIdentifier.";
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v49 = v51 = v9;
          *a4 = [v48 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v49];

          goto LABEL_72;
        }
      }

      else if (!v16)
      {
        goto LABEL_41;
      }

      v34 = v16;

      v8 = v34;
LABEL_41:
      ++v13;
    }

    while (v6 != v13);
    v38 = [v4 countByEnumeratingWithState:&v78 objects:v98 count:16];
    v6 = v38;
    v7 = v69;
  }

  while (v38);
LABEL_55:

  v39 = [v77 relyingPartyIdentifier];
  v40 = [v75 relyingPartyIdentifier];
  v16 = v40;
  if (v39 && v40 && ([v39 isEqualToString:v40] & 1) == 0)
  {
    v50 = MEMORY[0x1E696ABC0];
    v86 = *MEMORY[0x1E696A578];
    v87 = @"All Public Key Credential requests must use the same relyingPartyIdentifier.";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    [v50 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v43];
    *a4 = v44 = 0;
    v41 = v73;
    goto LABEL_79;
  }

  v41 = v73;
  if (!(v77 | v73 | v75 | v7 | v72) || v8)
  {
    v43 = [objc_alloc(MEMORY[0x1E698DFC0]) initWithRequestTypes:v10];
    v67 = v9;
    [v43 setAppleIDAuthorizationRequest:v9];
    [v43 setRelyingPartyIdentifier:v8];
    [v43 setPlatformKeyCredentialCreationOptions:v77];
    [v43 setPlatformKeyCredentialAssertionOptions:v73];
    [v43 setSecurityKeyCredentialCreationOptions:v75];
    [v43 setSecurityKeyCredentialAssertionOptions:v7];
    [v43 setPlatformAccountRegistrationOptions:v72];
    v45 = [(ASAuthorizationController *)self testOptionsIfNeeded];
    [v43 setTestOptions:v45];

    [v43 setAuthenticatedContext:v74];
    [v43 setProxiedAppName:self->_proxiedAppName];
    [v43 setProxiedAppIdentifier:self->_proxiedAppIdentifier];
    [v43 setProxiedBundleIdentifier:self->_proxiedBundleIdentifier];
    [v43 setProxiedTeamIdentifier:self->_proxiedTeamIdentifier];
    [v43 setProxiedAssociatedDomains:self->_proxiedAssociatedDomains];
    [v43 setProxiedIconData:self->_proxiedIconData];
    [v43 setProxiedIconScale:self->_proxiedIconScale];
    [v43 setProxiedOriginDeviceName:self->_proxiedOriginDeviceName];
    [v43 setProxySheetHeaderOverride:self->_proxySheetHeaderOverride];
    [v43 setProxySheetTitleOverride:self->_proxySheetTitleOverride];
    [v43 setProxySheetSubtitleOverride:self->_proxySheetSubtitleOverride];
    [v43 setProxySheetNoCredentialsErrorTitleOverride:self->_proxySheetNoCredentialsErrorTitleOverride];
    [v43 setProxySheetNoCredentialsErrorMessageOverride:self->_proxySheetNoCredentialsErrorMessageOverride];
    [v43 setUseAlternativeSecurityKeysIcon:self->_useAlternativeSecurityKeysIcon];
    if (self->_proxySheetTitleOverride || self->_proxySheetSubtitleOverride || self->_useAlternativeSecurityKeysIcon)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFCFLL) != 0)
      {
LABEL_66:
        v46 = MEMORY[0x1E696ABC0];
        v82 = *MEMORY[0x1E696A578];
        v83 = @"Proxy sheet overrides are only available for security key requests.";
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        *a4 = [v46 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v47];

        v41 = v73;
        v44 = 0;
LABEL_78:
        v9 = v67;
        goto LABEL_79;
      }
    }

    else if (self->_proxySheetHeaderOverride && (v10 & 0xFFFFFFFFFFFFFFCFLL) != 0)
    {
      goto LABEL_66;
    }

    *a4 = 0;
    v43 = v43;
    v44 = v43;
    goto LABEL_78;
  }

  v42 = MEMORY[0x1E696ABC0];
  v84 = *MEMORY[0x1E696A578];
  v85 = @"All Public Key Credential requests must specify a relyingPartyIdentifier.";
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  [v42 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v43];
  *a4 = v44 = 0;
LABEL_79:

LABEL_80:
  v60 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)_convertCoreErrorToPublicError:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 code];
  v5 = 0;
  if (v4 <= 11)
  {
    if (!v4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v7 = [v3 userInfo];
      v8 = v12;
      v9 = 1000;
      goto LABEL_17;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_18;
      }

LABEL_9:
      v10 = MEMORY[0x1E696ABC0];
      v7 = [v3 userInfo];
      v8 = v10;
      v9 = 1001;
      goto LABEL_17;
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = [v3 userInfo];
LABEL_16:
    v7 = v14;
    v8 = v13;
    v9 = 1004;
    goto LABEL_17;
  }

  if (v4 <= 16)
  {
    if (v4 != 12)
    {
      if (v4 != 14)
      {
        goto LABEL_18;
      }

      v6 = MEMORY[0x1E696ABC0];
      v7 = [v3 userInfo];
      v8 = v6;
      v9 = 1002;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (v4 == 17)
  {
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v18[0] = v3;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    goto LABEL_16;
  }

  if (v4 != 22)
  {
    goto LABEL_18;
  }

  v11 = MEMORY[0x1E696ABC0];
  v7 = [v3 userInfo];
  v8 = v11;
  v9 = 1010;
LABEL_17:
  v5 = [v8 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v9 userInfo:v7];

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_convertCredentialProviderErrorToPublicError:(id)a3
{
  v4 = a3;
  v5 = [v4 code];
  if (v5 == 102)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1006;
    goto LABEL_5;
  }

  if (v5 == 100)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1001;
LABEL_5:
    v8 = [v6 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v7 userInfo:0];
    goto LABEL_7;
  }

  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke;
  block[3] = &unk_1E7AF7608;
  v12 = v4;
  os_activity_apply(authorizationActivity, block);

  v8 = 0;
LABEL_7:

  return v8;
}

void __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke_cold_1(a1, v2);
  }
}

- (id)_convertWebKitErrorToPublicError:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 code];
  if (v5 == 31)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1001;
    goto LABEL_5;
  }

  if (v5 == 8)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1006;
LABEL_5:
    v8 = [v6 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v7 userInfo:0];
    goto LABEL_7;
  }

  authorizationActivity = self->_authorizationActivity;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke;
  v18 = &unk_1E7AF7608;
  v10 = v4;
  v19 = v10;
  os_activity_apply(authorizationActivity, &v15);
  v11 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696AA08];
  v21[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:{1, v15, v16, v17, v18}];
  v8 = [v11 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v12];

LABEL_7:
  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

void __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke_cold_1(a1, v2);
  }
}

- (void)_completeWithAuthorization:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke;
  aBlock[3] = &unk_1E7AF88E8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  appSSOAuthorization = self->_appSSOAuthorization;
  if (appSSOAuthorization && ([appSSOAuthorization isUserInteractionEnabled]& 1) == 0)
  {
    v5[2](v5, v4);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke_126;
    block[3] = &unk_1E7AF8050;
    v9 = v5;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__ASAuthorizationController__completeWithAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke_2;
  v7[3] = &unk_1E7AF76A8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  os_activity_apply(v5, v7);
}

void __56__ASAuthorizationController__completeWithAuthorization___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 credential];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_DEFAULT, "Successfully completed authorization: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationController:*(a1 + 40) didCompleteWithAuthorization:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_failWithError:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__ASAuthorizationController__failWithError___block_invoke;
  aBlock[3] = &unk_1E7AF8540;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  appSSOAuthorization = self->_appSSOAuthorization;
  if (appSSOAuthorization && ([appSSOAuthorization isUserInteractionEnabled]& 1) == 0)
  {
    v5[2](v5, v4);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__ASAuthorizationController__failWithError___block_invoke_133;
    block[3] = &unk_1E7AF8050;
    v9 = v5;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __44__ASAuthorizationController__failWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ASAuthorizationController__failWithError___block_invoke_2;
  v7[3] = &unk_1E7AF76A8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  os_activity_apply(v5, v7);
}

void __44__ASAuthorizationController__failWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E698DF70]];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 _convertCoreErrorToPublicError:v2];
LABEL_3:
    v7 = v6;

    v2 = v7;
    goto LABEL_9;
  }

  if ([v5 _shouldConvertExtensionAndWebKitErrors])
  {
    v8 = [v2 domain];
    v9 = [v8 isEqualToString:@"ASExtensionErrorDomain"];

    if (v9)
    {
      v6 = [*(a1 + 40) _convertCredentialProviderErrorToPublicError:v2];
      goto LABEL_3;
    }

    v10 = [v2 domain];
    v11 = [v10 isEqualToString:@"WKErrorDomain"];

    if (v11)
    {
      v6 = [*(a1 + 40) _convertWebKitErrorToPublicError:v2];
      goto LABEL_3;
    }
  }

LABEL_9:
  if (!v2)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1000 userInfo:0];
  }

  v12 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __44__ASAuthorizationController__failWithError___block_invoke_2_cold_1(v12);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationController:*(a1 + 40) didCompleteWithError:v2];
  }
}

- (BOOL)_shouldConvertExtensionAndWebKitErrors
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v15 = 0;
  v5 = [v2 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASAuthorizationController *)v7 _shouldConvertExtensionAndWebKitErrors];
    }

    goto LABEL_8;
  }

  v8 = [v5 platform] - 1;
  if (v8 > 0xB || ((0xC63u >> v8) & 1) == 0)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = qword_1B1D84C70[v8];
  v10 = [v5 SDKVersion];
  v11 = [v10 componentsSeparatedByString:@"."];
  v12 = [v11 firstObject];

  if ([v12 length])
  {
    v13 = [v12 integerValue] >= v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:
  return v13;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentationContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);

  return WeakRetained;
}

- (id)testOptionsIfNeeded
{
  v2 = sub_1B1CEE3C4();

  return v2;
}

- (id)publicKeyAccountRegistrationOptionsForRequest:(id)a3
{
  v3 = a3;
  v4 = sub_1B1CE4C40();
  v5 = sub_1B1D7B8EC();

  if (v5)
  {

    v4 = 0;
  }

  return v4;
}

- (id)relyingPartyIdentifierForRequest:(id)a3
{
  v3 = *(a3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier);
  v4 = *(a3 + OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier + 8);

  v5 = sub_1B1D7BE1C();

  return v5;
}

- (void)initWithAuthorizationRequests:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAuthorizationController.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"authorizationRequests.count"}];
}

- (void)_requestContextWithRequests:(uint64_t)a3 error:(uint64_t *)a4 .cold.1(uint8_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138477827;
  *a4 = v7;
  _os_log_error_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_ERROR, "Found request for unexpected type: %{private}@", a1, 0xCu);
}

void __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v6, v7, "Received unexpected credential provider error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v6, v7, "Received unexpected WebKit error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __44__ASAuthorizationController__failWithError___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "ASAuthorizationController credential request failed with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_shouldConvertExtensionAndWebKitErrors
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to get application extension record: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end