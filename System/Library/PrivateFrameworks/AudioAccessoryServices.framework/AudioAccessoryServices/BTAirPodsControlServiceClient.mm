@interface BTAirPodsControlServiceClient
- (BOOL)_runConnectStart;
- (BOOL)_runDiscoverCharacteristicsStart;
- (BOOL)_runDiscoverServicesStart;
- (BOOL)_runInit;
- (BOOL)isFindmyManaged;
- (BTAirPodsControlServiceClient)init;
- (uint64_t)_run;
- (void)_abortRequestsWithError:(id)a3;
- (void)_completeRequest:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_reportError:(id)a3;
- (void)_run;
- (void)_runConnectStart;
- (void)_runDiscoverCharacteristicsStart;
- (void)_runDiscoverServicesStart;
- (void)_runProcessRequest:(id)a3;
- (void)_runProcessRequests;
- (void)_setupTimeoutForRequest:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdateFindMyPeripherals:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)getSilentModeWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)setSilentMode:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation BTAirPodsControlServiceClient

- (BTAirPodsControlServiceClient)init
{
  v6.receiver = self;
  v6.super_class = BTAirPodsControlServiceClient;
  v2 = [(BTAirPodsControlServiceClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BTAirPodsControlServiceClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__BTAirPodsControlServiceClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 49) & 1) == 0)
  {
    v3 = result;
    *(v2 + 49) = 1;
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __43__BTAirPodsControlServiceClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);

    return [v4 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  v3 = BTErrorF();
  [(BTAirPodsControlServiceClient *)self _abortRequestsWithError:v3];

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  peripheral = self->_peripheral;
  self->_peripheral = 0;

  requestArray = self->_requestArray;
  self->_requestArray = 0;

  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient _invalidate];
  }
}

- (void)getSilentModeWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 49) == 1)
  {
    v6 = BTErrorF();
    if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_2(v2);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(BTAirPodsControlRequest);
    [(BTAirPodsControlRequest *)v6 setClient:*(a1 + 32)];
    [(BTAirPodsControlRequest *)v6 setGetHandler:*(a1 + 40)];
    [*(a1 + 32) _setupTimeoutForRequest:v6];
    v3 = *(*(a1 + 32) + 72);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = *(*v2 + 72);
      *(*v2 + 72) = v4;

      v3 = *(*v2 + 72);
    }

    [v3 addObject:v6];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_1(v2);
    }

    [*v2 _run];
  }
}

- (void)setSilentMode:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke;
  block[3] = &unk_278CDE238;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 49) == 1)
  {
    v6 = BTErrorF();
    if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_2(v2, a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(BTAirPodsControlRequest);
    [(BTAirPodsControlRequest *)v6 setClient:*(a1 + 32)];
    [(BTAirPodsControlRequest *)v6 setEnabled:*(a1 + 48)];
    [(BTAirPodsControlRequest *)v6 setSetHandler:*(a1 + 40)];
    [*(a1 + 32) _setupTimeoutForRequest:v6];
    v3 = *(*(a1 + 32) + 72);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5 = *(*v2 + 72);
      *(*v2 + 72) = v4;

      v3 = *(*v2 + 72);
    }

    [v3 addObject:v6];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_1(v2, (a1 + 48));
    }

    [*v2 _run];
  }
}

- (BOOL)isFindmyManaged
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self->_deviceSN)
  {
    v3 = [objc_opt_new() init];
    [v3 addObject:self->_deviceSN];
    centralManager = self->_centralManager;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke;
    v7[3] = &unk_278CDE260;
    v7[4] = &v8;
    [(CBCentralManager *)centralManager retrievePeripheralsWithFindMySerialNumberStrings:v3 completion:v7];

    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

void __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 firstObject];
  v4 = [v3 managedByFindMy];
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = v4;

  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke_cold_1(v7, v5);
  }
}

- (void)_abortRequestsWithError:(id)a3
{
  v4 = a3;
  requestCurrent = self->_requestCurrent;
  v7 = v4;
  if (!requestCurrent)
  {
    goto LABEL_5;
  }

  self->_requestCurrent = 0;
  v6 = requestCurrent;

LABEL_3:
  [(BTAirPodsControlServiceClient *)self _completeRequest:v6 error:v7];
  while (1)
  {

LABEL_5:
    if (![(NSMutableArray *)self->_requestArray count])
    {
      break;
    }

    v6 = [(NSMutableArray *)self->_requestArray popFirstObject];
    if (v6)
    {
      goto LABEL_3;
    }
  }
}

