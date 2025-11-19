@interface APAdvertiserBTLEManager
+ (id)stringForBTLEMode:(unsigned __int16)a3;
+ (id)stringForBTLEState:(int64_t)a3;
- (APAdvertiserBTLEManager)initWithEventContext:(void *)a3;
- (BOOL)shouldScanForSourceWithScreenOff;
- (id)createBTLEAdvertiser;
- (id)createBTLEDiscoverer;
- (int)setAccessControlType:(unsigned int)a3;
- (int)setBTLEMode:(unsigned __int16)a3;
- (int)setEventHandler:(void *)a3 withContext:(void *)a4;
- (int)setIsP2PAllowed:(BOOL)a3;
- (int)setProperty:(id)a3 withValue:(id)a4;
- (int)setReceiverPort:(unsigned __int16)a3;
- (int)setRequireAltBrowser:(BOOL)a3;
- (int)setupEventHandlerState;
- (int)showDebugWithDataBuffer:(id *)a3 verbose:(BOOL)a4;
- (int)start;
- (int)startMonitoringForNetworkChanges;
- (int)startP2PSoloQueryTimer;
- (int)stop;
- (int)stopMonitoringForNetworkChanges;
- (int)supportsSolo:(BOOL *)a3;
- (int)update;
- (int)updatePreferences;
- (int)updateSupportsSoloAndForceReadFromPrefs:(BOOL)a3;
- (int64_t)btleManagerState;
- (void)cleanupEventHandlerState;
- (void)computeNearbyDeviceTypesAndDispatchEventIfNecessary;
- (void)dealloc;
- (void)dispatchEvent:(unsigned int)a3;
- (void)handleFoundDevice:(id)a3;
- (void)handleLostDevice:(id)a3 withGoodbye:(BOOL)a4;
- (void)handleP2PSoloQueryTimerCancelled;
- (void)handleP2PSoloQueryTimerFired;
- (void)invalidate;
- (void)removeExpiredDevices;
- (void)removeLostDeviceWithIdentifier:(id)a3;
- (void)restartAdvertisingIfNecessary;
- (void)startAdvertising;
- (void)startScanning;
- (void)stopAdvertising;
- (void)stopAdvertisingWithSeed:(int)a3;
- (void)stopScanning;
- (void)stopScanningWithSeed:(int)a3;
- (void)updateLostLegacyDeviceTimer;
@end

@implementation APAdvertiserBTLEManager

- (int)showDebugWithDataBuffer:(id *)a3 verbose:(BOOL)a4
{
  v30 = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  if ([(APAdvertiserBTLEManager *)self isEnabled:a3])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v16 = v6;
  DataBuffer_AppendF();
  v28 = 0;
  v7 = [(APAdvertiserBTLEManager *)self supportsSolo:&v28, v16];
  DataBuffer_AppendF();
  if (self->_btleMode)
  {
    v8 = "presence";
  }

  else
  {
    v8 = "none";
  }

  v17 = v8;
  DataBuffer_AppendF();
  v18 = [APAdvertiserBTLEManager stringForBTLEState:[(APAdvertiserBTLEManager *)self btleManagerState]];
  DataBuffer_AppendF();
  if ([(APAdvertiserBTLEManager *)self isAdvertising])
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  v19 = v9;
  DataBuffer_AppendF();
  if ([(APAdvertiserBTLEManager *)self isScanning])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v20 = v10;
  DataBuffer_AppendF();
  if ([(APAdvertiserBTLEManager *)self btleAdvertiser])
  {
    [(CBAdvertiser *)[(APAdvertiserBTLEManager *)self btleAdvertiser] airplayTargetIPv4];
    IPv4AddressToCString();
    v11 = [(CBAdvertiser *)[(APAdvertiserBTLEManager *)self btleAdvertiser] airplayTargetFlags];
    v12 = [(CBAdvertiser *)[(APAdvertiserBTLEManager *)self btleAdvertiser] airplayTargetConfigSeed];
    v25 = v29;
    v26 = [(CBAdvertiser *)[(APAdvertiserBTLEManager *)self btleAdvertiser] airplayTargetPort];
    v22 = &unk_23EAA1C34;
    v24 = v12;
    v21 = v11;
    DataBuffer_AppendF();
  }

  if ([(APAdvertiserBTLEManager *)self soloDevices:v21])
  {
    v13 = [(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self soloDevices] count];
  }

  else
  {
    v13 = 0;
  }

  v23 = [(APAdvertiserBTLEManager *)self soloDeviceFlags];
  DataBuffer_AppendF();
  if (v13)
  {
    DataBuffer_AppendF();
    v14 = [(APAdvertiserBTLEManager *)self soloDevices:v13];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59__APAdvertiserBTLEManager_showDebugWithDataBuffer_verbose___block_invoke;
    v27[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSNumber_16_B24l;
    v27[4] = a3;
    [(NSMutableDictionary *)v14 enumerateKeysAndObjectsUsingBlock:v27];
  }

  return v7;
}

- (void)removeLostDeviceWithIdentifier:(id)a3
{
  if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    v5 = a3;
    LogPrintF();
  }

  [(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self soloDevices] removeObjectForKey:a3];

  [(APAdvertiserBTLEManager *)self computeNearbyDeviceTypesAndDispatchEventIfNecessary];
}

