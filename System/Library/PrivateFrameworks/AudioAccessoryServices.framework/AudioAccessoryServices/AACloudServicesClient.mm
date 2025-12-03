@interface AACloudServicesClient
- (AACloudServicesClient)init;
- (AACloudServicesClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion;
- (void)hmDeviceCloudRecordInfosUpdated:(id)updated;
- (void)invalidate;
- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion;
- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion;
- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion;
@end

@implementation AACloudServicesClient

- (void)encodeWithCoder:(id)coder
{
  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    [coder encodeInt64:internalFlags forKey:@"inf"];
  }
}

- (AACloudServicesClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACloudServicesClient *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_internalFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (AACloudServicesClient)init
{
  v8.receiver = self;
  v8.super_class = AACloudServicesClient;
  v2 = [(AACloudServicesClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AACloudServicesClient", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AACloudServicesClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__AACloudServicesClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __48__AACloudServicesClient_activateWithCompletion___block_invoke_cold_1();
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

    [v7 _activate];
  }
}

- (void)_activate
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__AACloudServicesClient__activate__block_invoke;
  v13[3] = &unk_278CDE3A0;
  v13[4] = self;
  v13[5] = &v14;
  v3 = MEMORY[0x245CE9060](v13, a2);
  if (self->_invalidateCalled)
  {
    v7 = BTErrorF();
    _ensureXPCStarted = v15[5];
    v15[5] = v7;
  }

  else
  {
    if (self->_hmDeviceCloudRecordUpdateHandler)
    {
      self->_internalFlags |= 1u;
    }

    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      clientID = self->_clientID;
      LogPrintF();
    }

    _ensureXPCStarted = [(AACloudServicesClient *)self _ensureXPCStarted];
    if (_ensureXPCStarted)
    {
      v8 = BTErrorF();
      v9 = v15[5];
      v15[5] = v8;
    }

    else
    {
      xpcCnx = self->_xpcCnx;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __34__AACloudServicesClient__activate__block_invoke_2;
      v12[3] = &unk_278CDD750;
      v12[4] = self;
      v6 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __34__AACloudServicesClient__activate__block_invoke_3;
      v11[3] = &unk_278CDD750;
      v11[4] = self;
      [v6 cloudServicesClientActivate:self completion:v11];
    }
  }

  v3[2](v3);
  _Block_object_dispose(&v14, 8);
}

uint64_t __34__AACloudServicesClient__activate__block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return [*(result + 32) _reportError:?];
  }

  return result;
}

void __34__AACloudServicesClient__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __34__AACloudServicesClient__activate__block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __34__AACloudServicesClient__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AACloudServicesClient <= 90)
    {
      if (gLogCategory_AACloudServicesClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __34__AACloudServicesClient__activate__block_invoke_3_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
  }

  else
  {
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __34__AACloudServicesClient__activate__block_invoke_3_cold_2(a1);
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

- (id)_ensureXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C78];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_hmDeviceCloudRecordInfosUpdated_ argumentIndex:0 ofReply:0];
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
      v9 = [v8 initWithMachServiceName:@"com.apple.BluetoothCloudServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v9;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__AACloudServicesClient__ensureXPCStarted__block_invoke;
    v14[3] = &unk_278CDD728;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__AACloudServicesClient__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_278CDD728;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345CD8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v11];
    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [AACloudServicesClient _ensureXPCStarted];
    }
  }

  return 0;
}

uint64_t __42__AACloudServicesClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_AACloudServicesClient <= 50 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient _interrupted];
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
  block[2] = __35__AACloudServicesClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__AACloudServicesClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if ((*(*(result + 32) + 25) & 1) == 0 && gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __35__AACloudServicesClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[4])
    {
      [v4[4] invalidate];
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
    if (!self->_invalidateCalled && gLogCategory_AACloudServicesClient <= 50 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [AACloudServicesClient _invalidated];
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
      if (gLogCategory_AACloudServicesClient <= 10 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        [AACloudServicesClient _invalidated];
      }
    }
  }
}

- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2;
  v12[3] = &unk_278CDDE70;
  v14 = &v15;
  v13 = a1[6];
  v2 = MEMORY[0x245CE9060](v12);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v3 = [a1[5] _ensureXPCStarted];
    if (v3)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      v4 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
      v6 = [a1[4] uppercaseString];
      [v5 fetchAAProxCardsInfoForDeviceWithAddress:v6 completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v3 = v16[5];
    v16[5] = v8;
  }

  v2[2](v2);
  _Block_object_dispose(&v15, 8);
}

uint64_t __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = infoCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_2;
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
      if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 modifyAAProxCardsInfo:v2 completion:a1[6]];

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

uint64_t __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2;
  v12[3] = &unk_278CDDE70;
  v14 = &v15;
  v13 = a1[6];
  v2 = MEMORY[0x245CE9060](v12);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v3 = [a1[5] _ensureXPCStarted];
    if (v3)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      v4 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
      v6 = [a1[4] uppercaseString];
      [v5 removeAAProxCardsInfoForDeviceWithAddress:v6 completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v3 = v16[5];
    v16[5] = v8;
  }

  v2[2](v2);
  _Block_object_dispose(&v15, 8);
}

uint64_t __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_2;
  v12[3] = &unk_278CDDE70;
  v14 = &v15;
  v13 = a1[6];
  v2 = MEMORY[0x245CE9060](v12);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v3 = [a1[5] _ensureXPCStarted];
    if (v3)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      v4 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
      v6 = [a1[4] uppercaseString];
      [v5 fetchHMDeviceCloudRecordInfoWithAddress:v6 completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v3 = v16[5];
    v16[5] = v8;
  }

  v2[2](v2);
  _Block_object_dispose(&v15, 8);
}

uint64_t __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = infoCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v2 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_2;
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
      if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
      [v6 modifyHMDeviceCloudRecordInfo:v2 completion:a1[6]];

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

uint64_t __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_2;
  v12[3] = &unk_278CDDE70;
  v14 = &v15;
  v13 = a1[6];
  v2 = MEMORY[0x245CE9060](v12);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v3 = [a1[5] _ensureXPCStarted];
    if (v3)
    {
      v9 = BTErrorF();
      v7 = v16[5];
      v16[5] = v9;
    }

    else
    {
      v4 = *(a1[5] + 4);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_3;
      v10[3] = &unk_278CDD700;
      v11 = a1[6];
      v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
      v6 = [a1[4] uppercaseString];
      [v5 removeHMDeviceCloudRecordInfoForDeviceWithAddress:v6 completion:a1[6]];

      v7 = v11;
    }
  }

  else
  {
    v8 = BTErrorF();
    v3 = v16[5];
    v16[5] = v8;
  }

  v2[2](v2);
  _Block_object_dispose(&v15, 8);
}

uint64_t __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient == -1)
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

- (void)hmDeviceCloudRecordInfosUpdated:(id)updated
{
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_hmDeviceCloudRecordUpdateHandler)
  {
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [(AACloudServicesClient *)self hmDeviceCloudRecordInfosUpdated:updatedCopy];
    }

    (*(self->_hmDeviceCloudRecordUpdateHandler + 2))();
  }

  else if (gLogCategory_AACloudServicesClient <= 10 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient hmDeviceCloudRecordInfosUpdated:?];
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

- (uint64_t)hmDeviceCloudRecordInfosUpdated:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  [a2 count];
  return LogPrintF();
}

@end