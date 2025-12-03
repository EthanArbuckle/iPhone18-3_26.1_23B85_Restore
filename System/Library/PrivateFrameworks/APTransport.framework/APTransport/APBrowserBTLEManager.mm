@interface APBrowserBTLEManager
+ (id)stringForBTLEMode:(unsigned __int16)mode;
+ (id)stringForBTLEState:(int64_t)state;
+ (int)createEventInfoDictionary:(id *)dictionary withDeviceID:(id)d IPAddress:(id)address port:(id)port supportsSolo:(id)solo rssi:(id)rssi;
- (APBrowserBTLEManager)initWithEventContext:(void *)context;
- (BOOL)shouldAdvertiseSourcePresence;
- (id)createBTLEAdvertiser;
- (id)createBTLEDiscoverer;
- (int)copyShowInfo:(id *)info verbose:(BOOL)verbose;
- (int)dispatchEvent:(unsigned int)event withEventInfo:(id)info;
- (int)ensureAdvertisingStarted;
- (int)ensureAdvertisingStopped;
- (int)ensureAdvertisingStoppedWithSeed:(int)seed;
- (int)ensurePreferencesUpdatedWithShouldForce:(BOOL)force;
- (int)ensureScanningStarted;
- (int)ensureScanningStopped;
- (int)ensureScanningStoppedWithSeed:(int)seed;
- (int)getBTLEMode:(unsigned __int16 *)mode;
- (int)handleFoundDevice:(id)device;
- (int)handleLostDevice:(id)device;
- (int)invalidate;
- (int)setEventHandler:(void *)handler context:(void *)context managerRef:(OpaqueAPBrowserBTLEManager *)ref;
- (int)setSupportsSolo:(BOOL)solo;
- (int)startMode:(unsigned __int16)mode;
- (int)stop;
- (int)update;
- (int64_t)btleManagerState;
- (uint64_t)createBTLEAdvertiser;
- (uint64_t)update;
- (unint64_t)nearbySoloDevicesCount;
- (void)dealloc;
@end

@implementation APBrowserBTLEManager

