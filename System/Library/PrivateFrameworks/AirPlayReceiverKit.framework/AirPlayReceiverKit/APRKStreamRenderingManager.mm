@interface APRKStreamRenderingManager
+ (BOOL)setAdvertisingAccessMode:(unint64_t)mode withError:(id *)error;
+ (id)sharedInstance;
+ (unint64_t)getAdvertisingAccessMode;
+ (void)setListeningForAlternateBonjourBrowsing:(BOOL)browsing;
- (APRKStreamRenderingManager)init;
- (APRKStreamRenderingManagerDelegate)delegate;
- (BOOL)_isPermittedClient:(id)client;
- (BOOL)isAirPlayReceiverSupported;
- (BOOL)isAllowedToProceedForClientWithName:(id)name clientID:(id)d;
- (CGSize)_customDisplaySizeFromPrefsWithDefault:(CGSize)default;
- (CGSize)_customDisplaySizeMaxFromPrefsWithDefault:(CGSize)default;
- (__CFString)_getHDRModeString:(unint64_t)string;
- (id)_rendererForUniqueIDInternal:(id)internal;
- (id)activeRenderers;
- (id)allClientNames;
- (id)allRenderers;
- (id)assistedInfoForAWDL;
- (id)assistedInfoForDiscovery;
- (id)assistedInfoForIPAddress:(id)address;
- (id)assistedInfoForMode:(unint64_t)mode options:(id)options;
- (id)createStreamRendererWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller;
- (id)ensureUniqueClientName:(id)name;
- (id)rendererForUniqueID:(id)d;
- (int)_startReceiverServerWithSupportedModesMask:(unint64_t)mask;
- (int)forcePINRefresh;
- (int)stopReceiverServer;
- (unint64_t)_customDisplayHDRModeFromPrefsWithDefault:(unint64_t)default;
- (unint64_t)activeRenderersCount;
- (void)_addPermittedClient:(id)client;
- (void)_initPermittedClients;
- (void)_setPTPClockEnabled:(BOOL)enabled;
- (void)_setRandomPassword;
- (void)processHideGlobalPasscodePromptRequest;
- (void)processShowGlobalPasscodePromptRequest:(id)request withClientName:(id)name;
- (void)removeRendererWithUniqueID:(id)d;
- (void)serverPropertyForKey:(__CFString *)key;
- (void)setAltAdvertisingEnabled:(BOOL)enabled;
- (void)setAssistedModeEnabled:(BOOL)enabled;
- (void)setCustomDisplaySizeMax:(CGSize)max;
- (void)setDemoModeEnabled:(BOOL)enabled;
- (void)setDisplayHDRMode:(unint64_t)mode;
- (void)setEnableMixingMediaAudio:(BOOL)audio;
- (void)setForcePermissionDialog:(BOOL)dialog;
- (void)setForwardFrameUserData:(BOOL)data;
- (void)setOptimizeAudioRenderingLatency:(BOOL)latency;
- (void)setPreemptionPolicy:(unint64_t)policy;
- (void)setServerProperty:(void *)property forKey:(__CFString *)key;
- (void)setShouldForwardLayers:(BOOL)layers;
- (void)setSupportsSenderUIEvents:(BOOL)events;
- (void)setUseCALayerForMirroring:(BOOL)mirroring;
- (void)setUsesHomeKitIntegration:(BOOL)integration;
@end

@implementation APRKStreamRenderingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[APRKStreamRenderingManager sharedInstance];
  }

  v3 = sharedInstance_sharedManager;

  return v3;
}

uint64_t __44__APRKStreamRenderingManager_sharedInstance__block_invoke()
{
  if (IsAppleInternalBuild())
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __44__APRKStreamRenderingManager_sharedInstance__block_invoke_cold_1();
    }

    LogControl();
  }

  v0 = objc_alloc_init(APRKStreamRenderingManager);
  v1 = sharedInstance_sharedManager;
  sharedInstance_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)setAdvertisingAccessMode:(unint64_t)mode withError:(id *)error
{
  if (+[APRKStreamRenderingManager getAppHasSetAdvertisingAccessModeEntitlement])
  {
    if (!mode || mode == 3 || mode == 1)
    {
      v6 = APSSettingsSetInt64();
      if (v6)
      {
        v8 = v6;
        +[APRKStreamRenderingManager setAdvertisingAccessMode:withError:];
      }

      else
      {
        v7 = APSSettingsRemoveValue();
        if (v7)
        {
          v8 = v7;
          +[APRKStreamRenderingManager setAdvertisingAccessMode:withError:];
        }

        else
        {
          v8 = APSSettingsSetValue();
          if (!v8)
          {
            APSSettingsSynchronize();
            notify_post("com.apple.airplay.prefsChanged");
            goto LABEL_9;
          }

          +[APRKStreamRenderingManager setAdvertisingAccessMode:withError:];
        }
      }
    }

    else
    {
      v8 = -6705;
      APSLogErrorAt();
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      +[APRKStreamRenderingManager setAdvertisingAccessMode:withError:];
    }

    v8 = -6773;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
  }

LABEL_9:
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v8 == 0;
}

