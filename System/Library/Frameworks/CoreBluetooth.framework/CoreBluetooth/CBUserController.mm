@interface CBUserController
- (BOOL)_ensureXPCStarted;
- (CBUserController)init;
- (void)_activate;
- (void)_activateXPCStart:(BOOL)start;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteControllerInfoForDevice:(id)device completion:(id)completion;
- (void)diagnosticShow:(id)show completion:(id)completion;
- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler;
- (void)getControllerInfoForDevice:(id)device completion:(id)completion;
- (void)getCurrentUserGivenNameWithCompletion:(id)completion;
- (void)getDistributedLoggingStatusWithCompletion:(id)completion;
- (void)invalidate;
- (void)readPrefKeys:(id)keys source:(unsigned int)source completion:(id)completion;
- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case;
- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case;
- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion;
- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion;
- (void)storeControllerInfo:(id)info completion:(id)completion;
- (void)userNotificationEvent:(id)event completion:(id)completion;
- (void)writePrefKey:(id)key value:(id)value source:(unsigned int)source completion:(id)completion;
@end

@implementation CBUserController

- (CBUserController)init
{
  v5.receiver = self;
  v5.super_class = CBUserController;
  v2 = [(CBUserController *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBUserController;
    v3 = v2;
  }

  return v2;
}

- (BOOL)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.bluetoothuser.xpc" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = CBUserControllerXPCInterface();
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__CBUserController__ensureXPCStarted__block_invoke;
    v14[3] = &unk_1E811D260;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CBUserController__ensureXPCStarted__block_invoke_2;
    v12[3] = &unk_1E811D260;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v12];
    v8 = CBUserControllerXPCInterface();
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_CBUserController <= 30 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v9 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v9)
    {
      v9[2](v9, 0);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return 1;
}

- (void)dealloc
{
  v3 = MEMORY[0x1C68DF720](self->_invalidationHandler, a2);
  if (self->_invalidateCalled)
  {
    goto LABEL_13;
  }

  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
  }

LABEL_6:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_xpcCnx;
  v7 = v6;
  if (v6)
  {
    [(NSXPCConnection *)v6 invalidate];
  }

  objc_sync_exit(selfCopy);
  v8 = self->_ucat;
  if (v8 && (v8->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  interruptionHandler = selfCopy->_interruptionHandler;
  selfCopy->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  if (v3)
  {
    v3[2](v3);
  }

LABEL_13:

  v13.receiver = self;
  v13.super_class = CBUserController;
  [(CBUserController *)&v13 dealloc];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CBUserController_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    v11 = NSErrorF();
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v9 = self->_ucat;
      }

      v10 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_9:
    v5 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v5)
    {
      (v5)[2](v5, v11);
    }

    else
    {
      v7 = MEMORY[0x1C68DF720](self->_errorHandler);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, v11);
      }
    }

    return;
  }

  [(CBUserController *)self _activateXPCStart:0];
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_7:
        selfCopy = self;
        LogPrintF_safe();
        self = selfCopy;

        goto LABEL_9;
      }

      selfCopy2 = self;
      ucat = self->_ucat;
      v7 = _LogCategory_Initialize();
      self = selfCopy2;
      if (v7)
      {
        v12 = selfCopy2->_ucat;
        goto LABEL_7;
      }
    }
  }

  else if (var0 <= 30)
  {
    if (var0 != -1)
    {
      goto LABEL_7;
    }

    selfCopy3 = self;
    v9 = self->_ucat;
    v10 = _LogCategory_Initialize();
    self = selfCopy3;
    if (v10)
    {
      v11 = selfCopy3->_ucat;
      goto LABEL_7;
    }
  }

LABEL_9:
  [(CBUserController *)self _ensureXPCStarted];
}

void __37__CBUserController__ensureXPCStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interrupted];
}

