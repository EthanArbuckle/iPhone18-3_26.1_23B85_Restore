@interface AADeviceManager
- (AADeviceManager)init;
- (AADeviceManager)initWithCoder:(id)a3;
- (BOOL)direct;
- (BOOL)isTemporaryPairingConnectionAllowed;
- (NSArray)discoveredDevices;
- (id)_ensureXPCStarted;
- (id)_syncXPCFetchAADeviceBatteryInfoForAddress:(id)a3;
- (id)_syncXPCFetchAADeviceBatteryInfoForIdentifier:(id)a3;
- (id)description;
- (id)fetchAADeviceBatteryInfoForAddress:(id)a3;
- (id)fetchAADeviceBatteryInfoForIdentifier:(id)a3;
- (id)fetchAudioAccessoryDeviceForBTAddress:(id)a3;
- (id)fetchPairedAudioAccessoryDevices;
- (void)_activateDirect:(id)a3;
- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4;
- (void)_interrupted;
- (void)_invalidateDirect;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)_reset;
- (void)_sendDeviceConfigDirect:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_sendDeviceConfigXPC:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)aaServicesRequireReset;
- (void)activateWithCompletion:(id)a3;
- (void)deviceHeadGestureDetected:(id)a3;
- (void)deviceManagerFoundBatteryInfo:(id)a3;
- (void)deviceManagerFoundDevice:(id)a3;
- (void)deviceManagerLostBatteryInfo:(id)a3;
- (void)deviceManagerLostDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)sendDeviceConfig:(id)a3 device:(id)a4 completion:(id)a5;
- (void)sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)setHeadGestureUpdateFlags:(unsigned int)a3;
@end

@implementation AADeviceManager

- (AADeviceManager)init
{
  v5.receiver = self;
  v5.super_class = AADeviceManager;
  v2 = [(AADeviceManager *)&v5 init];
  if (v2)
  {
    v2->_clientID = AAXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();
  v3 = 0;
  if ([(AADeviceManager *)self direct])
  {
    NSAppendPrintF_safe();
    v4 = v3;

    v3 = v4;
  }

  return v3;
}

- (BOOL)direct
{
  v2 = [(AADeviceManager *)self internalServicesDaemon];
  v3 = v2 != 0;

  return v3;
}

- (id)_ensureXPCStarted
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_xpcCnx)
  {
    v3 = v2->_testListenerEndpoint;
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v3];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    }

    xpcCnx = v2->_xpcCnx;
    v2->_xpcCnx = v4;

    [(NSXPCConnection *)v2->_xpcCnx _setQueue:v2->_dispatchQueue];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28533BD50];
    [(NSXPCConnection *)v2->_xpcCnx setExportedInterface:v6];

    [(NSXPCConnection *)v2->_xpcCnx setExportedObject:v2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__AADeviceManager__ensureXPCStarted__block_invoke;
    v16[3] = &unk_278CDD728;
    v16[4] = v2;
    [(NSXPCConnection *)v2->_xpcCnx setInterruptionHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__AADeviceManager__ensureXPCStarted__block_invoke_2;
    v15[3] = &unk_278CDD728;
    v15[4] = v2;
    [(NSXPCConnection *)v2->_xpcCnx setInvalidationHandler:v15];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C18];
    [(NSXPCConnection *)v2->_xpcCnx setRemoteObjectInterface:v7];

    v8 = [(NSXPCConnection *)v2->_xpcCnx remoteObjectInterface];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    [v8 setClasses:v13 forSelector:sel_deviceManagerFetchPairedAudioAccessoryDevices_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_xpcCnx resume];
  }

  objc_sync_exit(v2);

  return 0;
}