- (void)_completeRequest:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(BTAirPodsControlRequest *)v13 getHandler];

  if (v6)
  {
    if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient _completeRequest:error:];
    }
  }

  else if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient _completeRequest:error:];
  }

  v7 = [(BTAirPodsControlRequest *)v13 timeoutTimer];
  v8 = v7;
  if (v7)
  {
    dispatch_source_cancel(v7);
    [(BTAirPodsControlRequest *)v13 setTimeoutTimer:0];
  }

  v9 = [(BTAirPodsControlRequest *)v13 getHandler];

  if (v9)
  {
    v10 = [(BTAirPodsControlRequest *)v13 getHandler];
    (v10)[2](v10, [(BTAirPodsControlRequest *)v13 enabled], v6);
  }

  else
  {
    v11 = [(BTAirPodsControlRequest *)v13 setHandler];

    if (!v11)
    {
      goto LABEL_16;
    }

    v10 = [(BTAirPodsControlRequest *)v13 setHandler];
    (v10[2])(v10, v6);
  }

LABEL_16:
  [(BTAirPodsControlRequest *)v13 setClient:0];
  [(BTAirPodsControlRequest *)v13 setGetHandler:0];
  [(BTAirPodsControlRequest *)v13 setSetHandler:0];
  [(NSMutableArray *)self->_requestArray removeObject:v13];
  requestCurrent = self->_requestCurrent;
  if (requestCurrent == v13)
  {
    self->_requestCurrent = 0;
  }

  [(BTAirPodsControlServiceClient *)self _run];
}

- (void)_reportError:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!self->_invalidateCalled && gLogCategory_BTAirPodsControlServiceClient <= 90)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [BTAirPodsControlServiceClient _reportError:];
      v4 = v6;
    }
  }

  self->_state = 3;
  [(BTAirPodsControlServiceClient *)self _abortRequestsWithError:v4];
}

- (void)_setupTimeoutForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 timeoutTimer];
  v6 = v5;
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  [v4 setTimeoutTimer:v7];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__BTAirPodsControlServiceClient__setupTimeoutForRequest___block_invoke;
  handler[3] = &unk_278CDDDF0;
  v11 = v7;
  v12 = v4;
  v13 = self;
  v8 = v4;
  v9 = v7;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

void __57__BTAirPodsControlServiceClient__setupTimeoutForRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) timeoutTimer];

  if (v2 == v3)
  {
    dispatch_source_cancel(*(a1 + 32));
    [*(a1 + 40) setTimeoutTimer:0];
    v6 = a1 + 40;
    v4 = *(a1 + 40);
    v5 = *(v6 + 8);
    v7 = BTErrorF();
    [v5 _completeRequest:v4 error:v7];
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state > 13)
      {
        if (state <= 15)
        {
          if (state == 14)
          {
            if ([(BTAirPodsControlServiceClient *)self _runDiscoverServicesStart])
            {
              goto LABEL_26;
            }
          }

          else if (self->_airpodsCaseControlServiceObj)
          {
            self->_state = 16;
          }
        }

        else
        {
          switch(state)
          {
            case 16:
              if (![(BTAirPodsControlServiceClient *)self _runDiscoverCharacteristicsStart])
              {
                break;
              }

LABEL_26:
              ++self->_state;
              break;
            case 17:
              if (self->_airpodsCaseControlCharacteristicObj)
              {
                self->_state = 18;
              }

              break;
            case 18:
              [(BTAirPodsControlServiceClient *)self _runProcessRequests];
              break;
          }
        }
      }

      else if (state <= 10)
      {
        if (state)
        {
          if (state == 10 && [(CBCentralManager *)self->_centralManager state]== 5)
          {
            goto LABEL_26;
          }
        }

        else if ([(BTAirPodsControlServiceClient *)self _runInit])
        {
          self->_state = 10;
        }
      }

      else if (state == 11)
      {
        if ([(BTAirPodsControlServiceClient *)self _runConnectStart])
        {
          goto LABEL_26;
        }
      }

      else if (state == 12)
      {
        if (self->_connected)
        {
          self->_state = 13;
        }
      }

      else
      {
        self->_state = 14;
      }

      if (self->_state == state)
      {
        return;
      }

      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [(BTAirPodsControlServiceClient *)state _run];
      }
    }
  }
}

