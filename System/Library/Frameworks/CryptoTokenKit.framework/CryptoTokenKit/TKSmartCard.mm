@interface TKSmartCard
+ (BOOL)decodeResponse:(id)a3 sw:(unsigned __int16 *)a4 appendTo:(id)a5 error:(id *)a6;
+ (id)_localizedString:(id)a3;
- (BOOL)beginSessionWithError:(id *)a3;
- (BOOL)checkAPDUResponse:(id)a3 error:(id *)a4;
- (BOOL)inSessionWithError:(NSError *)error executeBlock:(void *)block;
- (BOOL)revalidate;
- (BOOL)selectApplication:(id)a3 error:(id *)a4;
- (TKSmartCard)initWithSlot:(id)a3;
- (TKSmartCardUserInteractionForSecurePINChange)userInteractionForSecurePINChangeWithPINFormat:(TKSmartCardPINFormat *)PINFormat APDU:(NSData *)APDU currentPINByteOffset:(NSInteger)currentPINByteOffset newPINByteOffset:(NSInteger)newPINByteOffset;
- (TKSmartCardUserInteractionForSecurePINVerification)userInteractionForSecurePINVerificationWithPINFormat:(TKSmartCardPINFormat *)PINFormat APDU:(NSData *)APDU PINByteOffset:(NSInteger)PINByteOffset;
- (id)buildIns:(unsigned __int8)a3 p1:(unsigned __int8)a4 p2:(unsigned __int8)a5 data:(id)a6 range:(_NSRange)a7 le:(id)a8 protocol:(unint64_t)a9 chained:(BOOL)a10 extended:(BOOL *)a11 realLe:(unint64_t *)a12;
- (id)context;
- (id)remoteSessionWithErrorHandler:(id)a3;
- (void)beginSessionWithReply:(void *)reply;
- (void)dealloc;
- (void)encodeLength:(unint64_t)a3 into:(id)a4 sized:(int64_t)a5;
- (void)endSessionWithReply:(id)a3;
- (void)handleApduResponse:(id)a3 body:(id)a4 le:(unint64_t)a5 isCase4:(BOOL)a6 error:(id)a7 reply:(id)a8;
- (void)inSlotQueueExecuteBlock:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)querySessionWithReply:(id)a3;
- (void)releaseSessionWithReply:(id)a3;
- (void)sessionRequested;
- (void)setContext:(id)a3 forKey:(id)a4;
- (void)setContext:(id)context;
- (void)setSessionEndPolicy:(int64_t)a3;
- (void)transmitRequest:(NSData *)request reply:(void *)reply;
- (void)unreserve;
@end

@implementation TKSmartCard

+ (id)_localizedString:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F5A7A8A8 table:0];

  return v6;
}

- (TKSmartCard)initWithSlot:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28.receiver = self;
  v28.super_class = TKSmartCard;
  v6 = [(TKSmartCard *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_slot, a3);
    v7->_valid = 1;
    v8 = NSStringFromSelector(sel_state);
    [v5 addObserver:v7 forKeyPath:v8 options:1 context:0];

    v9 = TK_LOG_smartcard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCard initWithSlot:];
    }

    v7->_allowedProtocols = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(TKSmartCardSlot *)v7->_slot ATR];
    v11 = [v10 protocols];

    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v7->_allowedProtocols |= [*(*(&v24 + 1) + 8 * v15++) unsignedIntegerValue];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    v7->_currentProtocol = 0;
    v7->_sensitive = 0;
    v16 = dispatch_queue_create("beginSessionQueue", 0);
    beginSessionQueue = v7->_beginSessionQueue;
    v7->_beginSessionQueue = v16;

    v18 = v7->_beginSessionQueue;
    v19 = [(TKSmartCardSlot *)v7->_slot queue];
    dispatch_set_target_queue(v18, v19);

    v20 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    syncObject = v7->_syncObject;
    v7->_syncObject = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)remoteSessionWithErrorHandler:(id)a3
{
  synchronous = self->_synchronous;
  session = self->_session;
  if (synchronous)
  {
    [session synchronousRemoteObjectProxyWithErrorHandler:a3];
  }

  else
  {
    [session remoteObjectProxyWithErrorHandler:a3];
  }
  v5 = ;

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_valid)
  {
    v12 = NSStringFromSelector(sel_state);
    v13 = [v9 isEqualToString:v12];

    if (v13)
    {
      v14 = [v11 objectForKey:*MEMORY[0x1E696A4F0]];
      v15 = [v14 integerValue];

      if (v15 != 2 && v15 != 4)
      {
        v17 = TK_LOG_smartcard();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [TKSmartCard observeValueForKeyPath:ofObject:change:context:];
        }

        [(TKSmartCard *)self setContext:0 forKey:0];
        v18 = self->_syncObject;
        objc_sync_enter(v18);
        [(TKSmartCard *)self setValid:0];
        [(TKSmartCard *)self setCurrentProtocol:0];
        objc_sync_exit(v18);
      }
    }
  }
}