- (void)handleLostDevice:(id)a3 withGoodbye:(BOOL)a4
{
  v4 = a4;
  if (-[NSMutableDictionary objectForKeyedSubscript:](-[APAdvertiserBTLEManager soloDevices](self, "soloDevices"), "objectForKeyedSubscript:", [a3 identifier]))
  {
    if (v4)
    {
      v7 = [a3 identifier];

      [(APAdvertiserBTLEManager *)self removeLostDeviceWithIdentifier:v7];
    }

    else if (!-[NSMutableDictionary objectForKeyedSubscript:](-[APAdvertiserBTLEManager pendingLostLegacyDevices](self, "pendingLostLegacyDevices"), "objectForKeyedSubscript:", [a3 identifier]))
    {
      if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
      {
        [a3 identifier];
        LogPrintF();
      }

      -[NSMutableDictionary setObject:forKeyedSubscript:](-[APAdvertiserBTLEManager pendingLostLegacyDevices](self, "pendingLostLegacyDevices"), "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{dispatch_time(0, 15000000000)}], objc_msgSend(a3, "identifier"));

      [(APAdvertiserBTLEManager *)self updateLostLegacyDeviceTimer];
    }
  }
}

- (void)handleFoundDevice:(id)a3
{
  if (gLogCategory_APAdvertiserBTLEManager <= 40)
  {
    if (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize())
    {
      v5 = [a3 identifier];
      v6 = [a3 airplaySourceFlags];
      v10 = [a3 deviceFlags];
      v11 = &unk_23EAA1D26;
      v8 = v6;
      v9 = &unk_23EAA1CCA;
      v7 = v5;
      LogPrintF();
    }

    if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      [a3 identifier];
      LogPrintF();
    }
  }

  if (APSShouldStartAdvertistingForAirPlaySourceBeacon())
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](-[APAdvertiserBTLEManager soloDevices](self, "soloDevices"), "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a3, "airplaySourceFlags")}], objc_msgSend(a3, "identifier"));
    -[NSMutableDictionary removeObjectForKey:](-[APAdvertiserBTLEManager pendingLostLegacyDevices](self, "pendingLostLegacyDevices"), "removeObjectForKey:", [a3 identifier]);
  }

  else
  {
    [(APAdvertiserBTLEManager *)self handleLostDevice:a3 withGoodbye:1];
  }

  [(APAdvertiserBTLEManager *)self computeNearbyDeviceTypesAndDispatchEventIfNecessary];
}

- (void)computeNearbyDeviceTypesAndDispatchEventIfNecessary
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [(APAdvertiserBTLEManager *)self soloDevices];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__APAdvertiserBTLEManager_computeNearbyDeviceTypesAndDispatchEventIfNecessary__block_invoke;
  v11[3] = &unk_278C60AC8;
  v11[4] = &v12;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v11];
  v4 = *(v13 + 6);
  if (v4 == [(APAdvertiserBTLEManager *)self soloDeviceFlags])
  {
    goto LABEL_16;
  }

  v5 = [(APAdvertiserBTLEManager *)self soloDeviceFlags];
  v6 = *(v13 + 6);
  v7 = [(APAdvertiserBTLEManager *)self soloDeviceFlags];
  v8 = *(v13 + 6);
  [(APAdvertiserBTLEManager *)self setSoloDeviceFlags:v8];
  if ((v6 & 0x80000000) == 0 || (v5 & 0x80000000) != 0)
  {
    if (v6 < 0 || (v5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [(APAdvertiserBTLEManager *)self dispatchEvent:v9];
LABEL_9:
  if ((v8 & 8) != 0 && (v7 & 8) == 0)
  {
    v10 = 2;
LABEL_15:
    [(APAdvertiserBTLEManager *)self dispatchEvent:v10];
    goto LABEL_16;
  }

  if ((v8 & 8) == 0 && (v7 & 8) != 0)
  {
    v10 = 3;
    goto LABEL_15;
  }

LABEL_16:
  _Block_object_dispose(&v12, 8);
}

uint64_t __78__APAdvertiserBTLEManager_computeNearbyDeviceTypesAndDispatchEventIfNecessary__block_invoke(uint64_t a1)
{
  result = CFGetInt64Ranged();
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *(*(*(a1 + 32) + 8) + 24) |= 0x80000000;
  return result;
}

- (void)removeExpiredDevices
{
  v3 = dispatch_time(0, 0);
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = v4;
    v6 = [(APAdvertiserBTLEManager *)self pendingLostLegacyDevices];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__APAdvertiserBTLEManager_removeExpiredDevices__block_invoke;
    v7[3] = &unk_278C60AF0;
    v7[5] = v5;
    v7[6] = v3;
    v7[4] = self;
    [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v7];
    [(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self pendingLostLegacyDevices] removeObjectsForKeys:v5];

    [(APAdvertiserBTLEManager *)self updateLostLegacyDeviceTimer];
  }

  else
  {

    APSLogErrorAt();
  }
}

unint64_t __47__APAdvertiserBTLEManager_removeExpiredDevices__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedLongLongValue];
  if (result <= *(a1 + 48))
  {
    [*(a1 + 32) removeLostDeviceWithIdentifier:a2];
    v6 = *(a1 + 40);

    return [v6 addObject:a2];
  }

  return result;
}