- (BOOL)_runInit
{
  v18[1] = *MEMORY[0x277D85DE8];
  p_centralManager = &self->_centralManager;
  v4 = self->_centralManager;
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    dispatchQueue = self->_dispatchQueue;
    v17 = *MEMORY[0x277CBDD80];
    v18[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v4 = [v5 initWithDelegate:self queue:dispatchQueue options:v7];

    if (!v4)
    {
      v4 = BTErrorF();
      [(BTAirPodsControlServiceClient *)self _reportError:v4];
      v12 = 0;
      goto LABEL_14;
    }

    objc_storeStrong(p_centralManager, v4);
  }

  v8 = self->_airpodsCaseControlServiceUUID;
  if (v8)
  {
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CBE0A0] UUIDWithString:@"2EE26CD4-C04E-41CE-905A-B4054F5D1770"];
  if (v9)
  {
    v8 = v9;
    objc_storeStrong(&self->_airpodsCaseControlServiceUUID, v9);
LABEL_7:
    v10 = self->_airpodsCaseControlCharacteristicUUID;
    if (v10)
    {
      v11 = v10;
      v12 = 1;
    }

    else
    {
      v13 = [MEMORY[0x277CBE0A0] UUIDWithString:@"71060001-413A-41EA-AF86-8CECFA21D057"];
      v12 = v13 != 0;
      if (v13)
      {
        v11 = v13;
        airpodsCaseControlCharacteristicUUID = self->_airpodsCaseControlCharacteristicUUID;
        self->_airpodsCaseControlCharacteristicUUID = v11;
      }

      else
      {
        airpodsCaseControlCharacteristicUUID = BTErrorF();
        [(BTAirPodsControlServiceClient *)self _reportError:airpodsCaseControlCharacteristicUUID, @"71060001-413A-41EA-AF86-8CECFA21D057"];
        v11 = 0;
      }
    }

    goto LABEL_13;
  }

  v8 = BTErrorF();
  [(BTAirPodsControlServiceClient *)self _reportError:v8, @"2EE26CD4-C04E-41CE-905A-B4054F5D1770"];
  v12 = 0;
LABEL_13:

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_runConnectStart
{
  v21[1] = *MEMORY[0x277D85DE8];
  peerDevice = self->_peerDevice;
  if (!peerDevice)
  {
    deviceUUID = self->_deviceUUID;
    if (!deviceUUID)
    {
      deviceSN = self->_deviceSN;
      if (deviceSN)
      {
        v15 = [(NSString *)deviceSN dataUsingEncoding:4];
        if (v15)
        {
          v16 = v15;
          v20 = v15;
          LOBYTE(v4) = 1;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
          centralManager = self->_centralManager;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke;
          v19[3] = &unk_278CDE288;
          v19[4] = self;
          [(CBCentralManager *)centralManager retrievePeripheralsWithFindMySerialNumbers:v17 completion:v19];

          goto LABEL_13;
        }

        [(BTAirPodsControlServiceClient *)&self->_deviceSN _runConnectStart];
      }

      else
      {
        if (self->_peerUUID)
        {
LABEL_12:
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }

        [BTAirPodsControlServiceClient _runConnectStart];
      }

LABEL_22:
      LOBYTE(v4) = 0;
      goto LABEL_13;
    }

    v4 = deviceUUID;
LABEL_6:
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    if (v6)
    {
      v7 = v6;
      v8 = self->_centralManager;
      v21[0] = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v10 = [(CBCentralManager *)v8 retrievePeripheralsWithIdentifiers:v9];
      v11 = [v10 firstObject];

      if (v11)
      {
        objc_storeStrong(&self->_peerUUID, v7);
        objc_storeStrong(&self->_peripheral, v11);
        [(CBPeripheral *)self->_peripheral setDelegate:self];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [(BTAirPodsControlServiceClient *)&self->_peerUUID _runConnectStart];
        }

        [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];

        goto LABEL_12;
      }

      [(BTAirPodsControlServiceClient *)v7 _runConnectStart:0];
    }

    else
    {
      [(BTAirPodsControlServiceClient *)v4 _runConnectStart];
    }

    goto LABEL_22;
  }

  v4 = [(CBDevice *)peerDevice identifier];
  if (v4)
  {
    goto LABEL_6;
  }

  [BTAirPodsControlServiceClient _runConnectStart];
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v17, v4))
    {
      __49__BTAirPodsControlServiceClient__runConnectStart__block_invoke_cold_1(v3);
      v3 = v17;
    }
  }

  v5 = [v3 firstObject];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v8 = [*(*(a1 + 32) + 64) identifier];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  if (!v12)
  {
    if (gLogCategory_BTAirPodsControlServiceClient > 90)
    {
      goto LABEL_13;
    }

    if (gLogCategory_BTAirPodsControlServiceClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 32);
    }

    v16 = *(v11 + 112);
    LogPrintF_safe();
    goto LABEL_13;
  }

  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1)
    {
LABEL_7:
      v15 = v12;
      LogPrintF_safe();
      [*(*(a1 + 32) + 40) connectPeripheral:*(*(a1 + 32) + 64) options:{0, v15}];
      goto LABEL_13;
    }

    v13 = _LogCategory_Initialize();
    v11 = *(a1 + 32);
    if (v13)
    {
      v12 = *(v11 + 56);
      goto LABEL_7;
    }
  }

  [*(v11 + 40) connectPeripheral:*(v11 + 64) options:{0, v14}];