- (void)releaseSessionWithReply:(id)a3
{
  v4 = a3;
  v5 = TK_LOG_smartcard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCard releaseSessionWithReply:?];
  }

  [(TKSmartCard *)self setContext:0 forKey:0];
  if (self->_sensitiveRequired)
  {
    [(TKSmartCard *)self setSessionEndPolicy:1];
    self->_sensitiveRequired = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke;
  v16[3] = &unk_1E86B72D8;
  v16[4] = self;
  v17 = v4;
  v6 = v4;
  v7 = MEMORY[0x1E12D5690](v16);
  dispatch_suspend(self->_beginSessionQueue);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke_2_307;
  v14[3] = &unk_1E86B7218;
  v8 = v7;
  v15 = v8;
  v9 = [(TKSmartCard *)self remoteSessionWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke_3_308;
  v12[3] = &unk_1E86B72B0;
  v13 = v8;
  v10 = v8;
  [v9 terminateWithReply:v12];

  session = self->_session;
  self->_session = 0;
}

void __39__TKSmartCard_releaseSessionWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke_2;
  v4[3] = &unk_1E86B72D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __39__TKSmartCard_releaseSessionWithReply___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) proxy];
  v3 = [v2 cards];
  [v3 removeObject:*(a1 + 32)];

  dispatch_resume(*(*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = *(v5 + 26);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke_3;
  v11[3] = &unk_1E86B7100;
  v11[4] = v5;
  v12 = v4;
  v8 = [v6 synchronous:v7 remoteSlotWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__TKSmartCard_releaseSessionWithReply___block_invoke_306;
  v9[3] = &unk_1E86B72B0;
  v10 = *(a1 + 40);
  [v8 waitForStateFlushedWithReply:v9];
}

void __39__TKSmartCard_releaseSessionWithReply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__TKSmartCard_releaseSessionWithReply___block_invoke_3_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sessionRequested
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)inSlotQueueExecuteBlock:(id)a3
{
  if (self->_synchronous)
  {
    slot = self->_slot;
    v4 = a3;
    v6 = [(TKSmartCardSlot *)slot queue];
    dispatch_sync(v6, v4);
  }

  else
  {
    v5 = *(a3 + 2);
    v6 = a3;
    v5();
  }
}

- (void)querySessionWithReply:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  allowedProtocols = self->_allowedProtocols;
  self->_sessionEndPolicy = 0;
  self->_someoneWantsSession = 0;
  v22[0] = @"protocol";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:allowedProtocols];
  v23[0] = v6;
  v22[1] = @"sensitive";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_sensitive];
  v23[1] = v7;
  v22[2] = @"endpolicy";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sessionEndPolicy];
  v23[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v10 = TK_LOG_smartcard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TKSmartCard *)self querySessionWithReply:?];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__TKSmartCard_querySessionWithReply___block_invoke;
  v21[3] = &unk_1E86B6FE8;
  v21[4] = self;
  [(TKSmartCard *)self inSlotQueueExecuteBlock:v21];
  slot = self->_slot;
  synchronous = self->_synchronous;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_2;
  v19[3] = &unk_1E86B7100;
  v19[4] = self;
  v13 = v4;
  v20 = v13;
  v14 = [(TKSmartCardSlot *)slot synchronous:synchronous remoteSlotWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_2_313;
  v17[3] = &unk_1E86B7348;
  v17[4] = self;
  v18 = v13;
  v15 = v13;
  [v14 sessionWithParameters:v9 reply:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) proxy];
  v2 = [v3 cards];
  [v2 addObject:*(a1 + 32)];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __37__TKSmartCard_querySessionWithReply___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_312;
  v8[3] = &unk_1E86B6FE8;
  v8[4] = v5;
  [v5 inSlotQueueExecuteBlock:v8];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
  (*(v6 + 16))(v6, 0, v7);
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_312(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) proxy];
  v2 = [v3 cards];
  [v2 removeObject:*(a1 + 32)];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_313(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_2_315;
    v22[3] = &unk_1E86B7320;
    v22[4] = v10;
    v23 = v7;
    v24 = v8;
    [v10 inSlotQueueExecuteBlock:v22];
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(v12 + 8);
    v14 = *(v12 + 26);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_2_320;
    v20[3] = &unk_1E86B7100;
    v20[4] = v12;
    v21 = v11;
    v15 = [v13 synchronous:v14 remoteSlotWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_321;
    v18[3] = &unk_1E86B72B0;
    v19 = *(a1 + 40);
    [v15 waitForStateFlushedWithReply:v18];
  }

  else
  {
    v16 = TK_LOG_smartcard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __37__TKSmartCard_querySessionWithReply___block_invoke_2_313_cold_1(a1);
    }

    v17 = *(a1 + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __37__TKSmartCard_querySessionWithReply___block_invoke_314;
    v25[3] = &unk_1E86B6FE8;
    v25[4] = v17;
    [v17 inSlotQueueExecuteBlock:v25];
    (*(*(a1 + 40) + 16))();
  }
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_314(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) proxy];
  v2 = [v3 cards];
  [v2 removeObject:*(a1 + 32)];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_315(uint64_t a1)
{
  v1 = a1 + 40;
  v2 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v3 = [*(v1 + 8) objectForKey:@"protocol"];
  *(*v2 + 14) = [v3 unsignedIntegerValue];

  ++*(*v2 + 5);
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __37__TKSmartCard_querySessionWithReply___block_invoke_2_315_cold_1(v2, v1);
  }

  v5 = [*(*v2 + 1) ATR];
  v6 = [v5 historicalRecords];

  v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_319];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
  }

  v9 = [v8 value];
  v10 = [v9 length];

  if (v10 == 3)
  {
    v11 = [v8 value];
    v12 = [v11 bytes];

    v13 = *(v12 + 2);
    if (*(*v2 + 14) == 2 && [*(*v2 + 1) maxInputLength] >= 262)
    {
      v14 = (*(v12 + 2) >> 6) & 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 < 0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  [*v2 setUseExtendedLength:v14];
  [*v2 setUseCommandChaining:v15];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_smartcard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__TKSmartCard_releaseSessionWithReply___block_invoke_3_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)beginSessionWithReply:(void *)reply
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = reply;
  v5 = TK_LOG_smartcard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(TKSmartCard *)self beginSessionWithReply:v5];
  }

  if ([(TKSmartCard *)self valid])
  {
    beginSessionQueue = self->_beginSessionQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__TKSmartCard_beginSessionWithReply___block_invoke;
    v12[3] = &unk_1E86B72D8;
    v12[4] = self;
    v13 = v4;
    dispatch_async(beginSessionQueue, v12);
  }

  else
  {
    v7 = TK_LOG_smartcard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(TKSmartCard *)self slot];
      v9 = [v8 name];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1DF413000, v7, OS_LOG_TYPE_INFO, "%{public}@: an attempt to begin session with invalidated (removed) card", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
    (*(v4 + 2))(v4, 0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_beginSessionWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    ++*(v2 + 40);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    dispatch_suspend(*(v2 + 16));
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__TKSmartCard_beginSessionWithReply___block_invoke_2;
    v6[3] = &unk_1E86B6F10;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 querySessionWithReply:v6];
  }
}

