@interface _ASAgentCredentialUpdateListenerProxy
- (_ASAgentCredentialUpdateListenerProxy)init;
- (id)_reconnectIfNecessary;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_setUpConnection:(id)connection;
- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)party userHandle:(id)handle newName:(id)name credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)party credentialID:(id)d credentialUpdaterOptions:(id)options completionHandler:(id)handler;
- (void)reportUnusedPasswordCredentialForDomain:(id)domain username:(id)username credentialUpdaterOptions:(id)options completionHandler:(id)handler;
@end

@implementation _ASAgentCredentialUpdateListenerProxy

- (_ASAgentCredentialUpdateListenerProxy)init
{
  v7.receiver = self;
  v7.super_class = _ASAgentCredentialUpdateListenerProxy;
  v2 = [(_ASAgentCredentialUpdateListenerProxy *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AuthenticationServicesAgent.CredentialUpdate" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    [(_ASAgentCredentialUpdateListenerProxy *)v2 _setUpConnection:v2->_connection];
    v5 = v2;
  }

  return v2;
}

- (void)_setUpConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5 = _ASAgentCredentialUpdateListenerInterface();
  [connectionCopy setRemoteObjectInterface:v5];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __58___ASAgentCredentialUpdateListenerProxy__setUpConnection___block_invoke;
  v11 = &unk_1E7AF75E0;
  objc_copyWeak(&v12, &location);
  v6 = _Block_copy(&v8);
  [connectionCopy setInvalidationHandler:{v6, v8, v9, v10, v11}];
  [connectionCopy setInterruptionHandler:v6];
  v7 = _ASAgentCredentialUpdateListenerInterface();
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)_reconnectIfNecessary
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AuthenticationServicesAgent.CredentialUpdate" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(_ASAgentCredentialUpdateListenerProxy *)self _setUpConnection:self->_connection];
    connection = self->_connection;
  }

  v6 = connection;

  return v6;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _reconnectIfNecessary = [(_ASAgentCredentialUpdateListenerProxy *)self _reconnectIfNecessary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke;
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

- (void)reportPublicKeyCredentialUpdateForRelyingParty:(id)party userHandle:(id)handle newName:(id)name credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  partyCopy = party;
  handleCopy = handle;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = _os_activity_create(&dword_1B1C8D000, "CredentialUpdate/ReportPublicKeyCredentialUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v18, &state);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke;
  v23[3] = &unk_1E7AF8638;
  v19 = v18;
  v24 = v19;
  v26 = a2;
  v20 = handlerCopy;
  v25 = v20;
  v21 = [(_ASAgentCredentialUpdateListenerProxy *)self _remoteObjectProxyWithErrorHandler:v23];
  v22 = v21;
  if (v21)
  {
    [v21 reportPublicKeyCredentialUpdateForRelyingParty:partyCopy userHandle:handleCopy newName:nameCopy credentialUpdaterOptions:optionsCopy completionHandler:v20];
  }

  os_activity_scope_leave(&state);
}

- (void)reportAllAcceptedPublicKeyCredentialsForRelyingParty:(id)party userHandle:(id)handle acceptedCredentialIDs:(id)ds credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  partyCopy = party;
  handleCopy = handle;
  dsCopy = ds;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = _os_activity_create(&dword_1B1C8D000, "CredentialUpdate/ReportAllAcceptedPublicKeyCredential", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v18, &state);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke;
  v23[3] = &unk_1E7AF8638;
  v19 = v18;
  v24 = v19;
  v26 = a2;
  v20 = handlerCopy;
  v25 = v20;
  v21 = [(_ASAgentCredentialUpdateListenerProxy *)self _remoteObjectProxyWithErrorHandler:v23];
  v22 = v21;
  if (v21)
  {
    [v21 reportAllAcceptedPublicKeyCredentialsForRelyingParty:partyCopy userHandle:handleCopy acceptedCredentialIDs:dsCopy credentialUpdaterOptions:optionsCopy completionHandler:v20];
  }

  os_activity_scope_leave(&state);
}

- (void)reportUnknownPublicKeyCredentialForRelyingParty:(id)party credentialID:(id)d credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  partyCopy = party;
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = _os_activity_create(&dword_1B1C8D000, "CredentialUpdate/ReportUnknownPublicKeyCredential", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke;
  v20[3] = &unk_1E7AF8638;
  v16 = v15;
  v21 = v16;
  v23 = a2;
  v17 = handlerCopy;
  v22 = v17;
  v18 = [(_ASAgentCredentialUpdateListenerProxy *)self _remoteObjectProxyWithErrorHandler:v20];
  v19 = v18;
  if (v18)
  {
    [v18 reportUnknownPublicKeyCredentialForRelyingParty:partyCopy credentialID:dCopy credentialUpdaterOptions:optionsCopy completionHandler:v17];
  }

  os_activity_scope_leave(&state);
}

- (void)reportUnusedPasswordCredentialForDomain:(id)domain username:(id)username credentialUpdaterOptions:(id)options completionHandler:(id)handler
{
  domainCopy = domain;
  usernameCopy = username;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = _os_activity_create(&dword_1B1C8D000, "CredentialUpdate/ReportUnusedPasswordCredential", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke;
  v20[3] = &unk_1E7AF8638;
  v16 = v15;
  v21 = v16;
  v23 = a2;
  v17 = handlerCopy;
  v22 = v17;
  v18 = [(_ASAgentCredentialUpdateListenerProxy *)self _remoteObjectProxyWithErrorHandler:v20];
  v19 = v18;
  if (v18)
  {
    [v18 reportUnusedPasswordCredentialForDomain:domainCopy username:usernameCopy credentialUpdaterOptions:optionsCopy completionHandler:v17];
  }

  os_activity_scope_leave(&state);
}

@end