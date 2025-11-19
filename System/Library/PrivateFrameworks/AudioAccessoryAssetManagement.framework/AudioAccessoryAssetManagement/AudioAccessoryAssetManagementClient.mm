@interface AudioAccessoryAssetManagementClient
- (AudioAccessoryAssetManagementClient)init;
- (AudioAccessoryAssetManagementClient)initWithCoder:(id)a3;
- (id)_ensureAADXPCStarted;
- (id)_ensureXPCStarted;
- (uint64_t)_takeXPCServiceAssertion;
- (void)_interrupted;
- (void)_invalidateXPCServiceAssertion;
- (void)_invalidated;
- (void)_takeXPCServiceAssertion;
- (void)downloadTranslationAssets:(id)a3 useCellular:(BOOL)a4 showDownloadCompleteNotification:(BOOL)a5 completion:(id)a6;
- (void)getTranslationAssets;
- (void)getTranslationAssets:(id)a3 error:(id)a4;
- (void)getTranslationAssetsDownloadSize:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)pidOfDownloadTranslationAssetsXPCService:(int)a3;
- (void)showDownloadLanguagesNotification:(id)a3;
@end

@implementation AudioAccessoryAssetManagementClient

- (AudioAccessoryAssetManagementClient)initWithCoder:(id)a3
{
  v3 = [(AudioAccessoryAssetManagementClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (AudioAccessoryAssetManagementClient)init
{
  v7.receiver = self;
  v7.super_class = AudioAccessoryAssetManagementClient;
  v2 = [(AudioAccessoryAssetManagementClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = [(AudioAccessoryAssetManagementClient *)v3 _ensureXPCStarted];
    if (v4)
    {
      [(AudioAccessoryAssetManagementClient *)v3 invalidate];
    }

    v3->_downloadTranslationAssetsPid = 0;
    v5 = v3;
  }

  return v3;
}

- (void)downloadTranslationAssets:(id)a3 useCellular:(BOOL)a4 showDownloadCompleteNotification:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke;
  v15[3] = &unk_278CDCF70;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a4;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(dispatchQueue, v15);
}

void __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorF();
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      v14 = *(a1 + 40);
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_cold_1(v2, a1);
    }

    v5 = [*(a1 + 40) _ensureXPCStarted];
    if (!v5)
    {
      [*(a1 + 40) _takeXPCServiceAssertion];
      v6 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v6 bundleIdentifier];

      v8 = *(*(a1 + 40) + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2;
      v17[3] = &unk_278CDCF20;
      v18 = *(a1 + 48);
      v9 = [v8 remoteObjectProxyWithErrorHandler:v17];
      v10 = *(a1 + 56);
      v11 = *(a1 + 57);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3;
      v15[3] = &unk_278CDCF48;
      v15[4] = v3;
      v12 = *(a1 + 40);
      v16 = *(a1 + 48);
      [v9 downloadTranslationAssets:v12 localeIdentifiers:v3 useCellular:v10 showDownloadCompleteNotification:v11 bundleIdentifier:v7 completion:v15];

      goto LABEL_13;
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5);
  }

LABEL_13:
}

uint64_t __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

void __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3_cold_1();
    }
  }

  else if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_3_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_takeXPCServiceAssertion
{
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 40 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)_invalidateXPCServiceAssertion
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    [(RBSAssertion *)processAssertion invalidate];
    v4 = self->_processAssertion;
    self->_processAssertion = 0;
  }
}

- (void)getTranslationAssetsDownloadSize:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke;
  block[3] = &unk_278CDCFB8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

uint64_t __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v2 = *MEMORY[0x277CCA590];
    v9 = NSErrorF();
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 90 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 32);
      LogPrintF();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v9);
    }
  }

  else
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_cold_1(a1);
    }

    v3 = [*(a1 + 32) _ensureXPCStarted];
    if (v3)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        (*(v4 + 16))(v4, v3);
      }
    }

    else
    {
      v5 = [*(*(a1 + 32) + 32) remoteObjectProxyWithErrorHandler:&__block_literal_global];
      [v5 getTranslationAssetsDownloadSize:*(a1 + 32) localeIdentifiers:*(a1 + 40) completion:*(a1 + 48)];
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __83__AudioAccessoryAssetManagementClient_getTranslationAssetsDownloadSize_completion___block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)getTranslationAssets
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke;
  block[3] = &unk_278CDCFE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v2 = *MEMORY[0x277CCA590];
    v3 = NSErrorF();
    v4 = v3;
    if (gLogCategory_AudioAccessoryAssetManagementClient > 90)
    {
      goto LABEL_12;
    }

    v8 = v3;
    if (gLogCategory_AudioAccessoryAssetManagementClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v8;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a1 + 32);
    v3 = LogPrintF();
LABEL_10:
    v4 = v8;
    goto LABEL_12;
  }

  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    v5 = [*(*(a1 + 32) + 32) remoteObjectProxyWithErrorHandler:&__block_literal_global_42];
    [v5 getTranslationAssets:*(a1 + 32)];

    goto LABEL_10;
  }

