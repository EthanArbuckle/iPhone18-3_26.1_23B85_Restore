@interface CBPacketLoggerClient
- (CBPacketLoggerClient)init;
- (id)_ensureXPCStarted;
- (void)_activateWithCompletion:(id)a3;
- (void)_activateXPC:(BOOL)a3 completion:(id)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_xpcReceivedEvent:(id)a3;
- (void)_xpcReceivedPacket:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation CBPacketLoggerClient

- (CBPacketLoggerClient)init
{
  v6.receiver = self;
  v6.super_class = CBPacketLoggerClient;
  v2 = [(CBPacketLoggerClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CBPacketLoggerClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __48__CBPacketLoggerClient__activateWithCompletion___block_invoke;
  v13 = &unk_1E811D288;
  v15 = &v16;
  v5 = v4;
  v14 = v5;
  v6 = MEMORY[0x1C68DF720](&v10);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    v7 = *MEMORY[0x1E696A768];
    v8 = NSErrorF_safe();
    v9 = v17[5];
    v17[5] = v8;
  }

  else
  {
    self->_activateCalled = 1;
    [(CBPacketLoggerClient *)self _activateXPC:0 completion:v5, v10, v11, v12, v13];
  }

  v6[2](v6);

  _Block_object_dispose(&v16, 8);
}

uint64_t __48__CBPacketLoggerClient__activateWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBPacketLoggerClient <= 90)
  {
    v2 = result;
    if (gLogCategory_CBPacketLoggerClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        result = v2;
        goto LABEL_8;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = CUPrintNSError();
    LogPrintF_safe();

    result = v2;
    v1 = *(v2 + 40);
  }

LABEL_8:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(result + 32) + 16);

  return v5();
}

- (void)_activateXPC:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    if (gLogCategory_CBPacketLoggerClient <= 30 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [CBPacketLoggerClient _activateXPC:completion:];
    }
  }

  else if (gLogCategory_CBPacketLoggerClient <= 30 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [(CBPacketLoggerClient *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CBPacketLoggerClient__activateXPC_completion___block_invoke;
  v11[3] = &unk_1E81203F0;
  v13 = v4;
  v12 = v6;
  v10 = v6;
  xpc_connection_send_message_with_reply(v8, v7, dispatchQueue, v11);
}

void __48__CBPacketLoggerClient__activateXPC_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_CBPacketLoggerClient <= 30 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_14;
    }

LABEL_9:
    v3 = MEMORY[0x1C68DF720](*(a1 + 32));
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (gLogCategory_CBPacketLoggerClient > 30 || gLogCategory_CBPacketLoggerClient == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_9;
  }

LABEL_14:
  __48__CBPacketLoggerClient__activateXPC_completion___block_invoke_cold_1();
  v3 = MEMORY[0x1C68DF720](*(a1 + 32));
  if (v3)
  {
LABEL_10:
    v3[2](v3, 0);
  }

LABEL_11:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CBPacketLoggerClient_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__CBPacketLoggerClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 9))
  {
    return result;
  }

  v3 = result;
  *(v2 + 9) = 1;
  if (gLogCategory_CBPacketLoggerClient <= 30 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
  {
    __34__CBPacketLoggerClient_invalidate__block_invoke_cold_1();
    v4 = *(*(v3 + 32) + 16);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = *(*(v3 + 32) + 16);
  if (v4)
  {
LABEL_6:
    xpc_connection_cancel(v4);
  }

LABEL_7:
  v5 = *(v3 + 32);

  return [v5 _invalidated];
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  if (gLogCategory_CBPacketLoggerClient <= 90 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
  {
    [CBPacketLoggerClient _interrupted];
    v4 = MEMORY[0x1C68DF720](self->_interruptionHandler);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  if (v4)
  {
LABEL_6:
    v4[2](v4);
  }

LABEL_7:

  [(CBPacketLoggerClient *)self _activateXPC:1 completion:0];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    v10 = MEMORY[0x1C68DF720](self->_invalidationHandler, a2);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    rawPacketHandler = self->_rawPacketHandler;
    self->_rawPacketHandler = 0;

    v9 = v10;
    if (v10)
    {
      v8 = (*(v10 + 16))(v10);
      v9 = v10;
    }

    self->_invalidateDone = 1;
    if (gLogCategory_CBPacketLoggerClient <= 30 && (gLogCategory_CBPacketLoggerClient != -1 || (v8 = _LogCategory_Initialize(), v9 = v10, v8)))
    {
      v8 = [CBPacketLoggerClient _invalidated];
      v9 = v10;
    }

    MEMORY[0x1EEE66BB8](v8, v9);
  }
}

- (id)_ensureXPCStarted
{
  v3 = self->_xpcCnx;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = xpc_connection_create_mach_service("com.apple.bluetooth.BTPacketLogger.ios", self->_dispatchQueue, 0);
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__CBPacketLoggerClient__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E811D620;
    v9[4] = self;
    v7 = v5;
    v10 = v7;
    xpc_connection_set_event_handler(v7, v9);
    xpc_connection_activate(v7);
    v4 = v7;
  }

  return v4;
}

void *__41__CBPacketLoggerClient__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[2] == *(a1 + 40))
  {
    return [result _xpcReceivedEvent:a2];
  }

  return result;
}

