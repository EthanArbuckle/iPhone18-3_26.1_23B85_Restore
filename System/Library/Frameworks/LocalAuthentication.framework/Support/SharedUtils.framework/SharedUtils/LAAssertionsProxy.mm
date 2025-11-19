@interface LAAssertionsProxy
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)dropTouchIdAssertionWithReason:(id)a3 reply:(id)a4;
- (void)setConnection:(id)a3;
- (void)takeTouchIdAssertionWithReason:(id)a3 reply:(id)a4;
@end

@implementation LAAssertionsProxy

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = LAAssertionsProxy;
  [(LAAssertionsProxy *)&v4 dealloc];
}

- (void)takeTouchIdAssertionWithReason:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = LA_LOG_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF403000, v8, OS_LOG_TYPE_INFO, "Will acquire TouchID assertion", buf, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &__block_literal_global_1;
  }

  v10 = MEMORY[0x1E12D4BC0](v9);

  v11 = [(LAAssertionsProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2;
  v13[3] = &unk_1E86B5D08;
  v14 = v10;
  v12 = v10;
  [v11 takeTouchIdAssertionWithReason:v7 reply:v13];
}

void __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DF403000, v5, OS_LOG_TYPE_INFO, "Did acquire TouchID assertion", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dropTouchIdAssertionWithReason:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = LA_LOG_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF403000, v8, OS_LOG_TYPE_INFO, "Will remove TouchID assertion", buf, 2u);
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &__block_literal_global_2;
  }

  v10 = MEMORY[0x1E12D4BC0](v9);

  v11 = [(LAAssertionsProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2;
  v13[3] = &unk_1E86B5D08;
  v14 = v10;
  v12 = v10;
  [v11 dropTouchIdAssertionWithReason:v7 reply:v13];
}

void __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LA_LOG_0();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DF403000, v5, OS_LOG_TYPE_INFO, "Did remove TouchID assertion", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [LAAssertionsProxy _remoteObjectProxyWithErrorHandler:];
  }

  v5 = v4;
  if ([(LAAssertionsProxy *)self isConnected])
  {
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke;
    v13[3] = &unk_1E86B5D08;
    v14 = v5;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v13];
    v8 = v14;
  }

  else
  {
    v9 = LA_LOG_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LAAssertionsProxy _remoteObjectProxyWithErrorHandler:v9];
    }

    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Cannot perform operation while disconnected.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [LAErrorHelper errorWithCode:-1000 userInfo:v8];
    (v5)[2](v5, v10);

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

void __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 32);
  v12 = *MEMORY[0x1E696AA08];
  v16[0] = *MEMORY[0x1E696A278];
  v16[1] = v12;
  v17[0] = @"Could not obtain remote Assertions proxy.";
  v17[1] = v3;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [LAErrorHelper errorWithCode:-1000 userInfo:v13];
  (*(v11 + 16))(v11, v14);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7AB58];
  [(NSXPCConnection *)v4 setRemoteObjectInterface:v5];

  if (self->_queue)
  {
    [(NSXPCConnection *)v4 _setQueue:?];
  }

  [(NSXPCConnection *)v4 setInterruptionHandler:&__block_literal_global_58];
  [(NSXPCConnection *)v4 setInvalidationHandler:&__block_literal_global_61];
  [(NSXPCConnection *)v4 resume];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v7 = self->_connection;
    self->_connection = 0;
  }

  v8 = self->_connection;
  self->_connection = v4;
}

void __35__LAAssertionsProxy_setConnection___block_invoke()
{
  v0 = LA_LOG_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DF403000, v0, OS_LOG_TYPE_DEFAULT, "Assertions XPC connection was interrupted.", v1, 2u);
  }
}

void __35__LAAssertionsProxy_setConnection___block_invoke_59()
{
  v0 = LA_LOG_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DF403000, v0, OS_LOG_TYPE_DEFAULT, "Assertions XPC connection was invalidated.", v1, 2u);
  }
}

void __58__LAAssertionsProxy_takeTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Failed to acquire TouchID assertion: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __58__LAAssertionsProxy_dropTouchIdAssertionWithReason_reply___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Failed to remove TouchID assertion: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __56__LAAssertionsProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DF403000, a2, a3, "Could not obtain remote Assertions proxy: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end