@interface TKSmartCardSessionEngine
- (NSXPCConnection)connection;
- (TKSmartCardSessionEngine)initWithSlot:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)terminateWithReply:(id)a3;
- (void)transmit:(id)a3 reply:(id)a4;
@end

@implementation TKSmartCardSessionEngine

- (TKSmartCardSessionEngine)initWithSlot:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKSmartCardSessionEngine;
  v9 = [(TKSmartCardSessionEngine *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slot, a3);
    objc_storeWeak(&v10->_connection, v8);
    v10->_valid = 1;
  }

  return v10;
}

- (void)transmit:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_transmitting)
  {
    v8 = TK_LOG_token_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TKSmartCardSessionEngine transmit:? reply:?];
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = -2;
    goto LABEL_9;
  }

  if (![(TKSmartCardSessionEngine *)self valid])
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -7;
LABEL_9:
    v16 = [v9 errorWithDomain:@"CryptoTokenKit" code:v10 userInfo:0];
    v7[2](v7, 0, v16);

    goto LABEL_14;
  }

  slot = self->_slot;
  p_slot = &self->_slot;
  [(TKSmartCardSlotEngine *)slot setApduSentSinceLastReset:1];
  *(p_slot + 8) = 1;
  [(TKSmartCardSlotEngine *)*p_slot logWithBytes:v6 handler:&__block_literal_global_405];
  v13 = [(TKSmartCardSlotEngine *)*p_slot delegate];
  v14 = [v13 engine:*p_slot transmit:v6];

  *(p_slot + 8) = 0;
  v15 = *p_slot;
  if (v14)
  {
    [(TKSmartCardSlotEngine *)v15 logWithBytes:v14 handler:&__block_literal_global_408];
    (v7)[2](v7, v14, 0);
  }

  else
  {
    [(TKSmartCardSlotEngine *)v15 logWithBytes:0 handler:&__block_literal_global_411];
    v17 = TK_LOG_token_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TKSmartCardSessionEngine transmit:? reply:?];
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
    v7[2](v7, 0, v18);
  }

LABEL_14:
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_cold_1();
  }
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_406(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_406_cold_1();
  }
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_409(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_409_cold_1();
  }
}

- (void)terminateWithReply:(id)a3
{
  v4 = a3;
  if (self->_active)
  {
    [(TKSmartCardSlotEngine *)self->_slot leaveSession:self];
  }

  v4[2]();
}

- (void)dealloc
{
  [(TKSmartCardSessionEngine *)self terminateWithReply:&__block_literal_global_413];
  v3.receiver = self;
  v3.super_class = TKSmartCardSessionEngine;
  [(TKSmartCardSessionEngine *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)transmit:(id *)a1 reply:.cold.1(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0(&dword_1DF413000, v2, v3, "%@: failed to transmit APDU", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)transmit:(uint64_t)a1 reply:.cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 8) name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0(&dword_1DF413000, v2, v3, "%{public}@: refusing to send APDU while another is in progress.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_406_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__TKSmartCardSessionEngine_transmit_reply___block_invoke_409_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end