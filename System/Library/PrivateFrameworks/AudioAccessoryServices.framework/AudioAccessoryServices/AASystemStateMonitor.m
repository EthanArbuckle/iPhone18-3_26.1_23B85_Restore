@interface AASystemStateMonitor
- (AASystemStateMonitor)init;
- (AASystemStateMonitor)initWithCoder:(id)a3;
- (BOOL)direct;
- (char)fetchHealthKitDataWriteAllowedForDevice:(id)a3;
- (id)_deviceWithIdentifier:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activateDirect:(id)a3;
- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)a3;
- (void)_connectedDeviceLost:(id)a3;
- (void)_interrupted;
- (void)_invalidateDirect;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)aaDeviceRouteChanged:(BOOL)a3 withAADevice:(id)a4;
- (void)activateWithCompletion:(id)a3;
- (void)activeHRMDeviceChanged:(id)a3 withSREnabled:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)fetchPairedHRMDevices:(id)a3;
- (void)invalidate;
- (void)showFitEducationNotificationForDevice:(id)a3;
- (void)siriHijackEligibilityUpdated:(BOOL)a3;
@end

@implementation AASystemStateMonitor

- (AASystemStateMonitor)init
{
  v5.receiver = self;
  v5.super_class = AASystemStateMonitor;
  v2 = [(AASystemStateMonitor *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AASystemStateMonitor_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (BOOL)direct
{
  v2 = [(AASystemStateMonitor *)self internalServicesDaemon];
  v3 = v2 != 0;

  return v3;
}

- (id)_ensureXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_systemStateMonitorFetchPairedHRMDevices_ argumentIndex:0 ofReply:1];
  if (!self->_xpcCnx)
  {
    v7 = self->_testListenerEndpoint;
    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v7)
    {
      v9 = [v8 initWithListenerEndpoint:v7];
    }

    else
    {
      v9 = [v8 initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v9;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533BD50];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v11];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__AASystemStateMonitor__ensureXPCStarted__block_invoke;
    v14[3] = &unk_278CDD728;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__AASystemStateMonitor__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_278CDD728;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

- (AASystemStateMonitor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AASystemStateMonitor *)self init];
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

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__AASystemStateMonitor_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __47__AASystemStateMonitor_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      __47__AASystemStateMonitor_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x245CE9060](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate:0];
  }
}

void __34__AASystemStateMonitor__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AASystemStateMonitor <= 90)
    {
      if (gLogCategory_AASystemStateMonitor != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __34__AASystemStateMonitor__activate___block_invoke_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AASystemStateMonitor > 30 || gLogCategory_AASystemStateMonitor == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (gLogCategory_AASystemStateMonitor > 30 || gLogCategory_AASystemStateMonitor == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  __34__AASystemStateMonitor__activate___block_invoke_cold_2(a1);
LABEL_14:
  v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_17:
}

- (void)_activateDirect:(id)a3
{
  v5 = a3;
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    [AASystemStateMonitor _activateDirect:?];
  }

  v4 = [(AASystemStateMonitor *)self internalServicesDaemon];
  [v4 activateSystemStateMonitorDirect:self completion:v5];
}

- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4
{
  v6 = a3;
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    [AASystemStateMonitor _activateXPC:? reactivate:?];
  }

  v7 = [(AASystemStateMonitor *)self _ensureXPCStarted];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__AASystemStateMonitor__activateXPC_reactivate___block_invoke;
    v13[3] = &unk_278CDD6D8;
    v15 = a4;
    v9 = v6;
    v14 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__AASystemStateMonitor__activateXPC_reactivate___block_invoke_2;
    v11[3] = &unk_278CDD700;
    v12 = v9;
    [v10 systemStateMonitorActivate:self completion:v11];
  }
}

void __48__AASystemStateMonitor__activateXPC_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      __48__AASystemStateMonitor__activateXPC_reactivate___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __48__AASystemStateMonitor__activateXPC_reactivate___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __41__AASystemStateMonitor__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AASystemStateMonitor <= 50 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    [AASystemStateMonitor _interrupted];
  }

  v3 = BTErrorF();
  [(AASystemStateMonitor *)self _reportError:v3];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v6 = *(interruptionHandler + 2);

    v6();
  }
}

