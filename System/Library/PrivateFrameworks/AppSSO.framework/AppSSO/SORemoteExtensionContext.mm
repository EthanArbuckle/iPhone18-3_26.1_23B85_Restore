@interface SORemoteExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (ASAuthorizationProviderExtensionAuthorizationRequestHandler)extensionViewController;
- (BOOL)canOpenURL:(id)l;
- (SOExtensionViewService)viewService;
- (id)authorizationRequestHandlerWithRequestParameters:(id)parameters error:(id *)error;
- (id)extensionAuthorizationRequestHandlerWithError:(id *)error;
- (id)findRequestForIdentifier:(id)identifier;
- (id)hostContextWithError:(id *)error;
- (id)synchronousHostContextWithError:(id *)error;
- (void)_disableAppSSOInCFNetwork;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion;
- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)canPerformRegistrationCompletion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)completeFinishAuthorization:(id)authorization error:(id)error;
- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion;
- (void)protocolVersionCompletion:(id)completion;
- (void)registrationDidCancelWithCompletion:(id)completion;
- (void)registrationDidCompleteWithCompletion:(id)completion;
- (void)removeRequestForIdentifier:(id)identifier;
- (void)saveRequest:(id)request forIdentifier:(id)identifier;
- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion;
- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion;
- (void)supportedGrantTypesCompletion:(id)completion;
- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion;
@end

@implementation SORemoteExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[SORemoteExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __59__SORemoteExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F409E8C8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[SORemoteExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

uint64_t __61__SORemoteExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4091488];

  return MEMORY[0x1EEE66BB8]();
}

- (void)saveRequest:(id)request forIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requests = selfCopy->_requests;
  if (!requests)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v11 = selfCopy->_requests;
    selfCopy->_requests = strongToStrongObjectsMapTable;

    requests = selfCopy->_requests;
  }

  [(NSMapTable *)requests setObject:requestCopy forKey:identifierCopy];
  v12 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](selfCopy->_requests, "count")}];
    v15 = 136315650;
    v16 = "[SORemoteExtensionContext saveRequest:forIdentifier:]";
    v17 = 2114;
    v18 = v13;
    v19 = 2112;
    v20 = selfCopy;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "%s current requests: %{public}@ on %@", &v15, 0x20u);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)findRequestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requests = selfCopy->_requests;
  if (!requests)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v8 = selfCopy->_requests;
    selfCopy->_requests = strongToStrongObjectsMapTable;

    requests = selfCopy->_requests;
  }

  v9 = [(NSMapTable *)requests objectForKey:identifierCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)removeRequestForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requests = selfCopy->_requests;
  if (!requests)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v8 = selfCopy->_requests;
    selfCopy->_requests = strongToStrongObjectsMapTable;

    requests = selfCopy->_requests;
  }

  [(NSMapTable *)requests removeObjectForKey:identifierCopy];
  v9 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](selfCopy->_requests, "count")}];
    v12 = 136315650;
    v13 = "[SORemoteExtensionContext removeRequestForIdentifier:]";
    v14 = 2114;
    v15 = v10;
    v16 = 2112;
    v17 = selfCopy;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "%s current requests: %{public}@ on %@", &v12, 0x20u);
  }

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x1E69E9840];
}

- (ASAuthorizationProviderExtensionAuthorizationRequestHandler)extensionViewController
{
  extensionAuthorizationRequestHandler = self->_extensionAuthorizationRequestHandler;
  if (extensionAuthorizationRequestHandler)
  {
    _principalObject = extensionAuthorizationRequestHandler;
  }

  else
  {
    _principalObject = [(SORemoteExtensionContext *)self _principalObject];
  }

  return _principalObject;
}

- (id)authorizationRequestHandlerWithRequestParameters:(id)parameters error:(id *)error
{
  if ([parameters isUserInteractionEnabled])
  {
    extensionViewController = [(SORemoteExtensionContext *)self extensionViewController];
    if (error && !extensionViewController)
    {
      v7 = [getSOErrorHelperClass() internalErrorWithMessage:@"failed to get extension view controller"];
      v8 = v7;
      extensionViewController = 0;
      *error = v7;
    }
  }

  else
  {
    extensionViewController = [(SORemoteExtensionContext *)self extensionAuthorizationRequestHandlerWithError:error];
  }

  return extensionViewController;
}