+ (unint64_t)getAdvertisingAccessMode
{
  if (APSGetAccessControlConfig())
  {
    +[APRKStreamRenderingManager getAdvertisingAccessMode];
  }

  else
  {
    v2 = APSGetP2PAllow();
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v2 == 1)
    {
      return 0;
    }

    if (!v2)
    {
      return 1;
    }

    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      +[APRKStreamRenderingManager getAdvertisingAccessMode];
    }
  }

  return -1;
}

+ (void)setListeningForAlternateBonjourBrowsing:(BOOL)browsing
{
  if (APSSettingsSetInt64() && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    +[APRKStreamRenderingManager setListeningForAlternateBonjourBrowsing:];
  }

  APSSettingsSynchronize();
  if (browsing)
  {
    if (gLogCategory_AirPlayReceiverKit > 50)
    {
      v4 = "com.apple.airplay.alternatebonjourbrowsingenabled";
      goto LABEL_18;
    }

    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      v4 = "com.apple.airplay.alternatebonjourbrowsingenabled";
LABEL_14:
      LogPrintF();
      goto LABEL_18;
    }

    v4 = "com.apple.airplay.alternatebonjourbrowsingenabled";
    if (_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit > 50)
    {
      v4 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
      goto LABEL_18;
    }

    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      v4 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
      goto LABEL_14;
    }

    v4 = "com.apple.airplay.alternatebonjourbrowsingdisabled";
    if (_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  notify_post(v4);

  notify_post("com.apple.airplay.prefsChanged");
}

- (APRKStreamRenderingManager)init
{
  v17.receiver = self;
  v17.super_class = APRKStreamRenderingManager;
  v2 = [(APRKStreamRenderingManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_server = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    serverProperties = v3->_serverProperties;
    v3->_serverProperties = dictionary;

    *&v3->_useCALayerForMirroring = 1;
    v3->_supportRemoteControl = 0;
    v6 = *MEMORY[0x277CBF3A8];
    v3->_customDisplaySize = *MEMORY[0x277CBF3A8];
    v3->_customDisplaySizeMax = v6;
    v7 = dispatch_queue_create("com.apple.aprkstreamrenderingmanager.isolationqueue", 0);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v7;

    objc_storeStrong(&v3->_delegateQueue, MEMORY[0x277D85CD0]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    renderersArray = v3->_renderersArray;
    v3->_renderersArray = v9;

    v3->_supportedModesMask = 0;
    v3->_maxNumberOfConcurrentSessions = 0;
    v3->_concurrentPlaybackPolicy = 0;
    *&v3->_displayHDRMode = xmmword_23EB09DD0;
    *&v3->_permissionTimeout = xmmword_23EB09DE0;
    v11 = dispatch_queue_create("com.apple.aprkstreamrenderingmanager.permissionqueue", 0);
    permittedClientsQueue = v3->_permittedClientsQueue;
    v3->_permittedClientsQueue = v11;

    IntWithDefault = APSSettingsGetIntWithDefault();
    v3->_permissionEnabled = IntWithDefault == 0;
    if (IntWithDefault && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager init];
    }

    v14 = objc_alloc_init(AWDLActivator);
    awdlActivator = v3->_awdlActivator;
    v3->_awdlActivator = v14;

    v3->_preemptionPolicy = 0;
    v3->_useUniqueClientName = APSSettingsGetIntWithDefault() != 0;
  }

  return v3;
}

- (int)stopReceiverServer
{
  if (!self->_server)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager stopReceiverServer];
    }

    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager stopReceiverServer];
  }

  v3 = AirPlayReceiverServerGetDispatchQueue();
  CFObjectControlAsync();

  v4 = AirPlayReceiverServerGetDispatchQueue();
  v5 = CFObjectControlSync();

  server = self->_server;
  if (server)
  {
    CFRelease(server);
    self->_server = 0;
  }

  [(AWDLActivator *)self->_awdlActivator stop:0];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager stopReceiverServer];
    }

    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager stopReceiverServer];
  }

  return v5;
}

- (id)rendererForUniqueID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__APRKStreamRenderingManager_rendererForUniqueID___block_invoke;
    block[3] = &unk_278C627D8;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(isolationQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __50__APRKStreamRenderingManager_rendererForUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (unint64_t)activeRenderersCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__APRKStreamRenderingManager_activeRenderersCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__APRKStreamRenderingManager_activeRenderersCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)allClientNames
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__APRKStreamRenderingManager_allClientNames__block_invoke;
  v6[3] = &unk_278C62CA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __44__APRKStreamRenderingManager_allClientNames__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__APRKStreamRenderingManager_allClientNames__block_invoke_2;
  v3[3] = &unk_278C62C78;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __44__APRKStreamRenderingManager_allClientNames__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 managedClientName];
  [v2 addObject:v3];
}