- (int)ensureScanningStarted
{
  if ([(APBrowserBTLEManager *)self isScanning])
  {
    return 0;
  }

  [(APBrowserBTLEManager *)self setBtleDiscoverer:[(APBrowserBTLEManager *)self createBTLEDiscoverer]];
  if ([(APBrowserBTLEManager *)self btleDiscoverer])
  {
    [OUTLINED_FUNCTION_11_0() setIsScanning:?];
    if (gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    selfCopy = self;
    [(APBrowserBTLEManager *)self setBtleDiscovererSeed:[(APBrowserBTLEManager *)self btleDiscovererSeed]+ 1];
    [(APBrowserBTLEManager *)self btleDiscoverer];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_14(v4, v5, v6, v7, v8, v9, v10, v11, v13, 3221225472, v14, v15, v16, v17);
    return 0;
  }

  APSLogErrorAt();
  [(APBrowserBTLEManager *)self ensureScanningStopped];
  return -72220;
}

- (int)update
{
  if ([(APBrowserBTLEManager *)self isEnabled]&& self->_btleMode)
  {
    if ([(APBrowserBTLEManager *)self isEnabled]&& self->_btleMode)
    {
      ensureScanningStarted = [(APBrowserBTLEManager *)self ensureScanningStarted];
      if (ensureScanningStarted)
      {
        ensureScanningStopped = ensureScanningStarted;
        [APBrowserBTLEManager update];
        return ensureScanningStopped;
      }

      if (!APSIsAPMSpeaker())
      {
        if (self->_btleMode == 2 && self->_p2pSoloSupported && ![(APBrowserBTLEManager *)self isSoloBeaconDisabled]&& [(APBrowserBTLEManager *)self shouldAdvertiseSourcePresence])
        {
          ensureAdvertisingStarted = [(APBrowserBTLEManager *)self ensureAdvertisingStarted];
          if (ensureAdvertisingStarted)
          {
            ensureScanningStopped = ensureAdvertisingStarted;
            [APBrowserBTLEManager update];
            return ensureScanningStopped;
          }
        }

        else
        {
          ensureAdvertisingStopped = [(APBrowserBTLEManager *)self ensureAdvertisingStopped];
          if (ensureAdvertisingStopped)
          {
            ensureScanningStopped = ensureAdvertisingStopped;
            [APBrowserBTLEManager update];
            return ensureScanningStopped;
          }
        }
      }

      p2pSoloSupported = self->_p2pSoloSupported;
    }
  }

  else
  {
    ensureAdvertisingStopped2 = [(APBrowserBTLEManager *)self ensureAdvertisingStopped];
    if (ensureAdvertisingStopped2)
    {
      ensureScanningStopped = ensureAdvertisingStopped2;
      [APBrowserBTLEManager update];
      return ensureScanningStopped;
    }

    ensureScanningStopped = [(APBrowserBTLEManager *)self ensureScanningStopped];
    if (ensureScanningStopped)
    {
      [APBrowserBTLEManager update];
      return ensureScanningStopped;
    }
  }

  if (gLogCategory_APBrowserBTLEManager <= 10 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    [(APBrowserBTLEManager *)self update];
  }

  return 0;
}

- (int)ensureAdvertisingStopped
{
  btleAdvertiserSeed = [(APBrowserBTLEManager *)self btleAdvertiserSeed];

  return [(APBrowserBTLEManager *)self ensureAdvertisingStoppedWithSeed:btleAdvertiserSeed];
}

- (id)createBTLEDiscoverer
{
  v3 = objc_alloc_init(MEMORY[0x277CBE030]);
  if (v3)
  {
    [v3 setDispatchQueue:{-[APBrowserBTLEManager queue](self, "queue")}];
    [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x8000000000}];
    selfCopy = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__APBrowserBTLEManager_createBTLEDiscoverer__block_invoke;
    v8[3] = &unk_278BC6E60;
    v8[4] = selfCopy;
    [v3 setDeviceFoundHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__APBrowserBTLEManager_createBTLEDiscoverer__block_invoke_2;
    v7[3] = &unk_278BC6E60;
    v7[4] = selfCopy;
    [v3 setDeviceLostHandler:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__APBrowserBTLEManager_createBTLEDiscoverer__block_invoke_3;
    v6[3] = &unk_278BC6E38;
    v6[4] = selfCopy;
    [v3 setInvalidationHandler:v6];
  }

  else
  {
    [APBrowserBTLEManager createBTLEDiscoverer];
  }

  return v3;
}

void __45__APBrowserBTLEManager_ensureScanningStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APBrowserBTLEManager <= 90 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      __45__APBrowserBTLEManager_ensureScanningStarted__block_invoke_cold_1();
    }

    [*(a1 + 32) ensureScanningStoppedWithSeed:*(a1 + 40)];
  }

  else if (gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    __45__APBrowserBTLEManager_ensureScanningStarted__block_invoke_cold_2();
  }

  v3 = *(a1 + 32);
}

uint64_t __44__APBrowserBTLEManager_createBTLEDiscoverer__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 airplayTargetFlags];
  v5 = *(a1 + 32);
  if (v4 < 0)
  {

    return [v5 handleLostDevice:a2];
  }

  else
  {

    return [v5 handleFoundDevice:a2];
  }
}

