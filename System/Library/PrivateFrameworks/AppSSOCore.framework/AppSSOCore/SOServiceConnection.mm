@interface SOServiceConnection
- (BOOL)_connectToService;
- (SOServiceConnection)initWithQueue:(id)a3;
- (id)_doConnectWithOptions:(unint64_t)a3;
- (void)_connectToService;
- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)cancelAuthorization:(id)a3 completion:(id)a4;
- (void)configurationWithCompletion:(id)a3;
- (void)dealloc;
- (void)debugHintsWithCompletion:(id)a3;
- (void)finishAuthorization:(id)a3 completion:(id)a4;
- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5;
- (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4;
- (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4;
- (void)performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)profilesWithExtensionBundleIdentifier:(id)a3 completion:(id)a4;
- (void)realmsWithCompletion:(id)a3;
@end

@implementation SOServiceConnection

- (BOOL)_connectToService
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(SOServiceConnection *)self xpcConnection];

  if (v3)
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

  v6 = [(SOServiceConnection *)self xpcConnection];

  if (v6)
  {
    v7 = [SOInternalProtocols interfaceWithInternalProtocol:&unk_1F49ECAE0];
    v8 = [(SOServiceConnection *)self xpcConnection];
    [v8 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__SOServiceConnection__connectToService__block_invoke;
    v20[3] = &unk_1E836CBB8;
    objc_copyWeak(&v21, &location);
    v9 = [(SOServiceConnection *)self xpcConnection];
    [v9 setInvalidationHandler:v20];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__SOServiceConnection__connectToService__block_invoke_71;
    v18[3] = &unk_1E836CBB8;
    objc_copyWeak(&v19, &location);
    v10 = [(SOServiceConnection *)self xpcConnection];
    [v10 setInterruptionHandler:v18];

    v11 = [(SOServiceConnection *)self xpcConnection];
    v12 = [(SOServiceConnection *)self queue];
    [v11 _setQueue:v12];

    v13 = [(SOServiceConnection *)self xpcConnection];
    [v13 resume];

    v14 = SO_LOG_SOServiceConnection();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = self;
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

- (SOServiceConnection)initWithQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SOServiceConnection;
  v5 = [(SOServiceConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SOServiceConnection *)v5 setQueue:v4];
    [(SOServiceConnection *)v6 _connectToService];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(SOServiceConnection *)self xpcConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SOServiceConnection;
  [(SOServiceConnection *)&v4 dealloc];
}

- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v10 = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__SOServiceConnection_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v11 = v9;
    v15 = v11;
    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 getAuthorizationHintsWithURL:v8 responseCode:a4 completion:v11];
  }

  else if (v9)
  {
    v13 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v9 + 2))(v9, 0, v13);
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

- (void)performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v8 = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__SOServiceConnection_performAuthorizationWithRequestParameters_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = v7;
    v13 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v12];
    [v10 performAuthorizationWithRequestParameters:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v7 + 2))(v7, 0, v11);
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

- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v8 = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__SOServiceConnection_beginAuthorizationWithRequestParameters_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = v7;
    v13 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v12];
    [v10 beginAuthorizationWithRequestParameters:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v7 + 2))(v7, 0, 0, v11);
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

- (void)cancelAuthorization:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v7 = [(SOServiceConnection *)self xpcConnection];
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    [v8 cancelAuthorization:v9 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    v6[2](v6, 0, v7);
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

- (void)configurationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v5 = [(SOServiceConnection *)self xpcConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__SOServiceConnection_configurationWithCompletion___block_invoke;
    v9[3] = &unk_1E836CB70;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 configurationWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v4 + 2))(v4, 0, v8);
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

- (void)realmsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SOServiceConnection realmsWithCompletion:]";
    v15 = 2112;
    v16 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    v6 = [(SOServiceConnection *)self xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SOServiceConnection_realmsWithCompletion___block_invoke;
    v11[3] = &unk_1E836CB70;
    v7 = v4;
    v12 = v7;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v8 realmsWithCompletion:v7];

    v9 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v4 + 2))(v4, 0, v9);
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

- (void)debugHintsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SOServiceConnection debugHintsWithCompletion:]";
    v15 = 2112;
    v16 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    v6 = [(SOServiceConnection *)self xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__SOServiceConnection_debugHintsWithCompletion___block_invoke;
    v11[3] = &unk_1E836CB70;
    v7 = v4;
    v12 = v7;
    v8 = [v6 remoteObjectProxyWithErrorHandler:v11];
    [v8 debugHintsWithCompletion:v7];

    v9 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v4 + 2))(v4, 0, v9);
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

- (void)finishAuthorization:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOServiceConnection finishAuthorization:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    v9 = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SOServiceConnection_finishAuthorization_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v10 = v7;
    v15 = v10;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v14];
    [v11 finishAuthorization:v6 completion:v10];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v7 + 2))(v7, 0, v12);
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

- (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
    v8 = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SOServiceConnection_isExtensionProcessWithAuditToken_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v9 = v6;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v11;
    [v10 isExtensionProcessWithAuditToken:buf completion:v9];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (v6)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v6 + 2))(v6, 0, v12);
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

- (void)profilesWithExtensionBundleIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOServiceConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOServiceConnection profilesWithExtensionBundleIdentifier:completion:]";
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(SOServiceConnection *)self _connectToService])
  {
    v9 = [(SOServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__SOServiceConnection_profilesWithExtensionBundleIdentifier_completion___block_invoke;
    v14[3] = &unk_1E836CB70;
    v10 = v7;
    v15 = v10;
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v11 profilesWithExtensionBundleIdentifier:v6 completion:v10];

    v12 = v15;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v7 + 2))(v7, 0, v12);
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

- (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SOServiceConnection *)self _connectToService])
  {
    v8 = [(SOServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SOServiceConnection_isConfigurationActiveForExtensionIdentifier_completion___block_invoke;
    v12[3] = &unk_1E836CB70;
    v9 = v7;
    v13 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v12];
    [v10 isConfigurationActiveForExtensionIdentifier:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [SOErrorHelper internalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(v7 + 2))(v7, 0, v11);
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

- (id)_doConnectWithOptions:(unint64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AppSSO.service-xpc" options:a3];

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