void __37__CBUserController__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_CBUserController > 50 || gLogCategory_CBUserController == -1 && !_LogCategory_Initialize())
  {
    v3 = MEMORY[0x1C68DF720](self->_interruptionHandler);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [CBUserController _interrupted];
  v3 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  if (v3)
  {
LABEL_5:
    v3[2](v3);
  }

LABEL_6:

  [(CBUserController *)self _activateXPCStart:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CBUserController_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CBUserController_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if (*(v5 + 24))
  {
    return result;
  }

  v9 = v1;
  v6 = result;
  *(v5 + 24) = 1;
  if ((*(*(result + 32) + 25) & 1) == 0 && gLogCategory_CBUserController <= 30 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    __30__CBUserController_invalidate__block_invoke_cold_1();
    v7 = *(v6 + 32);
    v8 = v7[5];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(v6 + 32);
  v8 = v7[5];
  if (v8)
  {
LABEL_7:
    [v8 invalidate];
    v7 = *(v6 + 32);
  }

LABEL_8:

  return [v7 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled && gLogCategory_CBUserController <= 50 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    [CBUserController _invalidated];
    v3 = MEMORY[0x1C68DF720](self->_invalidationHandler);
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = MEMORY[0x1C68DF720](self->_invalidationHandler, a2);
  if (v3)
  {
LABEL_7:
    v3[2](v3);
  }

LABEL_8:

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;

  self->_invalidateDone = 1;
  if (gLogCategory_CBUserController < 11 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    [CBUserController _invalidated];
  }
}

- (void)diagnosticShow:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CBUserController_diagnosticShow_completion___block_invoke;
  block[3] = &unk_1E811D2D8;
  v12 = showCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = showCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __46__CBUserController_diagnosticShow_completion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 48);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__CBUserController_diagnosticShow_completion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      if (v10)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __46__CBUserController_diagnosticShow_completion___block_invoke_3;
        v15[3] = &unk_1E811D2B0;
        v16 = *(a1 + 48);
        v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
        [v11 diagnosticShow:*(a1 + 40) completion:*(a1 + 48)];

        v12 = v16;
LABEL_5:

        v3[2](v3);
        goto LABEL_6;
      }

      v13 = CBErrorF(-6753, "NO XPC", v4, v5, v6, v7, v8, v9, v14);
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
    }

    v12 = v21[5];
    v21[5] = v13;
    goto LABEL_5;
  }

  if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_6:
  _Block_object_dispose(&v20, 8);
}

uint64_t __46__CBUserController_diagnosticShow_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CBUserController_appleAudioAccessoryLimitedLoggingWithCompletion___block_invoke;
  v7[3] = &unk_1E811CFA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __68__CBUserController_appleAudioAccessoryLimitedLoggingWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__CBUserController_appleAudioAccessoryLimitedLoggingWithCompletion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      if (v10)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __68__CBUserController_appleAudioAccessoryLimitedLoggingWithCompletion___block_invoke_3;
        v15[3] = &unk_1E811D2B0;
        v16 = *(a1 + 40);
        v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
        [v11 appleAudioAccessoryLimitedLoggingWithCompletion:*(a1 + 40)];

        v12 = v16;
LABEL_5:

        v3[2](v3);
        goto LABEL_6;
      }

      v13 = CBErrorF(-6753, "NO XPC", v4, v5, v6, v7, v8, v9, v14);
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
    }

    v12 = v21[5];
    v21[5] = v13;
    goto LABEL_5;
  }

  if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_6:
  _Block_object_dispose(&v20, 8);
}