- (unint64_t)nearbySoloDevicesCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)[(APBrowserBTLEManager *)self btleDevices] allValues];
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) airplayTargetFlags] & 1;
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (APBrowserBTLEManager)initWithEventContext:(void *)context
{
  selfCopy = self;
  if (context)
  {
    v10.receiver = self;
    v10.super_class = APBrowserBTLEManager;
    v5 = [(APBrowserBTLEManager *)&v10 init];
    selfCopy = v5;
    if (!v5)
    {
      return selfCopy;
    }

    v5->_eventContext = context;
    v6 = dispatch_queue_create("APBrowserBTLEManagerInternalQueue", 0);
    selfCopy->_queue = v6;
    if (v6)
    {
      v7 = dispatch_queue_create("APBrowserBTLEManagerEventQueue", 0);
      selfCopy->_eventQueue = v7;
      if (v7)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        selfCopy->_btleDevices = v8;
        if (v8)
        {
          return selfCopy;
        }

        [APBrowserBTLEManager initWithEventContext:];
      }

      else
      {
        [APBrowserBTLEManager initWithEventContext:];
      }
    }

    else
    {
      [APBrowserBTLEManager initWithEventContext:];
    }
  }

  else
  {
    [APBrowserBTLEManager initWithEventContext:];
  }

  if (gLogCategory_APBrowserBTLEManager <= 90 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    [APBrowserBTLEManager initWithEventContext:];
  }

  return 0;
}

- (void)dealloc
{
  self->_eventContext = 0;

  self->_btleAdvertiser = 0;
  self->_btleDiscoverer = 0;

  self->_btleDevices = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  eventQueue = self->_eventQueue;
  if (eventQueue)
  {
    dispatch_release(eventQueue);
    self->_eventQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = APBrowserBTLEManager;
  [(APBrowserBTLEManager *)&v5 dealloc];
}

uint64_t __34__APBrowserBTLEManager_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEventHandlerFunc:0];
  v2 = *(a1 + 32);

  return [v2 setEventHandlerContext:0];
}

- (id)createBTLEAdvertiser
{
  v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
  if (v3)
  {
    [v3 setDispatchQueue:{-[APBrowserBTLEManager queue](self, "queue")}];
    [v3 setAirplaySourceFlags:18];
    if (APSIsOpenNANSenderEnabled())
    {
      [v3 setAirplaySourceFlags:{objc_msgSend(v3, "airplaySourceFlags") | 1}];
    }

    if ([(APBrowserBTLEManager *)self browseForAltReceiver])
    {
      [v3 setAirplaySourceFlags:{objc_msgSend(v3, "airplaySourceFlags") | 4}];
    }

    if (APSIsProximitySenderEnabled())
    {
      [v3 setAirplaySourceFlags:{objc_msgSend(v3, "airplaySourceFlags") | 8}];
    }

    if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      [(APBrowserBTLEManager *)v3 createBTLEAdvertiser];
    }
  }

  else
  {
    [APBrowserBTLEManager createBTLEAdvertiser];
  }

  return v3;
}

uint64_t __59__APBrowserBTLEManager_setEventHandler_context_managerRef___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEventHandlerFunc:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setEventHandlerContext:v2];
}

- (BOOL)shouldAdvertiseSourcePresence
{
  if (!APSIsAPMSpeaker())
  {
    return 1;
  }

  APSCopyTightSyncInfo();
  return 0;
}

void __48__APBrowserBTLEManager_ensureAdvertisingStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_APBrowserBTLEManager <= 90 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
    {
      __48__APBrowserBTLEManager_ensureAdvertisingStarted__block_invoke_cold_1();
    }

    [*(a1 + 32) ensureAdvertisingStoppedWithSeed:*(a1 + 40)];
  }

  else if (gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    __48__APBrowserBTLEManager_ensureAdvertisingStarted__block_invoke_cold_2();
  }

  v3 = *(a1 + 32);
}

- (int)ensureScanningStopped
{
  btleDiscovererSeed = [(APBrowserBTLEManager *)self btleDiscovererSeed];

  return [(APBrowserBTLEManager *)self ensureScanningStoppedWithSeed:btleDiscovererSeed];
}