- (id)extensionAuthorizationRequestHandlerWithError:(id *)error
{
  if (self->_extensionAuthorizationRequestHandler)
  {
    if (!error)
    {
LABEL_4:
      v5 = self->_extensionAuthorizationRequestHandler;
      goto LABEL_5;
    }

LABEL_3:
    *error = 0;
    goto LABEL_4;
  }

  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SORemoteExtensionContext extensionAuthorizationRequestHandlerWithError:];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v10 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];

  v11 = [v10 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  v12 = v11;
  if (v11)
  {
    v13 = NSClassFromString(v11);
    if (v13)
    {
      v14 = objc_alloc_init(v13);
      goto LABEL_16;
    }

    v24 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SORemoteExtensionContext extensionAuthorizationRequestHandlerWithError:];
    }

    if (error)
    {
      SOErrorHelperClass = getSOErrorHelperClass();
      v26 = @"failed to get extension principalClass";
LABEL_26:
      *error = [SOErrorHelperClass internalErrorWithMessage:v26];
    }
  }

  else
  {
    v15 = [v10 objectForKeyedSubscript:@"NSExtensionMainStoryboard"];
    if (!v15)
    {
      v27 = SO_LOG_SORemoteExtensionContext();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SORemoteExtensionContext extensionAuthorizationRequestHandlerWithError:];
      }

      if (!error)
      {
        goto LABEL_32;
      }

      SOErrorHelperClass = getSOErrorHelperClass();
      v26 = @"failed to get extension NSExtensionPrincipalClass or NSExtensionMainStoryboard";
      goto LABEL_26;
    }

    v16 = v15;
    v17 = MEMORY[0x1E69DCFB8];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [v17 storyboardWithName:v16 bundle:mainBundle2];

    instantiateInitialViewController = [v19 instantiateInitialViewController];
    if (instantiateInitialViewController)
    {
      v14 = instantiateInitialViewController;

LABEL_16:
      _sharedExtensionContextVendor = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
      _UUID = [(SORemoteExtensionContext *)self _UUID];
      [_sharedExtensionContextVendor _setPrincipalObject:v14 forUUID:_UUID];

      extensionAuthorizationRequestHandler = self->_extensionAuthorizationRequestHandler;
      self->_extensionAuthorizationRequestHandler = v14;

      if (!error)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v28 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [SORemoteExtensionContext extensionAuthorizationRequestHandlerWithError:];
    }

    if (error)
    {
      *error = [getSOErrorHelperClass() internalErrorWithMessage:@"failed to instantiate initial view controller from storyboard"];
    }
  }

LABEL_32:

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)hostContextWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  _auxiliaryConnection = [(SORemoteExtensionContext *)self _auxiliaryConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SORemoteExtensionContext_hostContextWithError___block_invoke;
  v7[3] = &unk_1E813E318;
  v7[4] = &v8;
  v5 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:v7];

  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__SORemoteExtensionContext_hostContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SORemoteExtensionContext_hostContextWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)synchronousHostContextWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  _auxiliaryConnection = [(SORemoteExtensionContext *)self _auxiliaryConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SORemoteExtensionContext_synchronousHostContextWithError___block_invoke;
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

void __60__SORemoteExtensionContext_synchronousHostContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SORemoteExtensionContext_synchronousHostContextWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [parametersCopy identifier];
    *buf = 136315906;
    v24 = "[SORemoteExtensionContext beginAuthorizationWithRequestParameters:completion:]";
    v25 = 2114;
    v26 = identifier;
    v27 = 2114;
    v28 = parametersCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  v22 = 0;
  v10 = [(SORemoteExtensionContext *)self authorizationRequestHandlerWithRequestParameters:parametersCopy error:&v22];
  v11 = v22;
  if (!v10)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v11);
    }

    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    requestedOperation = [parametersCopy requestedOperation];
    if ([requestedOperation isEqualToString:@"configuration_removed"])
    {
      v13 = dyld_program_sdk_at_least();

      if ((v13 & 1) == 0)
      {
        v14 = SO_LOG_SORemoteExtensionContext();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_INFO, "SOAuthorizationOperationConfigurationRemoved requires extension built with newer SDK", buf, 2u);
        }

        if (completionCopy)
        {
          v15 = [getSOErrorHelperClass() errorWithCode:-5];
LABEL_15:
          v16 = v15;
          completionCopy[2](completionCopy, 0, v15);

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    [(SORemoteExtensionContext *)self _disableAppSSOInCFNetwork];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke;
    v18[3] = &unk_1E813E340;
    v19 = parametersCopy;
    selfCopy2 = self;
    v21 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_20;
  }

  if (completionCopy)
  {
    v15 = [getSOErrorHelperClass() internalErrorWithMessage:@"required beginAuthorizationWithRequest is not implemented in extension"];
    goto LABEL_15;
  }

LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
}

void __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1)
{
  v2 = [[SOAuthorizationRequest alloc] initWithRequestParameters:*(a1 + 32) remoteExtensionContext:*(a1 + 40)];
  v3 = [objc_alloc(getASAuthorizationProviderExtensionAuthorizationRequestClass()) initWithAuthorizationRequest:v2];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 saveRequest:v3 forIdentifier:v5];

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke_cold_1();
  }

  [*(a1 + 48) beginAuthorizationWithRequest:v3];
  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke_cold_2();
  }
}

- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SORemoteExtensionContext beginAuthorizationWithServiceXPCEndpoint:completion:]";
    v18 = 2114;
    v19 = endpointCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  v9 = [objc_opt_new() initWithListenerEndpoint:endpointCopy];
  extensionServiceConnection = self->_extensionServiceConnection;
  self->_extensionServiceConnection = v9;

  v11 = self->_extensionServiceConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
  v14[3] = &unk_1E813E368;
  v14[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  [(SOExtensionServiceConnection *)v11 beginAuthorizationWithCompletion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v7);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v21 = 0;
    v10 = [v9 authorizationRequestHandlerWithRequestParameters:v5 error:&v21];
    v7 = v21;
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 32) _disableAppSSOInCFNetwork];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2;
        v17[3] = &unk_1E813E340;
        v11 = v5;
        v12 = *(a1 + 32);
        v18 = v11;
        v19 = v12;
        v20 = v10;
        dispatch_async(MEMORY[0x1E69E96A0], v17);
        v13 = *(a1 + 40);
        if (v13)
        {
          (*(v13 + 16))(v13, 1, 0);
        }
      }

      else
      {
        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = [getSOErrorHelperClass() internalErrorWithMessage:@"required beginAuthorizationWithRequest is not implemented in extension"];
          (*(v15 + 16))(v15, 0, v16);
        }
      }
    }

    else
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))(v14, 0, v7);
      }
    }
  }
}

