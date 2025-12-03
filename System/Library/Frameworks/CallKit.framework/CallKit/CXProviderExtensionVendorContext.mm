@interface CXProviderExtensionVendorContext
- (CXProviderExtensionVendorContextDelegate)delegate;
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

@implementation CXProviderExtensionVendorContext

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = CXProviderExtensionVendorContext;
  remoteObjectProxy = [(CXProviderExtensionContext *)&v4 remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = CXProviderExtensionVendorContext;
  v3 = [(CXProviderExtensionContext *)&v5 remoteObjectProxyWithErrorHandler:handler];

  return v3;
}

- (void)registerWithConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext registerWithConfiguration:]";
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with configuration: %@", &v8, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy registerWithConfiguration:configurationCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  replyCopy = reply;
  v11 = CXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v15 = 136315650;
    v16 = "[CXProviderExtensionVendorContext reportNewIncomingCallWithUUID:update:reply:]";
    v17 = 2112;
    v18 = uUIDString;
    v19 = 2112;
    v20 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v15, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportNewIncomingCallWithUUID:dCopy update:updateCopy completion:replyCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d updated:(id)updated
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updatedCopy = updated;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportCallWithUUID:updated:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2112;
    v17 = updatedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v12, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy updated:updatedCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportCallWithUUID:receivedDTMFUpdate:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2112;
    v17 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dtmfUpdate: %@", &v12, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy receivedDTMFUpdate:updateCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:sentInvitationAtDate:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2112;
    v17 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateSentInvitation: %@", &v12, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy sentInvitationAtDate:dateCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:startedConnectingAtDate:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2112;
    v17 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateStartedConnecting: %@", &v12, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy startedConnectingAtDate:dateCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 136315650;
    v13 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:connectedAtDate:]";
    v14 = 2112;
    v15 = uUIDString;
    v16 = 2112;
    v17 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateConnected: %@", &v12, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy connectedAtDate:dateCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v13 = CXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v17 = 136316162;
    v18 = "[CXProviderExtensionVendorContext reportCallWithUUID:endedAtDate:privateReason:failureContext:]";
    v19 = 2112;
    v20 = uUIDString;
    v21 = 2112;
    v22 = dateCopy;
    v23 = 2048;
    reasonCopy = reason;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateEnded: %@ privateEndedReason: %ld failureContext: %@", &v17, 0x34u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:contextCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)reportAudioFinishedForCallWithUUID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v9 = 136315394;
    v10 = "[CXProviderExtensionVendorContext reportAudioFinishedForCallWithUUID:]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@", &v9, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportAudioFinishedForCallWithUUID:dCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dataCopy = data;
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy changedFrequencyData:dataCopy forDirection:direction];
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  *&v9 = level;
  [remoteObjectProxy reportCallWithUUID:dCopy changedMeterLevel:direction forDirection:v9];
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  v10 = CXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v14 = 136315906;
    v15 = "[CXProviderExtensionVendorContext reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]";
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2048;
    usedCopy = used;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ crossDeviceIdentifier: %@ bytesOfDataUsed: %ld", &v14, 0x2Au);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy crossDeviceIdentifier:identifierCopy changedBytesOfDataUsed:used];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  updateCopy = update;
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportNewOutgoingCallWithUUID:dCopy update:updateCopy];
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  handlerCopy = handler;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CXProviderExtensionVendorContext requestTransaction:completionHandler:]";
    v13 = 2112;
    v14 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v11, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy requestTransaction:transactionCopy reply:handlerCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CXProviderExtensionVendorContext actionCompleted:completionHandler:]";
    v11 = 2112;
    v12 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v9, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy actionCompleted:completedCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)commitTransaction:(id)transaction
{
  v12 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext commitTransaction:]";
    v10 = 2112;
    v11 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", &v8, 0x16u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self receivedCommittedTransaction:transactionCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)timeout
{
  v12 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext handleActionTimeout:]";
    v10 = 2112;
    v11 = timeoutCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", &v8, 0x16u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self handledActionTimeout:timeoutCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v12 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext handleAudioSessionActivationStateChangedTo:]";
    v10 = 1024;
    bOOLValue = [toCopy BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with active: %d", &v8, 0x12u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self handledAudioSessionActivationStateChangedTo:{objc_msgSend(toCopy, "BOOLValue")}];

  v7 = *MEMORY[0x1E69E9840];
}

- (CXProviderExtensionVendorContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end