void __37__TKSmartCard_beginSessionWithReply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = a3;
  dispatch_resume(v4);
  (*(*(a1 + 40) + 16))();
}

- (BOOL)beginSessionWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v5 = TK_LOG_smartcard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(TKSmartCard *)self slot];
    v7 = [v6 name];
    [(TKSmartCard *)v7 beginSessionWithError:v30, v5, v6];
  }

  if ([(TKSmartCard *)self valid])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    beginSessionQueue = self->_beginSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__TKSmartCard_beginSessionWithError___block_invoke;
    block[3] = &unk_1E86B7060;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(beginSessionQueue, block);
    if (*(*(&buf + 1) + 24) == 1)
    {
      self->_synchronous = 1;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __37__TKSmartCard_beginSessionWithError___block_invoke_2;
      v15[3] = &unk_1E86B7370;
      v15[4] = self;
      v15[5] = &v23;
      v15[6] = &v17;
      [(TKSmartCard *)self querySessionWithReply:v15];
      self->_synchronous = 0;
    }

    v9 = *(v24 + 24);
    if (a3 && (v24[3] & 1) == 0)
    {
      *a3 = v18[5];
      v9 = *(v24 + 24);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = TK_LOG_smartcard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(TKSmartCard *)self slot];
      v12 = [v11 name];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1DF413000, v10, OS_LOG_TYPE_INFO, "%{public}@: an attempt to begin session with invalidated (removed) card", &buf, 0xCu);
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