- (id)allRenderers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__APRKStreamRenderingManager_allRenderers__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)activeRenderers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isolationQueue = self->_isolationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__APRKStreamRenderingManager_activeRenderers__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setServerProperty:(void *)property forKey:(__CFString *)key
{
  serverProperties = self->_serverProperties;
  if (!property)
  {
    property = *MEMORY[0x277CBEEE8];
  }

  CFDictionarySetValue(serverProperties, key, property);
  if (self->_server)
  {
    AirPlayReceiverServerSetProperty();
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)serverPropertyForKey:(__CFString *)key
{
  result = CFDictionaryGetValue(self->_serverProperties, key);
  if (result == *MEMORY[0x277CBEEE8])
  {
    return 0;
  }

  return result;
}

- (void)setPreemptionPolicy:(unint64_t)policy
{
  preemptionPolicy = policy;
  self->_preemptionPolicy = policy;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
    {
      [APRKStreamRenderingManager setPreemptionPolicy:];
    }

    preemptionPolicy = self->_preemptionPolicy;
  }

  if (preemptionPolicy == 1)
  {
    v5 = MEMORY[0x277CBED10];
    goto LABEL_9;
  }

  if (preemptionPolicy == 2)
  {
    v5 = MEMORY[0x277CBED28];
LABEL_9:
    v6 = *v5;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:

  [(APRKStreamRenderingManager *)self setServerProperty:v6 forKey:@"denyInterruptions"];
}

- (void)setUseCALayerForMirroring:(BOOL)mirroring
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setUseCALayerForMirroring:];
  }

  self->_useCALayerForMirroring = mirroring;
}

- (void)setOptimizeAudioRenderingLatency:(BOOL)latency
{
  self->_optimizeAudioRenderingLatency = latency;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)setEnableMixingMediaAudio:(BOOL)audio
{
  self->_enableMixingMediaAudio = audio;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setEnableMixingMediaAudio:];
  }
}

- (void)setCustomDisplaySizeMax:(CGSize)max
{
  APSGetMaxSizePreservingAspectRatio();
  self->_customDisplaySizeMax.width = width;
  self->_customDisplaySizeMax.height = height;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), width = self->_customDisplaySizeMax.width, height = self->_customDisplaySizeMax.height, v6))
    {
      LogPrintF();
      width = self->_customDisplaySizeMax.width;
      height = self->_customDisplaySizeMax.height;
    }
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&width);
  [(APRKStreamRenderingManager *)self setServerProperty:DictionaryRepresentation forKey:@"displaySizeMax"];
  if (DictionaryRepresentation)
  {

    CFRelease(DictionaryRepresentation);
  }
}

- (void)setDisplayHDRMode:(unint64_t)mode
{
  v5 = [(APRKStreamRenderingManager *)self _getHDRModeString:?];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setDisplayHDRMode:];
  }

  self->_displayHDRMode = mode;

  [(APRKStreamRenderingManager *)self setServerProperty:v5 forKey:@"displayHDRMode"];
}

- (void)setUsesHomeKitIntegration:(BOOL)integration
{
  integrationCopy = integration;
  if (IsAppleInternalBuild())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
    if (IntWithDefault)
    {
      v6 = 0;
    }

    else
    {
      v6 = integrationCopy;
    }

    self->_usesHomeKitIntegration = v6;
    if (integrationCopy && IntWithDefault)
    {
      if (gLogCategory_AirPlayReceiverKit > 50)
      {
        return;
      }

      if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
      {
        [APRKStreamRenderingManager setUsesHomeKitIntegration:];
      }
    }
  }

  else
  {
    self->_usesHomeKitIntegration = integrationCopy;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setUsesHomeKitIntegration:];
  }
}

- (void)setDemoModeEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
  {
    v3 = MEMORY[0x277CBED10];
  }

  [(APRKStreamRenderingManager *)self setServerProperty:*v3 forKey:@"screenDemoMode"];
}

- (void)setForwardFrameUserData:(BOOL)data
{
  v3 = MEMORY[0x277CBED28];
  if (!data)
  {
    v3 = MEMORY[0x277CBED10];
  }

  [(APRKStreamRenderingManager *)self setServerProperty:*v3 forKey:@"forwardFrameUserData"];
}

- (void)setSupportsSenderUIEvents:(BOOL)events
{
  v3 = MEMORY[0x277CBED28];
  if (!events)
  {
    v3 = MEMORY[0x277CBED10];
  }

  [(APRKStreamRenderingManager *)self setServerProperty:*v3 forKey:@"supportsSenderUIEvents"];
}

- (int)forcePINRefresh
{
  if (!self->_server)
  {
    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager forcePINRefresh];
  }

  server = self->_server;

  return MEMORY[0x28213BA88](server, 1, @"clearPIN", 0, 0, 0);
}

