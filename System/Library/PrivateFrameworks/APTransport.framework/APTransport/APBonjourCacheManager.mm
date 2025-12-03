@interface APBonjourCacheManager
- (APBonjourCacheManager)init;
- (BOOL)_writeCachedItems:(id)items;
- (BOOL)deviceLost:(id)lost;
- (id)_readCachedItems;
- (int)_migrateCacheDirectoryIfNecessary;
- (void)_activateWithCompletion:(id)completion;
- (void)_addDeviceToCache:(id)cache pairedPeerInfo:(id)info event:(int64_t)event;
- (void)_auditCachesIfNecessary:(id)necessary event:(int64_t)event;
- (void)_cancelRetryGetPairedPeers;
- (void)_deviceFound:(id)found altPairedInfo:(id)info recheck:(BOOL)recheck event:(int64_t)event;
- (void)_ensureKnownNetworkProfileMonitoringStarted;
- (void)_flushCachedItems;
- (void)_handleKnownNetworkProfileUpdate:(BOOL)update;
- (void)_invalidate;
- (void)_invalidated;
- (void)_migrateCacheDirectoryIfNecessary;
- (void)_networkSignatureChanged;
- (void)_pairedPeersChanged;
- (void)_recheckDevices:(int64_t)devices;
- (void)_refreshCachedItems;
- (void)_refreshOrRemoveCachedItem:(id)item;
- (void)_removeIfDuplicatesFoundOrIfNoLongerCacheable:(unint64_t)cacheable identifier:(id)identifier serialNumber:(id)number manufacturer:(id)manufacturer isCacheable:(BOOL)isCacheable;
- (void)_replaceIfnameFromDNSString:(id)string;
- (void)_reportCachedItemLost:(id)lost event:(int64_t)event;
- (void)_reportCachedItemsFound:(int64_t)found;
- (void)_reportCachedItemsLost:(int64_t)lost;
- (void)_sanitizeDNSStrings:(id)strings;
- (void)_startRetryGetPairedPeersTimer;
- (void)_updateCachedDeviceInfoWhenRealDeviceIsFound:(id)found event:(int64_t)event;
- (void)_updateLastSeenTimestamp:(id)timestamp;
- (void)activateWithCompletion:(id)completion;
- (void)cacheHKPeerIfNeeded:(id)needed pairedPeerInfo:(id)info;
- (void)dealloc;
- (void)forceReportCachedDevices;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation APBonjourCacheManager

- (void)forceReportCachedDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APBonjourCacheManager_forceReportCachedDevices__block_invoke;
  block[3] = &unk_278BC8D38;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __49__APBonjourCacheManager_forceReportCachedDevices__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = **(result + 104);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      result = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = *(result + 104);
    v5 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v5)
    {
      v6 = *(result + 104);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (*(result + 96))
  {

    return [result _reportCachedItemsFound:5];
  }

  return result;
}

- (APBonjourCacheManager)init
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  *label = 0u;
  v14 = 0u;
  v12.receiver = self;
  v12.super_class = APBonjourCacheManager;
  v2 = [(APBonjourCacheManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_pairedPeersChangedToken = -1;
    v3->_ucat = &gLogCategory_APBonjourCache;
    SNPrintF();
    v4 = dispatch_queue_create(label, 0);
    coreWiFiQueue = v3->_coreWiFiQueue;
    v3->_coreWiFiQueue = v4;

    if (v3->_coreWiFiQueue)
    {
      v6 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:{2, v3}];
      coreWiFiInterface = v3->_coreWiFiInterface;
      v3->_coreWiFiInterface = v6;

      v8 = v3->_coreWiFiInterface;
      if (v8)
      {
        [(CWFInterface *)v8 activate];
        v3->_auditCaches = APSSettingsGetInt64() != 0;
        [(APBonjourCacheManager *)v3 _migrateCacheDirectoryIfNecessary];
        goto LABEL_5;
      }

      v11 = 117;
    }

    else
    {
      v11 = 114;
    }

    [(APBonjourCacheManager *)v11 init];
    v3 = 0;
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = APBonjourCacheManager;
  [(APBonjourCacheManager *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__APBonjourCacheManager_activateWithCompletion___block_invoke;
  v7[3] = &unk_278BC8D10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(APBonjourCacheManager *)self _ensureKnownNetworkProfileMonitoringStarted];
  if (!self->_systemMonitor)
  {
    v5 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v5;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke;
    v14[3] = &unk_278BC8D38;
    v14[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryNetworkChangedHandler:v14];
    v7 = self->_systemMonitor;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_2;
    v13[3] = &unk_278BC8D38;
    v13[4] = self;
    [(CUSystemMonitor *)v7 activateWithCompletion:v13];
  }

  if (self->_pairedPeersChangedToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_3;
    handler[3] = &unk_278BC8D60;
    handler[4] = self;
    notify_register_dispatch("com.apple.pairing.peerChanged", &self->_pairedPeersChangedToken, dispatchQueue, handler);
    [(APBonjourCacheManager *)self _pairedPeersChanged];
  }

  if (!self->_writeCoaleser)
  {
    v9 = objc_alloc_init(MEMORY[0x277D02850]);
    writeCoaleser = self->_writeCoaleser;
    self->_writeCoaleser = v9;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_4;
    v11[3] = &unk_278BC8D38;
    v11[4] = self;
    [(CUCoalescer *)self->_writeCoaleser setActionHandler:v11];
    [(CUCoalescer *)self->_writeCoaleser setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_writeCoaleser setMinDelay:5.0];
    [(CUCoalescer *)self->_writeCoaleser setMaxDelay:300.0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

uint64_t __49__APBonjourCacheManager__activateWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 40) == -1)
  {
    return result;
  }

  v3 = **(result + 104);
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      v4 = *(result + 104);
      v5 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(result + 104);
    }

    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _pairedPeersChanged];
}

