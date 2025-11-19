@interface AAUSBSupportedDeviceManager
- (AAUSBSupportedDeviceManager)init;
- (AAUSBSupportedDeviceManager)initWithCoder:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)proxCardUserActionOnHeadphone:(id)a3 withAction:(unsigned __int8)a4 completion:(id)a5;
@end

@implementation AAUSBSupportedDeviceManager

- (AAUSBSupportedDeviceManager)init
{
  v5.receiver = self;
  v5.super_class = AAUSBSupportedDeviceManager;
  v2 = [(AAUSBSupportedDeviceManager *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (AAUSBSupportedDeviceManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAUSBSupportedDeviceManager *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  if (clientID)
  {
    [a3 encodeInt64:clientID forKey:@"cid"];
  }
}

- (void)proxCardUserActionOnHeadphone:(id)a3 withAction:(unsigned __int8)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke;
  v13[3] = &unk_278CDE3F0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

void __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_AAUSBSupportedDeviceManager <= 30 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_AAUSBSupportedDeviceManager <= 90 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (!*(*(a1 + 32) + 24) && gLogCategory_AAUSBSupportedDeviceManager <= 90 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_cold_3();
    }

    v3 = *(*(a1 + 32) + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_2;
    v5[3] = &unk_278CDD700;
    v6 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 proxCardUserActionOnHeadphone:*(a1 + 32) btAddress:*(a1 + 40) withAction:*(a1 + 56) completion:*(a1 + 48)];
  }
}

void __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_AAUSBSupportedDeviceManager <= 90 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533BD50];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__AAUSBSupportedDeviceManager__ensureXPCStarted__block_invoke;
    v9[3] = &unk_278CDD728;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__AAUSBSupportedDeviceManager__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_278CDD728;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __48__AAUSBSupportedDeviceManager__ensureXPCStarted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _interrupted];
  v2 = *(a1 + 32);

  return [v2 _handleServerDied];
}

_BYTE *__48__AAUSBSupportedDeviceManager__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(a1 + 32) _invalidated];
  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {

    return [result _handleServerDied];
  }

  return result;
}

- (void)_interrupted
{
  if (gLogCategory_AAUSBSupportedDeviceManager <= 50 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AAUSBSupportedDeviceManager _interrupted];
  }

  v3 = BTErrorF();
  [(AAUSBSupportedDeviceManager *)self _reportError:v3];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AAUSBSupportedDeviceManager_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__AAUSBSupportedDeviceManager_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = result;
    *(v2 + 16) = 1;
    if ((*(*(result + 32) + 17) & 1) == 0 && gLogCategory_AAUSBSupportedDeviceManager <= 30 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
    {
      __41__AAUSBSupportedDeviceManager_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[3])
    {
      [v4[3] invalidate];
      v4 = *(v3 + 32);
    }

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AAUSBSupportedDeviceManager <= 50 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
    {
      [AAUSBSupportedDeviceManager _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v6 = MEMORY[0x245CE9060](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v6)
      {
        v4 = BTErrorF();
        v6[2](v6, v4);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AAUSBSupportedDeviceManager <= 10 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
      {
        [AAUSBSupportedDeviceManager _invalidated];
      }
    }
  }
}

void __48__AAUSBSupportedDeviceManager__handleServerDied__block_invoke()
{
  if (gLogCategory_AAUSBSupportedDeviceManager <= 50 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
  {
    __48__AAUSBSupportedDeviceManager__handleServerDied__block_invoke_cold_1();
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_AAUSBSupportedDeviceManager <= 90 && (gLogCategory_AAUSBSupportedDeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AAUSBSupportedDeviceManager _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

uint64_t __83__AAUSBSupportedDeviceManager_proxCardUserActionOnHeadphone_withAction_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

@end