LABEL_12:

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __59__AudioAccessoryAssetManagementClient_getTranslationAssets__block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)showDownloadLanguagesNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke;
  v7[3] = &unk_278CDD008;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v2 = *MEMORY[0x277CCA590];
    v3 = NSErrorF();
    v4 = v3;
    if (gLogCategory_AudioAccessoryAssetManagementClient > 90)
    {
      goto LABEL_12;
    }

    v8 = v3;
    if (gLogCategory_AudioAccessoryAssetManagementClient == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v8;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a1 + 32);
    v3 = LogPrintF();
LABEL_10:
    v4 = v8;
    goto LABEL_12;
  }

  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _ensureAADXPCStarted];
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    v5 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:&__block_literal_global_47];
    [v5 assetManagerShowDownloadNotificationForBTAddress:*(a1 + 40) completionHandler:&__block_literal_global_50];

    goto LABEL_10;
  }

LABEL_12:

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __73__AudioAccessoryAssetManagementClient_showDownloadLanguagesNotification___block_invoke_3_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853307D0];
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
    [v3 setClasses:v7 forSelector:sel_getTranslationAssets_error_ argumentIndex:0 ofReply:0];
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.AudioAccessoryAssetManagementXPCService"];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v8;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke;
    v14[3] = &unk_278CDCFE0;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_278CDCFE0;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285330830];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    v11 = [(NSXPCConnection *)self->_xpcCnx remoteObjectInterface];
    [v11 setClasses:v7 forSelector:sel_getTranslationAssetsDownloadSize_localeIdentifiers_completion_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __56__AudioAccessoryAssetManagementClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (id)_ensureAADXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285330890];
  if (!self->_xpcAADCnx)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcAADCnx = self->_xpcAADCnx;
    self->_xpcAADCnx = v4;

    [(NSXPCConnection *)self->_xpcAADCnx _setQueue:self->_dispatchQueue];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853308F0];
    [(NSXPCConnection *)self->_xpcAADCnx setExportedInterface:v6];

    [(NSXPCConnection *)self->_xpcAADCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke;
    v9[3] = &unk_278CDCFE0;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcAADCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke_2;
    v8[3] = &unk_278CDCFE0;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcAADCnx setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_xpcAADCnx setRemoteObjectInterface:v3];
    [(NSXPCConnection *)self->_xpcAADCnx resume];
  }

  return 0;
}

uint64_t __59__AudioAccessoryAssetManagementClient__ensureAADXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 50 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    [AudioAccessoryAssetManagementClient _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AudioAccessoryAssetManagementClient_invalidate__block_invoke;
  block[3] = &unk_278CDCFE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __49__AudioAccessoryAssetManagementClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(*(result + 32) + 9) & 1) == 0 && gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      __49__AudioAccessoryAssetManagementClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[4])
    {
      [v4[4] invalidate];
      v4 = *(v3 + 32);
    }

    if (v4[5])
    {
      [v4[5] invalidate];
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
    if (!self->_invalidateCalled && gLogCategory_AudioAccessoryAssetManagementClient <= 50 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
    {
      [AudioAccessoryAssetManagementClient _invalidated];
    }

    if (!self->_xpcCnx && !self->_xpcAADCnx)
    {
      [(AudioAccessoryAssetManagementClient *)self _invalidateXPCServiceAssertion];
      v7 = MEMORY[0x245CE8A10](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v7)
      {
        v7[2](v7);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      xpcAADCnx = self->_xpcAADCnx;
      self->_xpcAADCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AudioAccessoryAssetManagementClient <= 10 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
      {
        [AudioAccessoryAssetManagementClient _invalidated];
      }
    }
  }
}

- (void)getTranslationAssets:(id)a3 error:(id)a4
{
  v10 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = self;
  objc_sync_enter(v8);
  objc_storeStrong(&v8->_translationAssets, a3);
  objc_sync_exit(v8);

  [v10 enumerateObjectsUsingBlock:&__block_literal_global_156];
  translationAssetsInfoHandler = v8->_translationAssetsInfoHandler;
  if (translationAssetsInfoHandler)
  {
    translationAssetsInfoHandler[2](translationAssetsInfoHandler, v8->_translationAssets, v7);
  }
}

uint64_t __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30)
  {
    v5 = v2;
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)pidOfDownloadTranslationAssetsXPCService:(int)a3
{
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 30 && (gLogCategory_AudioAccessoryAssetManagementClient != -1 || _LogCategory_Initialize()))
  {
    [AudioAccessoryAssetManagementClient pidOfDownloadTranslationAssetsXPCService:];
  }

  self->_downloadTranslationAssetsPid = a3;
}

uint64_t __121__AudioAccessoryAssetManagementClient_downloadTranslationAssets_useCellular_showDownloadCompleteNotification_completion___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  *(a2 + 56);
  *(a2 + 57);
  v3 = *a1;
  return LogPrintF();
}

- (uint64_t)_takeXPCServiceAssertion
{
  v3 = result;
  if (gLogCategory_AudioAccessoryAssetManagementClient <= 90)
  {
    if (gLogCategory_AudioAccessoryAssetManagementClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

void __66__AudioAccessoryAssetManagementClient_getTranslationAssets_error___block_invoke_cold_1(void *a1)
{
  v2 = [a1 assetStatus];
  if (v2 <= 3)
  {
    v3 = off_278CDD048[v2];
  }

  v5 = [a1 displayName];
  [a1 isSuggested];
  v4 = [a1 locale];
  LogPrintF();
}

@end