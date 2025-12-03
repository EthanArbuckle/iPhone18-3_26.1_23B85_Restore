@interface SOHostExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (SOExtension)contextExtension;
- (id)remoteContextWithError:(id *)error;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)canOpenURL:(id)l completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SOHostExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[SOHostExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_0;

  return v3;
}

uint64_t __57__SOHostExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F409E8C8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[SOHostExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_0;

  return v3;
}

uint64_t __59__SOHostExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4091488];

  return MEMORY[0x1EEE66BB8]();
}

- (id)remoteContextWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  _auxiliaryConnection = [(SOHostExtensionContext *)self _auxiliaryConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SOHostExtensionContext_remoteContextWithError___block_invoke;
  v7[3] = &unk_1E813E318;
  v7[4] = &v8;
  v5 = [_auxiliaryConnection synchronousRemoteObjectProxyWithErrorHandler:v7];

  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__SOHostExtensionContext_remoteContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SOHostExtensionContext_remoteContextWithError___block_invoke_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v16 = "[SOHostExtensionContext openURL:completionHandler:]";
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2117;
    v20 = lCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__SOHostExtensionContext_openURL_completionHandler___block_invoke;
  v12[3] = &unk_1E813EE20;
  v13 = lCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [(SOHostExtensionContext *)self canOpenURL:v10 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __52__SOHostExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v24 = *MEMORY[0x1E699F940];
    v25[0] = @"com.apple.AppSSO.launch-origin";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    v5 = *(a1 + 32);
    v15 = 0;
    v6 = [v4 openSensitiveURL:v5 withOptions:v3 error:&v15];
    v7 = v15;

    v8 = SO_LOG_SOHostExtensionContext();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      v17 = 1752392040;
      v10 = *(a1 + 32);
      *buf = 141558787;
      if (v6)
      {
        v9 = @"YES";
      }

      v18 = 2117;
      v19 = v10;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "opened URL %{sensitive, mask.hash}@: success = %{public}@, error = %{public}@", buf, 0x2Au);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
    }
  }

  else
  {
    v12 = SO_LOG_SOHostExtensionContext();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__SOHostExtensionContext_openURL_completionHandler___block_invoke_cold_1(a1, v12);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)canOpenURL:(id)l completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v17 = "[SOHostExtensionContext canOpenURL:completionHandler:]";
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2117;
    v21 = lCopy;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v15 = 0;
  v10 = [defaultWorkspace isApplicationAvailableToOpenURL:lCopy error:&v15];
  v11 = v15;

  v12 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    *buf = 141558787;
    v17 = 1752392040;
    v18 = 2117;
    if (v10)
    {
      v13 = @"YES";
    }

    v19 = lCopy;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    selfCopy = v11;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "can open URL %{sensitive, mask.hash}@: result = %{public}@, error = %{public}@", buf, 0x2Au);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  hintsCopy = hints;
  v11 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SOHostExtensionContext presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    v16 = 2114;
    v17 = identifierCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", &v14, 0x20u);
  }

  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension presentAuthorizationViewControllerWithHints:hintsCopy requestIdentifier:identifierCopy completion:completionCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  errorCopy = error;
  credentialCopy = credential;
  v11 = SO_LOG_SOHostExtensionContext();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SOHostExtensionContext authorization:didCompleteWithCredential:error:]";
    v16 = 2114;
    v17 = authorizationCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", &v14, 0x20u);
  }

  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension authorization:authorizationCopy didCompleteWithCredential:credentialCopy error:errorCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension requestReauthenticationWithRequestIdentifier:identifierCopy completion:completionCopy];
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension presentRegistrationViewControllerWithCompletion:completionCopy];
}

- (SOExtension)contextExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_contextExtension);

  return WeakRetained;
}

void __49__SOHostExtensionContext_remoteContextWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "Error getting remote context %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __52__SOHostExtensionContext_openURL_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 141558275;
  v5 = 1752392040;
  v6 = 2117;
  v7 = v2;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "can not open URL %{sensitive, mask.hash}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end