- (int)dispatchEvent:(unsigned int)event withEventInfo:(id)info
{
  objc_initWeak(&location, self);
  eventQueue = [(APBrowserBTLEManager *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__APBrowserBTLEManager_dispatchEvent_withEventInfo___block_invoke;
  block[3] = &unk_278BC6ED8;
  objc_copyWeak(&v10, &location);
  eventCopy = event;
  block[4] = self;
  block[5] = info;
  dispatch_async(eventQueue, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return 0;
}

+ (int)createEventInfoDictionary:(id *)dictionary withDeviceID:(id)d IPAddress:(id)address port:(id)port supportsSolo:(id)solo rssi:(id)rssi
{
  if (d)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    if (v14)
    {
      v15 = v14;
      [v14 setObject:d forKeyedSubscript:@"deviceID"];
      if (address)
      {
        [v15 setObject:address forKeyedSubscript:@"ipAddress"];
      }

      if (port)
      {
        [v15 setObject:port forKeyedSubscript:@"port"];
      }

      if (solo)
      {
        [v15 setObject:solo forKeyedSubscript:@"supportsSolo"];
      }

      if (rssi)
      {
        [v15 setObject:rssi forKeyedSubscript:@"rssi"];
      }

      v16 = 0;
      *dictionary = v15;
    }

    else
    {
      +[APBrowserBTLEManager createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:];
      return -72220;
    }
  }

  else
  {
    v16 = -72221;
    +[APBrowserBTLEManager createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:];
  }

  return v16;
}

+ (id)stringForBTLEMode:(unsigned __int16)mode
{
  if (mode < 3u)
  {
    return off_278BC6EF8[mode];
  }

  if (gLogCategory_APBrowserBTLEManager <= 60 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    +[APBrowserBTLEManager stringForBTLEMode:];
  }

  return @"Unknown";
}

+ (id)stringForBTLEState:(int64_t)state
{
  if (state < 6)
  {
    return off_278BC6F10[state];
  }

  if (gLogCategory_APBrowserBTLEManager <= 60 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    +[APBrowserBTLEManager stringForBTLEState:];
  }

  return @"unknown";
}

- (int)invalidate
{
  if ([(APBrowserBTLEManager *)self isInvalidated])
  {
    return -72224;
  }

  [OUTLINED_FUNCTION_11_0() setIsInvalidated:?];
  [(APBrowserBTLEManager *)self stop];
  v3 = [(APBrowserBTLEManager *)self dispatchEvent:4 withEventInfo:0];
  [(CBAdvertiser *)[(APBrowserBTLEManager *)self btleAdvertiser] invalidate];
  [(CBDiscovery *)[(APBrowserBTLEManager *)self btleDiscoverer] invalidate];
  [(APBrowserBTLEManager *)self eventQueue];
  OUTLINED_FUNCTION_1_2();
  v7 = 3221225472;
  v8 = __34__APBrowserBTLEManager_invalidate__block_invoke;
  v9 = &unk_278BC6E38;
  selfCopy = self;
  dispatch_sync(v4, block);
  return v3;
}

- (int)startMode:(unsigned __int16)mode
{
  if (!mode)
  {
    APSLogErrorAt();
    return -72221;
  }

  OUTLINED_FUNCTION_6();
  if (*(v5 + 8) == v6)
  {
    return 0;
  }

  v7 = [OUTLINED_FUNCTION_12() ensurePreferencesUpdatedWithShouldForce:?];
  if (v7)
  {
    update = v7;
LABEL_13:
    APSLogErrorAt();
    return update;
  }

  if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_7()))
  {
    v10 = [APBrowserBTLEManager stringForBTLEMode:v4];
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  v3[4] = v4;
  update = [v3 update];
  if (update)
  {
    goto LABEL_13;
  }

  return update;
}

- (int)stop
{
  if (!self->_btleMode)
  {
    return 0;
  }

  if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  self->_btleMode = 0;
  update = [(APBrowserBTLEManager *)self update];
  if (update)
  {
    v4 = update;
    goto LABEL_11;
  }

  v4 = [(APBrowserBTLEManager *)self dispatchEvent:3 withEventInfo:0];
  if (v4)
  {
LABEL_11:
    APSLogErrorAt();
  }

  return v4;
}

- (int)setEventHandler:(void *)handler context:(void *)context managerRef:(OpaqueAPBrowserBTLEManager *)ref
{
  v8 = -72224;
  if (![(APBrowserBTLEManager *)self isInvalidated:handler])
  {
    if (self->_btleMode)
    {
      APSLogErrorAt();
      return -72223;
    }

    else
    {
      [(APBrowserBTLEManager *)self eventQueue];
      OUTLINED_FUNCTION_1_2();
      v12 = 3221225472;
      v13 = __59__APBrowserBTLEManager_setEventHandler_context_managerRef___block_invoke;
      v14 = &unk_278BC6E88;
      selfCopy = self;
      handlerCopy = handler;
      contextCopy = context;
      dispatch_sync(v9, block);
      return 0;
    }
  }

  return v8;
}

- (int)ensurePreferencesUpdatedWithShouldForce:(BOOL)force
{
  OUTLINED_FUNCTION_6();
  if ([v5 isInvalidated])
  {
    return -72224;
  }

  if (v4 & 1) == 0 && ([v3 preferencesUpdated])
  {
    return 0;
  }

  v14 = APSIsDemoModeEnabled() == 0;
  BooleanIfPresent = APSSettingsGetBooleanIfPresent();
  if (gLogCategory_APBrowserBTLEManager <= 50)
  {
    v7 = BooleanIfPresent;
    if (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_8())
    {
      v8 = "yes";
      if (v14)
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      if (!v7)
      {
        v8 = "no";
      }

      v12 = v9;
      v13 = v8;
      OUTLINED_FUNCTION_9();
    }
  }

  [v3 setIsEnabled:{v14, v12, v13}];
  [OUTLINED_FUNCTION_12() setIsSoloBeaconDisabled:?];
  update = [v3 update];
  if (update)
  {
    APSLogErrorAt();
  }

  else
  {
    [OUTLINED_FUNCTION_11_0() setPreferencesUpdated:?];
  }

  return update;
}

- (int)setSupportsSolo:(BOOL)solo
{
  OUTLINED_FUNCTION_6();
  if ([v5 isInvalidated])
  {
    return -72224;
  }

  v3[11] = 1;
  v6 = v3[10];
  if (v6 == v4)
  {
    return 0;
  }

  if (gLogCategory_APBrowserBTLEManager <= 40)
  {
    if (gLogCategory_APBrowserBTLEManager != -1)
    {
LABEL_6:
      v8 = "no";
      if (v6)
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      if (v4)
      {
        v8 = "yes";
      }

      v11 = v9;
      v12 = v8;
      OUTLINED_FUNCTION_5();
      LogPrintF();
      goto LABEL_13;
    }

    if (OUTLINED_FUNCTION_7())
    {
      LOBYTE(v6) = v3[10];
      goto LABEL_6;
    }
  }

LABEL_13:
  v3[10] = v4;
  update = [v3 update];
  if (update)
  {
    APSLogErrorAt();
  }

  return update;
}

- (int)getBTLEMode:(unsigned __int16 *)mode
{
  if ([(APBrowserBTLEManager *)self isInvalidated])
  {
    return -72224;
  }

  result = 0;
  *mode = self->_btleMode;
  return result;
}

- (int)ensureAdvertisingStarted
{
  if ([(APBrowserBTLEManager *)self isAdvertising])
  {
    return 0;
  }

  [(APBrowserBTLEManager *)self setBtleAdvertiser:[(APBrowserBTLEManager *)self createBTLEAdvertiser]];
  if ([(APBrowserBTLEManager *)self btleAdvertiser])
  {
    [OUTLINED_FUNCTION_11_0() setIsAdvertising:?];
    if (gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    selfCopy = self;
    [(APBrowserBTLEManager *)self setBtleAdvertiserSeed:[(APBrowserBTLEManager *)self btleAdvertiserSeed]+ 1];
    [(APBrowserBTLEManager *)self btleAdvertiser];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_14(v4, v5, v6, v7, v8, v9, v10, v11, v13, 3221225472, v14, v15, v16, v17);
    return 0;
  }

  APSLogErrorAt();
  [(APBrowserBTLEManager *)self ensureAdvertisingStopped];
  return -72220;
}

- (int)ensureAdvertisingStoppedWithSeed:(int)seed
{
  OUTLINED_FUNCTION_6();
  if ([v5 btleAdvertiserSeed] == v4)
  {
    if ([v3 isAdvertising] && gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    [objc_msgSend(v3 "btleAdvertiser")];

    [v3 setBtleAdvertiser:0];
    [OUTLINED_FUNCTION_12() setIsAdvertising:?];
  }

  return 0;
}

- (int)ensureScanningStoppedWithSeed:(int)seed
{
  OUTLINED_FUNCTION_6();
  if ([v5 btleDiscovererSeed] == v4)
  {
    if ([v3 isScanning] && gLogCategory_APBrowserBTLEManager <= 50 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    [objc_msgSend(v3 "btleDiscoverer")];

    [v3 setBtleDiscoverer:0];
    [OUTLINED_FUNCTION_12() setIsScanning:?];
    [objc_msgSend(v3 "btleDevices")];
  }

  return 0;
}

uint64_t __52__APBrowserBTLEManager_dispatchEvent_withEventInfo___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 48));
  result = [Weak eventHandlerFunc];
  if (result)
  {
    v8 = [Weak eventHandlerFunc];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 56);
    v7 = [Weak eventHandlerContext];

    return v8(v5, v6, v4, v7);
  }

  return result;
}

