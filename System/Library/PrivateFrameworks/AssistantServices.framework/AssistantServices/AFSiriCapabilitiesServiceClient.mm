@interface AFSiriCapabilitiesServiceClient
- (BOOL)shouldDownloadAssetsForSiriSystemAssistantExperienceSync;
- (BOOL)siriSystemAssistantExperienceEnabledSync;
- (BOOL)siriWithAppIntentsEnabledSync;
- (NSXPCConnection)connection;
- (id)service;
- (id)serviceWithErrorHandler:(id)handler;
- (id)syncServiceWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)shouldDownloadAssetsForSiriSystemAssistantExperience:(id)experience;
- (void)siriSystemAssistantExperienceEnabled:(id)enabled;
- (void)siriWithAppIntentsEnabled:(id)enabled;
@end

@implementation AFSiriCapabilitiesServiceClient

- (void)siriWithAppIntentsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabled___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v5 = enabledCopy;
  v14 = v5;
  v6 = [(AFSiriCapabilitiesServiceClient *)self serviceWithErrorHandler:v13];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__26193;
  v11[4] = __Block_byref_object_dispose__26194;
  selfCopy = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabled___block_invoke_2;
  v8[3] = &unk_1E7345DB8;
  v7 = v5;
  v9 = v7;
  v10 = v11;
  [v6 shouldDownloadAssetsForSiriSystemAssistantExperience:v8];

  _Block_object_dispose(v11, 8);
}

void __61__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.orchestration.capabilities" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __61__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabled___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)siriWithAppIntentsEnabledSync
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26193;
  v15 = __Block_byref_object_dispose__26194;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabledSync__block_invoke;
  v6[3] = &unk_1E7345D68;
  v6[4] = &v11;
  v2 = [(AFSiriCapabilitiesServiceClient *)self syncServiceWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AFSiriCapabilitiesServiceClient_siriWithAppIntentsEnabledSync__block_invoke_2;
  v5[3] = &unk_1E7345D90;
  v5[4] = &v7;
  [v2 shouldDownloadAssetsForSiriSystemAssistantExperience:v5];
  if (v12[5])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v3 & 1;
}

- (void)siriSystemAssistantExperienceEnabled:(id)enabled
{
  enabledCopy = enabled;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabled___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v5 = enabledCopy;
  v14 = v5;
  v6 = [(AFSiriCapabilitiesServiceClient *)self serviceWithErrorHandler:v13];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__26193;
  v11[4] = __Block_byref_object_dispose__26194;
  selfCopy = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabled___block_invoke_2;
  v8[3] = &unk_1E7345DB8;
  v7 = v5;
  v9 = v7;
  v10 = v11;
  [v6 shouldDownloadAssetsForSiriSystemAssistantExperience:v8];

  _Block_object_dispose(v11, 8);
}

void __72__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.orchestration.capabilities" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __72__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabled___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)siriSystemAssistantExperienceEnabledSync
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26193;
  v15 = __Block_byref_object_dispose__26194;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabledSync__block_invoke;
  v6[3] = &unk_1E7345D68;
  v6[4] = &v11;
  v2 = [(AFSiriCapabilitiesServiceClient *)self syncServiceWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AFSiriCapabilitiesServiceClient_siriSystemAssistantExperienceEnabledSync__block_invoke_2;
  v5[3] = &unk_1E7345D90;
  v5[4] = &v7;
  [v2 shouldDownloadAssetsForSiriSystemAssistantExperience:v5];
  if (v12[5])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v3 & 1;
}

- (void)shouldDownloadAssetsForSiriSystemAssistantExperience:(id)experience
{
  experienceCopy = experience;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperience___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v5 = experienceCopy;
  v14 = v5;
  v6 = [(AFSiriCapabilitiesServiceClient *)self serviceWithErrorHandler:v13];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__26193;
  v11[4] = __Block_byref_object_dispose__26194;
  selfCopy = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperience___block_invoke_2;
  v8[3] = &unk_1E7345DB8;
  v7 = v5;
  v9 = v7;
  v10 = v11;
  [v6 shouldDownloadAssetsForSiriSystemAssistantExperience:v8];

  _Block_object_dispose(v11, 8);
}

void __88__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperience___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.orchestration.capabilities" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __88__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperience___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (BOOL)shouldDownloadAssetsForSiriSystemAssistantExperienceSync
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26193;
  v15 = __Block_byref_object_dispose__26194;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperienceSync__block_invoke;
  v6[3] = &unk_1E7345D68;
  v6[4] = &v11;
  v2 = [(AFSiriCapabilitiesServiceClient *)self syncServiceWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__AFSiriCapabilitiesServiceClient_shouldDownloadAssetsForSiriSystemAssistantExperienceSync__block_invoke_2;
  v5[3] = &unk_1E7345D90;
  v5[4] = &v7;
  [v2 shouldDownloadAssetsForSiriSystemAssistantExperience:v5];
  if (v12[5])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v3 & 1;
}

- (id)syncServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(AFSiriCapabilitiesServiceClient *)self connection];
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(AFSiriCapabilitiesServiceClient *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)service
{
  connection = [(AFSiriCapabilitiesServiceClient *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.orchestration.capabilities" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BF080];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = AFSiriCapabilitiesServiceClient;
  [(AFSiriCapabilitiesServiceClient *)&v4 dealloc];
}

@end