void __37__TKSmartCard_beginSessionWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    ++*(v1 + 40);
  }

  else
  {
    dispatch_suspend(*(v1 + 16));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __37__TKSmartCard_beginSessionWithError___block_invoke_2(void *a1, char a2, void *a3)
{
  v6 = a3;
  dispatch_resume(*(a1[4] + 16));
  *(*(a1[5] + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }
}

- (BOOL)inSessionWithError:(NSError *)error executeBlock:(void *)block
{
  v6 = block;
  if ([(TKSmartCard *)self beginSessionWithError:error])
  {
    v7 = v6[2](v6, error);
    [(TKSmartCard *)self endSession];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSessionEndPolicy:(int64_t)a3
{
  self->_sessionEndPolicy = a3;
  session = self->_session;
  if (session)
  {
    [session setEndPolicy:?];
  }
}

- (void)endSessionWithReply:(id)a3
{
  v5 = a3;
  v6 = TK_LOG_smartcard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCard endSessionWithReply:?];
  }

  beginSessionQueue = self->_beginSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TKSmartCard_endSessionWithReply___block_invoke;
  block[3] = &unk_1E86B7398;
  v10 = v5;
  v11 = a2;
  block[4] = self;
  v8 = v5;
  dispatch_async(beginSessionQueue, block);
}

uint64_t __35__TKSmartCard_endSessionWithReply___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 25))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v2 + 24);
  }

  *(v2 + 25) = v4 & 1;
  v5 = *v3;
  if (!*(*v3 + 32) || (v6 = *(v5 + 40), v6 <= 0))
  {
    __35__TKSmartCard_endSessionWithReply___block_invoke_cold_1(a1, (a1 + 32), &v12, &v13);
    v5 = v12;
    v6 = v13;
  }

  v7 = v6 - 1;
  *(v5 + 40) = v7;
  if (!v7 && ((v10 = *v3, (*(*v3 + 48) & 1) != 0) || v10[7]))
  {
    v11 = *(a1 + 40);

    return [v10 releaseSessionWithReply:v11];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }
}

- (void)transmitRequest:(NSData *)request reply:(void *)reply
{
  v6 = request;
  v7 = reply;
  if ([(TKSmartCard *)self valid])
  {
    if (!self->_sessionCounter)
    {
      v8 = TK_LOG_smartcard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TKSmartCard transmitRequest:? reply:?];
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"attempt to transmitRequest out of card session"];
    }

    v9 = TK_LOG_smartcard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCard transmitRequest:reply:];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __37__TKSmartCard_transmitRequest_reply___block_invoke;
    v16[3] = &unk_1E86B7100;
    v16[4] = self;
    v10 = v7;
    v17 = v10;
    v11 = [(TKSmartCard *)self remoteSessionWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__TKSmartCard_transmitRequest_reply___block_invoke_336;
    v14[3] = &unk_1E86B73C0;
    v14[4] = self;
    v15 = v10;
    [v11 transmit:v6 reply:v14];
  }

  else
  {
    v12 = TK_LOG_smartcard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [TKSmartCard transmitRequest:? reply:?];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }
}

void __37__TKSmartCard_transmitRequest_reply___block_invoke(uint64_t a1)
{
  v2 = TK_LOG_smartcard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __37__TKSmartCard_transmitRequest_reply___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
  (*(v3 + 16))(v3, 0, v4);
}

