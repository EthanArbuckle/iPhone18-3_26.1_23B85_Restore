@interface SOExtensionServiceConnection
- (BOOL)_connectToService;
- (SOExtensionServiceConnection)initWithListenerEndpoint:(id)endpoint;
- (void)_connectToService;
- (void)beginAuthorizationWithCompletion:(id)completion;
@end

@implementation SOExtensionServiceConnection

- (SOExtensionServiceConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v10.receiver = self;
  v10.super_class = SOExtensionServiceConnection;
  v5 = [(SOExtensionServiceConnection *)&v10 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (endpointCopy)
  {
    [(SOExtensionServiceConnection *)v5 setServiceXpcEndpoint:endpointCopy];
    [(SOExtensionServiceConnection *)v6 _connectToService];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = SO_LOG_SOExtensionServiceConnection();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection initWithListenerEndpoint:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)_connectToService
{
  v32 = *MEMORY[0x1E69E9840];
  xpcConnection = [(SOExtensionServiceConnection *)self xpcConnection];

  if (xpcConnection)
  {
    v4 = SO_LOG_SOExtensionServiceConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SOExtensionServiceConnection _connectToService];
    }

LABEL_11:
    result = 1;
    goto LABEL_12;
  }

  v5 = objc_alloc(MEMORY[0x1E696B0B8]);
  serviceXpcEndpoint = [(SOExtensionServiceConnection *)self serviceXpcEndpoint];
  v7 = [v5 initWithListenerEndpoint:serviceXpcEndpoint];
  [(SOExtensionServiceConnection *)self setXpcConnection:v7];

  xpcConnection2 = [(SOExtensionServiceConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    location = 0;
    p_location = &location;
    v26 = 0x2050000000;
    v9 = getSOInternalProtocolsClass_softClass;
    v27 = getSOInternalProtocolsClass_softClass;
    if (!getSOInternalProtocolsClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v29 = __getSOInternalProtocolsClass_block_invoke;
      v30 = &unk_1E813E230;
      v31 = &location;
      __getSOInternalProtocolsClass_block_invoke(&buf);
      v9 = p_location[3];
    }

    v10 = v9;
    _Block_object_dispose(&location, 8);
    v11 = [v9 interfaceWithInternalProtocol:&unk_1F4090810];
    xpcConnection3 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v11];

    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__SOExtensionServiceConnection__connectToService__block_invoke;
    v22[3] = &unk_1E813E290;
    objc_copyWeak(&v23, &location);
    xpcConnection4 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection4 setInvalidationHandler:v22];

    v20 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v21, &location);
    v14 = [(SOExtensionServiceConnection *)self xpcConnection:v20];
    [v14 setInterruptionHandler:&v20];

    xpcConnection5 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection5 resume];

    v16 = SO_LOG_SOExtensionServiceConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1C1317000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: new XPC connection", &buf, 0xCu);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v19 = SO_LOG_SOExtensionServiceConnection();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection _connectToService];
  }

  result = 0;
LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
  if (WeakRetained)
  {
    v2 = SO_LOG_SOExtensionServiceConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __49__SOExtensionServiceConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SO_LOG_SOExtensionServiceConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __49__SOExtensionServiceConnection__connectToService__block_invoke_46_cold_1();
    }
  }
}

- (void)beginAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SOExtensionServiceConnection *)self _connectToService])
  {
    xpcConnection = [(SOExtensionServiceConnection *)self xpcConnection];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke;
    v15 = &unk_1E813E2B8;
    v6 = completionCopy;
    v16 = v6;
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:&v12];
    [v7 beginAuthorizationWithCompletion:{v6, v12, v13, v14, v15}];

    v8 = v16;
LABEL_9:

    goto LABEL_10;
  }

  v9 = SO_LOG_SOExtensionServiceConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection beginAuthorizationWithCompletion:];
  }

  if (completionCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = getSOErrorHelperClass_softClass;
    v21 = getSOErrorHelperClass_softClass;
    if (!getSOErrorHelperClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getSOErrorHelperClass_block_invoke;
      v17[3] = &unk_1E813E230;
      v17[4] = &v18;
      __getSOErrorHelperClass_block_invoke(v17);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v8 = [v10 silentInternalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
    goto LABEL_9;
  }

LABEL_10:
}

void __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOExtensionServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)_connectToService
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%{public}@: XPC connection invalidated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke_46_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1C1317000, v0, v1, "%{public}@: XPC connection interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end