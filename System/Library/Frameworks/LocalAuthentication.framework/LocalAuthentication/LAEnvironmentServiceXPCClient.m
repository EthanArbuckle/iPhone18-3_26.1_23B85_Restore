@interface LAEnvironmentServiceXPCClient
- (id)_createConnectionToDaemon;
- (void)_bootstrapServiceType:(id)a3 completion:(id)a4;
- (void)_synchronousProxyToEnvironmentServiceWithEndpoint:(id)a3 completion:(id)a4;
- (void)synchronousProxyToEnvironmentServiceWithCompletion:(id)a3;
@end

@implementation LAEnvironmentServiceXPCClient

- (id)_createConnectionToDaemon
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CoreAuthentication.daemon" options:0];
  v3 = [MEMORY[0x1E696EE98] interfaceWithInternalProtocol:&unk_1F1A78C90];
  [v2 setRemoteObjectInterface:v3];

  [v2 activate];

  return v2;
}

- (void)synchronousProxyToEnvironmentServiceWithCompletion:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__LAEnvironmentServiceXPCClient_synchronousProxyToEnvironmentServiceWithCompletion___block_invoke;
  v6[3] = &unk_1E77CC398;
  v6[4] = &v13;
  v6[5] = &v7;
  [(LAEnvironmentServiceXPCClient *)self _bootstrapServiceType:@"kLAServiceTypeEnvironment" completion:v6];
  v5 = v14[5];
  if (v5)
  {
    [(LAEnvironmentServiceXPCClient *)self _synchronousProxyToEnvironmentServiceWithEndpoint:v5 completion:v4];
  }

  else
  {
    v4[2](v4, 0, v8[5]);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __84__LAEnvironmentServiceXPCClient_synchronousProxyToEnvironmentServiceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_synchronousProxyToEnvironmentServiceWithEndpoint:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696B0B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithListenerEndpoint:v7];

  v9 = [MEMORY[0x1E69AD2C8] interfaceForXPCProtocol:&unk_1F1A78D50];
  [v8 setRemoteObjectInterface:v9];

  [v8 activate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__LAEnvironmentServiceXPCClient__synchronousProxyToEnvironmentServiceWithEndpoint_completion___block_invoke;
  v12[3] = &unk_1E77CBFB0;
  v10 = v5;
  v13 = v10;
  v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
  if (v11)
  {
    (*(v10 + 2))(v10, v11, 0);
  }

  [v8 invalidate];
}

- (void)_bootstrapServiceType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LAEnvironmentServiceXPCClient *)self _createConnectionToDaemon];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __66__LAEnvironmentServiceXPCClient__bootstrapServiceType_completion___block_invoke;
  v18 = &unk_1E77CBFB0;
  v19 = v6;
  v9 = v6;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&v15];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v12 processIdentifier];
  v14 = [v11 stringWithFormat:@"%d", v13, v15, v16, v17, v18];
  [v10 bootstrapSessionServiceType:v7 serviceClientID:v14 completionHandler:v9];

  [v8 invalidate];
}

@end