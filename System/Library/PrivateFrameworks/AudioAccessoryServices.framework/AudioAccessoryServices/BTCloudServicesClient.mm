@interface BTCloudServicesClient
- (BTCloudServicesClient)init;
- (id)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)accountInfoWithCompletion:(id)a3;
- (void)cloudPairingIdentifierForPeripheral:(id)a3 completion:(id)a4;
- (void)createDeviceRecord:(id)a3 completion:(id)a4;
- (void)createDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)createMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)createSoundProfileRecord:(id)a3 completion:(id)a4;
- (void)deleteDeviceRecord:(id)a3 completion:(id)a4;
- (void)deleteDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)deleteMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)deleteSoundProfileRecordWithCompletion:(id)a3;
- (void)deviceRecord:(id)a3 completion:(id)a4;
- (void)deviceRecordsWithCompletion:(id)a3;
- (void)deviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)deviceSupportInformationRecordsWithCompletion:(id)a3;
- (void)fetchSoundProfileRecordWithCompletion:(id)a3;
- (void)forceCloudPairingForIdentifiers:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)magicSettingsRecord:(id)a3 completion:(id)a4;
- (void)magicSettingsRecordsWithCompletion:(id)a3;
- (void)modifyDeviceRecord:(id)a3 completion:(id)a4;
- (void)modifyDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)modifyMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)modifySoundProfileRecord:(id)a3 completion:(id)a4;
@end

@implementation BTCloudServicesClient

- (BTCloudServicesClient)init
{
  v8.receiver = self;
  v8.super_class = BTCloudServicesClient;
  v2 = [(BTCloudServicesClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTCloudServicesClient", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothCloudServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C78];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__BTCloudServicesClient__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278CDD728;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__BTCloudServicesClient__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278CDD728;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345CD8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];
    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __42__BTCloudServicesClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_BTRootCloudServicesClient <= 50 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [BTCloudServicesClient _interrupted];
  }

  v3 = MEMORY[0x245CE9060](self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BTCloudServicesClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__BTCloudServicesClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(*(result + 32) + 9) & 1) == 0 && gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __35__BTCloudServicesClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[2])
    {
      [v4[2] invalidate];
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
    if (!self->_invalidateCalled && gLogCategory_BTRootCloudServicesClient <= 50 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [BTCloudServicesClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = MEMORY[0x245CE9060](self->_invalidationHandler, a2);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_BTRootCloudServicesClient <= 10 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        [BTCloudServicesClient _invalidated];
      }
    }
  }
}

- (void)createDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_102;
  v12[3] = &unk_278CDDE20;
  v15 = &v16;
  v13 = a1[4];
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 createDeviceRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_102(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)modifyDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v15 = &v16;
  v13 = a1[4];
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 modifyDeviceRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deleteDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (a1[4])
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 deleteDeviceRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __49__BTCloudServicesClient_deviceRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (a1[4])
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 fetchDeviceRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v10);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    v7 = BTErrorF();
    v6 = v14[5];
    v14[5] = v7;
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_3;
    v8[3] = &unk_278CDD700;
    v9 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    [v5 fetchDeviceRecordsWithCompletion:*(a1 + 40)];

    v6 = v9;
  }

  v2[2](v2);
  _Block_object_dispose(&v13, 8);
}

uint64_t __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)createDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v15 = &v16;
  v13 = a1[4];
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 createDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)modifyDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v15 = &v16;
  v13 = a1[4];
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 modifyDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deleteDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 deleteDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 fetchBTCloudDeviceSupportInformation:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deviceSupportInformationRecordsWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v10);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    v7 = BTErrorF();
    v6 = v14[5];
    v14[5] = v7;
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_3;
    v8[3] = &unk_278CDD700;
    v9 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    [v5 fetchAllBTCloudDeviceSupportInformationWithCompletion:*(a1 + 40)];

    v6 = v9;
  }

  v2[2](v2);
  _Block_object_dispose(&v13, 8);
}

uint64_t __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)createMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 createMagicSettingsRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)modifyMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 modifyMagicSettingsRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)deleteMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 deleteMagicSettingsRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)magicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_2;
  v12[3] = &unk_278CDDE20;
  v14 = &v15;
  v12[4] = v2;
  v13 = a1[6];
  v3 = MEMORY[0x245CE9060](v12);
  if (v2)
  {
    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 2);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 fetchMagicSettingsRecord:a1[4] completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v16[5];
    v16[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v15, 8);
}

uint64_t __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)magicSettingsRecordsWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke_2;
    v5[3] = &unk_278CDD700;
    v6 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 fetchAllMagicSettingsRecordsWithCompletion:*(a1 + 40)];
  }
}

- (void)accountInfoWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v10);
  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    v7 = BTErrorF();
    v6 = v14[5];
    v14[5] = v7;
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_3;
    v8[3] = &unk_278CDD700;
    v9 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    [v5 fetchCloudAccountInfoUpdatedWithCompletion:*(a1 + 40)];

    v6 = v9;
  }

  v2[2](v2);
  _Block_object_dispose(&v13, 8);
}