LABEL_13:
}

- (BOOL)_runDiscoverServicesStart
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = self->_peripheral;
  if (v3)
  {
    v4 = self->_airpodsCaseControlServiceUUID;
    v5 = v4;
    v6 = v4 != 0;
    if (v4)
    {
      v10[0] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [(BTAirPodsControlServiceClient *)v3 _runDiscoverServicesStart];
      }

      [(CBPeripheral *)v3 discoverServices:v7];
    }

    else
    {
      [BTAirPodsControlServiceClient _runDiscoverServicesStart];
    }
  }

  else
  {
    [BTAirPodsControlServiceClient _runDiscoverServicesStart];
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_runDiscoverCharacteristicsStart
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = self->_peripheral;
  if (v3)
  {
    v4 = self->_airpodsCaseControlServiceObj;
    if (v4)
    {
      v5 = self->_airpodsCaseControlCharacteristicUUID;
      v6 = v5;
      v7 = v5 != 0;
      if (v5)
      {
        v11[0] = v5;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runDiscoverCharacteristicsStart];
        }

        [(CBPeripheral *)v3 discoverCharacteristics:v8 forService:v4];
      }

      else
      {
        [BTAirPodsControlServiceClient _runDiscoverCharacteristicsStart];
      }
    }

    else
    {
      [BTAirPodsControlServiceClient _runDiscoverCharacteristicsStart];
      v7 = 0;
    }
  }

  else
  {
    [BTAirPodsControlServiceClient _runDiscoverServicesStart];
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_runProcessRequests
{
  p_requestCurrent = &self->_requestCurrent;
  if (!self->_requestCurrent)
  {
    v4 = [(NSMutableArray *)self->_requestArray popFirstObject];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      objc_storeStrong(p_requestCurrent, v4);
      v4 = [(BTAirPodsControlServiceClient *)self _runProcessRequest:v6];
      v5 = v6;
    }

    MEMORY[0x2821F96F8](v4, v5);
  }
}