- (void)updateLostLegacyDeviceTimer
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  if ([(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self pendingLostLegacyDevices] count])
  {
    v3 = [(APAdvertiserBTLEManager *)self pendingLostLegacyDevices];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__APAdvertiserBTLEManager_updateLostLegacyDeviceTimer__block_invoke;
    v11[3] = &unk_278C60AC8;
    v11[4] = &v12;
    [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v11];
    if (![(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer])
    {
      [(APAdvertiserBTLEManager *)self setLostLegacyDeviceTimer:dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue)];
      if (![(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer])
      {
        APSLogErrorAt();
        goto LABEL_8;
      }

      v4 = self;
      v5 = [(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __54__APAdvertiserBTLEManager_updateLostLegacyDeviceTimer__block_invoke_2;
      handler[3] = &unk_278C608C8;
      handler[4] = v4;
      dispatch_source_set_event_handler(v5, handler);
      v6 = [(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __54__APAdvertiserBTLEManager_updateLostLegacyDeviceTimer__block_invoke_3;
      v9[3] = &unk_278C608C8;
      v9[4] = v4;
      dispatch_source_set_cancel_handler(v6, v9);
      dispatch_source_set_timer([(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume([(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer]);
    }

    v7 = [(APAdvertiserBTLEManager *)self lostLegacyDeviceTimer];
    dispatch_source_set_timer(v7, v13[3], 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    lostLegacyDeviceTimer = self->_lostLegacyDeviceTimer;
    if (lostLegacyDeviceTimer)
    {
      dispatch_source_cancel(self->_lostLegacyDeviceTimer);
      dispatch_release(lostLegacyDeviceTimer);
      self->_lostLegacyDeviceTimer = 0;
    }
  }

LABEL_8:
  _Block_object_dispose(&v12, 8);
}

unint64_t __54__APAdvertiserBTLEManager_updateLostLegacyDeviceTimer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedLongLongValue];
  v5 = *(*(a1 + 32) + 8);
  if (result < *(v5 + 24))
  {
    *(v5 + 24) = result;
  }

  return result;
}

- (void)dispatchEvent:(unsigned int)a3
{
  weakSelf = self->_weakSelf;
  FigSimpleMutexLock();
  seed = self->_eventHandlerState.seed;
  v8 = *&self->_eventHandlerState.func;
  FigSimpleMutexUnlock();
  if (v8)
  {
    if (weakSelf)
    {
      CFRetain(weakSelf);
    }

    v7 = [(APAdvertiserBTLEManager *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__APAdvertiserBTLEManager_dispatchEvent___block_invoke;
    block[3] = &__block_descriptor_64_e5_v8__0l;
    block[4] = weakSelf;
    v12 = seed;
    v13 = a3;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void __41__APAdvertiserBTLEManager_dispatchEvent___block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    FigSimpleMutexLock();
    v4 = *(a1 + 56);
    v5 = *(v3 + 48);
    FigSimpleMutexUnlock();
    if (v4 == v5)
    {
      (*(a1 + 40))(*(v3 + 72), *(a1 + 60), *(a1 + 48));
    }

    CFRelease(v3);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

- (void)stopScanningWithSeed:(int)a3
{
  if ([(APAdvertiserBTLEManager *)self btleDiscovererSeed]== a3)
  {
    if ([(APAdvertiserBTLEManager *)self isScanning]&& gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(CBDiscovery *)[(APAdvertiserBTLEManager *)self btleDiscoverer] invalidate];

    [(APAdvertiserBTLEManager *)self setBtleDiscoverer:0];
    [(APAdvertiserBTLEManager *)self setIsScanning:0];
    [(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self pendingLostLegacyDevices] removeAllObjects];
    [(APAdvertiserBTLEManager *)self updateLostLegacyDeviceTimer];
    [(NSMutableDictionary *)[(APAdvertiserBTLEManager *)self soloDevices] removeAllObjects];

    [(APAdvertiserBTLEManager *)self computeNearbyDeviceTypesAndDispatchEventIfNecessary];
  }
}

- (void)stopScanning
{
  v3 = [(APAdvertiserBTLEManager *)self btleDiscovererSeed];

  [(APAdvertiserBTLEManager *)self stopScanningWithSeed:v3];
}

- (void)startScanning
{
  if (![(APAdvertiserBTLEManager *)self isScanning])
  {
    [(APAdvertiserBTLEManager *)self setBtleDiscoverer:[(APAdvertiserBTLEManager *)self createBTLEDiscoverer]];
    if ([(APAdvertiserBTLEManager *)self btleDiscoverer])
    {
      [(APAdvertiserBTLEManager *)self setIsScanning:1];
      if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v3 = self;
      v4 = [(APAdvertiserBTLEManager *)self btleDiscovererSeed]+ 1;
      [(APAdvertiserBTLEManager *)self setBtleDiscovererSeed:v4];
      v5 = [(APAdvertiserBTLEManager *)self btleDiscoverer];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__APAdvertiserBTLEManager_startScanning__block_invoke;
      v6[3] = &unk_278C60A80;
      v6[4] = v3;
      v7 = v4;
      [(CBDiscovery *)v5 activateWithCompletion:v6];
    }

    else
    {
      APSLogErrorAt();

      [(APAdvertiserBTLEManager *)self stopScanning];
    }
  }
}

void __40__APAdvertiserBTLEManager_startScanning__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APAdvertiserBTLEManager <= 90 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [*(a1 + 32) stopScanningWithSeed:{*(a1 + 40), a2}];
    }

    else
    {
      [*(a1 + 32) stopScanningWithSeed:{*(a1 + 40), v5}];
    }
  }

  else if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 32);
}

- (void)restartAdvertisingIfNecessary
{
  [(APAdvertiserBTLEManager *)self stopAdvertising];

  [(APAdvertiserBTLEManager *)self update];
}

- (void)stopAdvertisingWithSeed:(int)a3
{
  if ([(APAdvertiserBTLEManager *)self btleAdvertiserSeed]== a3)
  {
    if ([(APAdvertiserBTLEManager *)self isAdvertising]&& gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      v4 = self;
      v5 = [(APAdvertiserBTLEManager *)self btleAdvertiser];
      LogPrintF();
    }

    [(CBAdvertiser *)[(APAdvertiserBTLEManager *)self btleAdvertiser:v4] invalidate];

    [(APAdvertiserBTLEManager *)self setBtleAdvertiser:0];

    [(APAdvertiserBTLEManager *)self setIsAdvertising:0];
  }
}

- (void)stopAdvertising
{
  v3 = [(APAdvertiserBTLEManager *)self btleAdvertiserSeed];

  [(APAdvertiserBTLEManager *)self stopAdvertisingWithSeed:v3];
}

- (void)startAdvertising
{
  if (![(APAdvertiserBTLEManager *)self isAdvertising]&& [(APAdvertiserBTLEManager *)self canAdvertise])
  {
    [(APAdvertiserBTLEManager *)self setBtleAdvertiser:[(APAdvertiserBTLEManager *)self createBTLEAdvertiser]];
    if ([(APAdvertiserBTLEManager *)self btleAdvertiser])
    {
      [(APAdvertiserBTLEManager *)self setIsAdvertising:1];
      if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
      {
        [(APAdvertiserBTLEManager *)self btleAdvertiser];
        LogPrintF();
      }

      v3 = self;
      v4 = [(APAdvertiserBTLEManager *)self btleAdvertiser];
      v5 = [(APAdvertiserBTLEManager *)self btleAdvertiserSeed]+ 1;
      [(APAdvertiserBTLEManager *)self setBtleAdvertiserSeed:v5];
      v6 = [(APAdvertiserBTLEManager *)self btleAdvertiser];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__APAdvertiserBTLEManager_startAdvertising__block_invoke;
      v9[3] = &unk_278C60A30;
      v9[4] = v3;
      v9[5] = v4;
      v10 = v5;
      [(CBAdvertiser *)v6 activateWithCompletion:v9];
      v7 = [(APAdvertiserBTLEManager *)self btleAdvertiser];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__APAdvertiserBTLEManager_startAdvertising__block_invoke_2;
      v8[3] = &unk_278C60A58;
      v8[4] = v3;
      v8[5] = v4;
      [(CBAdvertiser *)v7 setInvalidationHandler:v8];
    }

    else
    {
      APSLogErrorAt();

      [(APAdvertiserBTLEManager *)self stopAdvertising];
    }
  }
}

void __43__APAdvertiserBTLEManager_startAdvertising__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APAdvertiserBTLEManager <= 90 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 40);
      v6 = *(a1 + 32);
      LogPrintF();
      [*(a1 + 32) stopAdvertisingWithSeed:{*(a1 + 48), v6, v8, a2}];
    }

    else
    {
      [*(a1 + 32) stopAdvertisingWithSeed:{*(a1 + 48), v5, v7, v9}];
    }
  }

  else if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 32);
}

uint64_t __43__APAdvertiserBTLEManager_startAdvertising__block_invoke_2()
{
  if (gLogCategory_APAdvertiserBTLEManager <= 50)
  {
    if (gLogCategory_APAdvertiserBTLEManager != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (int)stopMonitoringForNetworkChanges
{
  [(CUNetInterfaceMonitor *)[(APAdvertiserBTLEManager *)self netInterfaceMonitor] invalidate];

  self->_netInterfaceMonitor = 0;
  return 0;
}

- (int)startMonitoringForNetworkChanges
{
  if ([(APAdvertiserBTLEManager *)self netInterfaceMonitor])
  {
    APSLogErrorAt();
    return -6709;
  }

  else
  {
    if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = objc_alloc_init(MEMORY[0x277D028B0]);
    [v3 setDispatchQueue:{-[APAdvertiserBTLEManager internalQueue](self, "internalQueue")}];
    [v3 setControlFlags:12];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke;
    v7[3] = &unk_278C60A08;
    v7[4] = v3;
    v7[5] = self;
    [v3 setPrimaryIPChangedHandler:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke_2;
    v6[3] = &unk_278C608C8;
    v6[4] = self;
    [v3 setInvalidationHandler:v6];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke_3;
    v5[3] = &unk_278C60A08;
    v5[4] = self;
    v5[5] = v3;
    [v3 activateWithCompletion:v5];
    [(APAdvertiserBTLEManager *)self setNetInterfaceMonitor:v3];
    return 0;
  }
}

uint64_t __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke(uint64_t a1)
{
  v16 = 0;
  v17 = 0;
  LODWORD(v19) = 0;
  v18 = 0;
  v2 = *(a1 + 32);
  if (v2 && ([v2 primaryIPv4Addr], v3 = *(a1 + 32), v12 = 0, v13 = 0, LODWORD(v15) = 0, v14 = 0, v3))
  {
    [v3 primaryIPv6Addr];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v15) = 0;
    v14 = 0;
  }

  v4 = gLogCategory_APAdvertiserBTLEManager;
  if (gLogCategory_APAdvertiserBTLEManager <= 40)
  {
    if (gLogCategory_APAdvertiserBTLEManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return [*(a1 + 40) handlePrimaryIPChanged];
      }

      v4 = gLogCategory_APAdvertiserBTLEManager;
    }

    v5 = *(a1 + 40);
    if (v4 > 30)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == -1 && _LogCategory_Initialize() == 0;
    }

    v10 = v6;
    v11 = &v12;
    v8 = v5;
    v9 = &v16;
    LogPrintF();
  }

  return [*(a1 + 40) handlePrimaryIPChanged];
}

uint64_t __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke_2()
{
  if (gLogCategory_APAdvertiserBTLEManager <= 40)
  {
    if (gLogCategory_APAdvertiserBTLEManager != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __59__APAdvertiserBTLEManager_startMonitoringForNetworkChanges__block_invoke_3(uint64_t a1)
{
  if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    IsAppleInternalBuild();
    [*(a1 + 40) controlFlags];
    LogPrintF();
  }

  v2 = *(a1 + 32);

  return [v2 handlePrimaryIPChanged];
}

- (void)cleanupEventHandlerState
{
  [(APAdvertiserBTLEManager *)self setEventHandler:0 withContext:0];
  if (self->_eventHandlerState.mutex)
  {
    FigSimpleMutexDestroy();
    self->_eventHandlerState.mutex = 0;
  }
}

- (int)setEventHandler:(void *)a3 withContext:(void *)a4
{
  FigSimpleMutexLock();
  ++self->_eventHandlerState.seed;
  self->_eventHandlerState.func = a3;
  self->_eventHandlerState.context = a4;
  FigSimpleMutexUnlock();
  return 0;
}

- (int)setupEventHandlerState
{
  v3 = FigSimpleMutexCreate();
  self->_eventHandlerState.mutex = v3;
  if (v3)
  {
    return 0;
  }

  APSLogErrorAt();
  return -72312;
}

- (int)setProperty:(id)a3 withValue:(id)a4
{
  if ([a3 isEqualToString:@"isP2PAllowed"])
  {
    v7 = -[APAdvertiserBTLEManager setIsP2PAllowed:](self, "setIsP2PAllowed:", [a4 BOOLValueSafe]);
    if (v7)
    {
LABEL_12:
      APSLogErrorAt();
    }
  }

  else if ([a3 isEqualToString:@"requireAltBrowser"])
  {
    v7 = -[APAdvertiserBTLEManager setRequireAltBrowser:](self, "setRequireAltBrowser:", [a4 BOOLValueSafe]);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else if ([a3 isEqualToString:@"receiverPort"])
  {
    v7 = -[APAdvertiserBTLEManager setReceiverPort:](self, "setReceiverPort:", [a4 int64ValueSafe]);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (![a3 isEqualToString:@"accessControlType"])
    {
      return -72311;
    }

    v7 = -[APAdvertiserBTLEManager setAccessControlType:](self, "setAccessControlType:", [a4 int64ValueSafe]);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  return v7;
}

- (int)setAccessControlType:(unsigned int)a3
{
  accessControlType = self->_accessControlType;
  if (accessControlType != a3)
  {
    v4 = *&a3;
    if (gLogCategory_APAdvertiserBTLEManager <= 50)
    {
      if (gLogCategory_APAdvertiserBTLEManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        accessControlType = self->_accessControlType;
      }

      v7 = accessControlType;
      v8 = v4;
      LogPrintF();
    }

LABEL_6:
    self->_accessControlType = v4;
    [(APAdvertiserBTLEManager *)self stopScanning:v7];
    [(APAdvertiserBTLEManager *)self update];
  }

  return 0;
}

- (int)setReceiverPort:(unsigned __int16)a3
{
  receiverPort = self->_receiverPort;
  if (receiverPort != a3)
  {
    v4 = a3;
    if (gLogCategory_APAdvertiserBTLEManager <= 50)
    {
      if (gLogCategory_APAdvertiserBTLEManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        receiverPort = self->_receiverPort;
      }

      v7 = receiverPort;
      v8 = v4;
      LogPrintF();
    }

LABEL_6:
    self->_receiverPort = v4;
    [(APAdvertiserBTLEManager *)self restartAdvertisingIfNecessary:v7];
  }

  return 0;
}

- (int)setRequireAltBrowser:(BOOL)a3
{
  v3 = a3;
  if (![(APAdvertiserBTLEManager *)self isAdvertising])
  {
    requireAltBrowser = self->_requireAltBrowser;
    if (requireAltBrowser == v3)
    {
      return 0;
    }

    if (gLogCategory_APAdvertiserBTLEManager <= 40)
    {
      if (gLogCategory_APAdvertiserBTLEManager != -1)
      {
LABEL_5:
        v6 = "NO";
        if (requireAltBrowser)
        {
          v7 = "YES";
        }

        else
        {
          v7 = "NO";
        }

        if (v3)
        {
          v6 = "YES";
        }

        v9 = v7;
        v10 = v6;
        LogPrintF();
        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(requireAltBrowser) = self->_requireAltBrowser;
        goto LABEL_5;
      }
    }

LABEL_12:
    self->_requireAltBrowser = v3;
    [(APAdvertiserBTLEManager *)self update:v9];
    return 0;
  }

  APSLogErrorAt();
  return -72314;
}

- (int)setIsP2PAllowed:(BOOL)a3
{
  isP2PAllowed = self->_isP2PAllowed;
  if (isP2PAllowed == a3)
  {
    return 0;
  }

  v4 = a3;
  if (gLogCategory_APAdvertiserBTLEManager <= 50)
  {
    if (gLogCategory_APAdvertiserBTLEManager != -1)
    {
LABEL_4:
      v6 = "NO";
      if (isP2PAllowed)
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      if (v4)
      {
        v6 = "YES";
      }

      v10 = v7;
      v11 = v6;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(isP2PAllowed) = self->_isP2PAllowed;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_isP2PAllowed = v4;
  v8 = [(APAdvertiserBTLEManager *)self update:v10];
  if (v8)
  {
    APSLogErrorAt();
  }

  return v8;
}

- (int)setBTLEMode:(unsigned __int16)a3
{
  v3 = a3;
  if (self->_btleMode == a3)
  {
    return 0;
  }

  if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    [APAdvertiserBTLEManager stringForBTLEMode:?];
    [APAdvertiserBTLEManager stringForBTLEMode:v3];
    LogPrintF();
  }

  if (v3 == 1)
  {
    v5 = [(APAdvertiserBTLEManager *)self start];
    if (v5)
    {
LABEL_11:
      APSLogErrorAt();
    }
  }

  else if (v3)
  {
    v5 = -72313;
    if (gLogCategory_APAdvertiserBTLEManager <= 90 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v5 = [(APAdvertiserBTLEManager *)self stop];
    if (v5)
    {
      goto LABEL_11;
    }
  }

  return v5;
}

- (int64_t)btleManagerState
{
  if ([(APAdvertiserBTLEManager *)self btleAdvertiser])
  {
    result = [(APAdvertiserBTLEManager *)self btleAdvertiser];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [(APAdvertiserBTLEManager *)self btleDiscoverer];
    if (!result)
    {
      return result;
    }
  }

  return [result bluetoothState];
}

- (BOOL)shouldScanForSourceWithScreenOff
{
  v2 = IsAppleInternalBuild();
  if (v2)
  {
    if (APSSettingsGetIntWithDefault())
    {
      if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (int)supportsSolo:(BOOL *)a3
{
  if (self->_p2pSoloQueried)
  {
    result = 0;
    p2pSolo = self->_p2pSolo;
  }

  else
  {
    p2pSolo = 0;
    result = -72310;
  }

  *a3 = p2pSolo;
  return result;
}

- (int)updateSupportsSoloAndForceReadFromPrefs:(BOOL)a3
{
  result = 0;
  if (!self->_p2pSoloQueried || a3)
  {
    v6 = APSSettingsGetInt64() != 0;
    if (self->_p2pSolo == v6)
    {
      result = 0;
    }

    else
    {
      if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
      {
        v7 = "yes";
        if (v6)
        {
          v8 = "no";
        }

        else
        {
          v8 = "yes";
        }

        if (!v6)
        {
          v7 = "no";
        }

        v9 = v8;
        v10 = v7;
        LogPrintF();
      }

      self->_p2pSolo = v6;
      [(APAdvertiserBTLEManager *)self update:v9];
      result = 0;
    }

    self->_p2pSoloQueried = 1;
  }

  return result;
}

- (int)updatePreferences
{
  v8 = 0;
  v7 = 0;
  notify_get_state([(APAdvertiserBTLEManager *)self touchSetupActiveNotifyToken], &v7);
  v3 = 0;
  if (!v7)
  {
    Int64 = APSSettingsGetInt64();
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = Int64 == 0;
    }

    v3 = !v5;
  }

  [(APAdvertiserBTLEManager *)self setIsEnabled:v3];
  v8 = [(APAdvertiserBTLEManager *)self updateSupportsSoloAndForceReadFromPrefs:1];
  result = [(APAdvertiserBTLEManager *)self update];
  v8 = result;
  if (result)
  {
    APSLogErrorAt();
    return v8;
  }

  return result;
}

- (int)update
{
  if (gLogCategory_APAdvertiserBTLEManager <= 20 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    if ([(APAdvertiserBTLEManager *)self isEnabled])
    {
      v3 = "yes";
    }

    else
    {
      v3 = "no";
    }

    btleMode = self->_btleMode;
    v7 = [APAdvertiserBTLEManager stringForBTLEState:[(APAdvertiserBTLEManager *)self btleManagerState]];
    v5 = v3;
    LogPrintF();
  }

  if (![(APAdvertiserBTLEManager *)self isEnabled:v5]|| !self->_btleMode)
  {
    if ([(APAdvertiserBTLEManager *)self isAdvertising])
    {
      [(APAdvertiserBTLEManager *)self stopAdvertising];
    }

    goto LABEL_17;
  }

  if ([(APAdvertiserBTLEManager *)self isEnabled]&& self->_btleMode == 1)
  {
    [(APAdvertiserBTLEManager *)self startAdvertising];
    if (self->_p2pSolo)
    {
      if (self->_isP2PAllowed)
      {
        [(APAdvertiserBTLEManager *)self startScanning];
        return 0;
      }
    }

    else if (self->_isP2PAllowed)
    {
      return 0;
    }

LABEL_17:
    [(APAdvertiserBTLEManager *)self stopScanning];
  }

  return 0;
}

- (void)handleP2PSoloQueryTimerCancelled
{
  if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)handleP2PSoloQueryTimerFired
{
  if (![(APAdvertiserBTLEManager *)self updateSupportsSoloAndForceReadFromPrefs:0])
  {
    p2pSoloQueryTimer = self->_p2pSoloQueryTimer;
    if (p2pSoloQueryTimer)
    {
      dispatch_source_cancel(self->_p2pSoloQueryTimer);
      dispatch_release(p2pSoloQueryTimer);
      self->_p2pSoloQueryTimer = 0;
    }
  }
}

- (int)startP2PSoloQueryTimer
{
  if (self->_p2pSoloQueried)
  {
    return 0;
  }

  handler[5] = v5;
  handler[6] = v4;
  handler[9] = v2;
  handler[10] = v3;
  if (self->_p2pSoloQueryTimer)
  {
    return 0;
  }

  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  self->_p2pSoloQueryTimer = v8;
  if (!v8)
  {
    APSLogErrorAt();
    return -72312;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__APAdvertiserBTLEManager_startP2PSoloQueryTimer__block_invoke;
  handler[3] = &unk_278C608C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  p2pSoloQueryTimer = self->_p2pSoloQueryTimer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__APAdvertiserBTLEManager_startP2PSoloQueryTimer__block_invoke_2;
  v12[3] = &unk_278C608C8;
  v12[4] = self;
  dispatch_source_set_cancel_handler(p2pSoloQueryTimer, v12);
  v10 = self->_p2pSoloQueryTimer;
  v11 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(v10, v11, 0x1DCD6500uLL, 0x3B9ACA00uLL);
  dispatch_resume(self->_p2pSoloQueryTimer);
  if (gLogCategory_APAdvertiserBTLEManager > 40)
  {
    return 0;
  }

  if (gLogCategory_APAdvertiserBTLEManager != -1 || (result = _LogCategory_Initialize()) != 0)
  {
    LogPrintF();
    return 0;
  }

  return result;
}

- (int)stop
{
  if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!self->_btleMode)
  {
    return 0;
  }

  self->_btleMode = 0;
  v3 = [(APAdvertiserBTLEManager *)self stopMonitoringForNetworkChanges];
  if (v3)
  {
    v4 = v3;
    goto LABEL_11;
  }

  v4 = [(APAdvertiserBTLEManager *)self update];
  if (v4)
  {
LABEL_11:
    APSLogErrorAt();
  }

  return v4;
}

- (int)start
{
  if (self->_btleMode == 1)
  {
    APSLogErrorAt();
  }

  else
  {
    if (gLogCategory_APAdvertiserBTLEManager <= 40 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      v4 = self;
      LogPrintF();
    }

    self->_btleMode = 1;
    [(APAdvertiserBTLEManager *)self startMonitoringForNetworkChanges];
    [(APAdvertiserBTLEManager *)self update];
  }

  return 0;
}

- (id)createBTLEDiscoverer
{
  v12 = -75;
  v3 = objc_alloc_init(MEMORY[0x277CBE030]);
  if (v3)
  {
    [v3 setDispatchQueue:{-[APAdvertiserBTLEManager internalQueue](self, "internalQueue")}];
    [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x5000000000}];
    if ([(APAdvertiserBTLEManager *)self shouldScanForSourceWithScreenOff])
    {
      [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x2000000}];
      [v3 setBleScanRateScreenOff:20];
    }

    v4 = "no";
    if (IsAppleInternalBuild() && APSSettingsGetInt64IfPresent())
    {
      v4 = "yes";
    }

    if (gLogCategory_APAdvertiserBTLEManager <= 30 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      v7 = v12;
      v8 = v4;
      LogPrintF();
    }

    [v3 setBleRSSIThresholdHint:{v12, v7, v8}];
    v5 = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__APAdvertiserBTLEManager_createBTLEDiscoverer__block_invoke;
    v11[3] = &unk_278C609E0;
    v11[4] = v5;
    [v3 setDeviceFoundHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__APAdvertiserBTLEManager_createBTLEDiscoverer__block_invoke_2;
    v10[3] = &unk_278C609E0;
    v10[4] = v5;
    [v3 setDeviceLostHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__APAdvertiserBTLEManager_createBTLEDiscoverer__block_invoke_3;
    v9[3] = &unk_278C608C8;
    v9[4] = v5;
    [v3 setInvalidationHandler:v9];
  }

  else
  {
    APSLogErrorAt();
  }

  return v3;
}

uint64_t __47__APAdvertiserBTLEManager_createBTLEDiscoverer__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 airplaySourceFlags];
  v5 = *(a1 + 32);
  if (v4 < 0)
  {

    return [v5 handleLostDevice:a2 withGoodbye:1];
  }

  else
  {

    return [v5 handleFoundDevice:a2];
  }
}

- (id)createBTLEAdvertiser
{
  v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
  if (!v3)
  {
    APSLogErrorAt();
    return v3;
  }

  [v3 setDispatchQueue:{-[APAdvertiserBTLEManager internalQueue](self, "internalQueue")}];
  v4 = [(APAdvertiserBTLEManager *)self seed];
  [(APAdvertiserBTLEManager *)self setSeed:(v4 + 1)];
  [v3 setAirplayTargetConfigSeed:v4];
  [v3 setAirplayTargetFlags:{objc_msgSend(v3, "airplayTargetFlags") | 2}];
  if (self->_p2pSolo)
  {
    [v3 setAirplayTargetFlags:{objc_msgSend(v3, "airplayTargetFlags") | 1}];
  }

  v5 = [(APAdvertiserBTLEManager *)self netInterfaceMonitor];
  if (v5)
  {
    [(CUNetInterfaceMonitor *)v5 primaryIPv4Addr];
  }

  else
  {
    v7 = 0uLL;
  }

  if (BYTE1(v7) != 2)
  {
LABEL_18:
    [v3 invalidate];

    return 0;
  }

  [v3 setAirplayTargetIPv4:bswap32(DWORD1(v7))];
  if (self->_receiverPort)
  {
    [v3 setAirplayTargetPort:?];
    [v3 setAirplayTargetFlags:{objc_msgSend(v3, "airplayTargetFlags") | 0x10}];
  }

  if (![v3 airplayTargetFlags])
  {
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (gLogCategory_APAdvertiserBTLEManager <= 50 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    [v3 airplayTargetFlags];
    [v3 airplayTargetConfigSeed];
    [v3 airplayTargetPort];
    LogPrintF();
  }

  return v3;
}

- (void)invalidate
{
  if (![(APAdvertiserBTLEManager *)self isInvalidated])
  {
    [(APAdvertiserBTLEManager *)self setIsInvalidated:1];
    [(APAdvertiserBTLEManager *)self stop];
    [(CBAdvertiser *)self->_btleAdvertiser invalidate];
    [(CBDiscovery *)self->_btleDiscoverer invalidate];
    [(APAdvertiserBTLEManager *)self setEventHandler:0 withContext:0];
    p2pSoloQueryTimer = self->_p2pSoloQueryTimer;
    if (p2pSoloQueryTimer)
    {
      dispatch_release(p2pSoloQueryTimer);
      self->_p2pSoloQueryTimer = 0;
    }
  }
}

- (void)dealloc
{
  self->_eventContext = 0;
  [(APAdvertiserBTLEManager *)self cleanupEventHandlerState];

  self->_btleAdvertiser = 0;
  self->_btleDiscoverer = 0;

  self->_soloDevices = 0;
  self->_pendingLostLegacyDevices = 0;
  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
    self->_internalQueue = 0;
  }

  eventQueue = self->_eventQueue;
  if (eventQueue)
  {
    dispatch_release(eventQueue);
    self->_eventQueue = 0;
  }

  weakSelf = self->_weakSelf;
  if (weakSelf)
  {
    CFRelease(weakSelf);
    self->_weakSelf = 0;
  }

  touchSetupActiveNotifyToken = self->_touchSetupActiveNotifyToken;
  if (touchSetupActiveNotifyToken != -1)
  {
    notify_cancel(touchSetupActiveNotifyToken);
    self->_touchSetupActiveNotifyToken = -1;
  }

  v7.receiver = self;
  v7.super_class = APAdvertiserBTLEManager;
  [(APAdvertiserBTLEManager *)&v7 dealloc];
}

- (APAdvertiserBTLEManager)initWithEventContext:(void *)a3
{
  v3 = self;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!a3)
  {
    APSLogErrorAt();
    v16 = v22;
    v17 = -6705;
LABEL_19:
    *(v16 + 6) = v17;
    goto LABEL_10;
  }

  v20.receiver = self;
  v20.super_class = APAdvertiserBTLEManager;
  v5 = [(APAdvertiserBTLEManager *)&v20 init];
  v3 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5->_eventContext = a3;
  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v3->_weakSelf = v6;
  if (!v6 || (v7 = dispatch_queue_create("APAdvertiserBTLEManagerInternalQueue", 0), (v3->_internalQueue = v7) == 0) || (v8 = dispatch_queue_create("APAdvertiserBTLEManagerEventQueue", 0), (v3->_eventQueue = v8) == 0) || (v9 = objc_alloc_init(MEMORY[0x277CBEB38]), (v3->_soloDevices = v9) == 0) || (v10 = objc_alloc_init(MEMORY[0x277CBEB38]), (v3->_pendingLostLegacyDevices = v10) == 0))
  {
    APSLogErrorAt();
    v16 = v22;
    v17 = -72312;
    goto LABEL_19;
  }

  v11 = [(APAdvertiserBTLEManager *)v3 setupEventHandlerState];
  *(v22 + 6) = v11;
  if (v11)
  {
    APSLogErrorAt();
  }

  else
  {
    internalQueue = v3->_internalQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__APAdvertiserBTLEManager_initWithEventContext___block_invoke;
    handler[3] = &unk_278C609B8;
    handler[4] = v3;
    v13 = notify_register_dispatch("com.apple.TouchRemote.deviceSetupActive", &v3->_touchSetupActiveNotifyToken, internalQueue, handler);
    *(v22 + 6) = v13;
    v14 = v3->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__APAdvertiserBTLEManager_initWithEventContext___block_invoke_2;
    block[3] = &unk_278C60990;
    block[4] = v3;
    block[5] = &v21;
    dispatch_sync(v14, block);
  }

LABEL_10:
  if (*(v22 + 6))
  {
    if (gLogCategory_APAdvertiserBTLEManager <= 90 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v3;
}

uint64_t __48__APAdvertiserBTLEManager_initWithEventContext___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) startP2PSoloQueryTimer];
  if (*(*(*(a1 + 40) + 8) + 24) || (*(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) updatePreferences], result = *(*(*(a1 + 40) + 8) + 24), result))
  {

    return APSLogErrorAt();
  }

  return result;
}

+ (id)stringForBTLEState:(int64_t)a3
{
  if (a3 < 6)
  {
    return off_278C60B30[a3];
  }

  if (gLogCategory_APAdvertiserBTLEManager <= 60 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return @"unknown";
}

+ (id)stringForBTLEMode:(unsigned __int16)a3
{
  if (!a3)
  {
    return @"None";
  }

  if (a3 == 1)
  {
    return @"Discoverable";
  }

  if (gLogCategory_APAdvertiserBTLEManager <= 60 && (gLogCategory_APAdvertiserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return @"Unknown ";
}

@end