void __34__AASystemStateMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 25) & 1) == 0)
  {
    *(v2 + 25) = 1;
    if ((*(*(a1 + 32) + 26) & 1) == 0 && gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      __34__AASystemStateMonitor_invalidate__block_invoke_cold_1();
    }

    if ([*(a1 + 32) direct])
    {
      [*(a1 + 32) _invalidateDirect];
    }

    v4 = *(a1 + 32);
    if (v4[4])
    {
      [v4[4] invalidate];
      v4 = *(a1 + 32);
    }

    [v4 _connectedDeviceDiscoveryEnsureStopped];
    v8 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    if (v8)
    {
      v7 = BTErrorF();
      v8[2](v8, v7);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidateDirect
{
  v3 = [(AASystemStateMonitor *)self internalServicesDaemon];
  [v3 invalidateSystemStateMonitorDirect:self];
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AASystemStateMonitor <= 50 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      [AASystemStateMonitor _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v9 = MEMORY[0x245CE9060](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v9)
      {
        v4 = BTErrorF();
        v9[2](v9, v4);
      }

      v5 = MEMORY[0x245CE9060](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v5)
      {
        v5[2](v5);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AASystemStateMonitor <= 10 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor _invalidated];
      }
    }
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    [AASystemStateMonitor _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (char)fetchHealthKitDataWriteAllowedForDevice:(id)a3
{
  v4 = a3;
  v5 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self->_activateCalled)
  {
    v6 = [(AASystemStateMonitor *)self _ensureXPCStarted];
    if (v6)
    {
      if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(v13 + 24);
    }

    else
    {
      if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      xpcCnx = self->_xpcCnx;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke;
      v11[3] = &unk_278CDD750;
      v11[4] = 0;
      v8 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v11];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_2;
      v10[3] = &unk_278CDD830;
      v10[4] = &v12;
      [v8 systemStateMonitorFetchHealthKitDataWriteAllowedForDevice:v4 completionHandler:v10];

      v5 = *(v13 + 24);
    }
  }

  _Block_object_dispose(&v12, 8);

  return v5;
}

uint64_t __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_AASystemStateMonitor <= 90)
  {
    v6 = v3;
    if (gLogCategory_AASystemStateMonitor != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_cold_1(a1);
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_2(uint64_t result, char a2)
{
  v2 = result + 32;
  *(*(*(result + 32) + 8) + 24) = a2;
  if (gLogCategory_AASystemStateMonitor <= 30)
  {
    if (gLogCategory_AASystemStateMonitor != -1)
    {
      return __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_2_cold_1(v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_2_cold_1(v2);
    }
  }

  return result;
}

- (void)fetchPairedHRMDevices:(id)a3
{
  v4 = a3;
  if (self->_activateCalled)
  {
    v5 = [(AASystemStateMonitor *)self _ensureXPCStarted];
    if (v5)
    {
      if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor fetchPairedHRMDevices:];
      }

      v6 = *MEMORY[0x277CCA590];
      v7 = NSErrorF();
      v4[2](v4, 0, v7);
    }

    else
    {
      if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor fetchPairedHRMDevices:];
      }

      xpcCnx = self->_xpcCnx;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke;
      v14[3] = &unk_278CDD700;
      v10 = v4;
      v15 = v10;
      v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke_2;
      v12[3] = &unk_278CDD858;
      v13 = v10;
      [v11 systemStateMonitorFetchPairedHRMDevices:v12];

      v7 = 0;
    }
  }

  else
  {
    v8 = *MEMORY[0x277CCA590];
    v7 = NSErrorF();
    v4[2](v4, 0, v7);
  }
}