uint64_t __68__CBUserController_appleAudioAccessoryLimitedLoggingWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CBUserController_setAppleAudioAccessoryLimitedLogging_completion___block_invoke;
  block[3] = &unk_1E811D300;
  block[4] = self;
  v10 = completionCopy;
  loggingCopy = logging;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __68__CBUserController_setAppleAudioAccessoryLimitedLogging_completion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__CBUserController_setAppleAudioAccessoryLimitedLogging_completion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __68__CBUserController_setAppleAudioAccessoryLimitedLogging_completion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 40);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 setAppleAudioAccessoryLimitedLogging:*(a1 + 48) completion:*(a1 + 40)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __68__CBUserController_setAppleAudioAccessoryLimitedLogging_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)getDistributedLoggingStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CBUserController_getDistributedLoggingStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E811CFA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __62__CBUserController_getDistributedLoggingStatusWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__CBUserController_getDistributedLoggingStatusWithCompletion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__CBUserController_getDistributedLoggingStatusWithCompletion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 40);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 getDistributedLoggingStatusWithCompletion:*(a1 + 40)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __62__CBUserController_getDistributedLoggingStatusWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CBUserController_setDistributedLoggingStatus_completion___block_invoke;
  block[3] = &unk_1E811D328;
  block[4] = self;
  v10 = completionCopy;
  statusCopy = status;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__CBUserController_setDistributedLoggingStatus_completion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__CBUserController_setDistributedLoggingStatus_completion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__CBUserController_setDistributedLoggingStatus_completion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 40);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 setDistributedLoggingStatus:*(a1 + 48) completion:*(a1 + 40)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __59__CBUserController_setDistributedLoggingStatus_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)getCurrentUserGivenNameWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CBUserController_getCurrentUserGivenNameWithCompletion___block_invoke;
  v7[3] = &unk_1E811CFA0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__CBUserController_getCurrentUserGivenNameWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__CBUserController_getCurrentUserGivenNameWithCompletion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __58__CBUserController_getCurrentUserGivenNameWithCompletion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 40);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 getCurrentUserGivenNameWithCompletion:*(a1 + 40)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __58__CBUserController_getCurrentUserGivenNameWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)getControllerInfoForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CBUserController_getControllerInfoForDevice_completion___block_invoke;
  block[3] = &unk_1E811D2D8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = deviceCopy;
  v9 = deviceCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__CBUserController_getControllerInfoForDevice_completion___block_invoke(id *a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  if (a1[6])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__CBUserController_getControllerInfoForDevice_completion___block_invoke_2;
    v18[3] = &unk_1E811D350;
    v21 = &v22;
    v19 = a1[4];
    v20 = a1[6];
    v2 = MEMORY[0x1C68DF720](v18);
    if ([a1[5] _ensureXPCStarted])
    {
      v9 = *(a1[5] + 5);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __58__CBUserController_getControllerInfoForDevice_completion___block_invoke_3;
      v16 = &unk_1E811D2B0;
      v17 = a1[6];
      v10 = [v9 remoteObjectProxyWithErrorHandler:&v13];
      [v10 getControllerInfoForDevice:a1[4] completion:{a1[6], v13, v14, v15, v16}];

      v11 = v17;
    }

    else
    {
      v12 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v13);
      v11 = v23[5];
      v23[5] = v12;
    }

    v2[2](v2);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t __58__CBUserController_getControllerInfoForDevice_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(*(v2 + 8) + 40);
    }

    v8 = CUPrintNSError();
    v9 = a1[4];
    LogPrintF_safe();

    v2 = a1[6];
  }

LABEL_7:
  v5 = *(*(v2 + 8) + 40);
  v6 = *(a1[5] + 16);

  return v6();
}

- (void)storeControllerInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CBUserController_storeControllerInfo_completion___block_invoke;
  block[3] = &unk_1E811D2D8;
  v12 = infoCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = infoCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __51__CBUserController_storeControllerInfo_completion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 48);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__CBUserController_storeControllerInfo_completion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__CBUserController_storeControllerInfo_completion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 48);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 storeControllerInfo:*(a1 + 40) completion:*(a1 + 48)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __51__CBUserController_storeControllerInfo_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CBUserController_getCloudPairedDevicesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E811CFA0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __63__CBUserController_getCloudPairedDevicesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__CBUserController_getCloudPairedDevicesWithCompletionHandler___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__CBUserController_getCloudPairedDevicesWithCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 40);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 getCloudPairedDevicesWithCompletionHandler:*(a1 + 40)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __63__CBUserController_getCloudPairedDevicesWithCompletionHandler___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)deleteControllerInfoForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CBUserController_deleteControllerInfoForDevice_completion___block_invoke;
  block[3] = &unk_1E811D2D8;
  v12 = deviceCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = deviceCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__CBUserController_deleteControllerInfoForDevice_completion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v1 = *(a1 + 48);
  if (v1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__CBUserController_deleteControllerInfoForDevice_completion___block_invoke_2;
    v17[3] = &unk_1E811D288;
    v19 = &v20;
    v18 = v1;
    v3 = MEMORY[0x1C68DF720](v17);
    if ([*(a1 + 32) _ensureXPCStarted])
    {
      v10 = *(*(a1 + 32) + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__CBUserController_deleteControllerInfoForDevice_completion___block_invoke_3;
      v15[3] = &unk_1E811D2B0;
      v16 = *(a1 + 48);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
      [v11 deleteControllerInfoForDevice:*(a1 + 40) completion:*(a1 + 48)];

      v12 = v16;
    }

    else
    {
      v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v4, v5, v6, v7, v8, v9, v14);
      v12 = v21[5];
      v21[5] = v13;
    }

    v3[2](v3);
  }

  else if (gLogCategory_CBUserController <= 90 && (gLogCategory_CBUserController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __61__CBUserController_deleteControllerInfoForDevice_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  if (gLogCategory_CBUserController <= 90)
  {
    v2 = result;
    if (gLogCategory_CBUserController == -1)
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

- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CBUserController_recordEventWithDeviceIdentifier_initiator_starting_useCase___block_invoke;
  block[3] = &unk_1E811D3C8;
  v14 = identifierCopy;
  selfCopy = self;
  initiatorCopy = initiator;
  startingCopy = starting;
  caseCopy = case;
  v12 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

void __79__CBUserController_recordEventWithDeviceIdentifier_initiator_starting_useCase___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CBUserController_recordEventWithDeviceIdentifier_initiator_starting_useCase___block_invoke_2;
  v14[3] = &unk_1E811D378;
  v16 = &v17;
  v15 = *(a1 + 32);
  v2 = MEMORY[0x1C68DF720](v14);
  if ([*(a1 + 40) _ensureXPCStarted])
  {
    v9 = *(*(a1 + 40) + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__CBUserController_recordEventWithDeviceIdentifier_initiator_starting_useCase___block_invoke_3;
    v13[3] = &unk_1E811D3A0;
    v13[4] = &v17;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v13];
    [v10 recordEventWithDeviceIdentifier:*(a1 + 32) initiator:*(a1 + 52) starting:*(a1 + 53) useCase:*(a1 + 48)];
  }

  else
  {
    v11 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v12);
    v10 = v18[5];
    v18[5] = v11;
  }

  v2[2](v2);
  _Block_object_dispose(&v17, 8);
}

void __79__CBUserController_recordEventWithDeviceIdentifier_initiator_starting_useCase___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v2 = a1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a1 = v2;
      v3 = *(*(*(v2 + 40) + 8) + 40);
    }

    v1 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CBUserController_recordEventWithStarting_useCase___block_invoke;
  v5[3] = &unk_1E811D418;
  caseCopy = case;
  v5[4] = self;
  startingCopy = starting;
  dispatch_async(dispatchQueue, v5);
}