- (int)handleFoundDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = 0;
  bzero(v37, 0x100uLL);
  if (!self->_btleMode)
  {
    goto LABEL_43;
  }

  if (([device airplayTargetFlags] & 0x20) != 0)
  {
    if (![device airplayTargetIPv6])
    {
      if (gLogCategory_APBrowserBTLEManager > 90 || gLogCategory_APBrowserBTLEManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    v6 = [objc_msgSend(device "airplayTargetIPv6")];
    OUTLINED_FUNCTION_13(v6, v7, v8, v9, v37);
  }

  else
  {
    [device airplayTargetIPv4];
    IPv4AddressToCString();
  }

  airplayTargetPort = [device airplayTargetPort];
  if (!airplayTargetPort)
  {
    if (([device airplayTargetFlags] & 2) != 0)
    {
      airplayTargetPort = 7000;
    }

    else
    {
      airplayTargetPort = 5000;
    }
  }

  if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_7()))
  {
    [device identifier];
    airplayTargetFlags = [OUTLINED_FUNCTION_10() airplayTargetFlags];
    v33 = &unk_23D38369C;
    v27 = v37;
    v29 = airplayTargetPort;
    v25 = v3;
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  if (![device airplayTargetIPv4] && !objc_msgSend(device, "airplayTargetIPv6") && !objc_msgSend(device, "airplayTargetFlags"))
  {
    if (gLogCategory_APBrowserBTLEManager > 40 || gLogCategory_APBrowserBTLEManager == -1 && !OUTLINED_FUNCTION_7())
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_5();
LABEL_39:
    LogPrintF();
LABEL_43:
    update = 0;
    goto LABEL_27;
  }

  if (gLogCategory_APBrowserBTLEManager <= 10 && (gLogCategory_APBrowserBTLEManager != -1 || _LogCategory_Initialize()))
  {
    [device identifier];
    bleRSSI = [OUTLINED_FUNCTION_10() bleRSSI];
    airplayTargetFlags2 = [device airplayTargetFlags];
    airplayTargetConfigSeed = [device airplayTargetConfigSeed];
    v35 = v37;
    v30 = airplayTargetFlags2;
    v32 = &unk_23D38369C;
    v26 = v3;
    v28 = bleRSSI;
    LogPrintF();
  }

  [(APBrowserBTLEManager *)self btleDevices:v26];
  [v3 objectForKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_10(), "identifier")}];
  airplayTargetConfigSeed2 = [OUTLINED_FUNCTION_10() airplayTargetConfigSeed];
  airplayTargetConfigSeed3 = [v3 airplayTargetConfigSeed];
  -[NSMutableDictionary setObject:forKeyedSubscript:](-[APBrowserBTLEManager btleDevices](self, "btleDevices"), "setObject:forKeyedSubscript:", device, [device identifier]);
  if (!v3 || airplayTargetConfigSeed2 != airplayTargetConfigSeed3)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
    if (!v15)
    {
      APSLogErrorAt();
      update = -72222;
      goto LABEL_27;
    }

    v16 = v15;
    identifier = [device identifier];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:airplayTargetPort];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(device, "airplayTargetFlags") & 1}];
    v20 = +[APBrowserBTLEManager createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:](APBrowserBTLEManager, "createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:", &v36, identifier, v16, v18, v19, [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(device, "bleRSSI")}]);
    if (v20)
    {
      update = v20;
    }

    else
    {
      v21 = [(APBrowserBTLEManager *)self dispatchEvent:v3 != 0 withEventInfo:v36];
      if (!v21)
      {
        goto LABEL_26;
      }

      update = v21;
    }

