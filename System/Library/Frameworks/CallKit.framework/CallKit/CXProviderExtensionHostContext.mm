@interface CXProviderExtensionHostContext
- (CXProviderHostProtocol)delegate;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)registerWithConfiguration:(id)configuration;
- (void)reportAudioFinishedForCallWithUUID:(id)d;
- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)reportCallWithUUID:(id)d updated:(id)updated;
- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply;
- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date;
- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
@end

@implementation CXProviderExtensionHostContext

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = CXProviderExtensionHostContext;
  remoteObjectProxy = [(CXProviderExtensionContext *)&v4 remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = CXProviderExtensionHostContext;
  v3 = [(CXProviderExtensionContext *)&v5 remoteObjectProxyWithErrorHandler:handler];

  return v3;
}

- (void)commitTransaction:(id)transaction
{
  v10 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Committing transaction to extension vendor: %@", &v8, 0xCu);
  }

  remoteObjectProxy = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [remoteObjectProxy commitTransaction:transactionCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)timeout
{
  v10 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = timeoutCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asking extension vendor to handle action timeout: %@", &v8, 0xCu);
  }

  remoteObjectProxy = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [remoteObjectProxy handleActionTimeout:timeoutCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v9 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [toCopy BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asking extension vendor to handle audio session activation state change to: %d", v8, 8u);
  }

  remoteObjectProxy = [(CXProviderExtensionHostContext *)self remoteObjectProxy];
  [remoteObjectProxy handleAudioSessionActivationStateChangedTo:toCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate registerWithConfiguration:configurationCopy];
}

- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply
{
  replyCopy = reply;
  updateCopy = update;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportNewIncomingCallWithUUID:dCopy update:updateCopy reply:replyCopy];
}

- (void)reportCallWithUUID:(id)d updated:(id)updated
{
  updatedCopy = updated;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportCallWithUUID:dCopy updated:updatedCopy];
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  updateCopy = update;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportCallWithUUID:dCopy receivedDTMFUpdate:updateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportOutgoingCallWithUUID:dCopy sentInvitationAtDate:dateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportOutgoingCallWithUUID:dCopy startedConnectingAtDate:dateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportOutgoingCallWithUUID:dCopy connectedAtDate:dateCopy];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  contextCopy = context;
  dateCopy = date;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:contextCopy];
}

- (void)reportAudioFinishedForCallWithUUID:(id)d
{
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportAudioFinishedForCallWithUUID:dCopy];
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dataCopy = data;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportCallWithUUID:dCopy changedFrequencyData:dataCopy forDirection:direction];
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  *&v9 = level;
  [delegate reportCallWithUUID:dCopy changedMeterLevel:direction forDirection:v9];
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  identifierCopy = identifier;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportCallWithUUID:dCopy crossDeviceIdentifier:identifierCopy changedBytesOfDataUsed:used];
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  updateCopy = update;
  dCopy = d;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate reportNewOutgoingCallWithUUID:dCopy update:updateCopy];
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate requestTransaction:transactionCopy completionHandler:handlerCopy];
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  handlerCopy = handler;
  completedCopy = completed;
  delegate = [(CXProviderExtensionHostContext *)self delegate];
  [delegate actionCompleted:completedCopy completionHandler:handlerCopy];
}

- (CXProviderHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end