void __37__TKSmartCard_transmitRequest_reply___block_invoke_336(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = TK_LOG_smartcard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_debug_impl(&dword_1DF413000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: transmitRequest got reply %@ (err=%{public}@)", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (id)context
{
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [(TKSmartCard *)self contextForKey:v3];

  return v4;
}

- (void)setContext:(id)context
{
  v4 = MEMORY[0x1E695DFB0];
  v5 = context;
  v6 = [v4 null];
  [(TKSmartCard *)self setContext:v5 forKey:v6];
}

- (void)setContext:(id)a3 forKey:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!v6)
  {
    v13 = NSStringFromSelector(sel_context);
    [(TKSmartCard *)self willChangeValueForKey:v13];

    contexts = self->_contexts;
    self->_contexts = 0;

    goto LABEL_10;
  }

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = NSStringFromSelector(sel_context);
    [(TKSmartCard *)self willChangeValueForKey:v9];
  }

  v10 = self->_contexts;
  if (v16 && !v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_contexts;
    self->_contexts = v11;

    v10 = self->_contexts;
    goto LABEL_9;
  }

  if (v16)
  {
LABEL_9:
    [(NSMutableDictionary *)v10 setObject:v16 forKey:v6];
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(NSMutableDictionary *)v10 removeObjectForKey:v6];
  if (v8)
  {
LABEL_10:
    v15 = NSStringFromSelector(sel_context);
    [(TKSmartCard *)self didChangeValueForKey:v15];
  }

LABEL_11:
}

