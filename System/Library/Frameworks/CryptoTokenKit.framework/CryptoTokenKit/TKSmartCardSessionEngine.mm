@interface TKSmartCardSessionEngine
- (NSXPCConnection)connection;
- (TKSmartCardSessionEngine)initWithSlot:(id)slot connection:(id)connection;
- (void)dealloc;
- (void)terminateWithReply:(id)reply;
- (void)transmit:(id)transmit reply:(id)reply;
@end

@implementation TKSmartCardSessionEngine

- (TKSmartCardSessionEngine)initWithSlot:(id)slot connection:(id)connection
{
  slotCopy = slot;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = TKSmartCardSessionEngine;
  v9 = [(TKSmartCardSessionEngine *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slot, slot);
    objc_storeWeak(&v10->_connection, connectionCopy);
    v10->_valid = 1;
  }

  return v10;
}

- (void)transmit:(id)transmit reply:(id)reply
{
  transmitCopy = transmit;
  replyCopy = reply;
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
    replyCopy[2](replyCopy, 0, v16);

    goto LABEL_14;
  }

  slot = self->_slot;
  p_slot = &self->_slot;
  [(TKSmartCardSlotEngine *)slot setApduSentSinceLastReset:1];
  *(p_slot + 8) = 1;
  [(TKSmartCardSlotEngine *)*p_slot logWithBytes:transmitCopy handler:&__block_literal_global_405];
  delegate = [(TKSmartCardSlotEngine *)*p_slot delegate];
  v14 = [delegate engine:*p_slot transmit:transmitCopy];

  *(p_slot + 8) = 0;
  v15 = *p_slot;
  if (v14)
  {
    [(TKSmartCardSlotEngine *)v15 logWithBytes:v14 handler:&__block_literal_global_408];
    (replyCopy)[2](replyCopy, v14, 0);
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
    replyCopy[2](replyCopy, 0, v18);
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

- (void)terminateWithReply:(id)reply
{
  replyCopy = reply;
  if (self->_active)
  {
    [(TKSmartCardSlotEngine *)self->_slot leaveSession:self];
  }

  replyCopy[2]();
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