- (void)_runProcessRequest:(id)a3
{
  v4 = a3;
  v5 = self->_peripheral;
  if (v5)
  {
    v6 = self->_airpodsCaseControlCharacteristicObj;
    if (v6)
    {
      v7 = [v4 getHandler];

      if (v7)
      {
        v12 = 513;
        v13 = 8;
        v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v12 length:3];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runProcessRequest:v5];
        }
      }

      else
      {
        v9 = 1;
        v10 = 8;
        v11 = [v4 enabled];
        v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v9 length:4];
        if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
        {
          [BTAirPodsControlServiceClient _runProcessRequest:];
        }
      }

      [(CBPeripheral *)v5 writeValue:v8 forCharacteristic:v6 type:0];
    }

    else
    {
      [BTAirPodsControlServiceClient _runProcessRequest:];
    }
  }

  else
  {
    [BTAirPodsControlServiceClient _runProcessRequest:];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  if (!self->_invalidateCalled)
  {
    v7 = v4;
    v5 = [v4 state];
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient centralManagerDidUpdateState:v5];
    }

    if (v5 == 1 || v5 == 4)
    {
      v6 = BTErrorF();
      [(BTAirPodsControlServiceClient *)self _reportError:v6];
    }

    else
    {
      v4 = v7;
      if (v5 != 5)
      {
        goto LABEL_11;
      }

      [(BTAirPodsControlServiceClient *)self _run];
    }

    v4 = v7;
  }

LABEL_11:
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  if (!self->_invalidateCalled)
  {
    v6 = [a4 identifier];
    if ([v6 isEqual:self->_peerUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [BTAirPodsControlServiceClient centralManager:didConnectPeripheral:];
      }

      self->_connected = 1;
      [(BTAirPodsControlServiceClient *)self _run];
    }

    else
    {
      [BTAirPodsControlServiceClient centralManager:? didConnectPeripheral:?];
    }
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a5;
  if (!self->_invalidateCalled)
  {
    v10 = v7;
    v8 = [a4 identifier];
    if ([v8 isEqual:self->_peerUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 90 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        [BTAirPodsControlServiceClient centralManager:didFailToConnectPeripheral:error:];
      }

      if (v10)
      {
        [(BTAirPodsControlServiceClient *)self _reportError:?];
      }

      else
      {
        v9 = BTErrorF();
        [(BTAirPodsControlServiceClient *)self _reportError:v9];
      }
    }

    else
    {
      [BTAirPodsControlServiceClient centralManager:? didFailToConnectPeripheral:? error:?];
    }

    v7 = v10;
  }
}

- (void)centralManager:(id)a3 didUpdateFindMyPeripherals:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient centralManager:didUpdateFindMyPeripherals:];
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 identifier];
  if (([v6 isEqual:self->_peerUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverServices:];
    goto LABEL_20;
  }

  [v5 services];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v13 = [v12 UUID];
      v14 = [v13 isEqual:self->_airpodsCaseControlServiceUUID];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v16 = v12;

    if (!v16)
    {
      goto LABEL_11;
    }

    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:didDiscoverServices:];
    }

    airpodsCaseControlServiceObj = self->_airpodsCaseControlServiceObj;
    self->_airpodsCaseControlServiceObj = v16;
    v15 = v16;

    [(BTAirPodsControlServiceClient *)self _run];
  }

  else
  {
LABEL_10:

LABEL_11:
    if (([(BTAirPodsControlServiceClient *)self peripheral:v7 didDiscoverServices:v6, &v23]& 1) != 0)
    {
      goto LABEL_19;
    }

    v15 = v23;
  }