- (void)_ensureKnownNetworkProfileMonitoringStarted
{
  objc_initWeak(&location, self);
  if (!self->_isMonitoringKnownNetworkProfile)
  {
    self->_isMonitoringKnownNetworkProfile = 1;
    coreWiFiQueue = self->_coreWiFiQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke;
    v4[3] = &unk_278BC8E00;
    objc_copyWeak(&v5, &location);
    dispatch_async(coreWiFiQueue, v4);
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[14];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_2;
    v15[3] = &unk_278BC8DB0;
    objc_copyWeak(&v16, (a1 + 32));
    [v4 setEventHandler:v15];
    v5 = *(v3 + 14);
    v14 = 0;
    [v5 startMonitoringEventType:30 error:&v14];
    v6 = v14;
    v7 = [*(v3 + 14) currentKnownNetworkProfile];
    LOBYTE(v4) = [v7 isPublicAirPlayNetwork];

    v8 = *(v3 + 17);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_4;
    block[3] = &unk_278BC8DD8;
    v9 = v6;
    v11 = v9;
    v12 = v3;
    v13 = v4;
    dispatch_sync(v8, block);

    objc_destroyWeak(&v16);
  }

  else
  {
    v9 = 0;
  }
}

void __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 type] == 30)
  {
    v5 = [*(WeakRetained + 14) currentKnownNetworkProfile];
    v6 = [v5 isPublicAirPlayNetwork];

    v7 = *(WeakRetained + 17);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_3;
    v8[3] = &unk_278BC8D88;
    v9 = WeakRetained;
    v10 = v6;
    dispatch_sync(v7, v8);
  }
}

uint64_t __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(*(a1 + 40) + 128) = 0;
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = 90;
  }

  else
  {
    v3 = 30;
  }

  v4 = *(a1 + 40);
  v5 = *v4[13];
  if (v3 >= v5)
  {
    if (v5 != -1)
    {
LABEL_9:
      LogPrintF();
      v4 = *(a1 + 40);
      goto LABEL_11;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 40);
    if (v6)
    {
      v9 = v4[13];
      v10 = *(a1 + 32);
      goto LABEL_9;
    }
  }

LABEL_11:
  v7 = *(a1 + 48);

  return [v4 _handleKnownNetworkProfileUpdate:v7];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APBonjourCacheManager_invalidate__block_invoke;
  block[3] = &unk_278BC8D38;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v17 = v3;
  v18 = v2;
  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v9 = retryTimer;
    dispatch_source_cancel(v9);
    v10 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  if (self->_cacheChanged)
  {
    [(APBonjourCacheManager *)self _flushCachedItems];
    self->_cacheChanged = 0;
  }

  pairedPeersChangedToken = self->_pairedPeersChangedToken;
  if (pairedPeersChangedToken != -1)
  {
    notify_cancel(pairedPeersChangedToken);
    self->_pairedPeersChangedToken = -1;
  }

  [(CUCoalescer *)self->_writeCoaleser invalidate:v17];
  writeCoaleser = self->_writeCoaleser;
  self->_writeCoaleser = 0;

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(CWFInterface *)self->_coreWiFiInterface invalidate];
  coreWiFiInterface = self->_coreWiFiInterface;
  self->_coreWiFiInterface = 0;

  coreWiFiQueue = self->_coreWiFiQueue;
  if (coreWiFiQueue)
  {
    self->_coreWiFiQueue = 0;
  }

  [(APBonjourCacheManager *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

    reportDeviceFoundHandler = self->_reportDeviceFoundHandler;
    self->_reportDeviceFoundHandler = 0;

    reportDeviceLostHandler = self->_reportDeviceLostHandler;
    self->_reportDeviceLostHandler = 0;

    self->_invalidateDone = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }
}

- (void)_deviceFound:(id)found altPairedInfo:(id)info recheck:(BOOL)recheck event:(int64_t)event
{
  recheckCopy = recheck;
  foundCopy = found;
  infoCopy = info;
  DeviceID = BonjourDevice_GetDeviceID();
  v13 = [foundCopy objectForKeyedSubscript:@"name"];
  v14 = BonjourDevice_CopyCFString();
  if (v14)
  {
    v15 = v14;
    v16 = APSFeaturesCreateFromStringRepresentation();
  }

  else
  {
    BonjourDevice_GetInt64();
    v16 = APSFeaturesCreateFromLegacyFlags();
    APSFeaturesCopyStringRepresentation();
    v15 = 0;
  }

  if (APSFeaturesHasFeature())
  {
    v17 = APSFeaturesHasFeature() != 0;
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  if (v16)
  {
LABEL_6:
    CFRelease(v16);
  }

LABEL_7:
  v18 = BonjourDevice_CopyCFString();
  if (v18)
  {
    eventCopy = event;
    if (recheckCopy || !v17)
    {
      goto LABEL_14;
    }

    v19 = DeviceID;
    v20 = infoCopy;
    primaryNetworkSignature = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];

    if (primaryNetworkSignature)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v24 = self->_deviceMap;
        self->_deviceMap = v23;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:foundCopy forKeyedSubscript:v18];
      infoCopy = v20;
      DeviceID = v19;
LABEL_14:
      v25 = BonjourDevice_CopyCFString();
      v62 = BonjourDevice_CopyCFString();
      [APBonjourCacheManager _removeIfDuplicatesFoundOrIfNoLongerCacheable:"_removeIfDuplicatesFoundOrIfNoLongerCacheable:identifier:serialNumber:manufacturer:isCacheable:" identifier:DeviceID serialNumber:v18 manufacturer:v25 isCacheable:?];
      if (v17)
      {
        v58 = recheckCopy;
        v59 = v25;
        v26 = [(NSMutableDictionary *)self->_pairedPeersMap objectForKeyedSubscript:v18];
        if (!v26)
        {
          v26 = infoCopy;
        }

        v27 = DeviceID;
        v28 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v18];
        v60 = v28;
        if (v28)
        {
          [v28 objectForKeyedSubscript:@"HKPeer"];
          v29 = v13;
          v31 = v30 = infoCopy;
          v32 = CFGetInt64() == 0;

          infoCopy = v30;
          v13 = v29;
        }

        else
        {
          v32 = 1;
        }

        v36 = (BonjourDevice_GetInt64() & 0x400) == 0 || v32;
        v37 = v26;
        if (!v26 && v36)
        {
          var0 = self->_ucat->var0;
          if (var0 > 30)
          {
LABEL_74:

            v25 = v59;
            goto LABEL_75;
          }

          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_74;
            }

            ucat = self->_ucat;
          }

