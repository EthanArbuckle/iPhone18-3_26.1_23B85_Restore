@interface SOAuthorizationRequest
- (BOOL)_isUserInterfaceAllowed;
- (NSData)auditTokenData;
- (NSData)httpBody;
- (NSDictionary)authorizationOptions;
- (NSDictionary)extensionData;
- (NSDictionary)httpHeaders;
- (NSString)callerBundleIdentifier;
- (NSString)callerTeamIdentifier;
- (NSString)localizedCallerDisplayName;
- (NSString)realm;
- (NSString)requestedOperation;
- (POLoginManager)loginManager;
- (SOAuthorizationRequest)initWithRequestParameters:(id)parameters remoteExtensionContext:(id)context;
- (id)_createSecKeyProxiesForSecKeys:(id)keys error:(id *)error;
- (id)_hostExtensionContext;
- (void)_completeFinishAuthorizationWithRequestIdentifier:(id)identifier error:(id)error;
- (void)_hostExtensionContext;
- (void)_invalidateLoginManager;
- (void)cancel;
- (void)complete;
- (void)completeWithAuthorizationResult:(id)result;
- (void)completeWithError:(id)error;
- (void)completeWithHTTPAuthorizationHeaders:(id)headers;
- (void)completeWithHTTPResponse:(id)response httpBody:(id)body;
- (void)doNotHandle;
- (void)presentAuthorizationViewControllerWithHints:(id)hints completion:(id)completion;
@end

@implementation SOAuthorizationRequest

- (SOAuthorizationRequest)initWithRequestParameters:(id)parameters remoteExtensionContext:(id)context
{
  parametersCopy = parameters;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SOAuthorizationRequest;
  v9 = [(SOAuthorizationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestParameters, parameters);
    objc_storeWeak(&v10->_remoteExtensionContext, contextCopy);
  }

  return v10;
}

- (void)doNotHandle
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> doNotHandle", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> cancel", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)complete
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> complete", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)completeWithHTTPAuthorizationHeaders:(id)headers
{
  v37 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v5 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    *buf = 136316163;
    v28 = "[SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:]";
    v29 = 2114;
    v30 = identifier;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2117;
    v34 = headersCopy;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, identifier = %{public}@, httpAuthorizationHeaders = %{sensitive, mask.hash}@ on %@", buf, 0x34u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = headersCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v22}];
        v15 = [v14 description];
        v16 = [v13 description];
        [dictionary setObject:v15 forKeyedSubscript:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = objc_alloc_init(getSOAuthorizationCredentialClass());
  [v17 setHttpAuthorizationHeaders:dictionary];
  if ([(SOAuthorizationRequest *)self isAuthorizationCanceled])
  {
    v18 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:];
    }

    objc_storeStrong(&self->_canceledAuthorizationCredential, v17);
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = 0;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier2 didCompleteWithCredential:v17 error:0];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)completeWithHTTPResponse:(id)response httpBody:(id)body
{
  v27 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  bodyCopy = body;
  v8 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316419;
    v16 = "[SOAuthorizationRequest completeWithHTTPResponse:httpBody:]";
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2117;
    v20 = responseCopy;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2117;
    v24 = bodyCopy;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s extension API called, httpResponse = %{sensitive, mask.hash}@, httpBody = %{sensitive, mask.hash}@ on %@", &v15, 0x3Eu);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v9 = objc_alloc_init(getSOAuthorizationCredentialClass());
  [v9 setHttpResponse:responseCopy];
  if (bodyCopy)
  {
    [v9 setHttpBody:bodyCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    [v9 setHttpBody:v10];
  }

  if ([(SOAuthorizationRequest *)self isAuthorizationCanceled])
  {
    v11 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithHTTPResponse:httpBody:];
    }

    objc_storeStrong(&self->_canceledAuthorizationCredential, v9);
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = 0;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:v9 error:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)completeWithAuthorizationResult:(id)result
{
  v38 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315651;
    v33 = "[SOAuthorizationRequest completeWithAuthorizationResult:]";
    v34 = 2113;
    v35 = resultCopy;
    v36 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, completeWithAuthorizationResult = %{private}@ on %@", buf, 0x20u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v6 = [objc_alloc(getSOAuthorizationCredentialClass()) initWithAuthorizationResult:resultCopy];
  privateKeys = [resultCopy privateKeys];
  v8 = [privateKeys count];

  if (!v8)
  {
    goto LABEL_13;
  }

  privateKeys2 = [resultCopy privateKeys];
  v30 = 0;
  v10 = [(SOAuthorizationRequest *)self _createSecKeyProxiesForSecKeys:privateKeys2 error:&v30];
  canceledAuthorizationError = v30;
  secKeyProxies = self->_secKeyProxies;
  self->_secKeyProxies = v10;

  if (self->_secKeyProxies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = self->_secKeyProxies;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          endpoint = [*(*(&v26 + 1) + 8 * v18) endpoint];
          [array addObject:endpoint];

          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v16);
    }

    [v6 setSecKeyProxyEndpoints:array];
