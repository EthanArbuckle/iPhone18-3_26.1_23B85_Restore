@interface _ASAgentCredentialExchangeListenerProxy
- (id)_reconnectIfNecessary;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)initForMode:(unint64_t)mode endpoint:(id)endpoint;
- (void)_setUpConnection:(id)connection;
- (void)cancelCurrentOperation;
- (void)continueExportWithCredentials:(id)credentials completionHandler:(id)handler;
- (void)getExportedCredentialData:(id)data;
- (void)importCredentialsWithToken:(id)token completionHandler:(id)handler;
- (void)requestExportForCredentialProvider:(id)provider windowSceneIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setTokenForImport:(id)import;
@end

@implementation _ASAgentCredentialExchangeListenerProxy

- (id)initForMode:(unint64_t)mode endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v16.receiver = self;
  v16.super_class = _ASAgentCredentialExchangeListenerProxy;
  v7 = [(_ASAgentCredentialExchangeListenerProxy *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = mode;
    v9 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (endpointCopy)
    {
      v10 = [v9 initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v10 = [v9 initWithMachServiceName:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent.CredentialExchange" options:0];
    }

    connection = v8->_connection;
    v8->_connection = v10;

    [(_ASAgentCredentialExchangeListenerProxy *)v8 _setUpConnection:v8->_connection];
    v12 = _os_activity_create(&dword_1B1C8D000, "Credential Exchange listener", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    activity = v8->_activity;
    v8->_activity = v12;

    v14 = v8;
  }

  return v8;
}

- (void)_setUpConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  mode = self->_mode;
  if (mode == 1)
  {
    v6 = ASAgentCredentialExchangeImporterInterface();
    [connectionCopy setRemoteObjectInterface:v6];
    goto LABEL_5;
  }

  if (!mode)
  {
    v6 = ASAgentCredentialExchangeExporterInterface();
    [connectionCopy setRemoteObjectInterface:v6];
LABEL_5:
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __60___ASAgentCredentialExchangeListenerProxy__setUpConnection___block_invoke;
  v11 = &unk_1E7AF75E0;
  objc_copyWeak(&v12, &location);
  v7 = _Block_copy(&v8);
  [connectionCopy setInvalidationHandler:{v7, v8, v9, v10, v11}];
  [connectionCopy setInterruptionHandler:v7];
  [connectionCopy resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_reconnectIfNecessary
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent.CredentialExchange" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(_ASAgentCredentialExchangeListenerProxy *)self _setUpConnection:self->_connection];
    connection = self->_connection;
  }

  v6 = connection;

  return v6;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _reconnectIfNecessary = [(_ASAgentCredentialExchangeListenerProxy *)self _reconnectIfNecessary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78___ASAgentCredentialExchangeListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke;
  v13[3] = &unk_1E7AF85E8;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [_reconnectIfNecessary remoteObjectProxyWithErrorHandler:v13];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ASAgentCredentialUpdateListenerProxy _remoteObjectProxyWithErrorHandler:v10];
    }

    v11 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:14 privacyPreservingDescription:@"Failed to acquire remote object proxy."];
    (*(v6 + 2))(v6, v11);
  }

  return v8;
}

- (void)requestExportForCredentialProvider:(id)provider windowSceneIdentifier:(id)identifier completionHandler:(id)handler
{
  providerCopy = provider;
  identifierCopy = identifier;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __118___ASAgentCredentialExchangeListenerProxy_requestExportForCredentialProvider_windowSceneIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E7AF8638;
  v15[4] = self;
  v17 = a2;
  v12 = handlerCopy;
  v16 = v12;
  v13 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v15];
  v14 = v13;
  if (v13)
  {
    [v13 requestExportForCredentialProvider:providerCopy windowSceneIdentifier:identifierCopy completionHandler:v12];
  }
}

- (void)continueExportWithCredentials:(id)credentials completionHandler:(id)handler
{
  credentialsCopy = credentials;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91___ASAgentCredentialExchangeListenerProxy_continueExportWithCredentials_completionHandler___block_invoke;
  v12[3] = &unk_1E7AF8638;
  v12[4] = self;
  v14 = a2;
  v9 = handlerCopy;
  v13 = v9;
  v10 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v12];
  v11 = v10;
  if (v10)
  {
    [v10 continueExportWithCredentials:credentialsCopy completionHandler:v9];
  }
}

- (void)importCredentialsWithToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88___ASAgentCredentialExchangeListenerProxy_importCredentialsWithToken_completionHandler___block_invoke;
  v12[3] = &unk_1E7AF8638;
  v12[4] = self;
  v14 = a2;
  v9 = handlerCopy;
  v13 = v9;
  v10 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v12];
  v11 = v10;
  if (v10)
  {
    [v10 importCredentialsWithToken:tokenCopy completionHandler:v9];
  }
}

- (void)setTokenForImport:(id)import
{
  importCopy = import;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___ASAgentCredentialExchangeListenerProxy_setTokenForImport___block_invoke;
  v8[3] = &unk_1E7AF8A38;
  v8[4] = self;
  v8[5] = a2;
  v6 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v8];
  v7 = v6;
  if (v6)
  {
    [v6 setTokenForImport:importCopy];
  }
}

- (void)getExportedCredentialData:(id)data
{
  dataCopy = data;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69___ASAgentCredentialExchangeListenerProxy_getExportedCredentialData___block_invoke;
  v9[3] = &unk_1E7AF8638;
  v9[4] = self;
  v11 = a2;
  v6 = dataCopy;
  v10 = v6;
  v7 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v9];
  v8 = v7;
  if (v7)
  {
    [v7 getExportedCredentialData:v6];
  }
}

- (void)cancelCurrentOperation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___ASAgentCredentialExchangeListenerProxy_cancelCurrentOperation__block_invoke;
  v4[3] = &unk_1E7AF8A38;
  v4[4] = self;
  v4[5] = a2;
  v2 = [(_ASAgentCredentialExchangeListenerProxy *)self _remoteObjectProxyWithErrorHandler:v4];
  v3 = v2;
  if (v2)
  {
    [v2 cancelCurrentOperation];
  }
}

@end