- (NSArray)discoveredDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    v12 = [(NSMutableDictionary *)v2->_deviceDictionary count];
    clientID = v2->_clientID;
    LogPrintF();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableDictionary *)v2->_deviceDictionary allValues:v12];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (gLogCategory_AADeviceManager <= 10)
        {
          v7 = *(*(&v14 + 1) + 8 * i);
          if (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  deviceDictionary = v2->_deviceDictionary;
  if (deviceDictionary)
  {
    v9 = [(NSMutableDictionary *)deviceDictionary allValues];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(v2);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (AADeviceManager)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AADeviceManager *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_headGestureUpdateFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  clientID = self->_clientID;
  v7 = v4;
  if (clientID)
  {
    [v4 encodeInt64:clientID forKey:@"cid"];
    v4 = v7;
  }

  headGestureUpdateFlags = self->_headGestureUpdateFlags;
  if (headGestureUpdateFlags)
  {
    [v7 encodeInt64:headGestureUpdateFlags forKey:@"cmcf"];
    v4 = v7;
  }
}

- (void)setHeadGestureUpdateFlags:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_activateCalled)
  {
    dispatchQueue = v4->_dispatchQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke;
    v6[3] = &unk_278CDD5E8;
    v6[4] = v4;
    v7 = a3;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    v4->_headGestureUpdateFlags = a3;
  }

  objc_sync_exit(v4);
}

void __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = *(a1 + 40);
  v2 = [*(a1 + 32) direct];
  v3 = *(a1 + 32);
  if (v2)
  {
    v6 = [v3 internalServicesDaemon];
    [v6 deviceManagerUpdateDirect:*(a1 + 32)];
  }

  else
  {
    v4 = v3[6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke_2;
    v8[3] = &unk_278CDD750;
    v8[4] = v3;
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    v7 = *(a1 + 32);
    [v5 deviceManagerUpdate:? completion:?];
  }
}

void __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AADeviceManager <= 90)
    {
      if (gLogCategory_AADeviceManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke_3_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
  }

  else
  {
    if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      __45__AADeviceManager_setHeadGestureUpdateFlags___block_invoke_3_cold_2(a1);
    }

    v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AADeviceManager_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __42__AADeviceManager_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      __42__AADeviceManager_activateWithCompletion___block_invoke_cold_1();
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

void __29__AADeviceManager__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AADeviceManager <= 90)
    {
      if (gLogCategory_AADeviceManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __29__AADeviceManager__activate___block_invoke_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AADeviceManager > 30 || gLogCategory_AADeviceManager == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (gLogCategory_AADeviceManager > 30 || gLogCategory_AADeviceManager == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  __29__AADeviceManager__activate___block_invoke_cold_2(a1);
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
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AADeviceManager _activateDirect:?];
  }

  v4 = [(AADeviceManager *)self internalServicesDaemon];
  [v4 deviceManagerActivateDirect:self completion:v5];
}

- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    clientID = v7->_clientID;
    LogPrintF();
  }

  v8 = [(AADeviceManager *)v7 _ensureXPCStarted];
  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    xpcCnx = v7->_xpcCnx;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__AADeviceManager__activateXPC_reactivate___block_invoke;
    v15[3] = &unk_278CDD6D8;
    v17 = a4;
    v10 = v6;
    v16 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__AADeviceManager__activateXPC_reactivate___block_invoke_2;
    v13[3] = &unk_278CDD700;
    v14 = v10;
    [v11 deviceManagerActivate:v7 completion:v13];
  }

  objc_sync_exit(v7);
}