LABEL_19:
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 identifier];
  if (([v9 isEqual:self->_peerUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    goto LABEL_23;
  }

  v10 = [v8 UUID];
  if (([v10 isEqual:self->_airpodsCaseControlServiceUUID] & 1) == 0)
  {
    [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    goto LABEL_22;
  }

  v26 = v10;
  v27 = v8;
  v11 = v9;
  v12 = v7;
  [v8 characteristics];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v31 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v28 + 1) + 8 * v17);
      v19 = [v18 UUID];
      v20 = [v19 isEqual:self->_airpodsCaseControlCharacteristicUUID];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v23 = v18;

    if (!v23)
    {
      goto LABEL_12;
    }

    v7 = v12;
    v9 = v11;
    v10 = v26;
    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:didDiscoverCharacteristicsForService:error:];
    }

    airpodsCaseControlCharacteristicObj = self->_airpodsCaseControlCharacteristicObj;
    self->_airpodsCaseControlCharacteristicObj = v23;
    v22 = v23;

    [v12 setNotifyValue:1 forCharacteristic:v22];
    [(BTAirPodsControlServiceClient *)self _run];
  }

  else
  {
LABEL_11:

LABEL_12:
    v7 = v12;
    v9 = v11;
    v10 = v26;
    if (gLogCategory_BTAirPodsControlServiceClient > 60 || gLogCategory_BTAirPodsControlServiceClient == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    airpodsCaseControlCharacteristicUUID = self->_airpodsCaseControlCharacteristicUUID;
    v22 = CUPrintNSObjectOneLine();
    LogPrintF_safe();
  }

LABEL_21:
  v8 = v27;
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
  {
    [BTAirPodsControlServiceClient peripheral:didUpdateNotificationStateForCharacteristic:error:];
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v17 = a4;
  v7 = [a3 identifier];
  if ([v7 isEqual:self->_peerUUID])
  {
    v8 = [v17 UUID];
    if (([v8 isEqual:self->_airpodsCaseControlCharacteristicUUID] & 1) == 0)
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_18;
    }

    v9 = self->_requestCurrent;
    if (!v9)
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
      goto LABEL_17;
    }

    v10 = [v17 value];
    v11 = [v10 copy];

    if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
    }

    v12 = [v11 bytes];
    v13 = [v11 length];
    if (v13 <= 2)
    {
      [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
    }

    else
    {
      v14 = v13;
      v15 = *(v12 + 1);
      v16 = [(BTAirPodsControlRequest *)v9 getHandler];

      if (v16)
      {
        if (v15 != 2051)
        {
          [BTAirPodsControlServiceClient peripheral:v15 didUpdateValueForCharacteristic:v11 error:?];
          goto LABEL_16;
        }

        if (v14 == 3)
        {
          [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
          goto LABEL_16;
        }

        [(BTAirPodsControlRequest *)v9 setEnabled:*(v12 + 3) != 0];
      }

      else
      {
        if (v15 != 2049)
        {
          [BTAirPodsControlServiceClient peripheral:v15 didUpdateValueForCharacteristic:v11 error:?];
          goto LABEL_16;
        }

        if (v14 <= 4)
        {
          [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
          goto LABEL_16;
        }

        if (*(v12 + 3))
        {
          [BTAirPodsControlServiceClient peripheral:v11 didUpdateValueForCharacteristic:? error:?];
          goto LABEL_16;
        }
      }

      [(BTAirPodsControlServiceClient *)self _completeRequest:v9 error:0];
    }

LABEL_16:

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  [BTAirPodsControlServiceClient peripheral:didUpdateValueForCharacteristic:error:];
LABEL_19:
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v9 = a4;
  v7 = [a3 identifier];
  if ([v7 isEqual:self->_peerUUID])
  {
    v8 = [v9 UUID];
    if ([v8 isEqual:self->_airpodsCaseControlCharacteristicUUID])
    {
      if (gLogCategory_BTAirPodsControlServiceClient <= 30 && (gLogCategory_BTAirPodsControlServiceClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      [BTAirPodsControlServiceClient peripheral:? didWriteValueForCharacteristic:? error:?];
    }
  }

  else
  {
    [BTAirPodsControlServiceClient peripheral:didWriteValueForCharacteristic:error:];
  }
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  if (v2)
  {
    v4 = [v2 identifier];
    LogPrintF_safe();
  }

  else
  {
    v3 = *(v1 + 112);
    LogPrintF_safe();
  }
}

void __68__BTAirPodsControlServiceClient_getSilentModeWithCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(*a1 + 104);
  if (v1)
  {
    v2 = [*(*a1 + 104) identifier];
  }

  else
  {
    v2 = *(*a1 + 112);
  }

  v4 = v2;
  v3 = CUPrintNSError();
  LogPrintF_safe();

  if (v1)
  {
  }
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_1(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 104);
  if (v4)
  {
    v6 = [v4 identifier];
    *a2;
    LogPrintF_safe();
  }

  else
  {
    v5 = *(v3 + 112);
    *a2;
    LogPrintF_safe();
  }
}

void __65__BTAirPodsControlServiceClient_setSilentMode_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 104);
  if (v3)
  {
    v4 = [*(*a1 + 104) identifier];
  }

  else
  {
    v4 = *(*a1 + 112);
  }

  v6 = v4;
  *(a2 + 48);
  v5 = CUPrintNSError();
  LogPrintF_safe();

  if (v3)
  {
  }
}

uint64_t __48__BTAirPodsControlServiceClient_isFindmyManaged__block_invoke_cold_1(void *a1, uint64_t a2)
{
  [a1 count];
  *(*(*a2 + 8) + 24);
  return LogPrintF_safe();
}

- (void)_completeRequest:error:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_reportError:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (uint64_t)_run
{
  if (a1 <= 0x12)
  {
    v2 = off_278CDE2A8[a1];
  }

  v3 = *a2;
  if (v3 <= 0x12)
  {
    v4 = off_278CDE2A8[v3];
  }

  return LogPrintF_safe();
}

- (void)_runConnectStart
{
  v0 = BTErrorF();
  OUTLINED_FUNCTION_4(v0);
}

- (void)_runDiscoverServicesStart
{
  v0 = BTErrorF();
  OUTLINED_FUNCTION_4(v0);
}

- (void)_runDiscoverCharacteristicsStart
{
  v0 = BTErrorF();
  OUTLINED_FUNCTION_4(v0);
}

- (void)_runProcessRequest:(void *)a1 .cold.1(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  v2 = CUPrintNSDataHex();
  LogPrintF_safe();
}

- (void)_runProcessRequest:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v2 = [v1 identifier];
  [v0 enabled];
  v3 = CUPrintNSDataHex();
  LogPrintF_safe();
}