LABEL_13:
    if ([(SOAuthorizationRequest *)self isAuthorizationCanceled])
    {
      v20 = SO_LOG_SOAuthorizationRequest();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:];
      }

      objc_storeStrong(&self->_canceledAuthorizationCredential, v6);
      canceledAuthorizationError = self->_canceledAuthorizationError;
      self->_canceledAuthorizationError = 0;
    }

    else
    {
      canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      [canceledAuthorizationError authorization:identifier didCompleteWithCredential:v6 error:0];
    }

    goto LABEL_21;
  }

  v22 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [SOAuthorizationRequest completeWithAuthorizationResult:];
  }

  _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
  identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
  [_hostExtensionContext authorization:identifier2 didCompleteWithCredential:0 error:canceledAuthorizationError];

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)completeWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SOAuthorizationRequest completeWithError:]";
    v14 = 2114;
    v15 = errorCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, error = %{public}@ on %@", &v12, 0x20u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  if ([(SOAuthorizationRequest *)self isAuthorizationCanceled])
  {
    v6 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithError:];
    }

    canceledAuthorizationCredential = self->_canceledAuthorizationCredential;
    self->_canceledAuthorizationCredential = 0;

    v8 = errorCopy;
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = v8;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:0 error:errorCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  hintsCopy = hints;
  completionCopy = completion;
  v8 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:]";
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s extension API called on %@", buf, 0x16u);
  }

  if ([(SOAuthorizationRequest *)self isAuthorizationCanceled])
  {
    v9 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
    }

    if (completionCopy)
    {
      v10 = [getSOErrorHelperClass_1() internalErrorWithMessage:@"Authorization has been already canceled"];
      completionCopy[2](completionCopy, 0, v10);
LABEL_22:
    }
  }

  else
  {
    if (![(SOAuthorizationRequestParameters *)self->_requestParameters isUserInteractionEnabled])
    {
      v13 = SO_LOG_SOAuthorizationRequest();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
      }

      if (completionCopy)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = getASAuthorizationErrorDomain();
        v16 = [v14 errorWithDomain:v15 code:1005 userInfo:0];
        completionCopy[2](completionCopy, 0, v16);
      }

      v10 = [getSOErrorHelperClass_1() errorWithCode:-12];
      v17 = SO_LOG_SOAuthorizationRequest();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v10;
        _os_log_impl(&dword_1C1317000, v17, OS_LOG_TYPE_DEFAULT, "finish authorization with error: %{public}@", buf, 0xCu);
      }

      _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      [_hostExtensionContext authorization:identifier didCompleteWithCredential:0 error:v10];

      goto LABEL_22;
    }

    if ([(SOAuthorizationRequest *)self _isUserInterfaceAllowed])
    {
      _hostExtensionContext2 = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke;
      v24[3] = &unk_1E813EA28;
      v24[4] = self;
      v25 = completionCopy;
      [_hostExtensionContext2 presentAuthorizationViewControllerWithHints:hintsCopy requestIdentifier:identifier2 completion:v24];

      v10 = v25;
      goto LABEL_22;
    }

    v20 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
    }

    if (completionCopy)
    {
      v21 = MEMORY[0x1E696ABC0];
      v10 = getASAuthorizationErrorDomain();
      v22 = [v21 errorWithDomain:v10 code:1001 userInfo:0];
      completionCopy[2](completionCopy, 0, v22);

      goto LABEL_22;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 40))
  {
    if (v4 && [v4 code] == -8)
    {
      v6 = [v5 userInfo];
      v7 = [v6 objectForKeyedSubscript:@"Subcode"];

      if (v7 && [v7 intValue] == 1)
      {
        v8 = SO_LOG_SOAuthorizationRequest();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
        }

        v15 = MEMORY[0x1E696ABC0];
        v16 = getASAuthorizationErrorDomain();
        v17 = [v15 errorWithDomain:v16 code:1001 userInfo:0];

        v5 = v17;
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)_isUserInterfaceAllowed
{
  authorizationOptions = [(SOAuthorizationRequest *)self authorizationOptions];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr;
  v12 = getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr;
  if (!getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr)
  {
    v4 = AppSSOCoreLibrary_1();
    v10[3] = dlsym(v4, "SOAuthorizationOptionCoreNoUserInterface");
    getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
    ASAuthorizationErrorDomain_cold_1 = getASAuthorizationErrorDomain_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(ASAuthorizationErrorDomain_cold_1);
  }

  v5 = [authorizationOptions objectForKeyedSubscript:*v3];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (id)_hostExtensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteExtensionContext);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = 0;
    v4 = [WeakRetained hostContextWithError:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = SO_LOG_SOAuthorizationRequest();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationRequest _hostExtensionContext];
      }
    }
  }

  else
  {
    v5 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOAuthorizationRequest *)v5 _hostExtensionContext];
    }

    v4 = 0;
  }

  return v4;
}