LABEL_38:
          LogPrintF();
          goto LABEL_74;
        }

        if (v60)
        {
          [(APBonjourCacheManager *)self _updateCachedDeviceInfoWhenRealDeviceIsFound:foundCopy event:eventCopy];
          goto LABEL_74;
        }

        if (CFAbsoluteTimeGetCurrent() - self->_networkSignatureWasValidAt < 10.0)
        {
          v40 = self->_ucat->var0;
          if (v40 > 30)
          {
            goto LABEL_74;
          }

          if (v40 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_74;
            }

            v49 = self->_ucat;
          }

          goto LABEL_38;
        }

        if (!v26)
        {
          v46 = self->_ucat->var0;
          if (v46 > 30)
          {
            goto LABEL_74;
          }

          if (v46 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_74;
            }

            v50 = self->_ucat;
          }

          goto LABEL_38;
        }

        [(APBonjourCacheManager *)self _auditCachesIfNecessary:foundCopy event:eventCopy];
        v42 = self->_ucat->var0;
        if (self->_isPublicAirPlayNetwork)
        {
          v37 = v26;
          if (v42 > 30)
          {
            goto LABEL_74;
          }

          if (v42 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_74;
            }

            v51 = self->_ucat;
          }

          goto LABEL_38;
        }

        if (v42 <= 30)
        {
          if (v42 != -1)
          {
LABEL_63:
            networkSignature = self->_networkSignature;
            v48 = "";
            if (v58)
            {
              v48 = "(recheck)";
            }

            v55 = self->_networkSignature;
            v57 = v48;
            v53 = v27;
            v54 = v13;
            LogPrintF();
            goto LABEL_73;
          }

          if (_LogCategory_Initialize())
          {
            v52 = self->_ucat;
            goto LABEL_63;
          }
        }

LABEL_73:
        v37 = v26;
        [(APBonjourCacheManager *)self _addDeviceToCache:foundCopy pairedPeerInfo:v26 event:eventCopy, v53, v54, v55, v57];
        goto LABEL_74;
      }

      v34 = self->_ucat->var0;
      if (v34 <= 30)
      {
        if (v34 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_75;
          }

          v41 = self->_ucat;
        }

        LogPrintF();
      }

LABEL_75:

      goto LABEL_76;
    }

    v35 = self->_ucat->var0;
    infoCopy = v20;
    if (v35 <= 30)
    {
      if (v35 == -1)
      {
        v44 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        v45 = self->_ucat;
      }

      primaryNetworkSignature2 = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];
      LogPrintF();

      infoCopy = v20;
    }
  }

  else
  {
    v33 = self->_ucat->var0;
    if (v33 <= 90)
    {
      if (v33 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_76;
        }

        v39 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_76:
}

- (BOOL)deviceLost:(id)lost
{
  lostCopy = lost;
  v5 = BonjourDevice_CopyCFString();
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v5];
    [(NSMutableSet *)self->_removedItems removeObject:v5];
    v6 = _Block_copy(self->_reportDeviceFoundHandler);
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v5];
      v8 = v7 != 0;
      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }

      BonjourDevice_GetDeviceID();
      v9 = [v7 objectForKeyedSubscript:@"name"];
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_13:
      (v6)[2](v6, v7, 2);

      goto LABEL_14;
    }
  }

  else
  {
    BonjourDevice_GetDeviceID();
    v6 = [lostCopy objectForKeyedSubscript:@"name"];
    v11 = self->_ucat->var0;
    if (v11 <= 90)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v13 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_11:
  v8 = 0;
LABEL_15:

  return v8;
}

- (void)cacheHKPeerIfNeeded:(id)needed pairedPeerInfo:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  DeviceID = BonjourDevice_GetDeviceID();
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    v9 = DeviceID;
    v10 = neededCopy;
    if (var0 != -1)
    {
LABEL_3:
      [v10 objectForKeyedSubscript:@"name"];
      v14 = v13 = v9;
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      v10 = neededCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(APBonjourCacheManager *)self _deviceFound:neededCopy altPairedInfo:infoCopy recheck:1 event:6, v13, v14];
}

- (void)_refreshOrRemoveCachedItem:(id)item
{
  itemCopy = item;
  CFDictionaryGetDouble();
  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 >= 864000.0)
  {
    v6 = BonjourDevice_CopyCFString();
    if (!v6)
    {
      var0 = self->_ucat->var0;
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_11:

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v6];
    [(NSMutableSet *)self->_removedItems removeObject:v6];
    self->_cacheChanged = 1;
    DeviceID = BonjourDevice_GetDeviceID();
    v8 = self->_ucat->var0;
    if (v8 <= 30)
    {
      v9 = DeviceID;
      if (v8 != -1)
      {
LABEL_5:
        v16 = [itemCopy objectForKeyedSubscript:@"name"];
        LogPrintF();

        [(CUCoalescer *)self->_writeCoaleser trigger:v9];
        goto LABEL_11;
      }

      v11 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v13 = self->_ucat;
        goto LABEL_5;
      }
    }

    [(CUCoalescer *)self->_writeCoaleser trigger:v14];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_removeIfDuplicatesFoundOrIfNoLongerCacheable:(unint64_t)cacheable identifier:(id)identifier serialNumber:(id)number manufacturer:(id)manufacturer isCacheable:(BOOL)isCacheable
{
  identifierCopy = identifier;
  numberCopy = number;
  manufacturerCopy = manufacturer;
  cachedItems = self->_cachedItems;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__APBonjourCacheManager__removeIfDuplicatesFoundOrIfNoLongerCacheable_identifier_serialNumber_manufacturer_isCacheable___block_invoke;
  v19[3] = &unk_278BC8E28;
  selfCopy = self;
  cacheableCopy = cacheable;
  v20 = identifierCopy;
  v21 = numberCopy;
  v22 = manufacturerCopy;
  isCacheableCopy = isCacheable;
  v16 = manufacturerCopy;
  v17 = numberCopy;
  v18 = identifierCopy;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v19];
}

