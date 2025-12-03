@interface ASWebAuthenticationSession
+ (void)handleSSOExtensionIdentifier:(id *)identifier;
- (BOOL)_areAdditionalHeaderFieldsValid:(id)valid;
- (BOOL)_isForbiddenHeaderFieldName:(id)name value:(id)value;
- (BOOL)_validateAdditionalHeaderFieldsDryRun:(BOOL)run;
- (id)presentationAnchorForAuthorizationController:(id)controller;
- (id)presentationContextProvider;
- (void)_cancelWithError:(id)error;
- (void)_invalidate;
- (void)_setNetworkAttributionApplicationBundleIdentifier:(id)identifier;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
- (void)cancel;
- (void)setPrefersEphemeralWebBrowserSession:(BOOL)prefersEphemeralWebBrowserSession;
- (void)setProxiedAssociatedDomains:(id)domains;
@end

@implementation ASWebAuthenticationSession

void __102__ASWebAuthenticationSession_initWithURL_callback_usingEphemeralSession_jitEnabled_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidate];

  v8 = *(a1 + 32);
  v9 = v5;
  v15 = v9;
  if (v9)
  {
    v10 = [v9 domain];
    v11 = [v10 isEqualToString:@"com.apple.AuthenticationServices.WebAuthenticationSession"];

    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v14 = [v15 code] == 1;
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.WebAuthenticationSession" code:v14 userInfo:0];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  (*(v8 + 16))(v8, v6, v13);
}

- (void)cancel
{
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  [(ASWebAuthenticationSession *)self _invalidate];
  authenticationSession = self->_authenticationSession;

  [(SFAuthenticationSession *)authenticationSession cancel];
}

- (void)setPrefersEphemeralWebBrowserSession:(BOOL)prefersEphemeralWebBrowserSession
{
  v3 = prefersEphemeralWebBrowserSession;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    self->_storageMode = v3;
  }
}

- (void)setProxiedAssociatedDomains:(id)domains
{
  domainsCopy = domains;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    [(SFAuthenticationSession *)self->_authenticationSession setProxiedAssociatedDomains:domainsCopy];
  }
}

- (void)_setNetworkAttributionApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    [(SFAuthenticationSession *)self->_authenticationSession _setNetworkAttributionApplicationBundleIdentifier:identifierCopy];
  }
}

- (void)_invalidate
{
  referenceToSelf = self->_referenceToSelf;
  self->_referenceToSelf = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_cancelWithError:(id)error
{
  (*(self->_originalCompletionHandler + 2))();
  originalCompletionHandler = self->_originalCompletionHandler;
  self->_originalCompletionHandler = 0;
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  if ([errorCopy safari_matchesErrorDomain:@"com.apple.AuthenticationServices.AuthorizationError" andCode:1003])
  {
    [(ASWebAuthenticationSession *)self performSelectorOnMainThread:sel__startDryRun_ withObject:MEMORY[0x1E695E110] waitUntilDone:0];
  }

  else
  {
    (*(self->_originalCompletionHandler + 2))();
    [(ASWebAuthenticationSession *)self _invalidate];
  }
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  credential = [authorizationCopy credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    credential2 = [authorizationCopy credential];
    authenticatedResponse = [credential2 authenticatedResponse];
    v11 = [authenticatedResponse URL];

    if ([(ASWebAuthenticationSessionCallback *)self->_callback matchesURL:v11])
    {
      (*(self->_originalCompletionHandler + 2))();
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
      (*(self->_originalCompletionHandler + 2))();
    }
  }

  else
  {
    credential2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    (*(self->_originalCompletionHandler + 2))();
  }

  [(ASWebAuthenticationSession *)self _invalidate];
}

- (id)presentationAnchorForAuthorizationController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);
  v5 = [WeakRetained presentationAnchorForWebAuthenticationSession:self];

  return v5;
}

+ (void)handleSSOExtensionIdentifier:(id *)identifier
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ASWebAuthenticationSession_handleSSOExtensionIdentifier___block_invoke;
  v6[3] = &__block_descriptor_64_e20_v20__0B8__NSError_12l;
  v3 = *&identifier->var0[4];
  v7 = *identifier->var0;
  v8 = v3;
  v4 = *&identifier->var0[4];
  v5[0] = *identifier->var0;
  v5[1] = v4;
  [MEMORY[0x1E698B128] isExtensionProcessWithAuditToken:v5 completion:v6];
}

void __59__ASWebAuthenticationSession_handleSSOExtensionIdentifier___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    *cfa = *(a1 + 32);
    v7 = *(a1 + 48);
    v3 = WBSApplicationIdentifierFromAuditToken();
    CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    [MEMORY[0x1E698B128] setOriginatorBundleIdentifier:{v3, 0, cfa[1], v7}];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v4 = MEMORY[0x1E698B128];

    [v4 setOriginatorBundleIdentifier:0];
  }
}

- (id)presentationContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);

  return WeakRetained;
}

- (BOOL)_validateAdditionalHeaderFieldsDryRun:(BOOL)run
{
  v14[1] = *MEMORY[0x1E69E9840];
  additionalHeaderFields = [(ASWebAuthenticationSession *)self additionalHeaderFields];
  v6 = [(ASWebAuthenticationSession *)self _areAdditionalHeaderFieldsValid:additionalHeaderFields];

  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"One or more provided headers are invalid.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.AuthenticationServices.WebAuthenticationSession" code:1 userInfo:v8];

    v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASWebAuthenticationSession(Shared) *)v9 _validateAdditionalHeaderFieldsDryRun:v10];
      if (run)
      {
        goto LABEL_5;
      }
    }

    else if (run)
    {
LABEL_5:

      goto LABEL_6;
    }

    [(ASWebAuthenticationSession *)self _cancelWithError:v9];
    goto LABEL_5;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_areAdditionalHeaderFieldsValid:(id)valid
{
  validCopy = valid;
  if ([validCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__ASWebAuthenticationSession_Shared___areAdditionalHeaderFieldsValid___block_invoke;
    v7[3] = &unk_1E7AF8E88;
    v7[4] = self;
    v5 = [validCopy safari_containsEntryPassingTest:v7] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_isForbiddenHeaderFieldName:(id)name value:(id)value
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [&unk_1F28F0530 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(&unk_1F28F0530);
      }

      if ([nameCopy safari_isCaseInsensitiveEqualToString:*(*(&v20 + 1) + 8 * v8)])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [&unk_1F28F0530 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [&unk_1F28F0548 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (!v9)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v17;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(&unk_1F28F0548);
      }

      if ([nameCopy safari_hasCaseInsensitivePrefix:*(*(&v16 + 1) + 8 * v12)])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [&unk_1F28F0548 countByEnumeratingWithState:&v16 objects:v24 count:16];
        v13 = 0;
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v13 = 1;
LABEL_19:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_startDryRun:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 userInfo];
  v7 = [v6 objectForKeyedSubscript:a3];
  v9 = 138543362;
  v10 = v7;
  _os_log_error_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Please adopt the new API as soon as possible (rdar://50384281).", &v9, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end