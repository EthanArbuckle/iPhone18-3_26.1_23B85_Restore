@interface APBonjourCacheHomeKit
+ (BOOL)isDeviceCacheable:(id)cacheable;
+ (id)getDeviceID:(id)d;
+ (id)prepareDeviceInfo:(id)info;
- (APBonjourCacheHomeKit)init;
- (BOOL)cacheDevice:(id)device;
- (BOOL)canCacheDevice:(id)device;
- (BOOL)shouldEvictDevice:(id)device policy:(id *)policy;
- (BOOL)shouldProcessDeviceForCache:(id)cache;
- (BOOL)uncacheDevice:(id)device;
- (BOOL)writeCache;
- (NSArray)availableCachedDevices;
- (NSDictionary)cachedDevices;
- (id)copyDescription;
- (id)copyDescriptionInternal;
- (id)describeBonjourInfo:(id)info;
- (id)getReportableCachedDevices;
- (uint64_t)checkAndEvictCachedDevicesIfNecessary;
- (uint64_t)setupEvictionPolicies;
- (void)activateWithCompletion:(id)completion;
- (void)activateWithCompletionInternal:(id)internal;
- (void)addExpectedDeviceID:(id)d;
- (void)checkAndEvictCachedDevicesIfNecessary;
- (void)dealloc;
- (void)evictCachedDeviceWithID:(id)d;
- (void)evictCachedDeviceWithIDInternal:(id)internal;
- (void)forceReportCachedDevicesFound;
- (void)forceReportCachedDevicesLost;
- (void)handleHomeKitDeviceConfigurationChanged:(id)changed;
- (void)handleNetworkSignatureChanged:(id)changed;
- (void)handleRealDeviceFoundForCachedDevice:(id)device;
- (void)handleRealDeviceLostForCachedDevice:(id)device;
- (void)invalidate;
- (void)invalidateInternal;
- (void)loadCache;
- (void)realDeviceFound:(id)found userInfo:(id)info;
- (void)realDeviceFoundInternal:(id)internal;
- (void)realDeviceLost:(id)lost;
- (void)realDeviceLostInternal:(id)internal;
- (void)removeAllExpectedDeviceIDs;
- (void)removeExpectedDeviceID:(id)d;
- (void)reportCachedDevice:(id)device found:(BOOL)found withHandler:(id)handler;
- (void)setupDiskWriteCoalescer;
- (void)setupEvictionPolicies;
- (void)setupIntrospector;
- (void)updateExpectedDeviceIDsAdding:(id)adding removing:(id)removing;
@end

@implementation APBonjourCacheHomeKit

- (NSDictionary)cachedDevices
{
  cache = [(APBonjourCacheHomeKit *)self cache];

  return [(NSMutableDictionary *)cache objectForKeyedSubscript:@"Items"];
}

- (BOOL)writeCache
{
  v11 = 0;
  if (![(APBonjourCacheHomeKit *)self currentNetworkSignature])
  {
    return 0;
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 30)
  {
    v2 = 33554522;
    if (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize())
    {
      selfCopy = self;
      LogPrintF();
    }
  }

  [(CUCoalescer *)[(APBonjourCacheHomeKit *)self diskWriteCoalescer] cancel];
  [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:1];
  if ([objc_msgSend(OUTLINED_FUNCTION_5_2() "cachedDevices")])
  {
    [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self cache] setObject:@"2" forKeyedSubscript:@"Version"];
    [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self cache] setObject:[(APBonjourCacheHomeKit *)self currentNetworkSignature] forKeyedSubscript:@"NetworkSignature"];
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:-[APBonjourCacheHomeKit cache](self format:"cache") options:200 error:{0, &v11}];
    if (v11)
    {
      v9 = gLogCategory_APBonjourCacheHomeKit;
      if (gLogCategory_APBonjourCacheHomeKit <= 90)
      {
        if (gLogCategory_APBonjourCacheHomeKit == -1)
        {
          if (!OUTLINED_FUNCTION_9_0())
          {
            return 0;
          }

          v9 = gLogCategory_APBonjourCacheHomeKit;
        }

        if (v9 != -1)
        {
          goto LABEL_31;
        }

LABEL_30:
        _LogCategory_Initialize();
LABEL_31:
        [(APBonjourCacheHomeKit *)self cache];
LABEL_34:
        OUTLINED_FUNCTION_15();
      }

      return 0;
    }

    v5 = 1;
    if (([v4 writeToURL:v2 atomically:1] & 1) == 0)
    {
      v6 = gLogCategory_APBonjourCacheHomeKit;
      if (gLogCategory_APBonjourCacheHomeKit <= 90)
      {
        if (gLogCategory_APBonjourCacheHomeKit != -1)
        {
          goto LABEL_11;
        }

        if (OUTLINED_FUNCTION_9_0())
        {
          v6 = gLogCategory_APBonjourCacheHomeKit;
LABEL_11:
          if (v6 != -1)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      return 0;
    }
  }

  else
  {
    v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v5 = 1;
    if ([v11 code] != 4 && (v7 & 1) == 0)
    {
      if (gLogCategory_APBonjourCacheHomeKit > 90 || gLogCategory_APBonjourCacheHomeKit == -1 && !OUTLINED_FUNCTION_9_0())
      {
        return 0;
      }

      [v11 localizedDescription];
      [v11 localizedFailureReason];
      if (gLogCategory_APBonjourCacheHomeKit == -1)
      {
        _LogCategory_Initialize();
      }

      goto LABEL_34;
    }
  }

  return v5;
}

