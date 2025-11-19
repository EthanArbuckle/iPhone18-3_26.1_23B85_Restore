@interface APCarSessionRequestHandler
- (APCarSessionRequestHandler)init;
- (void)_startAdvertisingCarPlayControlForUSB;
- (void)_startAdvertisingCarPlayControlForWiFiUUID:(id)a3;
- (void)addCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)a3;
- (void)cancelRequests;
- (void)checkCarPlayControlAdvertisingForUSB;
- (void)checkCarPlayControlAdvertisingForWiFiUUID:(id)a3;
- (void)dealloc;
- (void)prepareForRemovingWiFiUUID:(id)a3 completion:(id)a4;
- (void)registerSessionRequestHandlerMachService;
- (void)removeCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)a3;
- (void)startAdvertisingCarPlayControlForUSB;
- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)a3;
- (void)startSessionWithHost:(id)a3 requestIdentifier:(id)a4 completion:(id)a5;
- (void)stoppedSessionForHostIdentifier:(id)a3;
@end

@implementation APCarSessionRequestHandler

- (void)checkCarPlayControlAdvertisingForUSB
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) wantsCarPlayControlAdvertisingForUSB];
  if (result)
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke_cold_1();
    }

    v3 = *(a1 + 32);

    return [v3 _startAdvertisingCarPlayControlForUSB];
  }

  return result;
}

- (APCarSessionRequestHandler)init
{
  v4.receiver = self;
  v4.super_class = APCarSessionRequestHandler;
  v2 = [(APCarSessionRequestHandler *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("com.apple.airplay.APCarSessionRequestHandler", 0);
    v2->_carPlayHelpers = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  }

  return v2;
}

- (void)dealloc
{
  carPlayHelpers = self->_carPlayHelpers;
  if (carPlayHelpers)
  {
    CFRelease(carPlayHelpers);
    self->_carPlayHelpers = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = APCarSessionRequestHandler;
  [(APCarSessionRequestHandler *)&v5 dealloc];
}

- (void)registerSessionRequestHandlerMachService
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [APCarSessionRequestHandler registerSessionRequestHandlerMachService];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__5;
  v3 = getCARSessionRequestAgentClass_softClass;
  v9 = __Block_byref_object_dispose__5;
  v10 = getCARSessionRequestAgentClass_softClass;
  if (!getCARSessionRequestAgentClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getCARSessionRequestAgentClass_block_invoke;
    v4[3] = &unk_278BC7CE0;
    v4[4] = &v5;
    __getCARSessionRequestAgentClass_block_invoke(v4);
    v3 = v6[5];
  }

  _Block_object_dispose(&v5, 8);
  self->_agent = [[v3 alloc] initWithRequestHandler:self];
}

- (void)addCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)a3
{
  if (self->_agent)
  {
    [APCarSessionRequestHandler addCarPlayHelper:];
  }

  else
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__APCarSessionRequestHandler_addCarPlayHelper___block_invoke;
    v4[3] = &unk_278BC72B0;
    v4[4] = self;
    v4[5] = a3;
    dispatch_sync(queue, v4);
  }
}

- (void)removeCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__APCarSessionRequestHandler_removeCarPlayHelper___block_invoke;
  v4[3] = &unk_278BC72B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)startSessionWithHost:(id)a3 requestIdentifier:(id)a4 completion:(id)a5
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke;
  block[3] = &unk_278BC71D0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(queue, block);
  if (a5)
  {
    (*(a5 + 2))(a5, 1, 0);
  }
}

uint64_t __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 40);
  return CFSetApplyBlock();
}

void __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3;
  v6[3] = &unk_278BC9B58;
  v8 = DerivedStorage;
  v9 = a2;
  v7 = *(a1 + 32);
  dispatch_sync(v5, v6);
}