- (BOOL)isAirPlayReceiverSupported
{
  if (isAirPlayReceiverSupported_once != -1)
  {
    [APRKStreamRenderingManager isAirPlayReceiverSupported];
  }

  return isAirPlayReceiverSupported_sIsReceiverSupported != 0;
}

uint64_t __56__APRKStreamRenderingManager_isAirPlayReceiverSupported__block_invoke()
{
  if (APSIsVirtualMachine())
  {
    result = IsAppleInternalBuild();
  }

  else
  {
    result = APSSystemSupportsWiFiUDM();
  }

  isAirPlayReceiverSupported_sIsReceiverSupported = result;
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
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

- (void)setAltAdvertisingEnabled:(BOOL)enabled
{
  self->_altAdvertisingEnabled = enabled;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)setAssistedModeEnabled:(BOOL)enabled
{
  self->_assistedModeEnabled = enabled;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (id)assistedInfoForAWDL
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  LODWORD(v9) = 0;
  v8 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (self->_assistedModeEnabled)
  {
    if (self->_server)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager assistedInfoForAWDL];
      }

      [(AWDLActivator *)self->_awdlActivator startWithMaxDuration:30, 0, 0, 0, v9, v10, v11, v12, v13, v14, v15, v16, v17];
      if (CUGetInterfaceAddresses())
      {
        [APRKStreamRenderingManager assistedInfoForAWDL];
      }

      else
      {
        if (!SockAddrToString())
        {
          v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v10];
          v4 = [(APRKStreamRenderingManager *)self assistedInfoForIPAddress:v3];

          if (v4)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        [APRKStreamRenderingManager assistedInfoForAWDL];
      }

      if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager assistedInfoForAWDL];
      }
    }

    else
    {
      [APRKStreamRenderingManager assistedInfoForAWDL];
    }
  }

  else
  {
    [APRKStreamRenderingManager assistedInfoForAWDL];
  }

LABEL_9:
  [(AWDLActivator *)self->_awdlActivator stop:v6];
  v4 = 0;
LABEL_10:

  return v4;
}

- (id)assistedInfoForIPAddress:(id)address
{
  addressCopy = address;
  v16 = 0;
  if (!self->_assistedModeEnabled)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
LABEL_26:
    v11 = 0;
    v5 = 0;
    v6 = 0;
LABEL_28:
    v12 = 0;
    goto LABEL_14;
  }

  if (!self->_server)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
    goto LABEL_26;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
  }

  [(APRKStreamRenderingManager *)self _setRandomPassword];
  v5 = AirPlayReceiverServerCopyProperty();
  v6 = [v5 mutableCopy];
  v7 = AirPlayReceiverServerCopyProperty();
  intValue = [v7 intValue];

  if (intValue <= 0)
  {
    [APRKStreamRenderingManager assistedInfoForIPAddress:];
    v11 = 0;
    goto LABEL_28;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
  [v6 setObject:v9 forKey:@"NetworkPort"];

  [v6 setObject:self->_passwordString forKey:@"AuthString"];
  [v6 setObject:addressCopy forKey:@"NetworkAddress"];
  if ([addressCopy containsString:@"%awdl"])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v6 setObject:v10 forKey:@"IsP2P"];
  }

  v15 = 0;
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v15];
  v12 = v15;
  if (v12)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager assistedInfoForIPAddress:];
    }

    v11 = 0;
  }

LABEL_14:
  if (v16 && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = v11;

  return v13;
}

- (id)assistedInfoForDiscovery
{
  cf = 0;
  if (!self->_assistedModeEnabled)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
LABEL_30:
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v4 = 0;
LABEL_33:
    v7 = 0;
    goto LABEL_14;
  }

  if (!self->_server)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
    goto LABEL_30;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  if (!Mutable)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = -6728;
    goto LABEL_14;
  }

  CFDictionarySetValue(Mutable, @"AssistedOverAWDL", *MEMORY[0x277CBED28]);
  CFDictionarySetInt64();
  v5 = AirPlayReceiverServerGetDispatchQueue();
  v6 = CFObjectControlSync();

  if (v6)
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
    v9 = 0;
    v8 = 0;
    goto LABEL_33;
  }

  [(APRKStreamRenderingManager *)self _setRandomPassword];
  v7 = [cf mutableCopy];
  [v7 setObject:self->_passwordString forKey:@"AuthString"];
  v12 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v12];
  v9 = v12;
  if (v9)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager assistedInfoForDiscovery];
    }

    v6 = NSErrorToOSStatus();
    v10 = AirPlayReceiverServerGetDispatchQueue();
    CFObjectControlAsync();

    v8 = 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6 && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager assistedInfoForDiscovery];
  }

  return v8;
}