void __52__CBUserController_recordEventWithStarting_useCase___block_invoke(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__CBUserController_recordEventWithStarting_useCase___block_invoke_2;
  v14[3] = &unk_1E811D3F0;
  v14[4] = &v16;
  v15 = *(a1 + 40);
  v2 = MEMORY[0x1C68DF720](v14);
  if ([*(a1 + 32) _ensureXPCStarted])
  {
    v9 = *(*(a1 + 32) + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__CBUserController_recordEventWithStarting_useCase___block_invoke_3;
    v13[3] = &unk_1E811D3A0;
    v13[4] = &v16;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v13];
    [v10 recordEventWithStarting:*(a1 + 44) useCase:*(a1 + 40)];
  }

  else
  {
    v11 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v12);
    v10 = v17[5];
    v17[5] = v11;
  }

  v2[2](v2);
  _Block_object_dispose(&v16, 8);
}

void __52__CBUserController_recordEventWithStarting_useCase___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40) && gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v2 = a1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a1 = v2;
      v3 = *(*(*(v2 + 32) + 8) + 40);
    }

    v1 = *(a1 + 40);
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (void)readPrefKeys:(id)keys source:(unsigned int)source completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__CBUserController_readPrefKeys_source_completion___block_invoke;
  v13[3] = &unk_1E811D440;
  v14 = keysCopy;
  selfCopy = self;
  sourceCopy = source;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = keysCopy;
  dispatch_async(dispatchQueue, v13);
}

void __51__CBUserController_readPrefKeys_source_completion___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__CBUserController_readPrefKeys_source_completion___block_invoke_2;
  v18[3] = &unk_1E811D378;
  v20 = &v21;
  v19 = *(a1 + 32);
  v2 = MEMORY[0x1C68DF720](v18);
  if ([*(a1 + 40) _ensureXPCStarted])
  {
    v9 = *(*(a1 + 40) + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__CBUserController_readPrefKeys_source_completion___block_invoke_3;
    v17[3] = &unk_1E811D3A0;
    v17[4] = &v21;
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v17];
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__CBUserController_readPrefKeys_source_completion___block_invoke_4;
    v15[3] = &unk_1E811CFC8;
    v16 = *(a1 + 48);
    [v10 readPrefKeys:v11 source:v12 completion:v15];

    v13 = v16;
  }

  else
  {
    v14 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v15[0]);
    v13 = v22[5];
    v22[5] = v14;
  }

  v2[2](v2);
  _Block_object_dispose(&v21, 8);
}

