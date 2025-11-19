@interface TKSmartCardSlotNFCSession
- (BOOL)updateWithMessage:(id)a3 error:(id *)a4;
- (TKSmartCardSlotNFCSession)initWithSlotName:(id)a3 nfcSlotManager:(id)a4;
- (void)endSession;
@end

@implementation TKSmartCardSlotNFCSession

- (TKSmartCardSlotNFCSession)initWithSlotName:(id)a3 nfcSlotManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TKSmartCardSlotNFCSession;
  v9 = [(TKSmartCardSlotNFCSession *)&v14 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"smartCardSlotNFCSession.%@", v7];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeWeak(&v9->_nfcSlotManager, v8);
    objc_storeStrong(&v9->_slotName, a3);
  }

  return v9;
}

- (void)endSession
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__TKSmartCardSlotNFCSession_endSession__block_invoke;
  block[3] = &unk_1E86B6FE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__TKSmartCardSlotNFCSession_endSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v6 = 0;
    [v3 endNFCSlotWithError:&v6];
    v4 = v6;

    if (v4)
    {
      v5 = TK_LOG_smartcard_1();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __39__TKSmartCardSlotNFCSession_endSession__block_invoke_cold_1(v4, v5);
      }
    }
  }

  else
  {
    v4 = TK_LOG_smartcard_1();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __39__TKSmartCardSlotNFCSession_endSession__block_invoke_cold_2(v4);
    }
  }
}

- (BOOL)updateWithMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__TKSmartCardSlotNFCSession_updateWithMessage_error___block_invoke;
  v10[3] = &unk_1E86B8308;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __53__TKSmartCardSlotNFCSession_updateWithMessage_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1[4] + 8));
    *(*(a1[6] + 8) + 24) = [v3 updateNFCSlotMessageWithMessage:a1[5] error:a1[7]];
  }

  else
  {
    if (a1[7])
    {
      *a1[7] = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

void __39__TKSmartCardSlotNFCSession_endSession__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "Failed to end NFC session, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end