- (id)assistedInfoForMode:(unint64_t)mode options:(id)options
{
  optionsCopy = options;
  v7 = optionsCopy;
  if (mode == 2)
  {
    assistedInfoForDiscovery = [(APRKStreamRenderingManager *)self assistedInfoForDiscovery];
    goto LABEL_9;
  }

  if (mode == 1)
  {
    assistedInfoForDiscovery = [(APRKStreamRenderingManager *)self assistedInfoForAWDL];
LABEL_9:
    v10 = assistedInfoForDiscovery;
    goto LABEL_14;
  }

  if (mode)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager assistedInfoForMode:options:];
    }

    v10 = 0;
  }

  else
  {
    if (optionsCopy)
    {
      v8 = [optionsCopy objectForKey:@"IPAddress"];

      if (v8)
      {
        v9 = [v7 objectForKeyedSubscript:@"IPAddress"];
        v10 = [(APRKStreamRenderingManager *)self assistedInfoForIPAddress:v9];

        goto LABEL_14;
      }

      [APRKStreamRenderingManager assistedInfoForMode:? options:?];
    }

    else
    {
      [APRKStreamRenderingManager assistedInfoForMode:? options:?];
    }

    v10 = v13;
  }

LABEL_14:

  return v10;
}

- (void)setForcePermissionDialog:(BOOL)dialog
{
  self->_forcePermissionDialog = dialog;
  v3 = MEMORY[0x277CBED28];
  if (!dialog)
  {
    v3 = MEMORY[0x277CBED10];
  }

  [(APRKStreamRenderingManager *)self setServerProperty:*v3 forKey:@"forcePermissionDialog"];
}

- (id)ensureUniqueClientName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  v6 = nameCopy;
  if (nameCopy)
  {
    v6 = nameCopy;
    if (self->_useUniqueClientName)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = self->_renderersArray;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 1;
        v11 = v5;
        while (2)
        {
          v12 = *v18;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v7);
            }

            managedClientName = [*(*(&v17 + 1) + 8 * v13) managedClientName];
            v15 = [managedClientName isEqualToString:v11];

            if (v15)
            {
              break;
            }

            if (v9 == ++v13)
            {
              v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
              if (v9)
              {
                goto LABEL_6;
              }

              v6 = v11;
              goto LABEL_16;
            }
          }

          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", v5, v10];

          v10 = (v10 + 1);
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v7 = self->_renderersArray;
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          v11 = v6;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = v5;
      }

LABEL_16:

      if (([v5 isEqualToString:v6] & 1) == 0 && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  return v6;
}

- (id)createStreamRendererWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller
{
  dCopy = d;
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  [(AWDLActivator *)self->_awdlActivator stop];
  v10 = AirPlayReceiverServerGetDispatchQueue();
  CFObjectControlAsync();

  if (dCopy)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke;
    block[3] = &unk_278C62CC8;
    v17 = &v19;
    block[4] = self;
    v15 = dCopy;
    v16 = nameCopy;
    controllerCopy = controller;
    dispatch_sync(isolationQueue, block);
  }

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 32) ensureUniqueClientName:*(a1 + 48)];
    v6 = [[APRKStreamRenderer alloc] initWithUniqueID:*(a1 + 40) clientName:v5 UIController:*(a1 + 64) useCALayerForMirroring:*(*(a1 + 32) + 48)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_cold_1();
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(*(a1 + 32) + 24) addObject:?];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2;
      v12[3] = &unk_278C62CA0;
      v11 = *(a1 + 56);
      v12[4] = v9;
      v12[5] = v11;
      dispatch_async(v10, v12);
    }
  }
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 didStartStreamingWithRenderer:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)removeRendererWithUniqueID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__1;
    v12[4] = __Block_byref_object_dispose__1;
    v13 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke;
    block[3] = &unk_278C627D8;
    v11 = v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(isolationQueue, block);
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2;
    v8[3] = &unk_278C62CA0;
    v8[4] = self;
    v8[5] = v12;
    dispatch_async(delegateQueue, v8);

    _Block_object_dispose(v12, 8);
  }
}

uint64_t __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _rendererForUniqueIDInternal:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(a1 + 32) + 24) removeObject:*(*(*(a1 + 48) + 8) + 40)];
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_cold_1();
    }
  }

  return result;
}

void __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 didStopStreamingWithRenderer:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)setShouldForwardLayers:(BOOL)layers
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager setShouldForwardLayers:];
  }

  self->_shouldForwardLayers = layers;
}

- (void)processShowGlobalPasscodePromptRequest:(id)request withClientName:(id)name
{
  requestCopy = request;
  nameCopy = name;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke;
  block[3] = &unk_278C628F0;
  block[4] = self;
  v12 = nameCopy;
  v13 = requestCopy;
  v9 = requestCopy;
  v10 = nameCopy;
  dispatch_async(delegateQueue, block);
}

void __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 shouldShowGlobalPasscodeWithString:*(a1 + 48) withClientName:*(a1 + 40)];
  }
}

- (void)processHideGlobalPasscodePromptRequest
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke_cold_1(v1);
    }

    v4 = [*v1 delegate];
    [v4 shouldHideGlobalPasscode];
  }
}