- (APBonjourCacheHomeKit)init
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = APBonjourCacheHomeKit;
  v2 = [(APBonjourCacheHomeKit *)&v8 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v7 = v2;
  SNPrintF();
  [(APBonjourCacheHomeKit *)v3 setInternalQueue:dispatch_queue_create(label, 0), v7];
  if (![(APBonjourCacheHomeKit *)v3 internalQueue])
  {
    v6 = 141;
LABEL_19:
    [(APBonjourCacheHomeKit *)v6 init];
    v3 = 0;
    goto LABEL_12;
  }

  SNPrintF();
  [(APBonjourCacheHomeKit *)v3 setDispatchQueue:dispatch_queue_create(label, 0), v3];
  if (![(APBonjourCacheHomeKit *)v3 dispatchQueue])
  {
    v6 = 145;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setPresentRealDevices:](v3, "setPresentRealDevices:", [MEMORY[0x277CBEB38] dictionary]);
  if (![(APBonjourCacheHomeKit *)v3 presentRealDevices])
  {
    v6 = 148;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setExpectedDeviceIDs:](v3, "setExpectedDeviceIDs:", [MEMORY[0x277CBEB58] set]);
  if (![(APBonjourCacheHomeKit *)v3 expectedDeviceIDs])
  {
    v6 = 151;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setReportedCachedDeviceIDs:](v3, "setReportedCachedDeviceIDs:", [MEMORY[0x277CBEB58] set]);
  if (![(APBonjourCacheHomeKit *)v3 reportedCachedDeviceIDs])
  {
    v6 = 154;
    goto LABEL_19;
  }

  [(APBonjourCacheHomeKit *)v3 setUsePresentDeviceStashing:1];
  [(APBonjourCacheHomeKit *)v3 setActivatedPresentDeviceStashing:1];
  [(APBonjourCacheHomeKit *)v3 setupEvictionPolicies];
  [(APBonjourCacheHomeKit *)v3 setupDiskWriteCoalescer];
  if (IsAppleInternalBuild())
  {
    [(APBonjourCacheHomeKit *)v3 setupIntrospector];
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit init];
  }

LABEL_12:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  self->_cache = 0;

  self->_currentNetworkSignature = 0;
  self->_systemMonitor = 0;

  self->_homeKitDeviceMonitor = 0;
  self->_reportedCachedDeviceIDs = 0;

  self->_expectedDeviceIDs = 0;
  self->_presentRealDevices = 0;

  self->_evictionPolicies = 0;
  self->_diskWriteCoalescer = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
    self->_internalQueue = 0;
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit dealloc];
  }

  v5.receiver = self;
  v5.super_class = APBonjourCacheHomeKit;
  [(APBonjourCacheHomeKit *)&v5 dealloc];
}

- (void)setupEvictionPolicies
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = objc_alloc_init(APBonjourCacheEvictionTTL);
  APSSettingsGetDouble();
  [(APBonjourCacheEvictionTTL *)v3 setTimeToLiveSeconds:v4];
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [(APBonjourCacheHomeKit *)&v6 setupEvictionPolicies];
  }

  v7[0] = v3;
  -[APBonjourCacheHomeKit setEvictionPolicies:](self, "setEvictionPolicies:", [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupDiskWriteCoalescer
{
  v8 = 0;
  v3 = objc_alloc_init(MEMORY[0x277D02850]);
  if (v3)
  {
    v4 = v3;
    APSSettingsGetDouble();
    [v4 setMinDelay:v5];
    APSSettingsGetDouble();
    [v4 setMaxDelay:v6];
    v8 = 0;
    [v4 setLeeway:1.0];
    [v4 setDispatchQueue:{-[APBonjourCacheHomeKit internalQueue](self, "internalQueue")}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke;
    v7[3] = &unk_278BC6E38;
    v7[4] = self;
    [v4 setActionHandler:v7];
    [(APBonjourCacheHomeKit *)self setDiskWriteCoalescer:v4];
  }

  else
  {
    [(APBonjourCacheHomeKit *)&v8 setupDiskWriteCoalescer];
  }
}

uint64_t __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke(uint64_t a1)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 30 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  return [v2 writeCache];
}

- (void)activateWithCompletion:(id)completion
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__APBonjourCacheHomeKit_activateWithCompletion___block_invoke;
  v6[3] = &unk_278BC71A8;
  v6[4] = self;
  v6[5] = completion;
  dispatch_async(internalQueue, v6);
}

- (void)invalidate
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APBonjourCacheHomeKit_invalidate__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)realDeviceFound:(id)found userInfo:(id)info
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APBonjourCacheHomeKit_realDeviceFound_userInfo___block_invoke;
  block[3] = &unk_278BC71D0;
  block[4] = self;
  block[5] = found;
  block[6] = info;
  dispatch_async(internalQueue, block);
}

uint64_t __50__APBonjourCacheHomeKit_realDeviceFound_userInfo___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [APBonjourCacheHomeKitItem itemWithDeviceInfo:a1[5] userInfo:a1[6]];

  return [v1 realDeviceFoundInternal:v2];
}

- (void)realDeviceLost:(id)lost
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__APBonjourCacheHomeKit_realDeviceLost___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = self;
  v6[5] = lost;
  dispatch_async(internalQueue, v6);
}

- (NSArray)availableCachedDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__APBonjourCacheHomeKit_availableCachedDevices__block_invoke;
  v6[3] = &unk_278BC6D48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __47__APBonjourCacheHomeKit_availableCachedDevices__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getReportableCachedDevices];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)evictCachedDeviceWithID:(id)d
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__APBonjourCacheHomeKit_evictCachedDeviceWithID___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = self;
  v6[5] = d;
  dispatch_async(internalQueue, v6);
}