void __120__APBonjourCacheManager__removeIfDuplicatesFoundOrIfNoLongerCacheable_identifier_serialNumber_manufacturer_isCacheable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  DeviceID = BonjourDevice_GetDeviceID();
  if (!v20 || ![v20 caseInsensitiveCompare:*(a1 + 32)])
  {
    if (*(a1 + 72))
    {
      goto LABEL_25;
    }

    v11 = **(*(a1 + 56) + 104);
    if (v11 > 30)
    {
      goto LABEL_19;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v15 = *(*(a1 + 56) + 104);
    }

    v17 = DeviceID;
    LogPrintF();
LABEL_19:
    v12 = 8;
LABEL_23:
    [*(a1 + 56) _reportCachedItemLost:v5 event:{v12, v17, v18, v19}];
    goto LABEL_24;
  }

  v7 = BonjourDevice_CopyCFString();
  v8 = BonjourDevice_CopyCFString();
  v9 = v8;
  if (DeviceID != *(a1 + 64) && (!*(a1 + 40) || !v7 || !*(a1 + 48) || !v8 || [v7 compare:?] || objc_msgSend(v9, "caseInsensitiveCompare:", *(a1 + 48))))
  {

    goto LABEL_25;
  }

  v10 = **(*(a1 + 56) + 104);
  if (v10 <= 30)
  {
    if (v10 != -1)
    {
LABEL_6:
      v18 = [v5 objectForKeyedSubscript:@"name"];
      v19 = v9;
      v17 = DeviceID;
      LogPrintF();

      goto LABEL_21;
    }

    v13 = *(*(a1 + 56) + 104);
    if (_LogCategory_Initialize())
    {
      v16 = *(*(a1 + 56) + 104);
      goto LABEL_6;
    }
  }

LABEL_21:
  v14 = *(a1 + 64);

  if (DeviceID != v14)
  {
    v12 = 7;
    goto LABEL_23;
  }

LABEL_24:
  [*(*(a1 + 56) + 16) setObject:0 forKeyedSubscript:{v20, v17}];
  [*(*(a1 + 56) + 32) setObject:0 forKeyedSubscript:v20];
  [*(*(a1 + 56) + 24) removeObject:v20];
  *(*(a1 + 56) + 9) = 1;
  [*(*(a1 + 56) + 88) trigger];
LABEL_25:
}

- (void)_replaceIfnameFromDNSString:(id)string
{
  stringCopy = string;
  v3 = [stringCopy objectForKeyedSubscript:@"dnsName"];
  v4 = [v3 rangeOfString:@"%"];
  if (v4 < [v3 length])
  {
    v5 = [v3 substringToIndex:v4];
    [stringCopy setObject:v5 forKey:@"dnsName"];
  }
}

- (void)_sanitizeDNSStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [stringsCopy objectForKeyedSubscript:@"services"];
  v5 = [v4 mutableCopy];

  [(APBonjourCacheManager *)self _replaceIfnameFromDNSString:stringsCopy];
  if (v5)
  {
    v6 = [v5 count];
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = v8;
        v11 = [v5 objectAtIndexedSubscript:i];
        v8 = [v11 mutableCopy];

        [(APBonjourCacheManager *)self _replaceIfnameFromDNSString:v8];
        [v5 replaceObjectAtIndex:i withObject:v8];
      }
    }
  }

  [stringsCopy setObject:v5 forKey:@"services"];
}

- (void)_networkSignatureChanged
{
  if (!self->_systemMonitor)
  {
    return;
  }

  [(APBonjourCacheManager *)self _ensureKnownNetworkProfileMonitoringStarted];
  primaryNetworkSignature = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];
  networkSignature = self->_networkSignature;
  v17 = primaryNetworkSignature;
  v5 = networkSignature;
  v6 = v5;
  if (v17 != v5)
  {
    if ((v17 != 0) != (v5 == 0))
    {
      v7 = [(NSString *)v17 isEqual:v5];

      if (v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      v9 = v17;
      if (var0 != -1)
      {
LABEL_11:
        v16 = v9;
        LogPrintF();
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        v9 = v17;
        goto LABEL_11;
      }
    }

LABEL_13:
    if (self->_networkSignature)
    {
      [(APBonjourCacheManager *)self _flushCachedItems];
    }

    [(APBonjourCacheManager *)self _reportCachedItemsLost:3, v16];
    if (![(NSString *)v17 containsString:@"Cellular"])
    {
      v11 = v17;
LABEL_22:
      v17 = v11;
      objc_storeStrong(&self->_networkSignature, v11);
      self->_networkSignatureWasValidAt = CFAbsoluteTimeGetCurrent();
      [(APBonjourCacheManager *)self _auditCachesIfNecessary:0 event:3];
      _readCachedItems = [(APBonjourCacheManager *)self _readCachedItems];
      cachedItems = self->_cachedItems;
      self->_cachedItems = _readCachedItems;

      [(APBonjourCacheManager *)self _refreshCachedItems];
      [(APBonjourCacheManager *)self _reportCachedItemsFound:3];
      [(APBonjourCacheManager *)self _recheckDevices:3];
      goto LABEL_23;
    }

    v10 = self->_ucat->var0;
    if (v10 <= 30)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v15 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_21:

    v11 = 0;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)_pairedPeersChanged
{
  if (!self->_pairedPeersGetting)
  {
    self->_pairedPeersGetting = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    v4 = objc_alloc_init(MEMORY[0x277D028E0]);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__APBonjourCacheManager__pairedPeersChanged__block_invoke;
    v6[3] = &unk_278BC8E50;
    v6[4] = self;
    v6[5] = v4;
    [v4 getPairedPeersWithOptions:4 completion:v6];
  }
}

void __44__APBonjourCacheManager__pairedPeersChanged__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 44) = 0;
  [*(a1 + 40) invalidate];
  v7 = *(a1 + 32);
  if (!v6)
  {
    [v7 _cancelRetryGetPairedPeers];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v16 UUIDString];

          if (v17)
          {
            [v9 setObject:v15 forKeyedSubscript:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    objc_storeStrong((*(a1 + 32) + 48), v9);
    v18 = *(a1 + 32);
    v19 = *v18[13];
    if (v19 > 30)
    {
      goto LABEL_22;
    }

    if (v19 == -1)
    {
      v20 = v18[13];
      v21 = _LogCategory_Initialize();
      v18 = *(a1 + 32);
      if (!v21)
      {
        goto LABEL_22;
      }

      v24 = v18[13];
    }

    v25 = [v9 count];
    LogPrintF();
    v18 = *(a1 + 32);
LABEL_22:
    [v18 _recheckDevices:{4, v25}];

    v5 = v26;
    goto LABEL_23;
  }

  v8 = *v7[13];
  if (v8 <= 90)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v23 = *(*(a1 + 32) + 104);
    }

    v25 = v6;
    LogPrintF();
  }

