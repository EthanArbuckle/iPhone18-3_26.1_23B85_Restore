@interface CXVoicemailSource
- (CXVoicemailSource)init;
- (CXVoicemailSourceDelegate)delegate;
- (NSString)description;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)beginWithCompletionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)registerWithConfiguration:(id)configuration;
- (void)reportNewVoicemailsWithUpdates:(id)updates;
- (void)reportVoicemailsRemovedWithUUIDs:(id)ds;
- (void)reportVoicemailsUpdated:(id)updated;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
- (void)setConnected:(BOOL)connected;
@end

@implementation CXVoicemailSource

- (CXVoicemailSource)init
{
  v6.receiver = self;
  v6.super_class = CXVoicemailSource;
  v2 = [(CXVoicemailSource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.voicemailsource", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(CXVoicemailSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p identifier=%@ isConnected=%d processIdentifier=%d isPermittedToUsePrivateAPI=%d>", v4, self, identifier, -[CXVoicemailSource isConnected](self, "isConnected"), -[CXVoicemailSource processIdentifier](self, "processIdentifier"), -[CXVoicemailSource isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  return v6;
}

- (void)setConnected:(BOOL)connected
{
  if (self->_connected != connected)
  {
    connectedCopy = connected;
    self->_connected = connected;
    delegate = [(CXVoicemailSource *)self delegate];
    v7 = delegate;
    if (connectedCopy)
    {
      [delegate voicemailSourceConnectionStarted:self];
    }

    else
    {
      [delegate voicemailSourceConnectionEnded:self];
    }
  }
}

- (void)beginWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)registerWithConfiguration:(id)configuration
{
  v13 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CXVoicemailSource registerWithConfiguration:]";
    v11 = 2112;
    v12 = configurationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", &v9, 0x16u);
  }

  if (![(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    sanitizedCopy = [configurationCopy sanitizedCopy];

    configurationCopy = sanitizedCopy;
  }

  delegate = [(CXVoicemailSource *)self delegate];
  [delegate voicemailSource:self registeredWithConfiguration:configurationCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  handlerCopy = handler;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CXVoicemailSource requestTransaction:completionHandler:]";
    v16 = 2112;
    v17 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if ([(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    delegate = [(CXVoicemailSource *)self delegate];
    [delegate voicemailSource:self requestedTransaction:transactionCopy completion:handlerCopy];
  }

  else
  {
    v10 = CXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CXVoicemailSource requestTransaction:v10 completionHandler:?];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__CXVoicemailSource_requestTransaction_completionHandler___block_invoke;
    v12[3] = &unk_1E7C07388;
    v13 = handlerCopy;
    __58__CXVoicemailSource_requestTransaction_completionHandler___block_invoke(v12);
    delegate = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __58__CXVoicemailSource_requestTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportNewVoicemailsWithUpdates:(id)updates
{
  v12 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportNewVoicemailsWithUpdates:]";
    v10 = 2112;
    v11 = updatesCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with updates: %@", &v8, 0x16u);
  }

  delegate = [(CXVoicemailSource *)self delegate];
  [delegate voicemailSource:self reportNewVoicemailsWithUpdates:updatesCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsUpdated:(id)updated
{
  v12 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportVoicemailsUpdated:]";
    v10 = 2112;
    v11 = updatedCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with updates: %@", &v8, 0x16u);
  }

  delegate = [(CXVoicemailSource *)self delegate];
  [delegate voicemailSource:self reportVoicemailsUpdated:updatedCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsRemovedWithUUIDs:(id)ds
{
  v12 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportVoicemailsRemovedWithUUIDs:]";
    v10 = 2112;
    v11 = dsCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with UUIDs: %@", &v8, 0x16u);
  }

  delegate = [(CXVoicemailSource *)self delegate];
  [delegate voicemailSource:self reportVoicemailsRemovedWithUUIDs:dsCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  handlerCopy = handler;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CXVoicemailSource actionCompleted:completionHandler:]";
    v14 = 2112;
    v15 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", &v12, 0x16u);
  }

  if (![(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    sanitizedCopy = [completedCopy sanitizedCopy];

    completedCopy = sanitizedCopy;
  }

  delegate = [(CXVoicemailSource *)self delegate];
  [delegate voicemailSource:self actionCompleted:completedCopy];

  handlerCopy[2](handlerCopy, 0);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(CXVoicemailSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CXVoicemailSource_commitTransaction___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_async(queue, v7);
}

void __39__CXVoicemailSource_commitTransaction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CXVoicemailSource commitTransaction:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 commitTransaction:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(CXVoicemailSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CXVoicemailSource_handleActionTimeout___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = timeoutCopy;
  selfCopy = self;
  v6 = timeoutCopy;
  dispatch_async(queue, v7);
}

void __41__CXVoicemailSource_handleActionTimeout___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CXVoicemailSource handleActionTimeout:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 handleActionTimeout:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (CXVoicemailSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestTransaction:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Provider source is not entitled to use private API: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end