void __43__AADeviceManager__activateXPC_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      __43__AADeviceManager__activateXPC_reactivate___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __43__AADeviceManager__activateXPC_reactivate___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __36__AADeviceManager__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AADeviceManager <= 50 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AADeviceManager _interrupted];
  }

  v3 = BTErrorF();
  [(AADeviceManager *)self _reportError:v3];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v6 = *(interruptionHandler + 2);

    v6();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__AADeviceManager_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__AADeviceManager_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    if ((*(*(a1 + 32) + 41) & 1) == 0 && gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      __29__AADeviceManager_invalidate__block_invoke_cold_1();
    }

    if ([*(a1 + 32) direct])
    {
      [*(a1 + 32) _invalidateDirect];
    }

    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = *(*(a1 + 32) + 48);
    if (v4)
    {
      [v4 invalidate];
    }

    objc_sync_exit(v3);

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
  v3 = [(AADeviceManager *)self internalServicesDaemon];
  [v3 deviceManagerInvalidateDirect:self];
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_AADeviceManager <= 50 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      [AADeviceManager _invalidated];
    }

    v3 = self;
    objc_sync_enter(v3);
    xpcCnx = v3->_xpcCnx;
    objc_sync_exit(v3);

    if (!xpcCnx)
    {
      v15 = MEMORY[0x245CE9060](v3->_activateCompletion);
      activateCompletion = v3->_activateCompletion;
      v3->_activateCompletion = 0;

      if (v15)
      {
        v6 = BTErrorF();
        v15[2](v15, v6);
      }

      v7 = MEMORY[0x245CE9060](v3->_invalidationHandler);
      invalidationHandler = v3->_invalidationHandler;
      v3->_invalidationHandler = 0;

      if (v7)
      {
        v7[2](v7);
      }

      [(NSMutableDictionary *)v3->_deviceDictionary removeAllObjects];
      deviceDictionary = v3->_deviceDictionary;
      v3->_deviceDictionary = 0;

      deviceFoundHandler = v3->_deviceFoundHandler;
      v3->_deviceFoundHandler = 0;

      deviceLostHandler = v3->_deviceLostHandler;
      v3->_deviceLostHandler = 0;

      interruptionHandler = v3->_interruptionHandler;
      v3->_interruptionHandler = 0;

      v13 = v3;
      objc_sync_enter(v13);
      v14 = v3->_xpcCnx;
      v3->_xpcCnx = 0;

      objc_sync_exit(v13);
      self->_invalidateDone = 1;
      if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
      {
        [AADeviceManager _invalidated];
      }
    }
  }
}

- (void)_reset
{
  if (!self->_resetOngoing)
  {
    self->_resetOngoing = 1;
    if (gLogCategory_AADeviceManager <= 50 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      [AADeviceManager _reset];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __25__AADeviceManager__reset__block_invoke;
    v6[3] = &unk_278CDD728;
    v6[4] = self;
    v3 = MEMORY[0x245CE9060](v6);
    v4 = self->_deviceDictionary;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __25__AADeviceManager__reset__block_invoke_2;
    v5[3] = &unk_278CDDBC8;
    v5[4] = self;
    [(NSMutableDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v5];
    [(AADeviceManager *)self _activate:1];
    if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3[2](v3);
  }
}

void __25__AADeviceManager__reset__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __25__AADeviceManager__reset__block_invoke_2_cold_1();
  }

  [*(a1 + 32) deviceManagerLostDevice:v5];
}

- (void)sendDeviceConfig:(id)a3 device:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [a4 identifier];
  if (v9)
  {
    [(AADeviceManager *)self sendDeviceConfig:v12 identifier:v9 completion:v8];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
    v8[2](v8, v11);
  }
}

- (void)sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__AADeviceManager_sendDeviceConfig_identifier_completion___block_invoke;
  v15[3] = &unk_278CDDBF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(dispatchQueue, v15);
}

void __58__AADeviceManager_sendDeviceConfig_identifier_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[8])
  {
    v3 = [v2 direct];
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    if (v3)
    {

      [v4 _sendDeviceConfigDirect:v5 identifier:v6 completion:v7];
    }

    else
    {

      [v4 _sendDeviceConfigXPC:v5 identifier:v6 completion:v7];
    }
  }

  else
  {
    v8 = *MEMORY[0x277CCA590];
    v9 = NSErrorF();
    (*(a1[7] + 16))();
  }
}

- (void)_sendDeviceConfigDirect:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AADeviceManager *)self internalServicesDaemon];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__AADeviceManager__sendDeviceConfigDirect_identifier_completion___block_invoke;
  v13[3] = &unk_278CDD700;
  v14 = v8;
  v12 = v8;
  [v11 deviceManagerSendDeviceConfigDirect:v10 identifier:v9 completion:v13];
}

