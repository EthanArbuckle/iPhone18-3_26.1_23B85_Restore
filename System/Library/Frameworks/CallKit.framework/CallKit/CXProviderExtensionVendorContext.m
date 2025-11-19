@interface CXProviderExtensionVendorContext
- (CXProviderExtensionVendorContextDelegate)delegate;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)actionCompleted:(id)a3 completionHandler:(id)a4;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)registerWithConfiguration:(id)a3;
- (void)reportAudioFinishedForCallWithUUID:(id)a3;
- (void)reportCallWithUUID:(id)a3 changedFrequencyData:(id)a4 forDirection:(int64_t)a5;
- (void)reportCallWithUUID:(id)a3 changedMeterLevel:(float)a4 forDirection:(int64_t)a5;
- (void)reportCallWithUUID:(id)a3 crossDeviceIdentifier:(id)a4 changedBytesOfDataUsed:(int64_t)a5;
- (void)reportCallWithUUID:(id)a3 endedAtDate:(id)a4 privateReason:(int64_t)a5 failureContext:(id)a6;
- (void)reportCallWithUUID:(id)a3 receivedDTMFUpdate:(id)a4;
- (void)reportCallWithUUID:(id)a3 updated:(id)a4;
- (void)reportNewIncomingCallWithUUID:(id)a3 update:(id)a4 reply:(id)a5;
- (void)reportNewOutgoingCallWithUUID:(id)a3 update:(id)a4;
- (void)reportOutgoingCallWithUUID:(id)a3 connectedAtDate:(id)a4;
- (void)reportOutgoingCallWithUUID:(id)a3 sentInvitationAtDate:(id)a4;
- (void)reportOutgoingCallWithUUID:(id)a3 startedConnectingAtDate:(id)a4;
- (void)requestTransaction:(id)a3 completionHandler:(id)a4;
@end

@implementation CXProviderExtensionVendorContext

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = CXProviderExtensionVendorContext;
  v2 = [(CXProviderExtensionContext *)&v4 remoteObjectProxy];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v5.receiver = self;
  v5.super_class = CXProviderExtensionVendorContext;
  v3 = [(CXProviderExtensionContext *)&v5 remoteObjectProxyWithErrorHandler:a3];

  return v3;
}

- (void)registerWithConfiguration:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext registerWithConfiguration:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with configuration: %@", &v8, 0x16u);
  }

  v6 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v6 registerWithConfiguration:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(id)a3 update:(id)a4 reply:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    v15 = 136315650;
    v16 = "[CXProviderExtensionVendorContext reportNewIncomingCallWithUUID:update:reply:]";
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v15, 0x20u);
  }

  v13 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v13 reportNewIncomingCallWithUUID:v8 update:v9 completion:v10];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)a3 updated:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportCallWithUUID:updated:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v12, 0x20u);
  }

  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportCallWithUUID:v6 updated:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)a3 receivedDTMFUpdate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportCallWithUUID:receivedDTMFUpdate:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dtmfUpdate: %@", &v12, 0x20u);
  }

  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportCallWithUUID:v6 receivedDTMFUpdate:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)a3 sentInvitationAtDate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:sentInvitationAtDate:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateSentInvitation: %@", &v12, 0x20u);
  }

  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportOutgoingCallWithUUID:v6 sentInvitationAtDate:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)a3 startedConnectingAtDate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:startedConnectingAtDate:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateStartedConnecting: %@", &v12, 0x20u);
  }

  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportOutgoingCallWithUUID:v6 startedConnectingAtDate:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)a3 connectedAtDate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:connectedAtDate:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateConnected: %@", &v12, 0x20u);
  }

  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportOutgoingCallWithUUID:v6 connectedAtDate:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)a3 endedAtDate:(id)a4 privateReason:(int64_t)a5 failureContext:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = CXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 UUIDString];
    v17 = 136316162;
    v18 = "[CXProviderExtensionVendorContext reportCallWithUUID:endedAtDate:privateReason:failureContext:]";
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v11;
    v23 = 2048;
    v24 = a5;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateEnded: %@ privateEndedReason: %ld failureContext: %@", &v17, 0x34u);
  }

  v15 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v15 reportCallWithUUID:v10 endedAtDate:v11 privateReason:a5 failureContext:v12];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)reportAudioFinishedForCallWithUUID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 UUIDString];
    v9 = 136315394;
    v10 = "[CXProviderExtensionVendorContext reportAudioFinishedForCallWithUUID:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@", &v9, 0x16u);
  }

  v7 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v7 reportAudioFinishedForCallWithUUID:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)a3 changedFrequencyData:(id)a4 forDirection:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v10 reportCallWithUUID:v9 changedFrequencyData:v8 forDirection:a5];
}

- (void)reportCallWithUUID:(id)a3 changedMeterLevel:(float)a4 forDirection:(int64_t)a5
{
  v8 = a3;
  v10 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  *&v9 = a4;
  [v10 reportCallWithUUID:v8 changedMeterLevel:a5 forDirection:v9];
}

- (void)reportCallWithUUID:(id)a3 crossDeviceIdentifier:(id)a4 changedBytesOfDataUsed:(int64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 UUIDString];
    v14 = 136315906;
    v15 = "[CXProviderExtensionVendorContext reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ crossDeviceIdentifier: %@ bytesOfDataUsed: %ld", &v14, 0x2Au);
  }

  v12 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v12 reportCallWithUUID:v8 crossDeviceIdentifier:v9 changedBytesOfDataUsed:a5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)reportNewOutgoingCallWithUUID:(id)a3 update:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v8 reportNewOutgoingCallWithUUID:v7 update:v6];
}

- (void)requestTransaction:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CXProviderExtensionVendorContext requestTransaction:completionHandler:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v11, 0x16u);
  }

  v9 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v9 requestTransaction:v6 reply:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)actionCompleted:(id)a3 completionHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CXProviderExtensionVendorContext actionCompleted:completionHandler:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v9, 0x16u);
  }

  v7 = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [v7 actionCompleted:v5];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)commitTransaction:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext commitTransaction:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", &v8, 0x16u);
  }

  v6 = [(CXProviderExtensionVendorContext *)self delegate];
  [v6 providerExtensionVendorContext:self receivedCommittedTransaction:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext handleActionTimeout:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", &v8, 0x16u);
  }

  v6 = [(CXProviderExtensionVendorContext *)self delegate];
  [v6 providerExtensionVendorContext:self handledActionTimeout:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext handleAudioSessionActivationStateChangedTo:]";
    v10 = 1024;
    v11 = [v4 BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with active: %d", &v8, 0x12u);
  }

  v6 = [(CXProviderExtensionVendorContext *)self delegate];
  [v6 providerExtensionVendorContext:self handledAudioSessionActivationStateChangedTo:{objc_msgSend(v4, "BOOLValue")}];

  v7 = *MEMORY[0x1E69E9840];
}

- (CXProviderExtensionVendorContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end