@interface CXProviderExtensionHostContext
- (CXProviderHostProtocol)delegate;
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

@implementation CXProviderExtensionHostContext

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = CXProviderExtensionHostContext;
  v2 = [(CXProviderExtensionContext *)&v4 remoteObjectProxy];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v5.receiver = self;
  v5.super_class = CXProviderExtensionHostContext;
  v3 = [(CXProviderExtensionContext *)&v5 remoteObjectProxyWithErrorHandler:a3];

  return v3;
}

- (void)commitTransaction:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Committing transaction to extension vendor: %@", &v8, 0xCu);
  }

  v6 = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [v6 commitTransaction:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asking extension vendor to handle action timeout: %@", &v8, 0xCu);
  }

  v6 = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [v6 handleActionTimeout:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [v4 BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asking extension vendor to handle audio session activation state change to: %d", v8, 8u);
  }

  v6 = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [v6 handleAudioSessionActivationStateChangedTo:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CXProviderExtensionHostContext *)self delegate];
  [v5 registerWithConfiguration:v4];
}

- (void)reportNewIncomingCallWithUUID:(id)a3 update:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXProviderExtensionHostContext *)self delegate];
  [v11 reportNewIncomingCallWithUUID:v10 update:v9 reply:v8];
}

- (void)reportCallWithUUID:(id)a3 updated:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportCallWithUUID:v7 updated:v6];
}

- (void)reportCallWithUUID:(id)a3 receivedDTMFUpdate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportCallWithUUID:v7 receivedDTMFUpdate:v6];
}

- (void)reportOutgoingCallWithUUID:(id)a3 sentInvitationAtDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportOutgoingCallWithUUID:v7 sentInvitationAtDate:v6];
}

- (void)reportOutgoingCallWithUUID:(id)a3 startedConnectingAtDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportOutgoingCallWithUUID:v7 startedConnectingAtDate:v6];
}

- (void)reportOutgoingCallWithUUID:(id)a3 connectedAtDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportOutgoingCallWithUUID:v7 connectedAtDate:v6];
}

- (void)reportCallWithUUID:(id)a3 endedAtDate:(id)a4 privateReason:(int64_t)a5 failureContext:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CXProviderExtensionHostContext *)self delegate];
  [v13 reportCallWithUUID:v12 endedAtDate:v11 privateReason:a5 failureContext:v10];
}

- (void)reportAudioFinishedForCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CXProviderExtensionHostContext *)self delegate];
  [v5 reportAudioFinishedForCallWithUUID:v4];
}

- (void)reportCallWithUUID:(id)a3 changedFrequencyData:(id)a4 forDirection:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CXProviderExtensionHostContext *)self delegate];
  [v10 reportCallWithUUID:v9 changedFrequencyData:v8 forDirection:a5];
}

- (void)reportCallWithUUID:(id)a3 changedMeterLevel:(float)a4 forDirection:(int64_t)a5
{
  v8 = a3;
  v10 = [(CXProviderExtensionHostContext *)self delegate];
  *&v9 = a4;
  [v10 reportCallWithUUID:v8 changedMeterLevel:a5 forDirection:v9];
}

- (void)reportCallWithUUID:(id)a3 crossDeviceIdentifier:(id)a4 changedBytesOfDataUsed:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CXProviderExtensionHostContext *)self delegate];
  [v10 reportCallWithUUID:v9 crossDeviceIdentifier:v8 changedBytesOfDataUsed:a5];
}

- (void)reportNewOutgoingCallWithUUID:(id)a3 update:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 reportNewOutgoingCallWithUUID:v7 update:v6];
}

- (void)requestTransaction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 requestTransaction:v7 completionHandler:v6];
}

- (void)actionCompleted:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXProviderExtensionHostContext *)self delegate];
  [v8 actionCompleted:v7 completionHandler:v6];
}

- (CXProviderHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end