- (void)activateWithCompletionInternal:(id)internal
{
  [(APBonjourCacheHomeKit *)self setActivatedPresentDeviceStashing:[(APBonjourCacheHomeKit *)self usePresentDeviceStashing]];
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit activateWithCompletionInternal:?];
  }

  if (![(APBonjourCacheHomeKit *)self systemMonitor])
  {
    [(APBonjourCacheHomeKit *)self setSystemMonitor:objc_opt_new()];
    if (![(APBonjourCacheHomeKit *)self systemMonitor])
    {
      [APBonjourCacheHomeKit activateWithCompletionInternal:];
      goto LABEL_20;
    }

    [(CUSystemMonitor *)[(APBonjourCacheHomeKit *)self systemMonitor] setDispatchQueue:[(APBonjourCacheHomeKit *)self internalQueue]];
    systemMonitor = [(APBonjourCacheHomeKit *)self systemMonitor];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke;
    v16[3] = &unk_278BC6E38;
    v16[4] = self;
    [(CUSystemMonitor *)systemMonitor setPrimaryNetworkChangedHandler:v16];
    systemMonitor2 = [(APBonjourCacheHomeKit *)self systemMonitor];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_2;
    v15[3] = &unk_278BC6E38;
    v15[4] = self;
    [(CUSystemMonitor *)systemMonitor2 activateWithCompletion:v15];
  }

  if (![(APBonjourCacheHomeKit *)self homeKitDeviceMonitor])
  {
    [(APBonjourCacheHomeKit *)self setHomeKitDeviceMonitor:objc_opt_new()];
    if ([(APBonjourCacheHomeKit *)self systemMonitor])
    {
      [(APHomeKitDeviceMonitor *)[(APBonjourCacheHomeKit *)self homeKitDeviceMonitor] setDispatchQueue:[(APBonjourCacheHomeKit *)self internalQueue]];
      homeKitDeviceMonitor = [(APBonjourCacheHomeKit *)self homeKitDeviceMonitor];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_3;
      v14[3] = &unk_278BC6E38;
      v14[4] = self;
      [(APHomeKitDeviceMonitor *)homeKitDeviceMonitor setHomeConfigurationDidChangeHandler:v14];
      homeKitDeviceMonitor2 = [(APBonjourCacheHomeKit *)self homeKitDeviceMonitor];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_4;
      v13[3] = &unk_278BC7220;
      v13[4] = self;
      [(APHomeKitDeviceMonitor *)homeKitDeviceMonitor2 activateWithCompletion:v13];
      goto LABEL_10;
    }

    [APBonjourCacheHomeKit activateWithCompletionInternal:];
LABEL_20:
    v9 = -6728;
    if (!internal)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit activateWithCompletionInternal:];
  }

  v9 = 0;
  if (internal)
  {
LABEL_14:
    dispatchQueue = [(APBonjourCacheHomeKit *)self dispatchQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_5;
    v11[3] = &unk_278BC7098;
    v11[4] = internal;
    v12 = v9;
    dispatch_async(dispatchQueue, v11);
  }
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "systemMonitor")];

  return [v1 handleNetworkSignatureChanged:v2];
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "systemMonitor")];

  return [v1 handleNetworkSignatureChanged:v2];
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "homeKitDeviceMonitor")];

  return [v1 handleHomeKitDeviceConfigurationChanged:v2];
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(result + 32);
    v4 = [objc_msgSend(v3 "homeKitDeviceMonitor")];

    return [v3 handleHomeKitDeviceConfigurationChanged:v4];
  }

  return result;
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

- (void)handleRealDeviceFoundForCachedDevice:(id)device
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = +[APBonjourCacheHomeKit getDeviceID:](APBonjourCacheHomeKit, "getDeviceID:", [device deviceInfo]);
  v6 = [objc_msgSend(device "deviceInfo")];
  v7 = [objc_msgSend(objc_msgSend(device "deviceInfo")];
  if (!v5)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
    v29 = 0;
    v11 = 0;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v5];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (!v10)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
LABEL_40:
    v29 = 0;
    goto LABEL_36;
  }

  v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"services", "mutableCopy"}];
  if (!v12)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
    goto LABEL_40;
  }

  v13 = v12;
  v37 = v9;
  v39 = v5;
  selfCopy = self;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __62__APBonjourCacheHomeKit_handleRealDeviceFoundForCachedDevice___block_invoke;
  v49[3] = &__block_descriptor_36_e39_B24__0__NSDictionary_8__NSDictionary_16l;
  v50 = v8;
  [v12 filterUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v49)}];
  [v13 addObjectsFromArray:v6];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    LODWORD(v16) = 0;
    v17 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v16 = [objc_msgSend(*(*(&v45 + 1) + 8 * i) objectForKeyedSubscript:{@"transportType", "unsignedIntValue"}] | v16;
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v38 = v13;
  [v11 setObject:v13 forKeyedSubscript:@"services"];
  [v11 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v16), @"TrTy"}];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = [&unk_284F652A8 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(&unk_284F652A8);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        v24 = [v11 objectForKeyedSubscript:v23];
        v25 = [objc_msgSend(device "deviceInfo")];
        v26 = [v25 isEqual:v24];
        if (v25 && (v26 & 1) == 0)
        {
          v27 = gLogCategory_APBonjourCacheHomeKit;
          if (gLogCategory_APBonjourCacheHomeKit <= 50)
          {
            if (gLogCategory_APBonjourCacheHomeKit != -1)
            {
              goto LABEL_22;
            }

            if (_LogCategory_Initialize())
            {
              v27 = gLogCategory_APBonjourCacheHomeKit;
LABEL_22:
              if (v27 > 30)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27 == -1 && _LogCategory_Initialize() == 0;
              }

              v35 = v24;
              v36 = v25;
              v33 = v23;
              v34 = v28;
              v31 = selfCopy;
              v32 = v39;
              LogPrintF();
            }
          }

          [v11 setObject:v25 forKeyedSubscript:{v23, v31, v32, v33, v34, v35, v36}];
          continue;
        }
      }

      v20 = [&unk_284F652A8 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v20);
  }

  if (([v11 isEqualToDictionary:v37] & 1) == 0)
  {
    -[APBonjourCacheHomeKit cacheDevice:](selfCopy, "cacheDevice:", +[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v11, [device userInfo]));
  }

  v29 = v38;
LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleRealDeviceLostForCachedDevice:(id)device
{
  v4 = [APBonjourCacheHomeKit getDeviceID:device];
  if (v4)
  {
    v5 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v4];
    cachedDeviceFoundHandler = [(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler];

    [(APBonjourCacheHomeKit *)self reportCachedDevice:v5 found:1 withHandler:cachedDeviceFoundHandler];
  }

  else
  {
    [APBonjourCacheHomeKit handleRealDeviceLostForCachedDevice:];
  }
}

- (id)getReportableCachedDevices
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cachedDevices = [(APBonjourCacheHomeKit *)self cachedDevices];
  v5 = [(NSDictionary *)cachedDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(cachedDevices);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (![(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing]|| ![(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v9])
        {
          if ([(APBonjourCacheHomeKit *)self shouldProcessDeviceForCache:v9])
          {
            [array addObject:{-[NSDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cachedDevices](self, "cachedDevices"), "objectForKeyedSubscript:", v9)}];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)cachedDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return array;
}

- (BOOL)shouldProcessDeviceForCache:(id)cache
{
  if (shouldProcessDeviceForCache__onceToken != -1)
  {
    [APBonjourCacheHomeKit shouldProcessDeviceForCache:];
  }

  if (shouldProcessDeviceForCache__prefOverride)
  {
    return 1;
  }

  expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];

  return [(NSMutableSet *)expectedDeviceIDs containsObject:cache];
}

uint64_t __53__APBonjourCacheHomeKit_shouldProcessDeviceForCache___block_invoke()
{
  result = APSSettingsGetInt64();
  shouldProcessDeviceForCache__prefOverride = result != 0;
  return result;
}

- (void)addExpectedDeviceID:(id)d
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = d;
  -[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:](self, "updateExpectedDeviceIDsAdding:removing:", [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1], 0);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeExpectedDeviceID:(id)d
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = d;
  -[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:](self, "updateExpectedDeviceIDsAdding:removing:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeAllExpectedDeviceIDs
{
  allObjects = [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] allObjects];

  [(APBonjourCacheHomeKit *)self updateExpectedDeviceIDsAdding:0 removing:allObjects];
}

- (void)updateExpectedDeviceIDsAdding:(id)adding removing:(id)removing
{
  v30 = *MEMORY[0x277D85DE8];
  [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [adding countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(adding);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (([(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v11]& 1) == 0)
        {
          if ([(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v11])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              selfCopy2 = self;
              v19 = v11;
              LogPrintF();
            }

            [(APBonjourCacheHomeKit *)self reportCachedDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices:selfCopy2] objectForKeyedSubscript:v11] found:1 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler]];
          }

          else if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing]&& [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v11])
          {
            [(APBonjourCacheHomeKit *)self cacheDevice:[(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v11]];
          }

          [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] addObject:v11];
        }
      }

      v8 = [adding countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [removing countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(removing);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        if ([(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v16])
        {
          if ([(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v16])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              selfCopy2 = self;
              v19 = v16;
              LogPrintF();
            }

            [(APBonjourCacheHomeKit *)self reportCachedDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices:selfCopy2] objectForKeyedSubscript:v16] found:0 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceLostHandler]];
          }

          [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] removeObject:v16];
        }
      }

      v13 = [removing countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEvictDevice:(id)device policy:(id *)policy
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  evictionPolicies = [(APBonjourCacheHomeKit *)self evictionPolicies];
  v7 = [(NSArray *)evictionPolicies countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(evictionPolicies);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 shouldEvict:device])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v7 = [(NSArray *)evictionPolicies countByEnumeratingWithState:&v14 objects:v18 count:16];
        v8 = v7;
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    LOBYTE(v7) = 1;
    if (!policy)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
    if (!policy)
    {
      goto LABEL_13;
    }
  }

  *policy = v11;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)checkAndEvictCachedDevicesIfNecessary
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ([(APBonjourCacheHomeKit *)self cachedDevices])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allKeys = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] allKeys];
    v4 = [(NSArray *)allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if ([(APBonjourCacheHomeKit *)self shouldEvictDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v8] policy:&v15])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              [(APBonjourCacheHomeKit *)&v15 checkAndEvictCachedDevicesIfNecessary];
            }

            [(APBonjourCacheHomeKit *)self evictCachedDeviceWithIDInternal:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v9 = [(NSArray *)allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
        v5 = v9;
      }

      while (v9);
    }
  }

  else
  {
    [APBonjourCacheHomeKit checkAndEvictCachedDevicesIfNecessary];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)loadCache
{
  v3 = [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:0];
  dictionary = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v3];
  v5 = [dictionary objectForKeyedSubscript:@"Version"];
  if (dictionary)
  {
    v6 = v5;
    if ([v5 isEqualToString:@"2"])
    {
      goto LABEL_10;
    }

    if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      v11 = v6;
      v12 = @"2";
      selfCopy = self;
      LogPrintF();
    }
  }

  if ([(APBonjourCacheHomeKit *)self currentNetworkSignature:selfCopy])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [dictionary objectForKeyedSubscript:@"Items"];
  if (v8)
  {
    [dictionary2 addEntriesFromDictionary:v8];
  }

  [(APBonjourCacheHomeKit *)self setCache:dictionary];
  cache = [(APBonjourCacheHomeKit *)self cache];

  [(NSMutableDictionary *)cache setObject:dictionary2 forKeyedSubscript:@"Items"];
}

+ (id)prepareDeviceInfo:(id)info
{
  infoCopy = info;
  v20 = *MEMORY[0x277D85DE8];
  if (!info)
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    v4 = 0;
    goto LABEL_17;
  }

  if (![info objectForKeyedSubscript:@"txt"])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
LABEL_22:
    v4 = 0;