LABEL_18:
  if ([v6 code] == 4099 || objc_msgSend(v6, "code") == 4097)
  {
    [*(a1 + 32) _startRetryGetPairedPeersTimer];
  }

LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_startRetryGetPairedPeersTimer
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v5 = retryTimer;
    dispatch_source_cancel(v5);
    v6 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v8 = self->_retryTimer;
  self->_retryTimer = v7;

  v9 = self->_retryTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__APBonjourCacheManager__startRetryGetPairedPeersTimer__block_invoke;
  handler[3] = &unk_278BC8D38;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  v10 = self->_retryTimer;
  CUDispatchTimerSet();
  dispatch_resume(self->_retryTimer);
}

int *__55__APBonjourCacheManager__startRetryGetPairedPeersTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 104);
  if (*result <= 30)
  {
    if (*result != -1)
    {
LABEL_3:
      result = LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    result = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (result)
    {
      v9 = *(v2 + 104);
      goto LABEL_3;
    }
  }

LABEL_5:
  if ((*(v2 + 64) & 1) == 0)
  {
    v4 = *(v2 + 56);
    if (v4)
    {
      v5 = v4;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = 0;
    }

    v8 = *(a1 + 32);

    return [v8 _pairedPeersChanged];
  }

  return result;
}

- (void)_cancelRetryGetPairedPeers
{
  if (!self->_retryTimer)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v7 = retryTimer;
    dispatch_source_cancel(v7);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)_recheckDevices:(int64_t)devices
{
  if (self->_networkSignature)
  {
    deviceMap = self->_deviceMap;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__APBonjourCacheManager__recheckDevices___block_invoke;
    v4[3] = &unk_278BC8E78;
    v4[4] = self;
    v4[5] = devices;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __41__APBonjourCacheManager__recheckDevices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 mutableCopy];
  [v4 _deviceFound:v5 altPairedInfo:0 recheck:1 event:*(a1 + 40)];
}

- (void)_refreshCachedItems
{
  cachedItems = self->_cachedItems;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__APBonjourCacheManager__refreshCachedItems__block_invoke;
  v3[3] = &unk_278BC8EA0;
  v3[4] = self;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_reportCachedItemsFound:(int64_t)found
{
  if (!self->_isPublicAirPlayNetwork)
  {
    cachedItems = self->_cachedItems;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__APBonjourCacheManager__reportCachedItemsFound___block_invoke;
    v7[3] = &unk_278BC8E78;
    v7[4] = self;
    v7[5] = found;
    [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v7];
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 > 30)
  {
    return;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    ucat = self->_ucat;
  }

  LogPrintF();
}

void __49__APBonjourCacheManager__reportCachedItemsFound___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = _Block_copy(*(*(a1 + 32) + 160));
  if (v4)
  {
    BonjourDevice_GetDeviceID();
    v5 = [v8 objectForKeyedSubscript:@"name"];
    v6 = **(*(a1 + 32) + 104);
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v7 = *(*(a1 + 32) + 104);
      }

      LogPrintF();
    }

LABEL_6:
    v4[2](v4, v8, *(a1 + 40));
  }
}

- (void)_reportCachedItemLost:(id)lost event:(int64_t)event
{
  lostCopy = lost;
  v6 = _Block_copy(self->_reportDeviceLostHandler);
  if (v6)
  {
    v7 = [lostCopy mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"services"];
    [v7 removeObjectForKey:@"services"];
    [v7 setObject:v8 forKeyedSubscript:@"removedServices"];
    [v7 removeObjectForKey:@"cached"];
    [v7 removeObjectForKey:@"wakeArray"];
    [v7 removeObjectForKey:@"wakeAddr"];
    v6[2](v6, v7, event);
  }
}

- (void)_reportCachedItemsLost:(int64_t)lost
{
  cachedItems = self->_cachedItems;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__APBonjourCacheManager__reportCachedItemsLost___block_invoke;
  v4[3] = &unk_278BC8E78;
  v4[4] = self;
  v4[5] = lost;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v4];
}

void __48__APBonjourCacheManager__reportCachedItemsLost___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  DeviceID = BonjourDevice_GetDeviceID();
  v5 = [v14 objectForKeyedSubscript:@"name"];
  v6 = *(a1 + 32);
  v7 = *v6[13];
  if (v7 <= 30)
  {
    if (v7 != -1)
    {
LABEL_3:
      v12 = v5;
      v13 = APBonjourCacheEventToString(*(a1 + 40));
      v11 = DeviceID;
      LogPrintF();
      v6 = *(a1 + 32);
      goto LABEL_5;
    }

    v8 = v6[13];
    v9 = _LogCategory_Initialize();
    v6 = *(a1 + 32);
    if (v9)
    {
      v10 = v6[13];
      goto LABEL_3;
    }
  }

LABEL_5:
  [v6 _reportCachedItemLost:v14 event:{*(a1 + 40), v11, v12, v13}];
}

- (void)_updateLastSeenTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = BonjourDevice_CopyCFString();
  if (!v4)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_13;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
    goto LABEL_13;
  }

  if (![(NSMutableSet *)self->_removedItems containsObject:v4])
  {
    goto LABEL_13;
  }

  v5 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [v6 setObject:v7 forKeyedSubscript:@"lastSeen"];

  [(APBonjourCacheManager *)self _sanitizeDNSStrings:v6];
  [(NSMutableDictionary *)self->_cachedItems setObject:v6 forKeyedSubscript:v4];
  self->_cacheChanged = 1;
  DeviceID = BonjourDevice_GetDeviceID();
  v9 = self->_ucat->var0;
  if (v9 <= 30)
  {
    v10 = DeviceID;
    if (v9 == -1)
    {
      v13 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v14 = self->_ucat;
    }

    [timestampCopy objectForKeyedSubscript:@"name"];
    v16 = v15 = v10;
    LogPrintF();
  }

LABEL_12:
  [(CUCoalescer *)self->_writeCoaleser trigger:v15];

LABEL_13:
}