- (void)_completeFinishAuthorizationWithRequestIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_remoteExtensionContext);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained completeFinishAuthorization:identifierCopy error:errorCopy];
  }

  else
  {
    v10 = SO_LOG_SOAuthorizationRequest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SOAuthorizationRequest *)v10 _hostExtensionContext];
    }
  }
}

- (id)_createSecKeyProxiesForSecKeys:(id)keys error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = keysCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = CFGetTypeID(v11);
        if (v12 != SecKeyGetTypeID())
        {
          v16 = SO_LOG_SOAuthorizationRequest();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [SOAuthorizationRequest _createSecKeyProxiesForSecKeys:error:];
          }

          v14 = obj;
          if (error)
          {
            v17 = MEMORY[0x1E696ABC0];
            v18 = getASAuthorizationErrorDomain();
            *error = [v17 errorWithDomain:v18 code:1002 userInfo:0];
          }

          v15 = 0;
          goto LABEL_15;
        }

        v13 = [objc_alloc(MEMORY[0x1E697AAB0]) initWithKey:v11];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke;
        v24[3] = &unk_1E813EA50;
        v24[4] = self;
        [v13 setClientConnectionHandler:v24];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7;
        v23[3] = &unk_1E813EA50;
        v23[4] = self;
        [v13 setClientDisconnectionHandler:v23];
        [array addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = obj;

  v15 = array;
LABEL_15:

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

void __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(a1 + 32) setSecKeyProxiesConnectedClients:{objc_msgSend(*(a1 + 32), "secKeyProxiesConnectedClients") + 1}];
  v5 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_cold_1(a2, v7, [*(a1 + 32) secKeyProxiesConnectedClients]);
  }

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(a1 + 32) setSecKeyProxiesConnectedClients:{objc_msgSend(*(a1 + 32), "secKeyProxiesConnectedClients") - 1}];
  v5 = SO_LOG_SOAuthorizationRequest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7_cold_1(a2, v9, [*(a1 + 32) secKeyProxiesConnectedClients]);
  }

  if (![*(a1 + 32) secKeyProxiesConnectedClients])
  {
    [*(a1 + 32) setSecKeyProxies:0];
    v6 = *(a1 + 32);
    v7 = [v6[1] identifier];
    [v6 _completeFinishAuthorizationWithRequestIdentifier:v7 error:0];
  }

  objc_sync_exit(v4);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateLoginManager
{
  loginManager = self->_loginManager;
  if (loginManager)
  {
    [(POLoginManager *)loginManager invalidate];
    v4 = self->_loginManager;
    self->_loginManager = 0;
  }
}