LABEL_24:
    infoCopy = 0;
    goto LABEL_17;
  }

  if (![infoCopy objectForKeyedSubscript:@"name"])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_22;
  }

  if (![APBonjourCacheHomeKit getDeviceID:infoCopy])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_22;
  }

  v4 = [objc_msgSend(infoCopy objectForKeyedSubscript:{@"services", "mutableCopy"}];
  if (!v4)
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_24;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__APBonjourCacheHomeKit_prepareDeviceInfo___block_invoke;
  v17[3] = &__block_descriptor_36_e39_B24__0__NSDictionary_8__NSDictionary_16l;
  v18 = 35;
  [v4 filterUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v17)}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [objc_msgSend(*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{@"transportType", "unsignedIntValue"}] | v7;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  infoCopy = v10;
  if (v10)
  {
    [v10 setObject:v4 forKeyedSubscript:@"services"];
    [infoCopy setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"TrTy"}];
  }

  else
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
  }

LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
  return infoCopy;
}

+ (BOOL)isDeviceCacheable:(id)cacheable
{
  BonjourDevice_GetInt64();
  v3 = BonjourDevice_CopyCFString();
  v4 = CFStringHasPrefix(v3, @"AppleTV") != 0;
  v5 = (CFStringHasPrefix(v3, @"AudioAccessory") | v4) != 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

- (id)describeBonjourInfo:(id)info
{
  v4 = [APBonjourCacheHomeKit getDeviceID:info];
  v5 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"name"];
  v7 = [v5 objectForKeyedSubscript:@"lastSeen"];
  v8 = MEMORY[0x277CBEAA8];
  [v7 doubleValue];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  if (!v6)
  {
    v10 = [v5 debugDescription];
    if (!v10)
    {
      v10 = [v5 description];
    }

    v6 = v10;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@ '%@'", v9, v4, v6];
}

- (id)copyDescriptionInternal
{
  v62 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:0];
  uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
  v7 = CUObfuscatedPtr();
  v8 = objc_opt_class();
  [v3 appendFormat:@"[0x%04X] %@", v7, NSStringFromClass(v8)];
  if ([(APBonjourCacheHomeKit *)self invalidated])
  {
    [v3 appendString:@" INVALIDATED"];
  }

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Current Network Signature:     %@\n", -[APBonjourCacheHomeKit currentNetworkSignature](self, "currentNetworkSignature")];
  [v3 appendFormat:@"Cached Network Signature:      %@\n", -[NSMutableDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cache](self, "cache"), "objectForKeyedSubscript:", @"NetworkSignature"];
  [v3 appendFormat:@"Cache Root:                    %@\n", uRLByDeletingLastPathComponent];
  [v3 appendFormat:@"Current Cache File:            %@\n", objc_msgSend(v5, "lastPathComponent")];
  [v3 appendFormat:@"Current Cache File Version:    %@\n", -[NSMutableDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cache](self, "cache"), "objectForKeyedSubscript:", @"Version"];
  [v3 appendString:@"\n"];
  v9 = [(NSArray *)[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] allValues] sortedArrayUsingComparator:&__block_literal_global_361];
  [v3 appendFormat:@"Cache Entries: %u\n", -[NSArray count](v9, "count")];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      v13 = 0;
      do
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"    %@\n", -[APBonjourCacheHomeKit describeBonjourInfo:](self, "describeBonjourInfo:", *(*(&v52 + 1) + 8 * v13++))];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v11);
  }

  [v3 appendString:@"\n"];
  if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing])
  {
    v14 = [objc_msgSend(-[NSMutableDictionary allValues](-[APBonjourCacheHomeKit presentRealDevices](self "presentRealDevices")];
    [v3 appendFormat:@"Present Real Devices: %u\n", objc_msgSend(v14, "count")];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        v18 = 0;
        do
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v3 appendFormat:@"    %@\n", -[APBonjourCacheHomeKit describeBonjourInfo:](self, "describeBonjourInfo:", *(*(&v48 + 1) + 8 * v18++))];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v16);
    }

    [v3 appendString:@"\n"];
  }

  [v3 appendFormat:@"Expected Device IDs: %u\n", -[NSMutableSet count](-[APBonjourCacheHomeKit expectedDeviceIDs](self, "expectedDeviceIDs"), "count")];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
  v20 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      v23 = 0;
      do
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(expectedDeviceIDs);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v44 + 1) + 8 * v23++)];
      }

      while (v21 != v23);
      v21 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v44 objects:v59 count:16];
    }

    while (v21);
  }

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Reported Cached Device IDs: %u\n", -[NSMutableSet count](-[APBonjourCacheHomeKit reportedCachedDeviceIDs](self, "reportedCachedDeviceIDs"), "count")];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  reportedCachedDeviceIDs = [(APBonjourCacheHomeKit *)self reportedCachedDeviceIDs];
  v25 = [(NSMutableSet *)reportedCachedDeviceIDs countByEnumeratingWithState:&v40 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      v28 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(reportedCachedDeviceIDs);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v40 + 1) + 8 * v28++)];
      }

      while (v26 != v28);
      v26 = [(NSMutableSet *)reportedCachedDeviceIDs countByEnumeratingWithState:&v40 objects:v58 count:16];
    }

    while (v26);
  }

  [v3 appendString:@"\n"];
  if ([defaultManager fileExistsAtPath:{objc_msgSend(objc_msgSend(uRLByDeletingLastPathComponent, "standardizedURL"), "path")}])
  {
    v29 = [defaultManager contentsOfDirectoryAtPath:objc_msgSend(objc_msgSend(uRLByDeletingLastPathComponent error:{"standardizedURL"), "path"), &v56}];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  [v3 appendFormat:@"Cache Files: %u\n", objc_msgSend(v29, "count")];
  if (v56)
  {
    [v3 appendFormat:@"%@\n", v56];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v36 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        v33 = 0;
        do
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [v3 appendFormat:@"    %@\n", *(*(&v36 + 1) + 8 * v33++)];
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v36 objects:v57 count:16];
      }

      while (v31);
    }
  }

  [v3 appendString:@"\n"];
  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __62__APBonjourCacheHomeKit_Introspector__copyDescriptionInternal__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKeyedSubscript:@"lastSeen"];
  v5 = [a3 objectForKeyedSubscript:@"lastSeen"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)copyDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__APBonjourCacheHomeKit_Introspector__copyDescription__block_invoke;
  v6[3] = &unk_278BC6D48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __54__APBonjourCacheHomeKit_Introspector__copyDescription__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyDescriptionInternal];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setupIntrospector
{
  APSIntrospectorAddCommand();
  APSIntrospectorAddCommand();
  APSIntrospectorAddCommand();

  APSIntrospectorAddCommand();
}