- (void)_updateCachedDeviceInfoWhenRealDeviceIsFound:(id)found event:(int64_t)event
{
  foundCopy = found;
  DeviceID = BonjourDevice_GetDeviceID();
  v7 = BonjourDevice_CopyCFString();
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v7];
    v9 = v8;
    if (!v8)
    {
LABEL_21:

      goto LABEL_22;
    }

    v10 = [v8 objectForKeyedSubscript:@"name"];
    v11 = BonjourDevice_GetDeviceID();
    v12 = [foundCopy objectForKeyedSubscript:@"name"];
    if ([v10 isEqualToString:v12])
    {
      [v9 objectForKeyedSubscript:@"txt"];
      v36 = DeviceID;
      v13 = v10;
      eventCopy = event;
      v16 = v15 = v11;
      v17 = [foundCopy objectForKeyedSubscript:@"txt"];
      v18 = [v16 isEqual:v17];

      v11 = v15;
      event = eventCopy;
      v10 = v13;
      DeviceID = v36;

      if (v18)
      {
LABEL_12:
        var0 = self->_ucat->var0;
        if (var0 <= 30)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_16;
            }

            ucat = self->_ucat;
          }

          v34 = v11;
          v35 = v10;
          LogPrintF();
        }

LABEL_16:
        removedItems = self->_removedItems;
        if (!removedItems)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v28 = self->_removedItems;
          self->_removedItems = v27;

          removedItems = self->_removedItems;
        }

        [(NSMutableSet *)removedItems addObject:v7, v34, v35];
        [(APBonjourCacheManager *)self _updateLastSeenTimestamp:foundCopy];
        v29 = [v9 mutableCopy];
        [v29 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"cached"];
        v30 = _Block_copy(self->_reportDeviceFoundHandler);
        v31 = v30;
        if (v30)
        {
          (*(v30 + 2))(v30, v29, event);
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = [v9 mutableCopy];
    v20 = [foundCopy objectForKeyedSubscript:@"name"];
    [v19 setObject:v20 forKey:@"name"];

    v21 = [foundCopy objectForKeyedSubscript:@"txt"];
    [v19 setObject:v21 forKey:@"txt"];

    v22 = [foundCopy objectForKeyedSubscript:@"services"];
    [v19 setObject:v22 forKey:@"services"];

    [(APBonjourCacheManager *)self _sanitizeDNSStrings:v19];
    v23 = self->_ucat->var0;
    if (v23 <= 30)
    {
      if (v23 == -1)
      {
        v24 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v33 = self->_ucat;
      }

      [foundCopy objectForKeyedSubscript:@"name"];
      v35 = v34 = DeviceID;
      LogPrintF();
    }

LABEL_11:
    [(NSMutableDictionary *)self->_cachedItems setObject:v19 forKeyedSubscript:v7, v34, v35];
    self->_cacheChanged = 1;
    [(CUCoalescer *)self->_writeCoaleser trigger];

    goto LABEL_12;
  }

LABEL_22:
}

- (void)_addDeviceToCache:(id)cache pairedPeerInfo:(id)info event:(int64_t)event
{
  cacheCopy = cache;
  infoCopy = info;
  if (!self->_cachedItems)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedItems = self->_cachedItems;
    self->_cachedItems = v9;
  }

  v11 = BonjourDevice_CopyCFString();
  if (v11)
  {
    v12 = [cacheCopy mutableCopy];
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cached"];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v12 setObject:v13 forKeyedSubscript:@"lastSeen"];

    [(APBonjourCacheManager *)self _sanitizeDNSStrings:v12];
    info = [infoCopy info];
    CFArrayGetTypeID();
    v15 = CFDictionaryGetTypedValue();

    if (v15)
    {
      [v12 setObject:v15 forKeyedSubscript:@"wakeArray"];
    }

    info2 = [infoCopy info];
    CFDataGetTypeID();
    v17 = CFDictionaryGetTypedValue();

    if (v17)
    {
      [v12 setObject:v17 forKeyedSubscript:@"wakeAddr"];
    }

    if (event == 6)
    {
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HKPeer"];
    }

    [(NSMutableDictionary *)self->_cachedItems setObject:v12 forKeyedSubscript:v11];
    self->_cacheChanged = 1;
    [(CUCoalescer *)self->_writeCoaleser trigger];
  }
}

- (void)_flushCachedItems
{
  if (self->_cachedItems)
  {
    [(APBonjourCacheManager *)self _writeCachedItems:?];
    self->_cacheChanged = 0;
  }
}