uint64_t __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3(uint64_t result)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(result + 48);
  if (*(v1 + 177))
  {
    v2 = result;
    if (!*(v1 + 248) && !*(v1 + 256))
    {
      v27 = *(result + 56);
      SNPrintF();
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3_cold_1();
      }

      v3 = os_transaction_create();
      v1 = *(v2 + 48);
      *(v1 + 248) = v3;
      *(v1 + 256) = 1;
    }

    if (*(v1 + 264))
    {
      APSEventRecorderRecordEvent();
      v4 = LogCategoryCopyOSLogHandle();
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v6, OS_SIGNPOST_EVENT, 0x2B8D0800uLL, "AP_SIGNPOST_CAR_STARTSESSIONHOST", "", buf, 2u);
      }

      if (v5)
      {
      }
    }

    v7 = [*(v2 + 32) wirelessIPv6Addresses];
    v34 = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    if (v7 && (v8 = v7, [v7 count]))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v30 objects:buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v30 + 1) + 8 * i) cStringUsingEncoding:4];
            if (StringToSockAddr())
            {
              __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3_cold_2();
              goto LABEL_29;
            }

            if (BYTE1(v34) == 30)
            {
              goto LABEL_29;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v30 objects:buf count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
    }

    else
    {
LABEL_29:
      v13 = 0;
    }

    v14 = *(v2 + 48);
    *(v14 + 176) = v13;
    if (gLogCategory_APBrowserCarSessionHelper <= 50)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1 || (v16 = _LogCategory_Initialize(), v14 = *(v2 + 48), v16))
      {
        v15 = *(v2 + 56);
        *(v14 + 64);
        *(v14 + 112);
        *(v14 + 176);
        v29 = *(v2 + 32);
        v28 = *(v2 + 40);
        LogPrintF();
        v14 = *(v2 + 48);
      }
    }

    v17 = *(v2 + 32);
    v18 = *(v2 + 48);
    *(v18 + 184) = v17;
    v19 = *(v18 + 192);
    v20 = [*(v2 + 40) UUIDString];
    *(*(v2 + 48) + 192) = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v22 = *(v2 + 48);
    *(v22 + 200) = Current;
    v23 = *(v22 + 144);
    v24 = [*(v2 + 32) carplayWiFiUUID];
    *(*(v2 + 48) + 144) = v24;
    if (v24)
    {
      CFRetain(v24);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (*(*(v2 + 48) + 144))
    {
      v25 = *(v2 + 56);
      carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged();
    }

    result = carPlayHelperSession_updateNetworkAndSessionState(*(v2 + 56));
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stoppedSessionForHostIdentifier:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

uint64_t __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 40);
  return CFSetApplyBlock();
}

void __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3;
  block[3] = &unk_278BC6E88;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

uint64_t __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(v1 + 177) || !*(v1 + 184))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper == -1)
    {
      v6 = _LogCategory_Initialize();
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_10;
      }

      v13 = v2[6];
      if (!*(v1 + 177))
      {
        v14 = *(v1 + 64);
        v5 = *(v1 + 112) == 0;
        goto LABEL_7;
      }
    }

    else
    {
      v3 = *(result + 48);
    }

    v4 = *(v1 + 64);
    v5 = *(v1 + 112) == 0;
LABEL_7:
    v15 = v2[4];
    [*(v1 + 184) deviceIdentifier];
    LogPrintF();
    v1 = v2[5];
  }

LABEL_10:
  v7 = *(v1 + 144);
  if (v7)
  {
    CFRelease(v7);
    *(v2[5] + 144) = 0;
    v1 = v2[5];
  }

  v8 = v2[5];
  *(v8 + 184) = 0;
  v9 = *(v8 + 192);
  if (v9)
  {
    CFRelease(v9);
    *(v2[5] + 192) = 0;
    v8 = v2[5];
  }

  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  if (*(v8 + 248))
  {
    v10 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3_cold_1();
    }

    free(v10);
    v11 = *(v2[5] + 248);
    if (v11)
    {

      *(v2[5] + 248) = 0;
    }
  }

  v12 = v2[6];

  return carPlayHelperSession_updateNetworkAndSessionState(v12);
}

- (void)_startAdvertisingCarPlayControlForUSB
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [APCarSessionRequestHandler _startAdvertisingCarPlayControlForUSB];
  }

  carPlayHelpers = self->_carPlayHelpers;

  CFSetApplyBlock();
}

void __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

uint64_t __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (!*(v1 + 177) && *(v1 + 64))
  {
    v2 = result;
    if (!*(v1 + 248) && !*(v1 + 256))
    {
      v10 = *(result + 40);
      SNPrintF();
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2_cold_1();
      }

      v3 = os_transaction_create();
      v1 = *(v2 + 32);
      *(v1 + 248) = v3;
      *(v1 + 256) = 1;
    }

    if (gLogCategory_APBrowserCarSessionHelper > 50)
    {
      goto LABEL_13;
    }

    if (gLogCategory_APBrowserCarSessionHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v1 = *(v2 + 32);
    }

    v4 = *(v1 + 177);
    v5 = *(v1 + 64);
    v6 = *(v1 + 112);
    v11 = *(v2 + 40);
    LogPrintF();
LABEL_13:
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(v2 + 40);
    *(*(v2 + 32) + 104) = Current;
    result = carPlayHelperSession_updateNetworkAndSessionState(v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startAdvertisingCarPlayControlForUSB
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APCarSessionRequestHandler_startAdvertisingCarPlayControlForUSB__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_startAdvertisingCarPlayControlForWiFiUUID:(id)a3
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [APCarSessionRequestHandler _startAdvertisingCarPlayControlForWiFiUUID:];
  }

  carPlayHelpers = self->_carPlayHelpers;
  CFSetApplyBlock();
}