uint64_t __65__AADeviceManager__sendDeviceConfigDirect_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_AADeviceManager <= 90)
    {
      if (gLogCategory_AADeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __65__AADeviceManager__sendDeviceConfigDirect_identifier_completion___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)_sendDeviceConfigXPC:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(AADeviceManager *)v11 _ensureXPCStarted];
  if (v12)
  {
    v10[2](v10, v12);
  }

  else
  {
    xpcCnx = v11->_xpcCnx;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke;
    v18[3] = &unk_278CDD700;
    v14 = v10;
    v19 = v14;
    v15 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke_2;
    v16[3] = &unk_278CDD700;
    v17 = v14;
    [v15 deviceManagerSendDeviceConfig:v8 identifier:v9 completion:v16];
  }

  objc_sync_exit(v11);
}

uint64_t __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (gLogCategory_AADeviceManager <= 90)
  {
    if (gLogCategory_AADeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke_cold_1();
      v3 = v7;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

uint64_t __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_AADeviceManager <= 90)
    {
      if (gLogCategory_AADeviceManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        __62__AADeviceManager__sendDeviceConfigXPC_identifier_completion___block_invoke_2_cold_1();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AADeviceManager _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (BOOL)isTemporaryPairingConnectionAllowed
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_10;
  }

  v3 = self;
  objc_sync_enter(v3);
  v4 = [(AADeviceManager *)v3 _ensureXPCStarted];
  if (v4)
  {
    if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    LOBYTE(v6) = *(v11 + 24);
  }

  else
  {
    xpcCnx = v3->_xpcCnx;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke;
    v9[3] = &unk_278CDD750;
    v9[4] = 0;
    v6 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke_2;
    v8[3] = &unk_278CDDC18;
    v8[4] = &v10;
    [v6 isTemporaryPairingConnectionAllowed:v8];
  }

  objc_sync_exit(v3);
  if (!v4)
  {
LABEL_10:
    LOBYTE(v6) = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v6 & 1;
}

uint64_t __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_AADeviceManager <= 90)
  {
    v6 = v3;
    if (gLogCategory_AADeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke_cold_1(a1);
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (gLogCategory_AADeviceManager <= 90)
    {
      v8 = v5;
      if (gLogCategory_AADeviceManager != -1 || (v5 = _LogCategory_Initialize(), v6 = v8, v5))
      {
        v5 = __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke_2_cold_1();
LABEL_13:
        v6 = v8;
      }
    }
  }

  else if (gLogCategory_AADeviceManager <= 30)
  {
    v8 = 0;
    if (gLogCategory_AADeviceManager != -1 || (v5 = _LogCategory_Initialize(), v6 = 0, v5))
    {
      v5 = __54__AADeviceManager_isTemporaryPairingConnectionAllowed__block_invoke_2_cold_2();
      goto LABEL_13;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)deviceManagerFoundBatteryInfo:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v10 identifier];
  if (v5)
  {
    batteryDictionary = v4->_batteryDictionary;
    if (!batteryDictionary)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = v4->_batteryDictionary;
      v4->_batteryDictionary = v7;

      batteryDictionary = v4->_batteryDictionary;
    }

    [(NSMutableDictionary *)batteryDictionary setObject:v10 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    deviceBatteryInfoUpdatedHandler = v4->_deviceBatteryInfoUpdatedHandler;
    if (deviceBatteryInfoUpdatedHandler)
    {
      deviceBatteryInfoUpdatedHandler[2](deviceBatteryInfoUpdatedHandler, v10);
    }

    else if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      [AADeviceManager deviceManagerFoundBatteryInfo:v4];
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)deviceManagerLostBatteryInfo:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v8 identifier];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_batteryDictionary setObject:0 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      clientID = v4->_clientID;
      LogPrintF();
    }

    deviceBatteryInfoLostHandler = v4->_deviceBatteryInfoLostHandler;
    if (deviceBatteryInfoLostHandler)
    {
      deviceBatteryInfoLostHandler[2](deviceBatteryInfoLostHandler, v8);
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (id)fetchAADeviceBatteryInfoForAddress:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v19 = v4;
    v5 = [v4 uppercaseString];
    v6 = self;
    objc_sync_enter(v6);
    [(NSMutableDictionary *)v6->_batteryDictionary allValues];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = *v21;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 bluetoothAddress];
          v13 = v5;
          v14 = v13;
          if (v12 == v13)
          {

LABEL_16:
            v8 = v11;
            v16 = 0;
            goto LABEL_17;
          }

          if ((v5 == 0) != (v12 != 0))
          {
            v15 = [v12 isEqual:v13];

            if (v15)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_17:

    objc_sync_exit(v6);
    if (v16)
    {
      v8 = [(AADeviceManager *)v6 _syncXPCFetchAADeviceBatteryInfoForAddress:v5];
    }

    v4 = v19;
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)fetchAADeviceBatteryInfoForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    batteryDictionary = v5->_batteryDictionary;
    if (batteryDictionary && ([(NSMutableDictionary *)batteryDictionary objectForKeyedSubscript:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_sync_exit(v5);
    }

    else
    {
      objc_sync_exit(v5);

      v7 = [(AADeviceManager *)v5 _syncXPCFetchAADeviceBatteryInfoForIdentifier:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_syncXPCFetchAADeviceBatteryInfoForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v6 = [(AADeviceManager *)v5 _ensureXPCStarted];
  if (v6)
  {
    if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = 0;
  }

  else
  {
    xpcCnx = v5->_xpcCnx;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForIdentifier___block_invoke;
    v19[3] = &unk_278CDD750;
    v8 = v4;
    v20 = v8;
    v9 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForIdentifier___block_invoke_2;
    v16[3] = &unk_278CDDC40;
    v18 = &v21;
    v10 = v8;
    v17 = v10;
    [v9 deviceManagerFetchAADeviceBatteryInfoForIdentifier:v10 deviceHandler:v16];

    batteryDictionary = v5->_batteryDictionary;
    if (!batteryDictionary)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = v5->_batteryDictionary;
      v5->_batteryDictionary = v12;

      batteryDictionary = v5->_batteryDictionary;
    }

    [(NSMutableDictionary *)batteryDictionary setObject:v22[5] forKeyedSubscript:v10];
    v14 = v22[5];
  }

  _Block_object_dispose(&v21, 8);
  objc_sync_exit(v5);

  return v14;
}

uint64_t __65__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_AADeviceManager <= 90)
  {
    v7 = v3;
    if (gLogCategory_AADeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 32);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __65__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __65__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForIdentifier___block_invoke_2_cold_1(a1, a1 + 40);
  }
}