- (NSString)requestedOperation
{
  requestedOperation = [(SOAuthorizationRequestParameters *)self->_requestParameters requestedOperation];
  v3 = requestedOperation;
  if (requestedOperation)
  {
    v4 = requestedOperation;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSDictionary)httpHeaders
{
  httpHeaders = [(SOAuthorizationRequestParameters *)self->_requestParameters httpHeaders];
  v3 = httpHeaders;
  if (httpHeaders)
  {
    v4 = httpHeaders;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSData)httpBody
{
  httpBody = [(SOAuthorizationRequestParameters *)self->_requestParameters httpBody];
  v3 = httpBody;
  if (httpBody)
  {
    v4 = httpBody;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v5 = v4;

  return v5;
}

- (NSString)realm
{
  realm = [(SOAuthorizationRequestParameters *)self->_requestParameters realm];
  v3 = realm;
  if (realm)
  {
    v4 = realm;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSDictionary)extensionData
{
  extensionData = [(SOAuthorizationRequestParameters *)self->_requestParameters extensionData];
  v3 = extensionData;
  if (extensionData)
  {
    v4 = extensionData;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)callerBundleIdentifier
{
  callerBundleIdentifier = [(SOAuthorizationRequestParameters *)self->_requestParameters callerBundleIdentifier];
  v3 = callerBundleIdentifier;
  if (callerBundleIdentifier)
  {
    v4 = callerBundleIdentifier;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSData)auditTokenData
{
  auditTokenData = [(SOAuthorizationRequestParameters *)self->_requestParameters auditTokenData];
  v3 = auditTokenData;
  if (auditTokenData)
  {
    v4 = auditTokenData;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v5 = v4;

  return v5;
}

- (NSDictionary)authorizationOptions
{
  authorizationOptions = [(SOAuthorizationRequestParameters *)self->_requestParameters authorizationOptions];
  v3 = authorizationOptions;
  if (authorizationOptions)
  {
    v4 = authorizationOptions;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)callerTeamIdentifier
{
  callerTeamIdentifier = [(SOAuthorizationRequestParameters *)self->_requestParameters callerTeamIdentifier];
  v3 = callerTeamIdentifier;
  if (callerTeamIdentifier)
  {
    v4 = callerTeamIdentifier;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)localizedCallerDisplayName
{
  localizedCallerDisplayName = [(SOAuthorizationRequestParameters *)self->_requestParameters localizedCallerDisplayName];
  v3 = localizedCallerDisplayName;
  if (localizedCallerDisplayName)
  {
    v4 = localizedCallerDisplayName;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (POLoginManager)loginManager
{
  if ([(SOAuthorizationRequestParameters *)self->_requestParameters pssoAuthenticationMethod]== 1000)
  {
    v3 = 0;
  }

  else
  {
    if (!self->_loginManager)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v4 = getPOLoginManagerClass_softClass;
      v16 = getPOLoginManagerClass_softClass;
      if (!getPOLoginManagerClass_softClass)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __getPOLoginManagerClass_block_invoke;
        v12[3] = &unk_1E813E230;
        v12[4] = &v13;
        __getPOLoginManagerClass_block_invoke(v12);
        v4 = v14[3];
      }

      v5 = v4;
      _Block_object_dispose(&v13, 8);
      v6 = objc_alloc_init(v4);
      loginManager = self->_loginManager;
      self->_loginManager = v6;
    }

    _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
    [(POLoginManager *)self->_loginManager setHostExtensionContext:_hostExtensionContext];

    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [(POLoginManager *)self->_loginManager setRequestIdentifier:identifier];

    extensionData = [(SOAuthorizationRequestParameters *)self->_requestParameters extensionData];
    [(POLoginManager *)self->_loginManager setExtensionData:extensionData];

    v3 = self->_loginManager;
  }

  return v3;
}

- (void)completeWithHTTPAuthorizationHeaders:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> completeWithHTTPAuthorizationHeaders", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)completeWithHTTPResponse:httpBody:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> completeWithHTTPResponse", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)completeWithAuthorizationResult:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "failed to create SecKey proxies: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)completeWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%@: cancel -> completeWithError", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "%@, authorization wants to display UI but user interaction is not enabled", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "%@, authorization wants to display UI but it is not allowed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "%@, authorization has been already canceled", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, a2, a3, "%@, authorization wants to display UI but the device screen is locked", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_hostExtensionContext
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to get host extension context with error = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createSecKeyProxiesForSecKeys:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "invalid SecKey in the authorization result: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end