- (BOOL)isAllowedToProceedForClientWithName:(id)name clientID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (self->_permissionEnabled)
  {
    delegate = [(APRKStreamRenderingManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(APRKStreamRenderingManager *)self _isPermittedClient:dCopy];

      if (!v9)
      {
        v10 = dispatch_semaphore_create(0);
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        uUID = [MEMORY[0x277CCAD78] UUID];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke;
        aBlock[3] = &unk_278C62CF0;
        v35 = &v36;
        v12 = v10;
        v34 = v12;
        v13 = _Block_copy(aBlock);
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2;
        block[3] = &unk_278C62D18;
        block[4] = self;
        v15 = nameCopy;
        v30 = v15;
        v16 = uUID;
        v31 = v16;
        v17 = v13;
        v32 = v17;
        dispatch_async(delegateQueue, block);
        permissionTimeout = self->_permissionTimeout;
        if (permissionTimeout < 0)
        {
          v19 = -1;
        }

        else
        {
          v19 = dispatch_time(0, 1000000000 * permissionTimeout);
        }

        if (dispatch_semaphore_wait(v12, v19))
        {
          if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            delegate2 = [(APRKStreamRenderingManager *)self delegate];
            v26 = v15;
            LogPrintF();
          }

          v22 = [(APRKStreamRenderingManager *)self delegate:delegate2];
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = self->_delegateQueue;
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3;
            v27[3] = &unk_278C62788;
            v27[4] = self;
            v28 = v16;
            dispatch_async(v24, v27);
          }
        }

        else if (*(v37 + 24) == 1)
        {
          [(APRKStreamRenderingManager *)self _addPermittedClient:dCopy];
          v20 = 1;
LABEL_24:

          _Block_object_dispose(&v36, 8);
          goto LABEL_8;
        }

        v20 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v20 = 1;
LABEL_8:
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v20;
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 shouldAskPermissionWithRequestID:*(a1 + 48) forClientWithName:*(a1 + 40) withCompletionBlock:*(a1 + 56)];
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3_cold_1(a1);
  }

  v2 = [*(a1 + 32) delegate];
  [v2 shouldCancelPermissionRequestWithRequestID:*(a1 + 40)];
}

- (__CFString)_getHDRModeString:(unint64_t)string
{
  switch(string)
  {
    case 3uLL:
      v3 = MEMORY[0x277CD6528];
      return *v3;
    case 2uLL:
      v3 = MEMORY[0x277CD6530];
      return *v3;
    case 1uLL:
      v3 = MEMORY[0x277CD6538];
      return *v3;
  }

  return 0;
}