void __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[SOAuthorizationRequest alloc] initWithRequestParameters:*(a1 + 32) remoteExtensionContext:*(a1 + 40)];
  v3 = [objc_alloc(getASAuthorizationProviderExtensionAuthorizationRequestClass()) initWithAuthorizationRequest:v2];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 saveRequest:v3 forIdentifier:v5];

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1();
  }

  [*(a1 + 48) beginAuthorizationWithRequest:v3];
  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke_cold_2();
  }
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[SORemoteExtensionContext cancelAuthorization:completion:]";
    v28 = 2114;
    v29 = authorizationCopy;
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@ on %@", buf, 0x20u);
  }

  v9 = [(SORemoteExtensionContext *)self findRequestForIdentifier:authorizationCopy];
  [(SORemoteExtensionContext *)self removeRequestForIdentifier:authorizationCopy];
  if (v9)
  {
    authorizationRequest = [v9 authorizationRequest];
    [authorizationRequest setAuthorizationCanceled:1];

    authorizationRequest2 = [v9 authorizationRequest];
    [authorizationRequest2 setCanceledAuthorizationCredential:0];

    v12 = [getSOErrorHelperClass() errorWithCode:-2];
    authorizationRequest3 = [v9 authorizationRequest];
    [authorizationRequest3 setCanceledAuthorizationError:v12];

    if (completionCopy)
    {
      authorizationRequest4 = [v9 authorizationRequest];
      canceledAuthorizationCredential = [authorizationRequest4 canceledAuthorizationCredential];
      authorizationRequest5 = [v9 authorizationRequest];
      canceledAuthorizationError = [authorizationRequest5 canceledAuthorizationError];
      completionCopy[2](completionCopy, canceledAuthorizationCredential, canceledAuthorizationError);
    }

    extensionViewController = [(SORemoteExtensionContext *)self extensionViewController];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke;
      v23[3] = &unk_1E813E390;
      v24 = v9;
      selfCopy2 = self;
      dispatch_async(MEMORY[0x1E69E96A0], v23);
    }

    else
    {
      v21 = SO_LOG_SORemoteExtensionContext();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1317000, v21, OS_LOG_TYPE_DEFAULT, "optional API cancelAuthorizationWithRequest is not implemented in extension", buf, 2u);
      }
    }
  }

  else
  {
    v20 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v20, OS_LOG_TYPE_DEFAULT, "Request already completed.", buf, 2u);
    }

    completionCopy[2](completionCopy, 0, 0);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) extensionViewController];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v3 cancelAuthorizationWithRequest:v5];

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke_cold_2(v4);
  }
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315650;
    v21 = "[SORemoteExtensionContext finishAuthorization:completion:]";
    v22 = 2114;
    v23 = authorizationCopy;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@ on %@", &v20, 0x20u);
  }

  v9 = [(SORemoteExtensionContext *)self findRequestForIdentifier:authorizationCopy];
  authorizationRequest = [v9 authorizationRequest];
  objc_sync_enter(authorizationRequest);
  authorizationRequest2 = [v9 authorizationRequest];
  secKeyProxiesConnectedClients = [authorizationRequest2 secKeyProxiesConnectedClients];

  if (secKeyProxiesConnectedClients)
  {
    v13 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      authorizationRequest3 = [v9 authorizationRequest];
      secKeyProxiesConnectedClients2 = [authorizationRequest3 secKeyProxiesConnectedClients];
      v20 = 67109120;
      LODWORD(v21) = secKeyProxiesConnectedClients2;
      _os_log_debug_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEBUG, "postponing finishAuthorization completion because of connected secKeyProxies clients (%d)", &v20, 8u);
    }

    v14 = MEMORY[0x1C68F1C40](completionCopy);
    finishAuthorizationCompletion = self->_finishAuthorizationCompletion;
    self->_finishAuthorizationCompletion = v14;

    objc_sync_exit(authorizationRequest);
  }

  else
  {
    authorizationRequest4 = [v9 authorizationRequest];
    [authorizationRequest4 setSecKeyProxies:0];

    objc_sync_exit(authorizationRequest);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    [(SORemoteExtensionContext *)self removeRequestForIdentifier:authorizationCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)completeFinishAuthorization:(id)authorization error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  errorCopy = error;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[SORemoteExtensionContext completeFinishAuthorization:error:]";
    v17 = 2114;
    v18 = authorizationCopy;
    v19 = 2114;
    v20 = errorCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, error: %{public}@ on %@", &v15, 0x2Au);
  }

  v9 = [(SORemoteExtensionContext *)self findRequestForIdentifier:authorizationCopy];
  authorizationRequest = [v9 authorizationRequest];
  objc_sync_enter(authorizationRequest);
  finishAuthorizationCompletion = self->_finishAuthorizationCompletion;
  if (finishAuthorizationCompletion)
  {
    finishAuthorizationCompletion[2](finishAuthorizationCompletion, errorCopy == 0, errorCopy);
    v12 = self->_finishAuthorizationCompletion;
    self->_finishAuthorizationCompletion = 0;

    objc_sync_exit(authorizationRequest);
    [(SORemoteExtensionContext *)self removeRequestForIdentifier:authorizationCopy];
  }

  else
  {
    v13 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SORemoteExtensionContext completeFinishAuthorization:error:];
    }

    objc_sync_exit(authorizationRequest);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v15 = "[SORemoteExtensionContext openURL:completionHandler:]";
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2117;
    v19 = lCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  v13 = 0;
  v9 = [(SORemoteExtensionContext *)self hostContextWithError:&v13];
  v10 = v13;
  if (v9)
  {
    [v9 openURL:lCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SORemoteExtensionContext openURL:completionHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canOpenURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    *&buf[4] = "[SORemoteExtensionContext canOpenURL:]";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    *&buf[22] = 2117;
    v15 = lCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  v13 = 0;
  v6 = [(SORemoteExtensionContext *)self synchronousHostContextWithError:&v13];
  v7 = v13;
  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v15) = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__SORemoteExtensionContext_canOpenURL___block_invoke;
    v12[3] = &unk_1E813E3B8;
    v12[4] = buf;
    [v6 canOpenURL:lCopy completionHandler:v12];
    v8 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = SO_LOG_SORemoteExtensionContext();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SORemoteExtensionContext canOpenURL:];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:options];
    v12 = 136315650;
    v13 = "[SORemoteExtensionContext beginDeviceRegistrationUsingOptions:extensionData:completion:]";
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s options = %{public}@ on %@", &v12, 0x20u);
  }

  v10 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "extension PSSO API beginDeviceRegistrationUsingLoginManager is not implemented in extension", &v12, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SORemoteExtensionContext beginUserRegistrationUsingUserName:authenticationMethod:options:extensionData:completion:]";
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v12, 0x16u);
  }

  v10 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "extension PSSO API beginUserRegistrationUsingLoginManager is not implemented in extension", &v12, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registrationDidCompleteWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SORemoteExtensionContext registrationDidCompleteWithCompletion:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "extension PSSO API registrationDidComplete is not implemented in extension", &v8, 2u);
  }

  completionCopy[2](completionCopy);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)registrationDidCancelWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SORemoteExtensionContext registrationDidCancelWithCompletion:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "extension PSSO API registrationDidCancel is not implemented in extension", &v8, 2u);
  }

  completionCopy[2](completionCopy);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)supportedGrantTypesCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "extension PSSO API supportedGrantTypes is not implemented in extension", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)protocolVersionCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "extension PSSO API protocolVersion is not implemented in extension", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)canPerformRegistrationCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SORemoteExtensionContext canPerformRegistrationCompletion:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SORemoteExtensionContext canPerformRegistrationCompletion:v6];
  }

  completionCopy[2](completionCopy, 0);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_disableAppSSOInCFNetwork
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SORemoteExtensionContext _disableAppSSOInCFNetwork]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  [MEMORY[0x1E696AF78] _disableAppSSO];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "extension PSSO API supportedDeviceSigningAlgorithms is not implemented in extension", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "extension PSSO API supportedDeviceEncryptionAlgorithms is not implemented in extension", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "extension PSSO API supportedUserSecureEnclaveKeySigningAlgorithms is not implemented in extension", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "extension PSSO API keyWillRotateForKeyType is not implemented in extension", v8, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SORemoteExtensionContext displayNamesForGroups:extensionData:completion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v8 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "extension PSSO API displayNamesForGroups is not implemented in extension", &v10, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SORemoteExtensionContext profilePictureForUserUsingExtensionData:completion:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  v7 = SO_LOG_SORemoteExtensionContext();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "extension PSSO API profilePictureForUser is not implemented in extension", &v9, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (SOExtensionViewService)viewService
{
  WeakRetained = objc_loadWeakRetained(&self->_viewService);

  return WeakRetained;
}

- (void)extensionAuthorizationRequestHandlerWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to get extension principalClass for principalClassName: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)extensionAuthorizationRequestHandlerWithError:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to instantiate initial view controller from storyboard: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)extensionAuthorizationRequestHandlerWithError:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to get NSExtensionPrincipalClass or NSExtensionMainStoryboard: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__SORemoteExtensionContext_hostContextWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Error getting host context %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__SORemoteExtensionContext_synchronousHostContextWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Error getting synchronous host context %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_6(v1) identifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_1C1317000, v3, v4, "calling extension API beginAuthorizationWithRequest, requestIdentifier = %{public}@ %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __79__SORemoteExtensionContext_beginAuthorizationWithRequestParameters_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_6(v1) identifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_1C1317000, v3, v4, "finished extension API beginAuthorizationWithRequest, requestIdentifier = %{public}@, %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __80__SORemoteExtensionContext_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_6(v1) identifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_1C1317000, v3, v4, "calling extension API beginAuthorizationWithRequest, requestIdentifier = %{public}@, %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __59__SORemoteExtensionContext_cancelAuthorization_completion___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)openURL:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "failed to get host context to open URL, error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)canOpenURL:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "failed to get synchronous host context to open URL, error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end