void __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2;
  block[3] = &unk_278BC6E88;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

uint64_t __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = result + 40;
  v1 = *(result + 40);
  if (!*(v1 + 177) && *(v1 + 112))
  {
    v3 = result;
    if (!*(v1 + 248) && !*(v1 + 256))
    {
      v12 = *(result + 48);
      SNPrintF();
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2_cold_1();
      }

      v4 = os_transaction_create();
      v5 = *v2;
      *(v5 + 248) = v4;
      *(v5 + 256) = 1;
    }

    v7 = (v3 + 6);
    v6 = v3[6];
    carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2_cold_2(v3 + 6, v2, v3);
    }

    v8 = v3[4];
    v9 = v3[5];
    v10 = *(v9 + 144);
    *(v9 + 144) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    *(*v2 + 152) = CFAbsoluteTimeGetCurrent();
    result = carPlayHelperSession_updateNetworkAndSessionState(*v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__APCarSessionRequestHandler_startAdvertisingCarPlayControlForWiFiUUID___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)checkCarPlayControlAdvertisingForWiFiUUID:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

uint64_t __72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) wantsCarPlayControlAdvertisingForWiFiUUID:*(a1 + 40)];
  if (result)
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke_cold_1();
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _startAdvertisingCarPlayControlForWiFiUUID:v4];
  }

  return result;
}

- (void)prepareForRemovingWiFiUUID:(id)a3 completion:(id)a4
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = a3;
  v6[5] = self;
  dispatch_sync(queue, v6);
  if (a4)
  {
    (*(a4 + 2))(a4, 1, 0);
  }
}

uint64_t __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 40) + 16);
  v4 = *(a1 + 32);
  return CFSetApplyBlock();
}

void __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3;
  block[3] = &unk_278BC6E88;
  block[5] = a2;
  block[6] = DerivedStorage;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

uint64_t __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3(void *a1)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1[6] + 144);
  v3 = a1[4];
  result = FigCFEqual();
  if (result)
  {
    v5 = a1[6];
    v6 = *(v5 + 144);
    if (v6)
    {
      CFRelease(v6);
      *(a1[6] + 144) = 0;
      v5 = a1[6];
    }

    *(v5 + 152) = 0;
    v7 = a1[5];

    return carPlayHelperSession_updateNetworkAndSessionState(v7);
  }

  return result;
}

- (void)cancelRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__APCarSessionRequestHandler_cancelRequests__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __44__APCarSessionRequestHandler_cancelRequests__block_invoke(uint64_t a1)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __44__APCarSessionRequestHandler_cancelRequests__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 16);

  return CFSetApplyBlock();
}

void __44__APCarSessionRequestHandler_cancelRequests__block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

uint64_t __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3(uint64_t a1)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 40);
  *(v2 + 104) = 0;
  v3 = *(v2 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 40) + 144) = 0;
    v2 = *(a1 + 40);
  }

  *(v2 + 152) = 0;

  v4 = *(a1 + 40);
  *(v4 + 184) = 0;
  v5 = *(v4 + 192);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 40) + 192) = 0;
    v4 = *(a1 + 40);
  }

  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  if (*(v4 + 248))
  {
    v6 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3_cold_2();
    }

    free(v6);
    v7 = *(*(a1 + 40) + 248);
    if (v7)
    {

      *(*(a1 + 40) + 248) = 0;
    }
  }

  v8 = *(a1 + 32);

  return carPlayHelperSession_updateNetworkAndSessionState(v8);
}

- (uint64_t)addCarPlayHelper:.cold.1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APBrowserCarSessionHelper <= 90)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

uint64_t __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(*a2 + 112);
  *(*a2 + 64);
  *(*a2 + 112);
  *(*a2 + 112);
  *(*a2 + 64);
  *(*a2 + 177);
  v5 = *(a3 + 32);
  v4 = *a1;
  return OUTLINED_FUNCTION_9();
}

uint64_t __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(v1 + 112);
  *(v1 + 64);
  *(v1 + 112);
  *(v1 + 112);
  *(v1 + 64);
  *(v1 + 177);
  v4 = *(v1 + 144);
  v5 = *(v1 + 184);
  v3 = *(a1 + 40);
  return OUTLINED_FUNCTION_9();
}

uint64_t __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 112);
  *(v1 + 64);
  *(v1 + 112);
  *(v1 + 112);
  *(v1 + 64);
  *(v1 + 177);
  v4 = *(v1 + 184);
  v3 = *(a1 + 32);
  return OUTLINED_FUNCTION_9();
}

@end