- (int)_startReceiverServerWithSupportedModesMask:(unint64_t)mask
{
  v54 = *MEMORY[0x277D85DE8];
  valuePtr = UIControllerCreate;
  [(APRKStreamRenderingManager *)self _customDisplaySizeFromPrefsWithDefault:self->_customDisplaySize.width, self->_customDisplaySize.height];
  v6 = v5;
  v8 = v7;
  [(APRKStreamRenderingManager *)self _customDisplaySizeMaxFromPrefsWithDefault:self->_customDisplaySizeMax.width, self->_customDisplaySizeMax.height];
  v10 = v9;
  v12 = v11;
  v13 = [(APRKStreamRenderingManager *)self _customDisplayHDRModeFromPrefsWithDefault:self->_displayHDRMode];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  if (_startReceiverServerWithSupportedModesMask__onceToken != -1)
  {
    dispatch_once(&_startReceiverServerWithSupportedModesMask__onceToken, block);
  }

  if (self->_server)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
    }

    return 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
  }

  v15 = *MEMORY[0x277CBECE8];
  v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EC0], v16);
  v18 = *MEMORY[0x277CBF3A8];
  v19 = *(MEMORY[0x277CBF3A8] + 8);
  if (v6 != *MEMORY[0x277CBF3A8] || v8 != v19)
  {
    v55.width = v6;
    v55.height = v8;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v55);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E78], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  if (v10 != v18 || v12 != v19)
  {
    v56.width = v10;
    v56.height = v12;
    v23 = CGSizeCreateDictionaryRepresentation(v56);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E80], v23);
    CFRelease(v23);
  }

  v24 = [(APRKStreamRenderingManager *)self _getHDRModeString:v13];
  if (v24)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E70], v24);
  }

  if (mask)
  {
    self->_supportedModesMask = mask;
    v25 = APSFeaturesCreateMutable();
    if (!v25)
    {
      [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
      v14 = -6728;
      goto LABEL_79;
    }

    v26 = v25;
    if ((mask & 1) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
      }

      APSFeaturesSetFeature();
    }

    if ((mask & 3) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
      }

      APSFeaturesSetFeature();
    }

    if ((mask & 4) == 0)
    {
      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
      }

      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E90], v26);
    CFRelease(v26);
  }

  v27 = *MEMORY[0x277CBED28];
  v28 = *MEMORY[0x277CBED10];
  if (self->_usesHomeKitIntegration)
  {
    v29 = *MEMORY[0x277CBED28];
  }

  else
  {
    v29 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CE9ED8], v29);
  maxNumberOfConcurrentSessions = self->_maxNumberOfConcurrentSessions;
  if (maxNumberOfConcurrentSessions)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v31 = _LogCategory_Initialize(), maxNumberOfConcurrentSessions = self->_maxNumberOfConcurrentSessions, v31))
      {
        v44 = maxNumberOfConcurrentSessions;
        LogPrintF();
      }
    }

    CFDictionarySetInt64();
  }

  else if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
  }

  concurrentPlaybackPolicy = self->_concurrentPlaybackPolicy;
  if (concurrentPlaybackPolicy)
  {
    if (concurrentPlaybackPolicy == 1)
    {
      v33 = v27;
    }

    else
    {
      v33 = v28;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EA0], v33);
  }

  if (self->_supportRemoteControl)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EB0], v27);
  }

  if (self->_assistedModeEnabled)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EA8], v27);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9ED0], v27);
  }

  if (self->_altAdvertisingEnabled)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9EC8], v27);
  }

  if (self->_enableMixingMediaAudio)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CE9E88], v27);
  }

  v34 = AirPlayReceiverServerCreate();
  if (v34)
  {
    v14 = v34;
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
    }
  }

  else
  {
    if (self->_assistedModeEnabled)
    {
      [(APRKStreamRenderingManager *)self _setRandomPassword];
    }

    v35 = AirPlayReceiverServerGetDispatchQueue();
    v14 = CFObjectControlSync();

    if (!v14)
    {
      v46 = v16;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v37 = self->_serverProperties;
      v38 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v48;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v48 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v47 + 1) + 8 * i);
            v43 = [(APRKStreamRenderingManager *)self serverPropertyForKey:v42, v44, v45];
            AirPlayReceiverServerSetProperty();
            if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              v44 = v42;
              v45 = v43;
              LogPrintF();
            }
          }

          v39 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v39);
      }

      if (gLogCategory_AirPlayReceiverKit > 50)
      {
        v14 = 0;
        v16 = v46;
      }

      else
      {
        v16 = v46;
        if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
        {
          [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
        }

        v14 = 0;
      }

      goto LABEL_79;
    }

    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager _startReceiverServerWithSupportedModesMask:];
    }
  }

  APSLogErrorAt();
LABEL_79:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v14;
}

uint64_t __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("APRKAlternateBonjourBrowsingNotificationQueue", 0);
  v3 = _startReceiverServerWithSupportedModesMask__notificationQueue;
  _startReceiverServerWithSupportedModesMask__notificationQueue = v2;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2;
  handler[3] = &unk_278C62D40;
  handler[4] = *(a1 + 32);
  notify_register_dispatch("com.apple.airplay.alternatebonjourbrowsingdisabled", &_startReceiverServerWithSupportedModesMask__notifyDisabledToken, _startReceiverServerWithSupportedModesMask__notificationQueue, handler);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3;
  v5[3] = &unk_278C62D40;
  v5[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.airplay.alternatebonjourbrowsingenabled", &_startReceiverServerWithSupportedModesMask__notifyEnabledToken, _startReceiverServerWithSupportedModesMask__notificationQueue, v5);
}

void __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_2_cold_1();
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"APRKAlternateBonjourBrowsingDisabled" object:*(a1 + 32)];
}

void __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __73__APRKStreamRenderingManager__startReceiverServerWithSupportedModesMask___block_invoke_3_cold_1();
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"APRKAlternateBonjourBrowsingEnabled" object:*(a1 + 32)];
}

- (id)_rendererForUniqueIDInternal:(id)internal
{
  internalCopy = internal;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  renderersArray = self->_renderersArray;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__APRKStreamRenderingManager__rendererForUniqueIDInternal___block_invoke;
  v9[3] = &unk_278C62D68;
  v6 = internalCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)renderersArray enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__APRKStreamRenderingManager__rendererForUniqueIDInternal___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_setPTPClockEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
  {
    v3 = MEMORY[0x277CBED10];
  }

  [(APRKStreamRenderingManager *)self setServerProperty:*v3 forKey:@"usePTPClock"];
}