- (void)invalidateInternal
{
  if (![(APBonjourCacheHomeKit *)self invalidated])
  {
    [(APBonjourCacheHomeKit *)self setCachedDeviceFoundHandler:0];
    [(APBonjourCacheHomeKit *)self setCachedDeviceLostHandler:0];
    [(CUSystemMonitor *)[(APBonjourCacheHomeKit *)self systemMonitor] invalidate];
    [(APHomeKitDeviceMonitor *)[(APBonjourCacheHomeKit *)self homeKitDeviceMonitor] invalidate];
    [(CUCoalescer *)[(APBonjourCacheHomeKit *)self diskWriteCoalescer] invalidate];
    if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_3_1();
      LogPrintF();
    }
  }

  [(APBonjourCacheHomeKit *)self setInvalidated:1];
}

- (void)realDeviceFoundInternal:(id)internal
{
  OUTLINED_FUNCTION_6_2();
  if ([v5 invalidated])
  {
    goto LABEL_19;
  }

  [v4 deviceInfo];
  if (![OUTLINED_FUNCTION_2_2() isDeviceCacheable:?])
  {
    return;
  }

  [v4 deviceInfo];
  v6 = [OUTLINED_FUNCTION_2_2() prepareDeviceInfo:?];
  if (!v6)
  {
LABEL_19:

    APSLogErrorAt();
  }

  else
  {
    v7 = v6;
    v8 = [APBonjourCacheHomeKit getDeviceID:v6];
    if (gLogCategory_APBonjourCacheHomeKit <= 40 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      v12 = v3;
      v13 = v8;
      LogPrintF();
    }

    v9 = +[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v7, [v4 userInfo]);
    if ([v3 activatedPresentDeviceStashing])
    {
      [objc_msgSend(v3 "presentRealDevices")];
    }

    if ([objc_msgSend(v3 "cachedDevices")])
    {
      v10 = OUTLINED_FUNCTION_4_3();

      [v10 handleRealDeviceFoundForCachedDevice:?];
    }

    else if ([OUTLINED_FUNCTION_9_1() shouldProcessDeviceForCache:?])
    {
      v11 = OUTLINED_FUNCTION_4_3();

      [v11 cacheDevice:?];
    }
  }
}

- (void)realDeviceLostInternal:(id)internal
{
  v5 = [APBonjourCacheHomeKit getDeviceID:?];
  if ([(APBonjourCacheHomeKit *)self invalidated]|| !v5)
  {

    APSLogErrorAt();
  }

  else if ([APBonjourCacheHomeKit isDeviceCacheable:internal])
  {
    if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing])
    {
      [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] setObject:0 forKeyedSubscript:v5];
    }

    if (gLogCategory_APBonjourCacheHomeKit <= 40 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      selfCopy = self;
      v7 = v5;
      LogPrintF();
    }

    if ([(APBonjourCacheHomeKit *)self shouldProcessDeviceForCache:v5, selfCopy, v7]&& [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v5])
    {

      [(APBonjourCacheHomeKit *)self handleRealDeviceLostForCachedDevice:internal];
    }
  }
}