LABEL_35:
    APSLogErrorAt();
    goto LABEL_27;
  }

LABEL_26:
  update = [(APBrowserBTLEManager *)self update];
  if (update)
  {
    goto LABEL_35;
  }

LABEL_27:

  v23 = *MEMORY[0x277D85DE8];
  return update;
}

- (int)handleLostDevice:(id)device
{
  v17 = 0;
  if (!self->_btleMode || !-[NSMutableDictionary objectForKey:](-[APBrowserBTLEManager btleDevices](self, "btleDevices"), "objectForKey:", [device identifier]))
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_7()))
  {
    identifier = [device identifier];
    airplayTargetFlags = [device airplayTargetFlags];
    v15 = &unk_23D38369C;
    v11 = identifier;
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  v6 = +[APBrowserBTLEManager createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:](APBrowserBTLEManager, "createEventInfoDictionary:withDeviceID:IPAddress:port:supportsSolo:rssi:", &v17, [device identifier], 0, 0, 0, 0);
  if (v6)
  {
    v9 = v6;
LABEL_18:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v7 = [(APBrowserBTLEManager *)self dispatchEvent:2 withEventInfo:v17];
  if (v7)
  {
    v9 = v7;
    goto LABEL_18;
  }

  -[NSMutableDictionary removeObjectForKey:](-[APBrowserBTLEManager btleDevices](self, "btleDevices"), "removeObjectForKey:", [device identifier]);
  if (gLogCategory_APBrowserBTLEManager <= 40 && (gLogCategory_APBrowserBTLEManager != -1 || OUTLINED_FUNCTION_7()))
  {
    identifier2 = [device identifier];
    v14 = [(NSMutableDictionary *)[(APBrowserBTLEManager *)self btleDevices] count];
    nearbySoloDevicesCount = [(APBrowserBTLEManager *)self nearbySoloDevicesCount];
    v12 = identifier2;
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  v9 = [(APBrowserBTLEManager *)self update:v12];
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_14:

  return v9;
}

- (int64_t)btleManagerState
{
  if ([(APBrowserBTLEManager *)self btleAdvertiser])
  {
    result = [(APBrowserBTLEManager *)self btleAdvertiser];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [(APBrowserBTLEManager *)self btleDiscoverer];
    if (!result)
    {
      return result;
    }
  }

  return [result bluetoothState];
}

- (int)copyShowInfo:(id *)info verbose:(BOOL)verbose
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = -72224;
  bzero(v34, 0x100uLL);
  if (![(APBrowserBTLEManager *)self isInvalidated])
  {
    v7 = [(APBrowserBTLEManager *)self ensurePreferencesUpdatedWithShouldForce:0];
    if (v7)
    {
      v26 = v7;
      APSLogErrorAt();
      v6 = v26;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if (v8)
      {
        v9 = v8;
        infoCopy = info;
        [v8 appendString:@"+-+ APBrowserBTLEManager state +-+\n"];
        [v9 appendString:@"\n"];
        [(APBrowserBTLEManager *)self isEnabled];
        OUTLINED_FUNCTION_3_2();
        [v9 appendFormat:@"BTLE: enabled=%s"];
        if (self->_p2pSoloSupportedIsSet)
        {
          if (self->_p2pSoloSupported)
          {
            v10 = "yes";
          }

          else
          {
            v10 = "no";
          }
        }

        else
        {
          v10 = "<not set, assuming no>";
        }

        [v9 appendFormat:@" soloSupported=%s", v10];
        [(APBrowserBTLEManager *)self isSoloBeaconDisabled];
        OUTLINED_FUNCTION_3_2();
        [v9 appendFormat:@" beaconDisabled=%s"];
        [v9 appendFormat:@" mode=%@", +[APBrowserBTLEManager stringForBTLEMode:](APBrowserBTLEManager, "stringForBTLEMode:", self->_btleMode)];
        [v9 appendFormat:@" coreBluetoothState=%@", +[APBrowserBTLEManager stringForBTLEState:](APBrowserBTLEManager, "stringForBTLEState:", -[APBrowserBTLEManager btleManagerState](self, "btleManagerState"))];
        [(APBrowserBTLEManager *)self isAdvertising];
        OUTLINED_FUNCTION_3_2();
        [v9 appendFormat:@" advertising=%s"];
        [(APBrowserBTLEManager *)self isScanning];
        OUTLINED_FUNCTION_3_2();
        [v9 appendFormat:@" scanning=%s"];
        v11 = [(NSMutableDictionary *)[(APBrowserBTLEManager *)self btleDevices] count];
        [v9 appendFormat:@" targetBeaconsNearby=%d", v11];
        if (v11)
        {
          [v9 appendFormat:@" (%d support Solo)", -[APBrowserBTLEManager nearbySoloDevicesCount](self, "nearbySoloDevicesCount")];
          [v9 appendString:@"\n"];
          [v9 appendString:@"Detected BTLE Target Presence beacons:\n"];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          obj = [(NSMutableDictionary *)[(APBrowserBTLEManager *)self btleDevices] allValues];
          v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v29 + 1) + 8 * i);
                [v9 appendFormat:@"    %@:", objc_msgSend(v16, "identifier")];
                [v9 appendFormat:@" supportsSolo=%d", objc_msgSend(v16, "airplayTargetFlags") & 1];
                [v9 appendFormat:@" supportsMediaControlPort=%d", (objc_msgSend(v16, "airplayTargetFlags") >> 1) & 1];
                if (([v16 airplayTargetFlags] & 0x20) != 0 && objc_msgSend(v16, "airplayTargetIPv6"))
                {
                  v17 = [objc_msgSend(v16 "airplayTargetIPv6")];
                  OUTLINED_FUNCTION_13(v17, v18, v19, v20, v34);
                }

                else if ([v16 airplayTargetIPv4])
                {
                  [v16 airplayTargetIPv4];
                  IPv4AddressToCString();
                }

                [v16 airplayTargetFlags];
                v21 = CUPrintFlags32();
                airplayTargetConfigSeed = [v16 airplayTargetConfigSeed];
                airplayTargetPort = [v16 airplayTargetPort];
                if (!airplayTargetPort)
                {
                  if (([v16 airplayTargetFlags] & 2) != 0)
                  {
                    airplayTargetPort = 7000;
                  }

                  else
                  {
                    airplayTargetPort = 5000;
                  }
                }

                [v9 appendFormat:@" data=<flags=%@ config=%-3u IP=%-45s Port=%-5hu>\n", v21, airplayTargetConfigSeed, v34, airplayTargetPort];
              }

              v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v13);
          }
        }

        else
        {
          [v9 appendString:@"\n"];
        }

        v6 = 0;
        *infoCopy = v9;
      }

      else
      {
        APSLogErrorAt();
        v6 = -72220;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)createBTLEAdvertiser
{
  [self airplaySourceFlags];
  OUTLINED_FUNCTION_5();
  return LogPrintF();
}

- (uint64_t)update
{
  [self isSoloBeaconDisabled];
  [self nearbySoloDevicesCount];
  return LogPrintF();
}

@end