- (id)_syncXPCFetchAADeviceBatteryInfoForAddress:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v6 = [(AADeviceManager *)v5 _ensureXPCStarted];
  if (v6)
  {
    if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = 0;
  }

  else
  {
    xpcCnx = v5->_xpcCnx;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForAddress___block_invoke;
    v19[3] = &unk_278CDD750;
    v8 = v4;
    v20 = v8;
    v9 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForAddress___block_invoke_2;
    v16[3] = &unk_278CDDC40;
    v18 = &v21;
    v17 = v8;
    [v9 deviceManagerFetchAADeviceBatteryInfoForAddress:v17 deviceHandler:v16];

    v10 = v22[5];
    if (v10)
    {
      batteryDictionary = v5->_batteryDictionary;
      if (!batteryDictionary)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = v5->_batteryDictionary;
        v5->_batteryDictionary = v12;

        v10 = v22[5];
        batteryDictionary = v5->_batteryDictionary;
      }

      v14 = [v10 identifier];
      [(NSMutableDictionary *)batteryDictionary setObject:v10 forKeyedSubscript:v14];

      v10 = v22[5];
    }
  }

  _Block_object_dispose(&v21, 8);
  objc_sync_exit(v5);

  return v10;
}

uint64_t __62__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_AADeviceManager <= 90)
  {
    v7 = v3;
    if (gLogCategory_AADeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 32);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __62__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __62__AADeviceManager__syncXPCFetchAADeviceBatteryInfoForAddress___block_invoke_2_cold_1(a1, a1 + 40);
  }
}