- (CGSize)_customDisplaySizeFromPrefsWithDefault:(CGSize)default
{
  height = default.height;
  width = default.width;
  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = APSSettingsGetIntWithDefault();
  if (IntWithDefault > 0 || v6 >= 1)
  {
    v8 = v6;
    if (v6 <= 0)
    {
      v8 = (IntWithDefault / 1.77777778);
    }

    else if (IntWithDefault <= 0)
    {
      IntWithDefault = (v6 * 1.77777778);
    }

    width = IntWithDefault;
    height = v8;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_customDisplaySizeMaxFromPrefsWithDefault:(CGSize)default
{
  height = default.height;
  width = default.width;
  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = APSSettingsGetIntWithDefault();
  if (IntWithDefault > 0 || v6 >= 1)
  {
    v8 = v6;
    if (v6 <= 0)
    {
      v8 = (IntWithDefault / 1.77777778);
    }

    else if (IntWithDefault <= 0)
    {
      IntWithDefault = (v6 * 1.77777778);
    }

    width = IntWithDefault;
    height = v8;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (unint64_t)_customDisplayHDRModeFromPrefsWithDefault:(unint64_t)default
{
  CFStringGetTypeID();
  v5 = APSSettingsCopyValueEx();
  if (v5)
  {
    v6 = v5;
    if (CFEqual(v5, *MEMORY[0x277CD6538]))
    {
      default = 1;
    }

    else if (CFEqual(v6, *MEMORY[0x277CD6530]))
    {
      default = 2;
    }

    else if (CFEqual(v6, *MEMORY[0x277CD6528]))
    {
      default = 3;
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _customDisplayHDRModeFromPrefsWithDefault:];
      }

      default = 0;
    }

    CFRelease(v6);
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderingManager *)default _customDisplayHDRModeFromPrefsWithDefault:?];
  }

  return default;
}

- (void)_initPermittedClients
{
  if (!self->_permittedClients)
  {
    handler[7] = v2;
    handler[8] = v3;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    permittedClients = self->_permittedClients;
    self->_permittedClients = dictionary;

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_permittedClientsQueue);
    permissionGrantTimer = self->_permissionGrantTimer;
    self->_permissionGrantTimer = v7;

    v9 = self->_permissionGrantTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__APRKStreamRenderingManager__initPermittedClients__block_invoke;
    handler[3] = &unk_278C626E8;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(self->_permissionGrantTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(self->_permissionGrantTimer);
  }
}

uint64_t __51__APRKStreamRenderingManager__initPermittedClients__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __51__APRKStreamRenderingManager__initPermittedClients__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 120);

  return [v2 removeAllObjects];
}

- (BOOL)_isPermittedClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (clientCopy && !self->_forcePermissionDialog)
  {
    permittedClientsQueue = self->_permittedClientsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__APRKStreamRenderingManager__isPermittedClient___block_invoke;
    block[3] = &unk_278C62D90;
    block[4] = self;
    v10 = clientCopy;
    v11 = &v12;
    dispatch_sync(permittedClientsQueue, block);

    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v6 & 1;
}

void __49__APRKStreamRenderingManager__isPermittedClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initPermittedClients];
  v5 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v5 doubleValue];
    v4 = *(a1 + 32);
    if (Current - v3 <= *(v4 + 112))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      [*(v4 + 120) removeObjectForKey:*(a1 + 40)];
    }
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __49__APRKStreamRenderingManager__isPermittedClient___block_invoke_cold_1();
  }
}

- (void)_addPermittedClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (clientCopy)
  {
    permittedClientsQueue = self->_permittedClientsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__APRKStreamRenderingManager__addPermittedClient___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = clientCopy;
    dispatch_sync(permittedClientsQueue, v7);
  }
}

void __50__APRKStreamRenderingManager__addPermittedClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initPermittedClients];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __50__APRKStreamRenderingManager__addPermittedClient___block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 120);
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [v2 setObject:v3 forKey:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  v6 = dispatch_time(0, 1000000000 * *(v4 + 112));

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)_setRandomPassword
{
  if (self->_server)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    passwordString = self->_passwordString;
    self->_passwordString = uUIDString;

    if (AirPlayReceiverServerSetProperty())
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderingManager _setRandomPassword];
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderingManager _setRandomPassword];
    }
  }
}

- (APRKStreamRenderingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)assistedInfoForMode:(void *)a1 options:.cold.1(void *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_7();
    }
  }

  *a1 = 0;
  return result;
}

- (uint64_t)assistedInfoForMode:(void *)a1 options:.cold.2(void *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 50)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_7();
    }
  }

  *a1 = 0;
  return result;
}

void __87__APRKStreamRenderingManager_createStreamRendererWithUniqueID_clientName_UIController___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
}

void __57__APRKStreamRenderingManager_removeRendererWithUniqueID___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 32) delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7();
}

void __84__APRKStreamRenderingManager_processShowGlobalPasscodePromptRequest_withClientName___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 delegate];
  OUTLINED_FUNCTION_7();
}

void __68__APRKStreamRenderingManager_processHideGlobalPasscodePromptRequest__block_invoke_cold_1(id *a1)
{
  v1 = [*a1 delegate];
  OUTLINED_FUNCTION_7();
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  OUTLINED_FUNCTION_7();
}

void __75__APRKStreamRenderingManager_isAllowedToProceedForClientWithName_clientID___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  OUTLINED_FUNCTION_7();
}

- (uint64_t)_customDisplayHDRModeFromPrefsWithDefault:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  if (a1)
  {
    [a2 _getHDRModeString:a1];
  }

  return OUTLINED_FUNCTION_1();
}

@end