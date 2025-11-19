@interface TKSmartCardSlot
- (BOOL)simulateCardReinsertionWithError:(id *)a3;
- (TKSmartCard)makeSmartCard;
- (TKSmartCardSlot)initWithEndpoint:(id)a3 error:(id *)a4;
- (id)synchronous:(BOOL)a3 remoteSlotWithErrorHandler:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TKSmartCardSlot

- (id)synchronous:(BOOL)a3 remoteSlotWithErrorHandler:(id)a4
{
  connection = self->_connection;
  if (a3)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:a4];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:a4];
  }
  v5 = ;

  return v5;
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TK_LOG_smartcard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_cold_1();
    }

    v3 = WeakRetained;
    objc_sync_enter(v3);
    [v3 setState:0];
    objc_sync_exit(v3);

    [v3 setPreviousState:0];
    [v3 setATR:0];
  }
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TK_LOG_smartcard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211_cold_1();
    }

    [WeakRetained invalidate];
  }
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"name"];
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v7 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = [v3 objectForKey:@"state"];
  *(*v6 + 40) = [v8 integerValue];

  v9 = [v3 objectForKey:@"prevstate"];
  *(*v6 + 72) = [v9 integerValue];

  v10 = [TKSmartCardATR alloc];
  v11 = [v3 objectForKey:@"atr"];
  v12 = [(TKSmartCardATR *)v10 initWithBytes:v11];
  v13 = *(*(a1 + 32) + 48);
  *(*v6 + 48) = v12;

  v14 = [v3 objectForKey:@"power"];
  *(*v6 + 16) = [v14 integerValue];

  v15 = [v3 objectForKey:@"share"];
  *(*v6 + 24) = [v15 integerValue];

  [*(*(a1 + 32) + 64) slotInitialized];
  v16 = [TKSlotParameters alloc];
  v17 = [v3 objectForKey:@"params"];

  v18 = [(TKSlotParameters *)v16 initWithEntriesFromDictionary:v17];
  v19 = *(*(a1 + 32) + 32);
  *(*v6 + 32) = v18;

  v20 = TK_LOG_smartcard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213_cold_1(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))();
}

- (TKSmartCard)makeSmartCard
{
  if ([(TKSmartCardSlot *)self state]!= TKSmartCardSlotStateValidCard && [(TKSmartCardSlot *)self state]!= TKSmartCardSlotStateProbing)
  {
    goto LABEL_7;
  }

  if ([(TKSmartCardSlot *)self state]== TKSmartCardSlotStateProbing)
  {
    v3 = [(TKSmartCardSlot *)self synchronous:1 remoteSlotWithErrorHandler:&__block_literal_global_217];
    [v3 waitForNextState:-[TKSmartCardSlot state](self reply:{"state"), &__block_literal_global_221}];
  }

  if ([(TKSmartCardSlot *)self state]== TKSmartCardSlotStateValidCard)
  {
    v4 = [[TKSmartCard alloc] initWithSlot:self];
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  return v4;
}

void __32__TKSmartCardSlot_makeSmartCard__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_smartcard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1();
  }
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(TKSmartCardSlot *)self invalidate];
  v3.receiver = self;
  v3.super_class = TKSmartCardSlot;
  [(TKSmartCardSlot *)&v3 dealloc];
}

- (TKSmartCardSlot)initWithEndpoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = TKSmartCardSlot;
  v7 = [(TKSmartCardSlot *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__TKSmartCardSlot_initWithEndpoint_error___block_invoke;
    v10[3] = &unk_1E86B7288;
    v10[4] = &v17;
    v10[5] = &v11;
    [(TKSmartCardSlot *)v7 connectToEndpoint:v6 synchronous:1 reply:v10];
    if ((v18[3] & 1) == 0)
    {

      v8 = 0;
      if (a4)
      {
        *a4 = v12[5];
      }
    }

    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  return v8;
}

void __42__TKSmartCardSlot_initWithEndpoint_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)simulateCardReinsertionWithError:(id *)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  state = self->_state;
  v6 = TK_LOG_smartcard();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (state == 4)
  {
    if (v7)
    {
      [TKSmartCardSlot simulateCardReinsertionWithError:?];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke;
    v15[3] = &unk_1E86B71A0;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = &v22;
    v8 = [(TKSmartCardSlot *)self synchronous:1 remoteSlotWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_229;
    v14[3] = &unk_1E86B7178;
    v14[4] = &v16;
    v14[5] = &v22;
    [v8 simulateCardReinsertionWithReply:v14];

    v9 = v23;
    if (a3 && (v23[3] & 1) == 0)
    {
      *a3 = v17[5];
      v9 = v23;
    }

    LOBYTE(a3) = *(v9 + 24);
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    if (v7)
    {
      [TKSmartCardSlot simulateCardReinsertionWithError:?];
    }

    if (a3)
    {
      v10 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A278];
      v27[0] = @"Card is missing";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *a3 = [v10 errorWithDomain:@"CryptoTokenKit" code:-1001 userInfo:v11];

      LOBYTE(a3) = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3 & 1;
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = TK_LOG_smartcard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_cold_1(a1, v4, v5);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_229(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_211_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_212_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__TKSmartCardSlot_connectToEndpoint_synchronous_reply___block_invoke_213_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)simulateCardReinsertionWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 56);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)simulateCardReinsertionWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 56);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__TKSmartCardSlot_simulateCardReinsertionWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(*(a1 + 32) + 56);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_11(&dword_1DF413000, a2, a3, "%{public}@: Error when simulating card reinsertion: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end