- (void)deviceManagerFoundDevice:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v9 identifier];
  if (v5)
  {
    deviceDictionary = v4->_deviceDictionary;
    if (!deviceDictionary)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = v4->_deviceDictionary;
      v4->_deviceDictionary = v7;

      deviceDictionary = v4->_deviceDictionary;
    }

    [(NSMutableDictionary *)deviceDictionary setObject:v9 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    if (v4->_deviceFoundHandler)
    {
      if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
      {
        [AADeviceManager deviceManagerFoundDevice:v4];
      }

      (*(v4->_deviceFoundHandler + 2))();
    }

    else if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      [AADeviceManager deviceManagerFoundDevice:v4];
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)deviceManagerLostDevice:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v8 identifier];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_deviceDictionary setObject:0 forKeyedSubscript:v5];

    objc_sync_exit(v4);
    if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      clientID = v4->_clientID;
      LogPrintF();
    }

    deviceLostHandler = v4->_deviceLostHandler;
    if (deviceLostHandler)
    {
      deviceLostHandler[2](deviceLostHandler, v8);
    }
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)aaServicesRequireReset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AADeviceManager aaServicesRequireReset];
  }

  [(AADeviceManager *)self _reset];
}

- (void)deviceHeadGestureDetected:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  headGestureUpdatedHandler = self->_headGestureUpdatedHandler;
  if (headGestureUpdatedHandler)
  {
    headGestureUpdatedHandler[2](headGestureUpdatedHandler, v5);
  }

  else if (gLogCategory_AADeviceManager <= 10 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    [AADeviceManager deviceHeadGestureDetected:?];
  }
}

- (id)fetchAudioAccessoryDeviceForBTAddress:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(AADeviceManager *)v5 _ensureXPCStarted];
    if (v6)
    {
      if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = v18[5];
    }

    else
    {
      xpcCnx = v5->_xpcCnx;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__AADeviceManager_fetchAudioAccessoryDeviceForBTAddress___block_invoke;
      v15[3] = &unk_278CDD750;
      v9 = v4;
      v16 = v9;
      v10 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v15];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__AADeviceManager_fetchAudioAccessoryDeviceForBTAddress___block_invoke_2;
      v12[3] = &unk_278CDDC68;
      v14 = &v17;
      v13 = v9;
      [v10 deviceManagerFetchAudioAccessoryDeviceForBTAddress:v13 deviceHandler:v12];

      v7 = v18[5];
    }

    objc_sync_exit(v5);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __57__AADeviceManager_fetchAudioAccessoryDeviceForBTAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_AADeviceManager <= 90)
  {
    v7 = v3;
    if (gLogCategory_AADeviceManager != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 32);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __57__AADeviceManager_fetchAudioAccessoryDeviceForBTAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __57__AADeviceManager_fetchAudioAccessoryDeviceForBTAddress___block_invoke_2_cold_1(a1, a1 + 40);
  }
}

- (id)fetchPairedAudioAccessoryDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v3 = [(AADeviceManager *)v2 _ensureXPCStarted];
  if (v3)
  {
    if (gLogCategory_AADeviceManager <= 90 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = 0;
  }

  else
  {
    v4 = [(NSXPCConnection *)v2->_xpcCnx synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__AADeviceManager_fetchPairedAudioAccessoryDevices__block_invoke_2;
    v7[3] = &unk_278CDDC90;
    v7[4] = &v8;
    [v4 deviceManagerFetchPairedAudioAccessoryDevices:v7];

    v5 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  objc_sync_exit(v2);

  return v5;
}

uint64_t __51__AADeviceManager_fetchPairedAudioAccessoryDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AADeviceManager <= 90)
  {
    v5 = v2;
    if (gLogCategory_AADeviceManager != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __51__AADeviceManager_fetchPairedAudioAccessoryDevices__block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __51__AADeviceManager_fetchPairedAudioAccessoryDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  objc_storeStrong((*(v5 + 8) + 40), a2);
  if (gLogCategory_AADeviceManager <= 30 && (gLogCategory_AADeviceManager != -1 || _LogCategory_Initialize()))
  {
    __51__AADeviceManager_fetchPairedAudioAccessoryDevices__block_invoke_2_cold_1(v4);
  }
}

@end