void __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __46__AASystemStateMonitor_fetchPairedHRMDevices___block_invoke_2_cold_1(v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  v3 = [(AASystemStateMonitor *)self connectedDiscovery];

  if (!v3)
  {
    if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      [AASystemStateMonitor _connectedDeviceDiscoveryEnsureStarted];
    }

    v4 = objc_alloc_init(AADeviceManager);
    v5 = [(AASystemStateMonitor *)self dispatchQueue];
    [(AADeviceManager *)v4 setDispatchQueue:v5];

    [(AADeviceManager *)v4 setInterruptionHandler:&__block_literal_global_0];
    [(AADeviceManager *)v4 setInvalidationHandler:&__block_literal_global_116];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_3;
    v11[3] = &unk_278CDD880;
    v11[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_4;
    v10[3] = &unk_278CDD880;
    v10[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v10];
    [(AASystemStateMonitor *)self setConnectedDiscovery:v4];
    v6 = [(AASystemStateMonitor *)self connectedDiscovery];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_5;
    v8[3] = &unk_278CDD8A8;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    [v6 activateWithCompletion:v8];
  }
}

void __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke()
{
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_cold_1();
  }
}

void __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_2()
{
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_2_cold_1();
  }
}

void __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_5_cold_1();
    }

    v3 = [*(a1 + 32) connectedDiscovery];
    [v3 invalidate];

    [*(a1 + 32) setConnectedDiscovery:0];
  }

  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    __62__AASystemStateMonitor__connectedDeviceDiscoveryEnsureStarted__block_invoke_5_cold_2(a1);
  }
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    [AASystemStateMonitor _connectedDeviceDiscoveryEnsureStopped];
  }

  v3 = [(AASystemStateMonitor *)self connectedDiscovery];

  if (v3)
  {
    v4 = [(AASystemStateMonitor *)self connectedDiscovery];
    [v4 invalidate];

    [(AASystemStateMonitor *)self setConnectedDiscovery:0];
  }
}

- (void)_connectedDeviceFound:(id)a3
{
  v12 = a3;
  v4 = [(AASystemStateMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v12 identifier];
  v6 = [(AASystemStateMonitor *)self devicesMap];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(AASystemStateMonitor *)self setDevicesMap:v7];
  }

  v8 = [(AASystemStateMonitor *)self devicesMap];
  v9 = [v8 objectForKeyedSubscript:v5];

  v10 = [(AASystemStateMonitor *)self devicesMap];
  [v10 setObject:v12 forKeyedSubscript:v5];

  if (!v9)
  {
    [(AASystemStateMonitor *)self aaDeviceConnectionChanged:1 withAADevice:v12];
    goto LABEL_7;
  }

  v11 = [v9 routed];
  if (v11 != [v12 routed])
  {
LABEL_7:
    -[AASystemStateMonitor aaDeviceRouteChanged:withAADevice:](self, "aaDeviceRouteChanged:withAADevice:", [v12 routed], v12);
  }
}

- (void)_connectedDeviceLost:(id)a3
{
  v9 = a3;
  v4 = [(AASystemStateMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v9 identifier];
  v6 = [(AASystemStateMonitor *)self devicesMap];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    [(AASystemStateMonitor *)self aaDeviceConnectionChanged:0 withAADevice:v9];
    if ([v7 routed])
    {
      [(AASystemStateMonitor *)self aaDeviceRouteChanged:0 withAADevice:v9];
    }

    v8 = [(AASystemStateMonitor *)self devicesMap];
    [v8 removeObjectForKey:v5];
  }
}

- (void)aaDeviceRouteChanged:(BOOL)a3 withAADevice:(id)a4
{
  v12 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_aaDeviceRouteChangedHandler)
  {
    if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      [AASystemStateMonitor aaDeviceRouteChanged:withAADevice:];
    }

    (*(self->_aaDeviceRouteChangedHandler + 2))();
  }

  if ([v12 heartRateMonitorCapability] && self->_hrmCapableDeviceRoutedStateChangedHandler)
  {
    if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
    {
      [AASystemStateMonitor aaDeviceRouteChanged:withAADevice:];
    }

    (*(self->_hrmCapableDeviceRoutedStateChangedHandler + 2))();
  }

  v5 = [v12 identifier];
  v6 = [(AudioAccessoryDevice *)self->_activeHRMDevice identifier];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_17;
  }

  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_19;
  }

  v10 = [v7 isEqual:v8];

  v11 = v12;
  if (v10)
  {
LABEL_17:
    [(AASystemStateMonitor *)self activeHRMDeviceChanged:v12 withSREnabled:self->_isSREnabled];
LABEL_19:
    v11 = v12;
  }
}