- (TKSmartCardUserInteractionForSecurePINVerification)userInteractionForSecurePINVerificationWithPINFormat:(TKSmartCardPINFormat *)PINFormat APDU:(NSData *)APDU PINByteOffset:(NSInteger)PINByteOffset
{
  v8 = PINFormat;
  v9 = APDU;
  v10 = [(TKSmartCard *)self slot];
  v11 = [v10 slotParameters];
  v12 = [v11 securePINVerificationSupported];

  if (v12)
  {
    v13 = objc_alloc_init(TKSmartCardUserInteractionForSecurePINVerification);
    v14 = [(TKSmartCard *)self slot];
    [(TKSmartCardUserInteractionForSecurePINVerification *)v13 setSlot:v14 PINFormat:v8 APDU:v9 PINByteOffset:PINByteOffset];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TKSmartCardUserInteractionForSecurePINChange)userInteractionForSecurePINChangeWithPINFormat:(TKSmartCardPINFormat *)PINFormat APDU:(NSData *)APDU currentPINByteOffset:(NSInteger)currentPINByteOffset newPINByteOffset:(NSInteger)newPINByteOffset
{
  v10 = PINFormat;
  v11 = APDU;
  v12 = [(TKSmartCard *)self slot];
  v13 = [v12 slotParameters];
  v14 = [v13 securePINChangeSupported];

  if (v14)
  {
    v15 = objc_alloc_init(TKSmartCardUserInteractionForSecurePINChange);
    v16 = [(TKSmartCard *)self slot];
    [(TKSmartCardUserInteractionForSecurePINChange *)v15 setSlot:v16 PINFormat:v10 APDU:v11 currentPINByteOffset:currentPINByteOffset newPINByteOffset:newPINByteOffset];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    if (self->_sensitiveRequired || self->_sensitive)
    {
      [(TKSmartCard *)self setSessionEndPolicy:1];
      self->_sensitiveRequired = 0;
      session = self->_session;
    }

    [session terminateWithReply:&__block_literal_global_344];
  }

  [(TKSmartCard *)self unreserve];
  v4 = self->_slot;
  objc_sync_enter(v4);
  slot = self->_slot;
  v6 = NSStringFromSelector(sel_state);
  [(TKSmartCardSlot *)slot removeObserver:self forKeyPath:v6];

  objc_sync_exit(v4);
  v7.receiver = self;
  v7.super_class = TKSmartCard;
  [(TKSmartCard *)&v7 dealloc];
}

void __38__TKSmartCard_reserveExclusive_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v7 = a3;
  if (!a4)
  {
    objc_storeStrong((*(a1 + 32) + 72), a3);
    if ([v8 unsignedIntegerValue])
    {
      [*(a1 + 32) setAllowedProtocols:{objc_msgSend(v8, "unsignedIntegerValue")}];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unreserve
{
  if (self->_reservationId)
  {
    v3 = [(TKSmartCardSlot *)self->_slot synchronous:0 remoteSlotWithErrorHandler:&__block_literal_global_347];
    [v3 reserveProtocols:0 reservationId:self->_reservationId exclusive:0 reply:&__block_literal_global_349];

    reservationId = self->_reservationId;
    self->_reservationId = 0;
  }
}

- (BOOL)revalidate
{
  if ([(TKSmartCardSlot *)self->_slot state]== TKSmartCardSlotStateValidCard)
  {
    [(TKSmartCard *)self setValid:1];
  }

  return [(TKSmartCard *)self valid];
}

+ (BOOL)decodeResponse:(id)a3 sw:(unsigned __int16 *)a4 appendTo:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  *a4 = 0;
  if (!v9)
  {
    goto LABEL_5;
  }

  if ([v9 length] <= 1)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-3 userInfo:0];
      *a6 = v11 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v14 = [v9 bytes];
  v15 = [v9 length];
  *a4 = bswap32(*(v14 + v15 - 2)) >> 16;
  [v10 appendBytes:v14 length:v15 - 2];
  v16 = *a4;
  v11 = 1;
  if (v16 != 36864 && (v16 & 0xFF00) != 0x6100)
  {
    v17 = v16 & 0xFFC0;
    v18 = v16 & 0x3F;
    if (v16 == 27011)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if (v17 == 25536)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = TK_LOG_smartcard();
    v22 = v21;
    if ((v20 & 0x80000000) != 0)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [TKSmartCard decodeResponse:a4 sw:? appendTo:? error:?];
      }

      if (a6)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SmartCard returned error %04hx", *a4];
        v31 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A578];
        v34 = v30;
        v11 = 1;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        *a6 = [v31 errorWithDomain:@"CryptoTokenKit" code:-3 userInfo:v32];

        goto LABEL_6;
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = *a4;
        *buf = 67109376;
        v38 = v23;
        v39 = 1024;
        v40 = v20;
        _os_log_impl(&dword_1DF413000, v22, OS_LOG_TYPE_INFO, "Failed to verify PIN. sw=0x%04hx, retries: %d", buf, 0xEu);
      }

      if (a6)
      {
        v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
        v25 = [v24 localizedStringForKey:@"VERIFY_TRY_LEFT" value:&stru_1F5A7A8A8 table:0];

        v26 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v25, v20];
        v27 = MEMORY[0x1E696ABC0];
        v35[0] = *MEMORY[0x1E696A578];
        v35[1] = @"userSecretTriesLeft";
        v36[0] = v26;
        v28 = [MEMORY[0x1E696AD98] numberWithInt:v20];
        v36[1] = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
        *a6 = [v27 errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:v29];
      }
    }

    v11 = 1;
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)checkAPDUResponse:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = a3;
  v6 = [objc_opt_class() decodeResponse:v5 sw:&v8 appendTo:0 error:a4];

  if (v8 == 36864)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)handleApduResponse:(id)a3 body:(id)a4 le:(unint64_t)a5 isCase4:(BOOL)a6 error:(id)a7 reply:(id)a8
{
  v10 = a6;
  v14 = a4;
  v15 = a8;
  v31 = 0;
  v16 = a7;
  v17 = a3;
  v30 = v16;
  LOBYTE(a3) = [objc_opt_class() decodeResponse:v17 sw:&v31 appendTo:v14 error:&v30];

  v18 = v30;
  if ((a3 & 1) == 0)
  {
    (*(v15 + 2))(v15, 0, 0, v18);
    goto LABEL_25;
  }

  v19 = v31;
  if (v31 == 36864 && v10)
  {
    if (self->_currentProtocol != 1)
    {
      goto LABEL_13;
    }

    if (![v14 length])
    {
      v31 = 24832;
LABEL_11:
      if ([v14 length] >= a5)
      {
        v31 = -28672;

        v18 = 0;
      }

      goto LABEL_13;
    }

    v19 = v31;
  }

  if ((v19 & 0xFF00) == 0x6100)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ((v31 & 0xFF00) == 0x6100)
  {
    if (v31)
    {
      v20 = v31;
    }

    else
    {
      v20 = 256;
    }

    if ([v14 length] + v20 > a5)
    {
      v20 = a5 - [v14 length];
    }

    if (v20 > [(TKSmartCardSlot *)self->_slot maxOutputLength]- 2)
    {
      LOBYTE(v20) = [(TKSmartCardSlot *)self->_slot maxOutputLength]- 2;
    }

    cla = self->_cla;
    v27 = 192;
    v28 = 0;
    v29 = v20;
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&cla length:5];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__TKSmartCard_handleApduResponse_body_le_isCase4_error_reply___block_invoke;
    v22[3] = &unk_1E86B7430;
    v22[4] = self;
    v23 = v14;
    v25 = a5;
    v24 = v15;
    [(TKSmartCard *)self transmitRequest:v21 reply:v22];
  }

  else
  {
    if ([v14 length] > a5)
    {
      [v14 setLength:a5];
    }

    (*(v15 + 2))(v15, v14, v31, v18);
  }

LABEL_25:
}