- (void)forceReportCachedDevicesFound
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler])
  {
    v26 = 0u;
    getReportableCachedDevices = [(APBonjourCacheHomeKit *)self getReportableCachedDevices];
    OUTLINED_FUNCTION_10_2();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      v15 = MEMORY[0];
      do
      {
        v16 = 0;
        do
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(getReportableCachedDevices);
          }

          OUTLINED_FUNCTION_8_2(v6, v7, v8, v9, v10, v11, v12, v13, v22, v24, v26, *(&v26 + 1));
          if (v19 ^ v20 | v18 && (v17 != -1 || OUTLINED_FUNCTION_8()))
          {
            selfCopy = self;
            v25 = [APBonjourCacheHomeKit getDeviceID:v2];
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
          }

          v6 = [(APBonjourCacheHomeKit *)self reportCachedDevice:v2 found:1 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler:selfCopy]];
          ++v16;
        }

        while (v14 != v16);
        OUTLINED_FUNCTION_10_2();
        v6 = [getReportableCachedDevices countByEnumeratingWithState:? objects:? count:?];
        v14 = v6;
      }

      while (v6);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)forceReportCachedDevicesLost
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(APBonjourCacheHomeKit *)self cachedDeviceLostHandler])
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    [OUTLINED_FUNCTION_5_2() reportedCachedDeviceIDs];
    v5 = [OUTLINED_FUNCTION_2_2() initWithSet:?];
    v27 = 0u;
    OUTLINED_FUNCTION_10_2();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v15 = v7;
      v16 = MEMORY[0];
      do
      {
        v17 = 0;
        do
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v5);
          }

          OUTLINED_FUNCTION_8_2(v7, v8, v9, v10, v11, v12, v13, v14, v23, v25, v27, *(&v27 + 1));
          if (v20 ^ v21 | v19 && (v18 != -1 || OUTLINED_FUNCTION_8()))
          {
            selfCopy = self;
            v26 = v2;
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
          }

          v2 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices:selfCopy] objectForKeyedSubscript:v2];
          v7 = [(APBonjourCacheHomeKit *)self reportCachedDevice:v2 found:0 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceLostHandler]];
          ++v17;
        }

        while (v15 != v17);
        OUTLINED_FUNCTION_10_2();
        v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
        v15 = v7;
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)reportCachedDevice:(id)device found:(BOOL)found withHandler:(id)handler
{
  foundCopy = found;
  v9 = [APBonjourCacheHomeKit getDeviceID:?];
  if (v9)
  {
    v10 = v9;
    reportedCachedDeviceIDs = [(APBonjourCacheHomeKit *)self reportedCachedDeviceIDs];
    if (foundCopy)
    {
      [(NSMutableSet *)reportedCachedDeviceIDs addObject:v10];
      if (!handler)
      {
        return;
      }
    }

    else
    {
      [(NSMutableSet *)reportedCachedDeviceIDs removeObject:v10];
      if (!handler)
      {
        return;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary addEntriesFromDictionary:device];
      [dictionary setObject:objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", @"services", @"removedServices"}];
      [dictionary removeObjectForKey:@"services"];
      [dictionary removeObjectForKey:@"cached"];
      device = dictionary;
    }

    dispatchQueue = [(APBonjourCacheHomeKit *)self dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__APBonjourCacheHomeKit_reportCachedDevice_found_withHandler___block_invoke;
    v14[3] = &unk_278BC7268;
    v14[4] = device;
    v14[5] = handler;
    dispatch_async(dispatchQueue, v14);
  }

  else
  {

    APSLogErrorAt();
  }
}

- (void)handleNetworkSignatureChanged:(id)changed
{
  if ([(APBonjourCacheHomeKit *)self invalidated])
  {

    APSLogErrorAt();
  }

  else
  {
    [(APBonjourCacheHomeKit *)self currentNetworkSignature];
    if (([OUTLINED_FUNCTION_2_2() isEqualToString:?] & 1) == 0)
    {
      if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8()))
      {
        currentNetworkSignature = [(APBonjourCacheHomeKit *)self currentNetworkSignature];
        changedCopy = changed;
        selfCopy = self;
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      if ([(APBonjourCacheHomeKit *)self currentNetworkSignature:selfCopy])
      {
        [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
        [(APBonjourCacheHomeKit *)self writeCache];
      }

      [(APBonjourCacheHomeKit *)self forceReportCachedDevicesLost];
      if ([OUTLINED_FUNCTION_9_1() isValidNetworkSignature:?])
      {
        changedCopy2 = changed;
      }

      else
      {
        changedCopy2 = 0;
      }

      [(APBonjourCacheHomeKit *)self setCurrentNetworkSignature:changedCopy2];
      [(APBonjourCacheHomeKit *)self loadCache];

      [(APBonjourCacheHomeKit *)self forceReportCachedDevicesFound];
    }
  }
}

- (void)handleHomeKitDeviceConfigurationChanged:(id)changed
{
  v58 = *MEMORY[0x277D85DE8];
  if (![(APBonjourCacheHomeKit *)self invalidated])
  {
    [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
    if ([OUTLINED_FUNCTION_2_2() isEqual:?])
    {
LABEL_32:
      v35 = *MEMORY[0x277D85DE8];
      return;
    }

    v5 = gLogCategory_APBonjourCacheHomeKit;
    if (gLogCategory_APBonjourCacheHomeKit <= 50)
    {
      if (gLogCategory_APBonjourCacheHomeKit != -1)
      {
LABEL_5:
        if (v5 > 30)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5 == -1 && _LogCategory_Initialize() == 0;
        }

        expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
        changedCopy = changed;
        selfCopy = self;
        v40 = v6;
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
        goto LABEL_13;
      }

      if (OUTLINED_FUNCTION_8())
      {
        v5 = gLogCategory_APBonjourCacheHomeKit;
        goto LABEL_5;
      }
    }

LABEL_13:
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v16 = OUTLINED_FUNCTION_11_2(array2, v9, v10, v11, v12, v13, v14, v15, v38, v41, v44, v47);
    if (v16)
    {
      v17 = v16;
      v18 = *v54;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(changed);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          v21 = [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v20];
          if ((v21 & 1) == 0)
          {
            v21 = [array addObject:v20];
          }
        }

        v17 = OUTLINED_FUNCTION_11_2(v21, v22, v23, v24, v25, v26, v27, v28, v39, v42, v45, v48);
      }

      while (v17);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    expectedDeviceIDs2 = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
    v30 = [(NSMutableSet *)expectedDeviceIDs2 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v50;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(expectedDeviceIDs2);
          }

          v34 = *(*(&v49 + 1) + 8 * j);
          if (([changed containsObject:v34] & 1) == 0)
          {
            [array2 addObject:v34];
          }
        }

        v31 = [(NSMutableSet *)expectedDeviceIDs2 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v31);
    }

    [OUTLINED_FUNCTION_4_3() updateExpectedDeviceIDsAdding:? removing:?];
    goto LABEL_32;
  }

  v36 = *MEMORY[0x277D85DE8];

  APSLogErrorAt();
}

- (BOOL)canCacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  [v5 deviceInfo];
  [OUTLINED_FUNCTION_2_2() getDeviceID:?];
  cache = [OUTLINED_FUNCTION_5_2() cache];
  if (!cache)
  {
    return cache;
  }

  cache = [objc_msgSend(objc_msgSend(v4 "deviceInfo")];
  if (!cache)
  {
    return cache;
  }

  v7 = [objc_msgSend(v3 "cachedDevices")];
  v8 = [objc_msgSend(v4 "userInfo")];
  if (!v8)
  {
    requireDeviceNetworkSignature = [v3 requireDeviceNetworkSignature];
    LOBYTE(cache) = 1;
    if (!requireDeviceNetworkSignature || v7)
    {
      return cache;
    }

    if (gLogCategory_APBonjourCacheHomeKit <= 30)
    {
      if (gLogCategory_APBonjourCacheHomeKit != -1)
      {
        goto LABEL_14;
      }

      LODWORD(cache) = _LogCategory_Initialize();
      if (cache)
      {
        goto LABEL_14;
      }

      return cache;
    }

LABEL_15:
    LOBYTE(cache) = 0;
    return cache;
  }

  if ([v8 isEqualToString:{objc_msgSend(v3, "currentNetworkSignature")}])
  {
    LOBYTE(cache) = 1;
    return cache;
  }

  if (gLogCategory_APBonjourCacheHomeKit > 30)
  {
    goto LABEL_15;
  }

  if (gLogCategory_APBonjourCacheHomeKit != -1 || (LODWORD(cache) = _LogCategory_Initialize(), cache))
  {
    [v3 currentNetworkSignature];
LABEL_14:
    LogPrintF();
    goto LABEL_15;
  }

  return cache;
}