- (void)_xpcReceivedEvent:(id)a3
{
  v15 = a3;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    [(CBPacketLoggerClient *)self _xpcReceivedPacket:v15];
    v12 = v15;
  }

  else if (v15 == MEMORY[0x1E69E9E18])
  {
    [(CBPacketLoggerClient *)self _interrupted];
    v12 = v15;
  }

  else
  {
    if (v15 != MEMORY[0x1E69E9E20])
    {
      if (gLogCategory_CBPacketLoggerClient <= 90 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
      {
        [CBPacketLoggerClient _xpcReceivedEvent:];
        v10 = MEMORY[0x1C68DF720](self->_errorHandler);
        if (!v10)
        {
LABEL_9:

          v12 = v15;

          goto LABEL_11;
        }
      }

      else
      {
        v10 = MEMORY[0x1C68DF720](self->_errorHandler);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v11 = CBErrorF(-6700, "XPC error", v4, v5, v6, v7, v8, v9, v14);
      (v10)[2](v10, v11);

      goto LABEL_9;
    }

    if (!self->_invalidateCalled && gLogCategory_CBPacketLoggerClient <= 90 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
    {
      [CBPacketLoggerClient _xpcReceivedEvent:];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBPacketLoggerClient *)self _invalidated];
    v12 = v15;
  }

LABEL_11:
}

- (void)_xpcReceivedPacket:(id)a3
{
  v7 = xpc_dictionary_get_value(a3, "packet");
  if (v7)
  {
    if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E70])
    {
      v4 = MEMORY[0x1C68DF720](self->_rawPacketHandler);
      v5 = v4;
      if (v4)
      {
        (*(v4 + 16))(v4, v7);
      }

      v6 = v7;
    }

    else
    {
      [CBPacketLoggerClient _xpcReceivedPacket:];
      v6 = v7;
    }
  }

  else
  {
    [CBPacketLoggerClient _xpcReceivedPacket:];
    v6 = 0;
  }
}

- (void)_xpcReceivedEvent:.cold.1()
{
  v0 = CUPrintXPC();
  LogPrintF_safe();
}

- (void)_xpcReceivedPacket:.cold.1()
{
  if (gLogCategory_CBPacketLoggerClient <= 90 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_6();
  }
}

- (void)_xpcReceivedPacket:.cold.2()
{
  if (gLogCategory_CBPacketLoggerClient <= 90 && (gLogCategory_CBPacketLoggerClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_6();
  }
}

@end