- (void)encodeLength:(unint64_t)a3 into:(id)a4 sized:(int64_t)a5
{
  v7 = a4;
  v8 = v7;
  switch(a5)
  {
    case 3:
      v12[0] = 0;
      v12[1] = BYTE1(a3);
      v12[2] = a3;
      v10 = v12;
      v11 = 3;
      goto LABEL_9;
    case 2:
      v13 = bswap32(a3) >> 16;
      v10 = &v13;
      v11 = 2;
LABEL_9:
      [v7 appendBytes:v10 length:v11];
      break;
    case 1:
      v9 = 0;
      if (a3 < 0x100)
      {
        v9 = a3;
      }

      v14 = v9;
      v10 = &v14;
      v11 = 1;
      goto LABEL_9;
  }
}

- (id)buildIns:(unsigned __int8)a3 p1:(unsigned __int8)a4 p2:(unsigned __int8)a5 data:(id)a6 range:(_NSRange)a7 le:(id)a8 protocol:(unint64_t)a9 chained:(BOOL)a10 extended:(BOOL *)a11 realLe:(unint64_t *)a12
{
  length = a7.length;
  location = a7.location;
  v17 = a6;
  v18 = a8;
  v19 = MEMORY[0x1E695DF88];
  if (v17)
  {
    v20 = [v17 length] + 10;
  }

  else
  {
    v20 = 10;
  }

  v21 = [v19 dataWithCapacity:v20];
  v22 = v21;
  cla = self->_cla;
  v38[0] = cla;
  v38[1] = a3;
  v38[2] = a4;
  v38[3] = a5;
  if (a10)
  {
    v38[0] = cla | 0x10;
  }

  [v21 appendBytes:v38 length:4];
  if (v17)
  {
    if (length >= 0x10000)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to send APDU with Lc=%lu", length}];
    }

    v24 = length > 0xFF;
  }

  else
  {
    v24 = 0;
  }

  *a12 = 0;
  if (!v18)
  {
    v27 = a11;
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if ([v18 unsignedIntegerValue] > 0x10000)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to send APDU with Le=%@", v18}];
  }

  v25 = [v18 unsignedIntegerValue];
  v26 = 0x10000;
  if (v25)
  {
    v26 = v25;
  }

  *a12 = v26;
  v27 = a11;
  v28 = v26 > 0x100 || v24;
  if (*a11)
  {
    v24 = v28;
  }

  if (v17)
  {
LABEL_19:
    if (v24)
    {
      v29 = 3;
    }

    else
    {
      v29 = 1;
    }

    [(TKSmartCard *)self encodeLength:length into:v22 sized:v29];
    [v22 appendBytes:objc_msgSend(v17 length:{"bytes") + location, length}];
  }

LABEL_23:
  if (v18)
  {
    if (!v17 || a9 == 2)
    {
      v30 = 2;
      if (!v17)
      {
        v30 = 3;
      }

      if (v24)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      v32 = [v18 unsignedIntegerValue];
      v33 = self;
      v34 = v22;
      v35 = v31;
      goto LABEL_37;
    }
  }

  else if (!v17 && a9 == 1)
  {
    v33 = self;
    v32 = 0;
    v34 = v22;
    v35 = 1;
LABEL_37:
    [(TKSmartCard *)v33 encodeLength:v32 into:v34 sized:v35];
  }

  *v27 = v24;

  return v22;
}

void __85__TKSmartCard_transmitChunkedIns_p1_p2_data_fromOffset_realLe_chained_isCase4_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x1E695DF88];
    v8 = a2;
    v9 = [v7 data];
    [v6 handleApduResponse:v8 body:v9 le:*(a1 + 64) isCase4:*(a1 + 89) error:v5 reply:*(a1 + 48)];

    v10 = v5;
  }

  else
  {
    v19 = 0;
    v11 = *(a1 + 32);
    v12 = a2;
    v18 = v5;
    v13 = [objc_opt_class() decodeResponse:v12 sw:&v19 appendTo:0 error:&v18];

    v10 = v18;
    if (v13 && v19 == 36864)
    {
      if ([*(a1 + 32) synchronous])
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      else
      {
        if (*(a1 + 93) == 1)
        {
          v16 = *(a1 + 88) ^ 1;
        }

        else
        {
          v16 = 0;
        }

        BYTE1(v17) = *(a1 + 89);
        LOBYTE(v17) = v16 & 1;
        [*(a1 + 32) transmitChunkedIns:*(a1 + 90) p1:*(a1 + 91) p2:*(a1 + 92) data:*(a1 + 40) fromOffset:*(a1 + 80) + *(a1 + 72) realLe:*(a1 + 64) chained:v17 isCase4:*(a1 + 48) reply:?];
      }
    }

    else
    {
      v14 = *(a1 + 48);
      if (v13)
      {
        v15 = [MEMORY[0x1E695DEF0] data];
        (*(v14 + 16))(v14, v15, v19, v10);
      }

      else
      {
        (*(v14 + 16))(v14, 0, v19, v10);
      }
    }
  }
}