void __51__CBUserController_readPrefKeys_source_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v2 = a1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a1 = v2;
      v3 = *(*(*(v2 + 40) + 8) + 40);
    }

    v1 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (void)writePrefKey:(id)key value:(id)value source:(unsigned int)source completion:(id)completion
{
  keyCopy = key;
  valueCopy = value;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CBUserController_writePrefKey_value_source_completion___block_invoke;
  block[3] = &unk_1E811D468;
  v18 = keyCopy;
  selfCopy = self;
  sourceCopy = source;
  v20 = valueCopy;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = valueCopy;
  v16 = keyCopy;
  dispatch_async(dispatchQueue, block);
}

void __57__CBUserController_writePrefKey_value_source_completion___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__CBUserController_writePrefKey_value_source_completion___block_invoke_2;
  v19[3] = &unk_1E811D378;
  v21 = &v22;
  v20 = *(a1 + 32);
  v2 = MEMORY[0x1C68DF720](v19);
  if ([*(a1 + 40) _ensureXPCStarted])
  {
    v9 = *(*(a1 + 40) + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__CBUserController_writePrefKey_value_source_completion___block_invoke_3;
    v18[3] = &unk_1E811D3A0;
    v18[4] = &v22;
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__CBUserController_writePrefKey_value_source_completion___block_invoke_4;
    v16[3] = &unk_1E811D2B0;
    v13 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v10 writePrefKey:v11 value:v13 source:v12 completion:v16];

    v14 = v17;
  }

  else
  {
    v15 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v16[0]);
    v14 = v23[5];
    v23[5] = v15;
  }

  v2[2](v2);
  _Block_object_dispose(&v22, 8);
}

void __57__CBUserController_writePrefKey_value_source_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v2 = a1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a1 = v2;
      v3 = *(*(*(v2 + 40) + 8) + 40);
    }

    v1 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (void)userNotificationEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CBUserController_userNotificationEvent_completion___block_invoke;
  block[3] = &unk_1E811D490;
  v12 = eventCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(dispatchQueue, block);
}

void __53__CBUserController_userNotificationEvent_completion___block_invoke(id *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__CBUserController_userNotificationEvent_completion___block_invoke_2;
  v17[3] = &unk_1E811D378;
  v19 = &v20;
  v18 = a1[4];
  v2 = MEMORY[0x1C68DF720](v17);
  if ([a1[5] _ensureXPCStarted])
  {
    v9 = *(a1[5] + 5);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__CBUserController_userNotificationEvent_completion___block_invoke_3;
    v16[3] = &unk_1E811D3A0;
    v16[4] = &v20;
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v11 = a1[4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__CBUserController_userNotificationEvent_completion___block_invoke_4;
    v14[3] = &unk_1E811D2B0;
    v15 = a1[6];
    [v10 userNotificationEvent:v11 completion:v14];

    v12 = v15;
  }

  else
  {
    v13 = CBErrorF(-6753, "Unable to establish connection to Bluetooth User Daemon", v3, v4, v5, v6, v7, v8, v14[0]);
    v12 = v21[5];
    v21[5] = v13;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

void __53__CBUserController_userNotificationEvent_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_CBUserController <= 90)
  {
    if (gLogCategory_CBUserController == -1)
    {
      v2 = a1;
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a1 = v2;
      v3 = *(*(*(v2 + 40) + 8) + 40);
    }

    v1 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

void __46__CBUserController_readPrefKeys_source_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (gLogCategory_CBUserController > 90)
    {
      goto LABEL_6;
    }

    if (gLogCategory_CBUserController == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (*(a1 + 48))
        {
          **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
        }

        return;
      }

      v2 = *(*(*(a1 + 40) + 8) + 40);
    }

    v3 = CUPrintNSError();
    v4 = *(a1 + 32);
    LogPrintF_safe();

    goto LABEL_6;
  }
}

void __52__CBUserController_writePrefKey_value_source_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (gLogCategory_CBUserController > 90)
    {
      goto LABEL_6;
    }

    if (gLogCategory_CBUserController == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (*(a1 + 48))
        {
          **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
        }

        return;
      }

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    v2 = *(a1 + 32);
    v4 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_6;
  }
}

@end