- (void)activeHRMDeviceChanged:(id)a3 withSREnabled:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_isSREnabled = v4;
  if (self->_activeHRMDeviceChangedHandler)
  {
    objc_storeStrong(&self->_activeHRMDevice, a3);
    v7 = v10;
    if (v10)
    {
      if (v4)
      {
        [v10 routed];
        v7 = v10;
      }

      if (gLogCategory_AASystemStateMonitor <= 30)
      {
        if (gLogCategory_AASystemStateMonitor != -1 || (v8 = _LogCategory_Initialize(), v7 = v10, v8))
        {
          [AASystemStateMonitor activeHRMDeviceChanged:v7 withSREnabled:?];
        }
      }

      v9 = *(self->_activeHRMDeviceChangedHandler + 2);
    }

    else
    {
      if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor activeHRMDeviceChanged:withSREnabled:];
      }

      v9 = *(self->_activeHRMDeviceChangedHandler + 2);
    }

    v9();
  }

  else
  {
    [AASystemStateMonitor activeHRMDeviceChanged:withSREnabled:];
  }
}

- (void)showFitEducationNotificationForDevice:(id)a3
{
  v6 = a3;
  if (self->_activateCalled)
  {
    v4 = [(AASystemStateMonitor *)self _ensureXPCStarted];
    if (v4)
    {
      if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor showFitEducationNotificationForDevice:];
      }
    }

    else
    {
      if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
      {
        [AASystemStateMonitor showFitEducationNotificationForDevice:];
      }

      v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxyWithErrorHandler:&__block_literal_global_133];
      [v5 systemStateMonitorShowFitEducationNotificationForIdentifier:v6 completionHandler:&__block_literal_global_136];
    }
  }

  else
  {
    [AASystemStateMonitor showFitEducationNotificationForDevice:];
  }
}

uint64_t __62__AASystemStateMonitor_showFitEducationNotificationForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AASystemStateMonitor <= 30)
  {
    v5 = v2;
    if (gLogCategory_AASystemStateMonitor != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __62__AASystemStateMonitor_showFitEducationNotificationForDevice___block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __62__AASystemStateMonitor_showFitEducationNotificationForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AASystemStateMonitor <= 30)
  {
    v5 = v2;
    if (gLogCategory_AASystemStateMonitor != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __62__AASystemStateMonitor_showFitEducationNotificationForDevice___block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)siriHijackEligibilityUpdated:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_isSystemEligibleForSiriHijack = a3;
  siriHijackEligibilityUpdatedHandler = self->_siriHijackEligibilityUpdatedHandler;
  if (siriHijackEligibilityUpdatedHandler)
  {
    v6 = *(siriHijackEligibilityUpdatedHandler + 2);

    v6();
  }

  else
  {
    [AASystemStateMonitor siriHijackEligibilityUpdated:?];
  }
}

- (id)_deviceWithIdentifier:(id)a3
{
  v5 = 0;
  if (a3)
  {
    devicesMap = self->_devicesMap;
    if (devicesMap)
    {
      v5 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:?];
      v3 = vars8;
    }
  }

  return v5;
}

uint64_t __64__AASystemStateMonitor_fetchHealthKitDataWriteAllowedForDevice___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(*(*a1 + 8) + 24);
  if (v1 <= 2)
  {
    v2 = off_278CDD8E8[v1];
  }

  return LogPrintF();
}

- (void)activeHRMDeviceChanged:(void *)a1 withSREnabled:.cold.1(void *a1)
{
  v1 = [a1 bluetoothAddress];
  LogPrintF();
}

- (void)activeHRMDeviceChanged:withSREnabled:.cold.3()
{
  if (gLogCategory_AASystemStateMonitor <= 30 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_0();
  }
}

- (void)showFitEducationNotificationForDevice:.cold.1()
{
  if (gLogCategory_AASystemStateMonitor <= 90 && (gLogCategory_AASystemStateMonitor != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (uint64_t)siriHijackEligibilityUpdated:(uint64_t)result .cold.1(uint64_t result)
{
  if (gLogCategory_AASystemStateMonitor <= 90)
  {
    v1 = result;
    if (gLogCategory_AASystemStateMonitor != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 44);
      return LogPrintF();
    }
  }

  return result;
}

@end