uint64_t __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)cloudPairingIdentifierForPeripheral:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_2;
  v13[3] = &unk_278CDDE20;
  v15 = &v16;
  v13[4] = v2;
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v13);
  if (v2)
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v10 = v2;
      LogPrintF();
    }

    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      v5 = *(a1[5] + 2);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_3;
      v11[3] = &unk_278CDD700;
      v12 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
      [v6 fetchCloudPairingIdentifierForPeripheral:a1[4] completion:a1[6]];

      v7 = v12;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)forceCloudPairingForIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke(id *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v2 = a1[4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_2;
  v13[3] = &unk_278CDDE20;
  v15 = &v16;
  v13[4] = v2;
  v14 = a1[6];
  v3 = MEMORY[0x245CE9060](v13);
  if (v2)
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v10 = v2;
      LogPrintF();
    }

    v4 = [a1[5] _ensureXPCStarted];
    if (v4)
    {
      v9 = BTErrorF();
      v7 = v17[5];
      v17[5] = v9;
    }

    else
    {
      v5 = *(a1[5] + 2);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_3;
      v11[3] = &unk_278CDD700;
      v12 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v11];
      [v6 forceCloudPairingForIdentifiers:v2 completion:a1[6]];

      v7 = v12;
    }
  }

  else
  {
    v8 = BTErrorF();
    v4 = v17[5];
    v17[5] = v8;
  }

  v3[2](v3);
  _Block_object_dispose(&v16, 8);
}

uint64_t __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

- (void)createSoundProfileRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke(id *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v2 = a1[4];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_2;
  v16[3] = &unk_278CDDE20;
  v19 = &v20;
  v17 = a1[4];
  v18 = a1[6];
  v3 = MEMORY[0x245CE9060](v16);
  if (v2 && ([v2 soundProfileData], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v11 = v2;
      LogPrintF();
    }

    v5 = [a1[5] _ensureXPCStarted];
    if (v5)
    {
      v10 = BTErrorF();
      v6 = v21[5];
      v21[5] = v10;
    }

    else
    {
      v6 = *(a1[5] + 2);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_3;
      v14[3] = &unk_278CDD700;
      v15 = a1[6];
      v7 = [v6 remoteObjectProxyWithErrorHandler:v14];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_4;
      v12[3] = &unk_278CDDE98;
      v8 = a1[6];
      v12[5] = v6;
      v13 = v8;
      v12[4] = v2;
      [v7 startSoundProfileRecordFileHandleSessionWithCompletion:v12];
    }
  }

  else
  {
    v9 = BTErrorF();
    v5 = v21[5];
    v21[5] = v9;
  }

  v3[2](v3);
  _Block_object_dispose(&v20, 8);
}

uint64_t __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

void __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_5;
  v16[3] = &unk_278CDDE70;
  v18 = v19;
  v17 = *(a1 + 48);
  v7 = MEMORY[0x245CE9060](v16);
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = v5;
    if (v8)
    {
      if (gLogCategory_BTRootCloudServicesClient <= 40 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = [*(a1 + 32) soundProfileData];
      [v8 writeData:v9];

      if (gLogCategory_BTRootCloudServicesClient <= 40 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_6;
      v14[3] = &unk_278CDD700;
      v10 = *(a1 + 40);
      v15 = *(a1 + 48);
      v11 = [v10 remoteObjectProxyWithErrorHandler:v14];
      [v11 finishSoundProfileRecordSessionHandle:v8 completion:*(a1 + 48)];

      v12 = v15;
    }

    else
    {
      v13 = *(a1 + 48);
      v12 = BTErrorF();
      (*(v13 + 16))(v13, v12);
    }
  }

  v7[2](v7);

  _Block_object_dispose(v19, 8);
}

uint64_t __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_5(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)fetchSoundProfileRecordWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v10);
  if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    v7 = BTErrorF();
    v6 = v14[5];
    v14[5] = v7;
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_3;
    v8[3] = &unk_278CDD700;
    v9 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    [v5 fetchSoundProfileRecordWithCompletion:*(a1 + 40)];

    v6 = v9;
  }

  v2[2](v2);
  _Block_object_dispose(&v13, 8);
}

uint64_t __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)modifySoundProfileRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke(id *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v2 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = a1[6];
  v3 = MEMORY[0x245CE9060](v10);
  if (v2 && ([v2 soundProfileData], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v9 = v2;
      LogPrintF();
    }

    v6 = [a1[5] _ensureXPCStarted];
    if (v6)
    {
      v7 = BTErrorF();
      v8 = v14[5];
      v14[5] = v7;
    }

    else
    {
      [a1[5] createSoundProfileRecord:a1[4] completion:a1[6]];
    }
  }

  else
  {
    v5 = BTErrorF();
    v6 = v14[5];
    v14[5] = v5;
  }

  v3[2](v3);
  _Block_object_dispose(&v13, 8);
}

uint64_t __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

- (void)deleteSoundProfileRecordWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_2;
  v10[3] = &unk_278CDDE70;
  v12 = &v13;
  v11 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v10);
  if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [*(a1 + 32) _ensureXPCStarted];
  if (v3)
  {
    v7 = BTErrorF();
    v6 = v14[5];
    v14[5] = v7;
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_3;
    v8[3] = &unk_278CDD700;
    v9 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    [v5 deleteSoundProfileRecordWithCompletion:*(a1 + 40)];

    v6 = v9;
  }

  v2[2](v2);
  _Block_object_dispose(&v13, 8);
}

uint64_t __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_BTRootCloudServicesClient <= 90)
  {
    if (gLogCategory_BTRootCloudServicesClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

@end