void __85__TKSmartCard_transmitChunkedIns_p1_p2_data_fromOffset_realLe_chained_isCase4_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DF88];
  v7 = a3;
  v8 = a2;
  v9 = [v6 data];
  [v5 handleApduResponse:v8 body:v9 le:*(a1 + 48) isCase4:*(a1 + 56) error:v7 reply:*(a1 + 40)];
}

void __43__TKSmartCard_sendIns_p1_p2_data_le_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = TK_LOG_smartcard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __43__TKSmartCard_sendIns_p1_p2_data_le_reply___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __43__TKSmartCard_sendIns_p1_p2_data_le_reply___block_invoke_371(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DF88];
  v7 = a3;
  v8 = a2;
  v9 = [v6 data];
  [v5 handleApduResponse:v8 body:v9 le:*(a1 + 48) isCase4:*(a1 + 56) error:v7 reply:*(a1 + 40)];
}

void __46__TKSmartCard_sendIns_p1_p2_data_le_sw_error___block_invoke(uint64_t a1, void *a2, __int16 a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  **(a1 + 48) = a3;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (BOOL)selectApplication:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TKSmartCard *)self contextForKey:@"AID"];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    goto LABEL_5;
  }

  v17 = 0;
  v9 = [(TKSmartCard *)self sendIns:164 p1:4 p2:0 data:v6 le:0 sw:&v17 error:a4];
  v10 = v17;

  if (v9 && v10 == 36864)
  {
    [(TKSmartCard *)self setContext:v6 forKey:@"AID"];
LABEL_5:
    v11 = 1;
    goto LABEL_11;
  }

  if (a4)
  {
    v18 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to select card application AID %@", v6];
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v13 mutableCopy];

    if (*a4)
    {
      [v14 setObject:*a4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v14];
  }

  v11 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)initWithSlot:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)releaseSessionWithReply:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __39__TKSmartCard_releaseSessionWithReply___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_10(v1) slot];
  v3 = [v2 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)querySessionWithReply:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_10(v1) slot];
  v3 = [v2 name];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_313_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_10(a1) slot];
  v3 = [v2 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_querySessionWithReply___block_invoke_2_315_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(*a1 + 112);
  v4 = *(*a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)beginSessionWithReply:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 slot];
  v4 = [v3 name];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: begin exclusive SmartCard session", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginSessionWithError:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "%{public}@: begin exclusive SmartCard session", buf, 0xCu);
}

- (void)endSessionWithReply:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) - 1;
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

void __35__TKSmartCard_endSessionWithReply___block_invoke_cold_1(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"TKSmartCard.m" lineNumber:992 description:@"bad endSession"];

  v9 = *a2;
  *a3 = *a2;
  *a4 = *(v9 + 40);
}

- (void)transmitRequest:(void *)a1 reply:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 slot];
  v2 = [v1 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)transmitRequest:(void *)a1 reply:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 slot];
  v2 = [v1 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)transmitRequest:reply:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __37__TKSmartCard_transmitRequest_reply___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_10(a1) slot];
  v3 = [v2 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)decodeResponse:(unsigned __int16 *)a1 sw:appendTo:error:.cold.1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendIns:(os_log_t)log p1:(void *)a4 p2:data:le:reply:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "%{public}@: sendIns invoked on invalid (removed) card", buf, 0xCu);
}

void __43__TKSmartCard_sendIns_p1_p2_data_le_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x1E69E9840];
  v5[0] = 67109634;
  v5[1] = v3;
  v6 = 2048;
  v7 = [v2 length];
  v8 = 2112;
  v9 = v1;
  _os_log_debug_impl(&dword_1DF413000, v0, OS_LOG_TYPE_DEBUG, "rsp: %04x len:%lu:%@", v5, 0x1Cu);
  v4 = *MEMORY[0x1E69E9840];
}

@end