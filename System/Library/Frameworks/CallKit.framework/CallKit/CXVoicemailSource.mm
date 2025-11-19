@interface CXVoicemailSource
- (CXVoicemailSource)init;
- (CXVoicemailSourceDelegate)delegate;
- (NSString)description;
- (void)actionCompleted:(id)a3 completionHandler:(id)a4;
- (void)beginWithCompletionHandler:(id)a3;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)registerWithConfiguration:(id)a3;
- (void)reportNewVoicemailsWithUpdates:(id)a3;
- (void)reportVoicemailsRemovedWithUUIDs:(id)a3;
- (void)reportVoicemailsUpdated:(id)a3;
- (void)requestTransaction:(id)a3 completionHandler:(id)a4;
- (void)setConnected:(BOOL)a3;
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
  v5 = [(CXVoicemailSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p identifier=%@ isConnected=%d processIdentifier=%d isPermittedToUsePrivateAPI=%d>", v4, self, v5, -[CXVoicemailSource isConnected](self, "isConnected"), -[CXVoicemailSource processIdentifier](self, "processIdentifier"), -[CXVoicemailSource isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  return v6;
}

- (void)setConnected:(BOOL)a3
{
  if (self->_connected != a3)
  {
    v4 = a3;
    self->_connected = a3;
    v6 = [(CXVoicemailSource *)self delegate];
    v7 = v6;
    if (v4)
    {
      [v6 voicemailSourceConnectionStarted:self];
    }

    else
    {
      [v6 voicemailSourceConnectionEnded:self];
    }
  }
}

- (void)beginWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)registerWithConfiguration:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CXVoicemailSource registerWithConfiguration:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", &v9, 0x16u);
  }

  if (![(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    v6 = [v4 sanitizedCopy];

    v4 = v6;
  }

  v7 = [(CXVoicemailSource *)self delegate];
  [v7 voicemailSource:self registeredWithConfiguration:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestTransaction:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CXVoicemailSource requestTransaction:completionHandler:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if ([(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    v9 = [(CXVoicemailSource *)self delegate];
    [v9 voicemailSource:self requestedTransaction:v6 completion:v7];
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
    v13 = v7;
    __58__CXVoicemailSource_requestTransaction_completionHandler___block_invoke(v12);
    v9 = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __58__CXVoicemailSource_requestTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportNewVoicemailsWithUpdates:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportNewVoicemailsWithUpdates:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with updates: %@", &v8, 0x16u);
  }

  v6 = [(CXVoicemailSource *)self delegate];
  [v6 voicemailSource:self reportNewVoicemailsWithUpdates:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsUpdated:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportVoicemailsUpdated:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with updates: %@", &v8, 0x16u);
  }

  v6 = [(CXVoicemailSource *)self delegate];
  [v6 voicemailSource:self reportVoicemailsUpdated:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsRemovedWithUUIDs:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXVoicemailSource reportVoicemailsRemovedWithUUIDs:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with UUIDs: %@", &v8, 0x16u);
  }

  v6 = [(CXVoicemailSource *)self delegate];
  [v6 voicemailSource:self reportVoicemailsRemovedWithUUIDs:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)actionCompleted:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CXVoicemailSource actionCompleted:completionHandler:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", &v12, 0x16u);
  }

  if (![(CXVoicemailSource *)self isPermittedToUsePrivateAPI])
  {
    v9 = [v6 sanitizedCopy];

    v6 = v9;
  }

  v10 = [(CXVoicemailSource *)self delegate];
  [v10 voicemailSource:self actionCompleted:v6];

  v7[2](v7, 0);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)commitTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CXVoicemailSource_commitTransaction___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)handleActionTimeout:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CXVoicemailSource_handleActionTimeout___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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