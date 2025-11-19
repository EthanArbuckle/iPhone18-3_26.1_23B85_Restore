@interface LADFR
- (BOOL)_connectToUIAgent;
- (LADFR)initWithXpcQueue:(id)a3;
- (void)clearDFR:(id)a3;
- (void)dealloc;
- (void)updateDFR:(int64_t)a3 options:(id)a4 delegate:(id)a5 reply:(id)a6;
@end

@implementation LADFR

- (LADFR)initWithXpcQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LADFR;
  v6 = [(LADFR *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcQueue, a3);
    [(LADFR *)v7 _connectToUIAgent];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(LADFR *)self agentConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = LADFR;
  [(LADFR *)&v4 dealloc];
}

- (void)updateDFR:(int64_t)a3 options:(id)a4 delegate:(id)a5 reply:(id)a6
{
  v14 = a4;
  v10 = a5;
  v11 = a6;
  if ([(LADFR *)self _connectToUIAgent])
  {
    v12 = [(LADFR *)self agentConnection];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_7];
    [v13 updateDFR:a3 options:v14 delegate:v10 reply:v11];

    v11 = v13;
  }

  else
  {
    v12 = [LAErrorHelper internalErrorWithMessage:@"Failed to connect to LA UI agent (DFR)"];
    (*(v11 + 2))(v11, 0, v12);
  }
}

void __42__LADFR_updateDFR_options_delegate_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = LA_LOG_LADFR();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1DF403000, v3, OS_LOG_TYPE_DEFAULT, "XPC error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)clearDFR:(id)a3
{
  v4 = a3;
  v6 = [(LADFR *)self agentConnection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v5 clearDFR:v4];
}

void __18__LADFR_clearDFR___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = LA_LOG_LADFR();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_1DF403000, v3, OS_LOG_TYPE_DEFAULT, "XPC error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)_connectToUIAgent
{
  v3 = [(LADFR *)self agentConnection];

  if (v3)
  {
    v4 = LA_LOG_LADFR();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(LADFR *)v4 _connectToUIAgent];
    }

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.LocalAuthentication.DFR" options:0];
  [(LADFR *)self setAgentConnection:v5];

  v6 = [(LADFR *)self agentConnection];

  if (v6)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7D3C0];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    [v4 setClasses:v13 forSelector:sel_eventDFR_eventHints_ argumentIndex:1 ofReply:0];
    v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7B858];
    [v14 setInterface:v4 forSelector:sel_updateDFR_options_delegate_reply_ argumentIndex:2 ofReply:0];
    objc_initWeak(&location, self);
    v15 = [(LADFR *)self agentConnection];
    [v15 setRemoteObjectInterface:v14];

    v16 = [(LADFR *)self agentConnection];
    [v16 setInterruptionHandler:&__block_literal_global_31];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __26__LADFR__connectToUIAgent__block_invoke_32;
    v24[3] = &unk_1E86B5CC0;
    objc_copyWeak(&v25, &location);
    v17 = [(LADFR *)self agentConnection];
    [v17 setInvalidationHandler:v24];

    v18 = [(LADFR *)self agentConnection];
    [v18 _setQueue:self->_xpcQueue];

    v19 = [(LADFR *)self agentConnection];
    [v19 resume];

    v20 = LA_LOG_LADFR();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF403000, v20, OS_LOG_TYPE_DEFAULT, "New XPC connection to LA UI agent (DFR)", buf, 2u);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);

    goto LABEL_8;
  }

  v4 = LA_LOG_LADFR();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(LADFR *)v4 _connectToUIAgent];
  }

  v21 = 0;
LABEL_9:

  return v21;
}

void __26__LADFR__connectToUIAgent__block_invoke()
{
  v0 = LA_LOG_LADFR();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DF403000, v0, OS_LOG_TYPE_DEFAULT, "XPC interruption handler (DFR)", v1, 2u);
  }
}

void __26__LADFR__connectToUIAgent__block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAgentConnection:0];
}

@end