- (void)_runProcessRequest:.cold.3()
{
  v0 = BTErrorF();
  OUTLINED_FUNCTION_10(v0);
}

- (void)_runProcessRequest:.cold.4()
{
  v0 = BTErrorF();
  OUTLINED_FUNCTION_10(v0);
}

- (uint64_t)centralManagerDidUpdateState:(unint64_t)a1 .cold.1(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    v1 = off_278CDE340[a1];
  }

  return LogPrintF_safe();
}

- (uint64_t)centralManager:(uint64_t)result didConnectPeripheral:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)centralManager:(uint64_t)result didFailToConnectPeripheral:error:.cold.1(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)centralManager:didFailToConnectPeripheral:error:.cold.2()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (void)peripheral:didDiscoverServices:.cold.2()
{
  v0 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
}

- (uint64_t)peripheral:(uint64_t)a3 didDiscoverServices:(uint64_t *)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (gLogCategory_BTAirPodsControlServiceClient > 60)
  {
    return 1;
  }

  if (gLogCategory_BTAirPodsControlServiceClient == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  v6 = *(a1 + 32);
  *a4 = CUPrintNSObjectOneLine();
  LogPrintF_safe();
  return 0;
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.2()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v1 = [v0 UUID];
  LogPrintF_safe();
}

- (void)peripheral:didUpdateNotificationStateForCharacteristic:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v3 = [v1 identifier];
  [v0 UUID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  v2 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.2()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v0 = CUPrintNSDataHex();
  LogPrintF_safe();
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v3);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v1);
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.6(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v3);
}

- (void)peripheral:(uint64_t)a1 didUpdateValueForCharacteristic:(uint64_t)a2 error:.cold.7(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  CUPrintNSDataHex();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  v3 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v3);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v1);
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.9()
{
  OUTLINED_FUNCTION_2_0();
  v2 = CUPrintNSDataHex();
  v1 = CBErrorF();
  OUTLINED_FUNCTION_3_0(v1);
}

- (uint64_t)peripheral:didUpdateValueForCharacteristic:error:.cold.10()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 30)
  {
    if (gLogCategory_BTAirPodsControlServiceClient != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)peripheral:didWriteValueForCharacteristic:error:.cold.1()
{
  if (gLogCategory_BTAirPodsControlServiceClient <= 60)
  {
    OUTLINED_FUNCTION_1_5();
    if (!v0 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_6();
      LogPrintF_safe();
    }
  }
}

- (uint64_t)peripheral:(uint64_t)result didWriteValueForCharacteristic:error:.cold.2(uint64_t result)
{
  if (result <= 60)
  {
    OUTLINED_FUNCTION_5();
    if (v1 != -1 || (result = _LogCategory_Initialize(), result))
    {
      OUTLINED_FUNCTION_6();
      return LogPrintF_safe();
    }
  }

  return result;
}

@end