- (BOOL)cacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  [v5 deviceInfo];
  v6 = [OUTLINED_FUNCTION_2_2() getDeviceID:?];
  if (!v6)
  {
    APSLogErrorAt();
LABEL_25:
    deviceInfo2 = 0;
    goto LABEL_22;
  }

  if (![OUTLINED_FUNCTION_4_3() canCacheDevice:?])
  {
    LOBYTE(v6) = 0;
    goto LABEL_25;
  }

  v7 = [objc_msgSend(v3 "cachedDevices")];
  if (v7)
  {
    v8 = 30;
  }

  else
  {
    v8 = 50;
  }

  v9 = gLogCategory_APBonjourCacheHomeKit;
  if (v8 < gLogCategory_APBonjourCacheHomeKit)
  {
    goto LABEL_19;
  }

  v10 = v7;
  if (gLogCategory_APBonjourCacheHomeKit != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v9 = gLogCategory_APBonjourCacheHomeKit;
LABEL_8:
    if (v10)
    {
      v11 = "Updating";
    }

    else
    {
      v11 = "Adding";
    }

    if (v9 > 30)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 == -1 && _LogCategory_Initialize() == 0;
    }

    v18 = v12;
    deviceInfo = [v4 deviceInfo];
    v16 = v11;
    v17 = v6;
    v15 = v3;
    LogPrintF();
  }

LABEL_19:
  deviceInfo2 = [objc_msgSend(v4 deviceInfo];
  [deviceInfo2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cached"];
  [objc_msgSend(objc_msgSend(v3 "cache")];
  [objc_msgSend(v3 "diskWriteCoalescer")];
  if ([v3 activatedPresentDeviceStashing])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    [v3 cachedDeviceFoundHandler];
    LOBYTE(v6) = 1;
    [OUTLINED_FUNCTION_4_3() reportCachedDevice:? found:? withHandler:?];
  }

LABEL_22:

  return v6;
}

- (BOOL)uncacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  if ([APBonjourCacheHomeKit getDeviceID:?])
  {
    cache = [OUTLINED_FUNCTION_5_2() cache];
    if (cache)
    {
      cache = [objc_msgSend(v3 "cachedDevices")];
      if (cache)
      {
        v7 = gLogCategory_APBonjourCacheHomeKit;
        if (gLogCategory_APBonjourCacheHomeKit <= 50)
        {
          if (gLogCategory_APBonjourCacheHomeKit != -1)
          {
LABEL_6:
            if (v7 > 30)
            {
              v8 = 1;
            }

            else
            {
              v8 = v7 == -1 && _LogCategory_Initialize() == 0;
            }

            v12 = v8;
            v13 = v5;
            v10 = v3;
            v11 = v4;
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
            goto LABEL_14;
          }

          if (OUTLINED_FUNCTION_8())
          {
            v7 = gLogCategory_APBonjourCacheHomeKit;
            goto LABEL_6;
          }
        }

LABEL_14:
        [objc_msgSend(objc_msgSend(v3 cache];
        [objc_msgSend(v3 "diskWriteCoalescer")];
        LOBYTE(cache) = 1;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    LOBYTE(cache) = 0;
  }

  return cache;
}

- (void)evictCachedDeviceWithIDInternal:(id)internal
{
  if (internal)
  {
    OUTLINED_FUNCTION_6_2();
    if ([objc_msgSend(v5 "cachedDevices")])
    {
      if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8()))
      {
        v7 = v3;
        v8 = v4;
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      [v3 cachedDeviceLostHandler];
      [OUTLINED_FUNCTION_9_1() reportCachedDevice:? found:? withHandler:?];
      v6 = OUTLINED_FUNCTION_9_1();

      [v6 uncacheDevice:?];
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

+ (id)getDeviceID:(id)d
{
  result = BonjourDevice_CopyCFString();
  if (result)
  {
    [MEMORY[0x277CCACA8] stringWithString:result];
    v5 = OUTLINED_FUNCTION_5_2();
    CFRelease(v5);
    return v3;
  }

  return result;
}

- (uint64_t)setupEvictionPolicies
{
  *self;
  [a2 timeToLiveSeconds];
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

- (uint64_t)activateWithCompletionInternal:(void *)a1 .cold.1(void *a1)
{
  [a1 activatedPresentDeviceStashing];
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

- (uint64_t)getCacheDirectoryURLWithParentDirectory:(uint64_t)a3 creatingIfNecessary:(uint64_t)a4 .cold.1(uint64_t result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    if (gLogCategory_APBonjourCacheHomeKit == -1)
    {
      v7 = result;
      result = OUTLINED_FUNCTION_9_0();
      if (!result)
      {
        goto LABEL_5;
      }

      a2 = *v7;
    }

    [a2 code];
    result = OUTLINED_FUNCTION_15();
  }

LABEL_5:
  *a5 = a4;
  return result;
}

- (uint64_t)getCacheDirectoryURLWithParentDirectory:(void *)a3 creatingIfNecessary:.cold.3(uint64_t result, uint64_t a2, void *a3)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    v4 = result;
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      [*v4 code];
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a3 = 0;
  return result;
}

- (uint64_t)getCacheFileURLCreatingParentDirectoriesIfNecessary:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)getCacheFileURLCreatingParentDirectoriesIfNecessary:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 50)
  {
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_8(), result))
    {
      OUTLINED_FUNCTION_3_1();
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)checkAndEvictCachedDevicesIfNecessary
{
  v1 = *self;
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

@end