- (id)_readCachedItems
{
  v24 = 0;
  v3 = [(APBonjourCacheManager *)self _getCacheFileURLCreateIfNecessary:0 error:&v24];
  v4 = v24;
  if (!v3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_18:
    v14 = 0;
    v9 = v4;
    goto LABEL_27;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v3 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (!v7)
  {
    goto LABEL_18;
  }

  v23 = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v23];
  v9 = v23;

  if (v8)
  {
    CFDictionaryGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v11 = self->_ucat->var0;
    if (v10)
    {
      if (v11 <= 30)
      {
        if (v11 == -1)
        {
          v15 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          v19 = self->_ucat;
        }

        v22 = [v10 count];
        LogPrintF();
      }

LABEL_20:
      v14 = [v10 mutableCopy];
LABEL_25:

      goto LABEL_26;
    }

    if (v11 <= 90)
    {
      if (v11 == -1)
      {
        v16 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v21 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  v13 = self->_ucat->var0;
  if (v13 <= 30)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v20 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_22:
  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (BOOL)_writeCachedItems:(id)items
{
  v30[3] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v25 = [itemsCopy count];
      LogPrintF();
      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v21 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v28 = 0;
  v7 = [(APBonjourCacheManager *)self _getCacheFileURLCreateIfNecessary:1 error:&v28, v25];
  v8 = v28;
  if (v7)
  {
    v29[0] = @"cachedItems";
    v29[1] = @"networkSignature";
    networkSignature = self->_networkSignature;
    v30[0] = itemsCopy;
    v30[1] = networkSignature;
    v29[2] = @"serviceType";
    v30[2] = self->_serviceType;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v27 = 0;
    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v27];
    v12 = v27;

    if (v11)
    {
      v26 = v12;
      v13 = 1;
      v14 = [v11 writeToURL:v7 options:1 error:&v26];
      v15 = v26;

      if (v14)
      {
LABEL_23:
        v12 = v15;
        goto LABEL_24;
      }

      v16 = self->_ucat->var0;
      if (v16 <= 90)
      {
        if (v16 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          v24 = self->_ucat;
        }

        LogPrintF();
      }

LABEL_22:
      v13 = 0;
      goto LABEL_23;
    }

    v18 = self->_ucat->var0;
    if (v18 <= 90)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v23 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_20:
    v13 = 0;
LABEL_24:

    v8 = v12;
    goto LABEL_25;
  }

  v17 = self->_ucat->var0;
  if (v17 <= 90)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v22 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_18:
  v13 = 0;
LABEL_25:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_migrateCacheDirectoryIfNecessary
{
  v85 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v81 = 0;
  selfCopy = self;
  v3 = [(APBonjourCacheManager *)self _getCacheDirectoryURLCreateIfNecessary:1 error:&v81];
  v4 = v81;
  v66 = v3;
  if (!v3)
  {
    [(APBonjourCacheManager *)selfCopy _migrateCacheDirectoryIfNecessary];
    v7 = v82;
    goto LABEL_74;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v80 = v4;
  v6 = [defaultManager2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v80];
  v7 = v80;

  if (!v6)
  {
    [APBonjourCacheManager _migrateCacheDirectoryIfNecessary];
    goto LABEL_74;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v8 = [&unk_284F652C0 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (!v8)
  {
    goto LABEL_73;
  }

  v9 = v8;
  v67 = 0;
  v10 = *v77;
  v60 = *v77;
  v61 = v6;
  do
  {
    v11 = 0;
    v62 = v9;
    do
    {
      if (*v77 != v10)
      {
        objc_enumerationMutation(&unk_284F652C0);
      }

      v12 = [v6 URLByAppendingPathComponent:*(*(&v76 + 1) + 8 * v11) isDirectory:{1, v58, v59}];

      v67 = v12;
      if ([v66 isEqual:v12])
      {
        var0 = selfCopy->_ucat->var0;
        if (var0 > 90)
        {
          goto LABEL_66;
        }

        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_66;
          }

          ucat = selfCopy->_ucat;
        }

        v58 = v12;
        LogPrintF();
        goto LABEL_66;
      }

      v63 = v11;
      path = [v12 path];
      v15 = [defaultManager fileExistsAtPath:path isDirectory:0];

      if (!v15)
      {
        v11 = v63;
        goto LABEL_66;
      }

      v16 = selfCopy->_ucat->var0;
      if (v16 > 30)
      {
        goto LABEL_20;
      }

      if (v16 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v53 = selfCopy->_ucat;
      }

      v58 = v67;
      LogPrintF();
LABEL_20:
      path2 = [v67 path];
      v75 = v7;
      v19 = [defaultManager contentsOfDirectoryAtPath:path2 error:&v75];
      v20 = v75;

      if (v20)
      {
        v21 = selfCopy->_ucat->var0;
        v11 = v63;
        if (v21 > 90)
        {
          goto LABEL_64;
        }

        if (v21 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_64;
          }

          v50 = selfCopy->_ucat;
        }

        v58 = v20;
        goto LABEL_24;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = v19;
      v22 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
      v23 = v67;
      if (!v22)
      {
        goto LABEL_52;
      }

      v24 = v22;
      v25 = *v72;
      do
      {
        v26 = 0;
        do
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v71 + 1) + 8 * v26);
          v28 = selfCopy->_ucat->var0;
          if (v28 <= 30)
          {
            if (v28 != -1)
            {
              goto LABEL_32;
            }

            v32 = selfCopy->_ucat;
            if (_LogCategory_Initialize())
            {
              v43 = selfCopy->_ucat;
LABEL_32:
              path3 = [v23 path];
              v30 = [path3 stringByAppendingPathComponent:v27];
              path4 = [v66 path];
              [path4 stringByAppendingPathComponent:v27];
              v59 = v58 = v30;
              LogPrintF();

              v23 = v67;
            }
          }

          path5 = [v23 path];
          v34 = [path5 stringByAppendingPathComponent:v27];
          path6 = [v66 path];
          v36 = [path6 stringByAppendingPathComponent:v27];
          v70 = 0;
          [defaultManager moveItemAtPath:v34 toPath:v36 error:&v70];
          v37 = v70;

          v23 = v67;
          if (!v37)
          {
            goto LABEL_45;
          }

          code = [v37 code];
          v39 = selfCopy->_ucat->var0;
          if (code == 516)
          {
            if (v39 <= 30)
            {
              if (v39 != -1)
              {
                goto LABEL_38;
              }

              if (_LogCategory_Initialize())
              {
                v44 = selfCopy->_ucat;
LABEL_38:
                v58 = v27;
                LogPrintF();
              }
            }

            path7 = [v67 path];
            v41 = [path7 stringByAppendingPathComponent:v27];
            [defaultManager removeItemAtPath:v41 error:0];

            goto LABEL_44;
          }

          if (v39 <= 90)
          {
            if (v39 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_44;
              }

              v42 = selfCopy->_ucat;
            }

            v58 = v27;
            v59 = v37;
            LogPrintF();
          }

LABEL_44:

LABEL_45:
          ++v26;
        }

        while (v24 != v26);
        v45 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
        v24 = v45;
      }

      while (v45);
LABEL_52:

      path8 = [v23 path];
      v47 = [defaultManager contentsOfDirectoryAtPath:path8 error:0];
      v48 = [v47 count];

      v6 = v61;
      v9 = v62;
      v10 = v60;
      v11 = v63;
      if (!v48)
      {
        v49 = selfCopy->_ucat->var0;
        if (v49 <= 50)
        {
          if (v49 != -1)
          {
            goto LABEL_55;
          }

          if (_LogCategory_Initialize())
          {
            v54 = selfCopy->_ucat;
LABEL_55:
            LogPrintF();
          }
        }

        path9 = [v67 path];
        v69 = 0;
        [defaultManager removeItemAtPath:path9 error:&v69];
        v20 = v69;

        if (v20)
        {
          v52 = selfCopy->_ucat->var0;
          if (v52 > 90)
          {
            goto LABEL_64;
          }

          if (v52 != -1)
          {
            goto LABEL_62;
          }

          if (!_LogCategory_Initialize())
          {
LABEL_64:

            goto LABEL_65;
          }

          v55 = selfCopy->_ucat;
LABEL_62:
          v58 = v20;
LABEL_24:
          LogPrintF();
          goto LABEL_64;
        }
      }

LABEL_65:

      v7 = 0;
LABEL_66:
      ++v11;
    }

    while (v11 != v9);
    v56 = [&unk_284F652C0 countByEnumeratingWithState:&v76 objects:v84 count:16];
    v9 = v56;
  }

  while (v56);

LABEL_73:
LABEL_74:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_handleKnownNetworkProfileUpdate:(BOOL)update
{
  isPublicAirPlayNetwork = self->_isPublicAirPlayNetwork;
  if (isPublicAirPlayNetwork == update)
  {
    return;
  }

  updateCopy = update;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      v7 = "no";
      if (isPublicAirPlayNetwork)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (updateCopy)
      {
        v7 = "yes";
      }

      v10 = v8;
      v11 = v7;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      LOBYTE(isPublicAirPlayNetwork) = self->_isPublicAirPlayNetwork;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_isPublicAirPlayNetwork = updateCopy;
  [(APBonjourCacheManager *)self _auditCachesIfNecessary:0 event:9, v10, v11];
  if (self->_isPublicAirPlayNetwork)
  {

    [(APBonjourCacheManager *)self _reportCachedItemsLost:9];
  }

  else
  {

    [(APBonjourCacheManager *)self _reportCachedItemsFound:9];
  }
}

- (void)_auditCachesIfNecessary:(id)necessary event:(int64_t)event
{
  v66 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  Current = CFAbsoluteTimeGetCurrent();
  if (!self->_auditCaches)
  {
    v18 = 0;
    v13 = 0;
    goto LABEL_56;
  }

  v8 = Current;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v43 = self->_ucat;
    }

    v10 = APBonjourCacheEventToString(event);
    v11 = "yes";
    if (!necessaryCopy)
    {
      v11 = "no";
    }

    v45 = v10;
    v47 = v11;
    LogPrintF();
  }

LABEL_8:
  if (necessaryCopy)
  {
    v13 = BonjourDevice_CopyCFString();
    if (v13)
    {
      DeviceID = BonjourDevice_GetDeviceID();
      goto LABEL_12;
    }

    APSLogErrorAt();
    v18 = 0;
LABEL_56:
    v14 = 0;
    v19 = 0;
    goto LABEL_52;
  }

  v13 = 0;
  DeviceID = 0;
LABEL_12:
  v64 = 0;
  v14 = [(APBonjourCacheManager *)self _getCacheDirectoryURLCreateIfNecessary:0 error:&v64, v45, v47];
  v15 = v64;
  if (NSErrorToOSStatus())
  {
    v18 = 0;
    v19 = v15;
    goto LABEL_52;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v14 path];
  v63 = v15;
  v18 = [defaultManager contentsOfDirectoryAtPath:path error:&v63];
  v19 = v63;

  if (!NSErrorToOSStatus())
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v18 = v18;
    v57 = [v18 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (!v57)
    {

      goto LABEL_52;
    }

    v52 = v19;
    obj = v18;
    v58 = 0;
    v55 = v14;
    v56 = *v60;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * v20);
        v22 = MEMORY[0x277CBEAC0];
        path2 = [v14 path];
        v24 = [path2 stringByAppendingPathComponent:v21];
        v25 = [v22 dictionaryWithContentsOfFile:v24];

        if (!v25)
        {
          APSLogErrorAt();
          v30 = 0;
          v31 = 0;
          v26 = 0.0;
          goto LABEL_36;
        }

        [v25 objectForKeyedSubscript:@"networkSignature"];
        v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v27 = [*&v26 isEqualToString:self->_networkSignature];
        if (v27)
        {
          if (self->_isPublicAirPlayNetwork)
          {
            v28 = self->_ucat->var0;
            if (v28 <= 60)
            {
              if (v28 != -1)
              {
                goto LABEL_24;
              }

              if (_LogCategory_Initialize())
              {
                v39 = self->_ucat;
LABEL_24:
                v46 = v21;
                v48 = v26;
                LogPrintF();
              }
            }
          }
        }

        if (!v13)
        {
          v30 = 0;
LABEL_41:
          v31 = 0;
          goto LABEL_36;
        }

        CFDictionaryGetTypeID();
        v29 = CFDictionaryGetTypedValue();
        v30 = v29;
        if (!v29)
        {
          APSLogErrorAt();
          goto LABEL_41;
        }

        v31 = [v29 objectForKeyedSubscript:v13];
        if (v31)
        {
          CFDictionaryGetDouble();
          v33 = v32;
          CFDictionaryGetDouble();
          v58 += v27 ^ 1;
          v35 = self->_ucat->var0;
          if (v35 <= 30)
          {
            v36 = v34;
            if (v35 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_36;
              }

              v38 = self->_ucat;
            }

            v37 = "Other";
            if (v27)
            {
              v37 = "Current";
            }

            v48 = v8 - v33;
            v49 = v8 - v36;
            v46 = DeviceID;
            v50 = v26;
            v51 = v37;
            LogPrintF();
          }
        }

LABEL_36:

        ++v20;
        v14 = v55;
      }

      while (v57 != v20);
      v18 = obj;
      v40 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      v57 = v40;
      if (!v40)
      {

        if (v58)
        {
          v41 = self->_ucat->var0;
          v19 = v52;
          if (v41 <= 90)
          {
            if (v41 != -1)
            {
              goto LABEL_48;
            }

            if (_LogCategory_Initialize())
            {
              v44 = self->_ucat;
LABEL_48:
              LogPrintF();
            }
          }
        }

        else
        {
          v19 = v52;
        }

        break;
      }
    }
  }

LABEL_52:

  v42 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_getCacheDirectoryURLCreateIfNecessary:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)_getCacheFileURLCreateIfNecessary:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
  *a1 = result;
  return result;
}

- (int)_migrateCacheDirectoryIfNecessary
{
  result = *(self + 104);
  if (*result <= 90)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v7 = *(self + 104);
    }

    result = LogPrintF();
  }

LABEL_5:
  *a3 = a2;
  return result;
}

@end