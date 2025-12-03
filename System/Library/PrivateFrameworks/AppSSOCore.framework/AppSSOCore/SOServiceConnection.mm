@interface SOServiceConnection
- (BOOL)_connectToService;
- (SOServiceConnection)initWithQueue:(id)queue;
- (id)_doConnectWithOptions:(unint64_t)options;
- (void)_connectToService;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)configurationWithCompletion:(id)completion;
- (void)dealloc;
- (void)debugHintsWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion;
- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)profilesWithExtensionBundleIdentifier:(id)identifier completion:(id)completion;
- (void)realmsWithCompletion:(id)completion;
@end

@implementation SOServiceConnection

- (BOOL)_connectToService
{
  v25 = *MEMORY[0x1E69E9840];
  xpcConnection = [(SOServiceConnection *)self xpcConnection];

  if (xpcConnection)
  {
    v4 = SO_LOG_SOServiceConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SOServiceConnection _connectToService];
    }

LABEL_9:
    result = 1;
    goto LABEL_10;
  }

  v5 = [(SOServiceConnection *)self _doConnectWithOptions:4096];
  [(SOServiceConnection *)self setXpcConnection:v5];

  xpcConnection2 = [(SOServiceConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    v7 = [SOInternalProtocols interfaceWithInternalProtocol:&unk_1F49ECAE0];
    xpcConnection3 = [(SOServiceConnection *)self xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__SOServiceConnection__connectToService__block_invoke;
    v20[3] = &unk_1E836CBB8;
    objc_copyWeak(&v21, &location);
    xpcConnection4 = [(SOServiceConnection *)self xpcConnection];
    [xpcConnection4 setInvalidationHandler:v20];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__SOServiceConnection__connectToService__block_invoke_71;
    v18[3] = &unk_1E836CBB8;
    objc_copyWeak(&v19, &location);
    xpcConnection5 = [(SOServiceConnection *)self xpcConnection];
    [xpcConnection5 setInterruptionHandler:v18];

    xpcConnection6 = [(SOServiceConnection *)self xpcConnection];
    queue = [(SOServiceConnection *)self queue];
    [xpcConnection6 _setQueue:queue];

    xpcConnection7 = [(SOServiceConnection *)self xpcConnection];
    [xpcConnection7 resume];

    v14 = SO_LOG_SOServiceConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1CA238000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: new XPC connection", buf, 0xCu);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v17 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SOServiceConnection _connectToService];
  }

  result = 0;
LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (SOServiceConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = SOServiceConnection;
  v5 = [(SOServiceConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SOServiceConnection *)v5 setQueue:queueCopy];
    [(SOServiceConnection *)v6 _connectToService];
  }

  return v6;
}

- (void)dealloc
{
  xpcConnection = [(SOServiceConnection *)self xpcConnection];
  [xpcConnection invalidate];

  v4.receiver = self;
  v4.super_class = SOServiceConnection;
  [(SOServiceConnection *)&v4 dealloc];
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v11 = completionCopy;
    v15 = v11;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 getAuthorizationHintsWithURL:lCopy responseCode:code completion:v11];
  }

  else if (completionCopy)
  {
    v13 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__SOServiceConnection_performAuthorizationWithRequestParameters_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
    [v10 performAuthorizationWithRequestParameters:parametersCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __76__SOServiceConnection_performAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__SOServiceConnection_beginAuthorizationWithRequestParameters_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
    [v10 beginAuthorizationWithRequestParameters:parametersCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, 0, v11);
  }
}

void __74__SOServiceConnection_beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    [v8 cancelAuthorization:authorizationCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    xpcConnection = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    completionCopy[2](completionCopy, 0, xpcConnection);
  }

LABEL_6:
}

void __54__SOServiceConnection_cancelAuthorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__SOServiceConnection_configurationWithCompletion___block_invoke;
    v9[3] = &unk_1E836CB70;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 configurationWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __51__SOServiceConnection_configurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)realmsWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SOServiceConnection realmsWithCompletion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SOServiceConnection_realmsWithCompletion___block_invoke;
    v11[3] = &unk_1E836CB70;
    v7 = completionCopy;
    v12 = v7;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v8 realmsWithCompletion:v7];

    v9 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v9 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

void __44__SOServiceConnection_realmsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)debugHintsWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SOServiceConnection debugHintsWithCompletion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__SOServiceConnection_debugHintsWithCompletion___block_invoke;
    v11[3] = &unk_1E836CB70;
    v7 = completionCopy;
    v12 = v7;
    v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
    [v8 debugHintsWithCompletion:v7];

    v9 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v9 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

void __48__SOServiceConnection_debugHintsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOServiceConnection finishAuthorization:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SOServiceConnection_finishAuthorization_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v10 = completionCopy;
    v15 = v10;
    v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    [v11 finishAuthorization:authorizationCopy completion:v10];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

void __54__SOServiceConnection_finishAuthorization_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOServiceConnection isExtensionProcessWithAuditToken:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SOServiceConnection_isExtensionProcessWithAuditToken_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v9 = completionCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    v11 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v11;
    [v10 isExtensionProcessWithAuditToken:buf completion:v9];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

void __67__SOServiceConnection_isExtensionProcessWithAuditToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)profilesWithExtensionBundleIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOServiceConnection profilesWithExtensionBundleIdentifier:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__SOServiceConnection_profilesWithExtensionBundleIdentifier_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v10 = completionCopy;
    v15 = v10;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v11 profilesWithExtensionBundleIdentifier:identifierCopy completion:v10];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

void __72__SOServiceConnection_profilesWithExtensionBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(SOServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SOServiceConnection_isConfigurationActiveForExtensionIdentifier_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
    [v10 isConfigurationActiveForExtensionIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __78__SOServiceConnection_isConfigurationActiveForExtensionIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __40__SOServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = SO_LOG_SOServiceConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __40__SOServiceConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __40__SOServiceConnection__connectToService__block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SO_LOG_SOServiceConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__SOServiceConnection__connectToService__block_invoke_71_cold_1();
    }
  }
}

- (id)_doConnectWithOptions:(unint64_t)options
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AppSSO.service-xpc" options:options];

  return v3;
}

void __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "XPC error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_connectToService
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "%{public}@: failed to create XPC connection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __40__SOServiceConnection__connectToService__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CA238000, v0, OS_LOG_TYPE_DEBUG, "%{public}@: XPC connection invalidated", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __40__SOServiceConnection__connectToService__block_invoke_71_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "%{public}@: XPC connection interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end