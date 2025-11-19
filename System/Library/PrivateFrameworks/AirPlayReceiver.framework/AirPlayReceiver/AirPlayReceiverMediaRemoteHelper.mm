@interface AirPlayReceiverMediaRemoteHelper
+ (void)becomeNowPlayingApplication;
+ (void)resignAsNowPlayingApplication;
+ (void)setIsNowPlayingApplication:(unsigned __int8)a3;
- (AirPlayReceiverMediaRemoteHelper)initWithPlayerID:(__CFString *)a3 withSystemInfo:(OpaqueAPReceiverSystemInfo *)a4 withReceiverServer:(AirPlayReceiverServerPrivate *)a5;
- (unsigned)handleMediaRemoteCommand:(unsigned int)a3 withOptions:(__CFDictionary *)a4;
- (void)associateNowPlayingSessionWithAudioSession:(unsigned int)a3;
- (void)broadcastPauseCommand;
- (void)dealloc;
- (void)handleActiveSessionWillBeHijacked:(id)a3;
- (void)handleLocalDeviceRoutingContextIDDidChange:(id)a3;
- (void)handlePlaybackStateDidChange:(id)a3;
- (void)handleSilentPrimaryStateDidChange:(id)a3;
- (void)makeNowPlayingPlayer;
- (void)registerCommandHandler;
- (void)removeNowPlayingArtwork;
- (void)setAPNowPlayingInfo:(__CFDictionary *)a3;
- (void)setDelegate:(id)a3;
- (void)setIsNowPlaying:(unsigned __int8)a3;
- (void)setMRNowPlayingClient:(__CFData *)a3;
- (void)setMRNowPlayingInfo:(__CFDictionary *)a3 withMergePolicy:(unsigned __int8)a4;
- (void)setMRPlaybackState:(unsigned int)a3;
- (void)setMRSupportedCommands:(__CFArray *)a3;
- (void)setMRSupportedCommandsFromSerializedArray:(__CFArray *)a3;
- (void)startNowPlayingSession;
- (void)startNowPlayingSessionWithCompletion:(id)a3;
- (void)stopNowPlayingSession;
- (void)unregisterCommandHandler;
@end

@implementation AirPlayReceiverMediaRemoteHelper

- (void)dealloc
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v12 = self;
    LogPrintF();
  }

  [(AirPlayReceiverMediaRemoteHelper *)self unregisterCommandHandler];
  soft_MRMediaRemoteSetWantsNowPlayingNotifications(0);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (APSMultiPrimariesEnabled() && APSNowPlayingSessionDataSourceEnabled())
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
  playerPath = self->_state.playerPath;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = getMRMediaRemoteRemovePlayerSymbolLoc_ptr;
  v22 = getMRMediaRemoteRemovePlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteRemovePlayerSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getMRMediaRemoteRemovePlayerSymbolLoc_block_invoke;
    v17 = &unk_278C5FC48;
    v18 = &v19;
    v5 = MediaRemoteLibrary();
    v20[3] = dlsym(v5, "MRMediaRemoteRemovePlayer");
    getMRMediaRemoteRemovePlayerSymbolLoc_ptr = *(v18[1] + 24);
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    dlerror();
    v11 = abort_report_np();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v11);
  }

  (v4)(playerPath, 0, 0);

  self->_state.playerPath = 0;
  weakDelegate = self->_state.weakDelegate;
  if (weakDelegate)
  {
    CFRelease(weakDelegate);
    self->_state.weakDelegate = 0;
  }

  systemInfo = self->_systemInfo;
  if (systemInfo)
  {
    CFRelease(systemInfo);
    self->_systemInfo = 0;
  }

  server = self->_server;
  if (server)
  {
    CFRelease(server);
    self->_server = 0;
  }

  self->_dataTransferQueue = 0;
  dataTransferQueueInternal = self->_dataTransferQueueInternal;
  if (dataTransferQueueInternal)
  {
    dispatch_release(dataTransferQueueInternal);
    self->_dataTransferQueueInternal = 0;
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
    self->_notificationQueue = 0;
  }

  v13.receiver = self;
  v13.super_class = AirPlayReceiverMediaRemoteHelper;
  [(AirPlayReceiverMediaRemoteHelper *)&v13 dealloc];
}

- (AirPlayReceiverMediaRemoteHelper)initWithPlayerID:(__CFString *)a3 withSystemInfo:(OpaqueAPReceiverSystemInfo *)a4 withReceiverServer:(AirPlayReceiverServerPrivate *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = AirPlayReceiverMediaRemoteHelper;
  v8 = [(AirPlayReceiverMediaRemoteHelper *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    *label = 0u;
    v34 = 0u;
    v19 = v8;
    SNPrintF();
    v9->_dataTransferQueueInternal = dispatch_queue_create(label, 0);
    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v9->_dataTransferQueue = v10;
    [(NSOperationQueue *)v10 setUnderlyingQueue:v9->_dataTransferQueueInternal, v19];
    v20 = v9;
    SNPrintF();
    v9->_notificationQueue = dispatch_queue_create(label, 0);
    if (a3)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3052000000;
      v30 = __Block_byref_object_copy_;
      v11 = getMRPlayerClass_softClass;
      v31 = __Block_byref_object_dispose_;
      v32 = getMRPlayerClass_softClass;
      if (!getMRPlayerClass_softClass)
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __getMRPlayerClass_block_invoke;
        v25 = &unk_278C5FC48;
        v26 = &v27;
        __getMRPlayerClass_block_invoke(&v22);
        v11 = *(v28 + 40);
      }

      _Block_object_dispose(&v27, 8);
      v12 = [[v11 alloc] initWithIdentifier:a3 displayName:{a3, v9}];
      v27 = 0;
      v28 = &v27;
      v29 = 0x3052000000;
      v30 = __Block_byref_object_copy_;
      v13 = getMRPlayerPathClass_softClass;
      v31 = __Block_byref_object_dispose_;
      v32 = getMRPlayerPathClass_softClass;
      if (!getMRPlayerPathClass_softClass)
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __getMRPlayerPathClass_block_invoke;
        v25 = &unk_278C5FC48;
        v26 = &v27;
        __getMRPlayerPathClass_block_invoke(&v22);
        v13 = *(v28 + 40);
      }

      _Block_object_dispose(&v27, 8);
      v9->_state.playerPath = [[v13 alloc] initWithOrigin:0 client:0 player:v12];
    }

    else
    {
      v12 = 0;
    }

    v9->_systemInfo = CFRetain(a4);
    v9->_server = CFRetain(a5);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v15 = getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
    v25 = getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
    if (!getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_block_invoke;
      v30 = &unk_278C5FC48;
      v31 = &v22;
      v16 = MediaRemoteLibrary();
      v17 = dlsym(v16, "kMRMediaRemotePlayerPlaybackStateDidChangeNotification");
      *(*(v31 + 1) + 24) = v17;
      getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr = *(*(v31 + 1) + 24);
      v15 = *(v23 + 24);
    }

    _Block_object_dispose(&v22, 8);
    if (v15)
    {
      [v14 addObserver:v9 selector:sel_handlePlaybackStateDidChange_ name:*v15 object:0];
      soft_MRMediaRemoteSetWantsNowPlayingNotifications(1);
      if (APSMultiPrimariesEnabled() && APSNowPlayingSessionDataSourceEnabled())
      {
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        [(AirPlayReceiverMediaRemoteHelper *)v9 handleSilentPrimaryStateDidChange:0];
        [(AirPlayReceiverMediaRemoteHelper *)v9 handleLocalDeviceRoutingContextIDDidChange:0];
      }

      if (_getDefaultMRSupportedCommandInfos_s_onceToken == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = dlerror();
      abort_report_np();
      __break(1u);
    }

    dispatch_once(&_getDefaultMRSupportedCommandInfos_s_onceToken, &__block_literal_global_148);
LABEL_17:
    [(AirPlayReceiverMediaRemoteHelper *)v9 setMRSupportedCommands:_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos, v20];
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v9;
}

- (void)handleActiveSessionWillBeHijacked:(id)a3
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFObjectControlAsync();
}

- (void)handleLocalDeviceRoutingContextIDDidChange:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr;
  v13 = getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v11[3] = dlsym(v5, "MRNowPlayingSessionManagerLocalDeviceRoutingContextID");
    getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v8 = v4();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APReceiverSystemInfoSetProperty(self->_systemInfo, v6, @"RoutingContextID", v7, v8);
}

- (void)handleSilentPrimaryStateDidChange:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr;
  v9 = getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr)
  {
    v4 = MediaRemoteLibrary();
    v7[3] = dlsym(v4, "MRNowPlayingSessionManagerIsSilentPrimary");
    getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v3();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFObjectSetProperty();
}

- (void)handlePlaybackStateDidChange:(id)a3
{
  v5 = [a3 userInfo];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v6 = getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr;
  v34 = getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr;
  if (!getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_block_invoke;
    v29 = &unk_278C5FC48;
    v30 = &v31;
    v7 = MediaRemoteLibrary();
    v32[3] = dlsym(v7, "kMRNowPlayingPlayerPathUserInfoKey");
    getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr = *(v30[1] + 24);
    v6 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = [v5 objectForKeyedSubscript:*v6];
  v9 = [a3 userInfo];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v10 = getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr;
  v34 = getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr;
  if (!getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_block_invoke;
    v29 = &unk_278C5FC48;
    v30 = &v31;
    v11 = MediaRemoteLibrary();
    v32[3] = dlsym(v11, "kMRMediaRemotePlaybackStateUserInfoKey");
    getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr = *(v30[1] + 24);
    v10 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v10)
  {
LABEL_15:
    dlerror();
    v18 = abort_report_np();
    _Block_object_dispose(&v31, 8);
    _Unwind_Resume(v18);
  }

  v12 = [objc_msgSend(v9 objectForKeyedSubscript:{*v10), "intValue"}];
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v13 = [objc_msgSend(v8 "origin")];
    v14 = [objc_msgSend(v8 "client")];
    v22 = [objc_msgSend(v8 "client")];
    v23 = v12;
    v20 = v13;
    v21 = v14;
    v19 = self;
    LogPrintF();
  }

  if ([objc_msgSend(v8 origin])
  {
    if ([objc_msgSend(v8 "client")])
    {
      v15 = self;
      v16 = v8;
      notificationQueue = self->_notificationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__AirPlayReceiverMediaRemoteHelper_handlePlaybackStateDidChange___block_invoke;
      block[3] = &unk_278C5FB00;
      block[4] = self;
      block[5] = v8;
      v25 = v12;
      dispatch_async(notificationQueue, block);
    }
  }
}

void __65__AirPlayReceiverMediaRemoteHelper_handlePlaybackStateDidChange___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    LogPrintF();
  }

  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(*(a1 + 40), "client", v4, v5), "processIdentifier")), @"APReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppProcessIdentifier"}];
  if ([objc_msgSend(*(a1 + 40) "client")])
  {
    [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 40) forKeyedSubscript:{"client"), "displayName"), @"kAPReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppProcessDisplayName"}];
  }

  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", *(a1 + 48) == 1), @"APReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppIsPlaying"}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3 = *(a1 + 40);
}

- (void)setMRNowPlayingClient:(__CFData *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  v15 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  if (!getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr)
  {
    v10[6] = MEMORY[0x277D85DD0];
    v10[7] = 3221225472;
    v10[8] = __getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_block_invoke;
    v10[9] = &unk_278C5FC48;
    v11 = &v12;
    v6 = MediaRemoteLibrary();
    v13[3] = dlsym(v6, "MRNowPlayingClientCreateFromExternalRepresentation");
    getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr = *(v11[1] + 24);
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    dlerror();
    abort_report_np();
    goto LABEL_8;
  }

  v7 = v5(a3);
  if (!v7)
  {
LABEL_8:
    APSLogErrorAt();
    return;
  }

  v8 = v7;
  CFRetain(v7);
  dataTransferQueue = self->_dataTransferQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingClient___block_invoke;
  v10[3] = &unk_278C60A58;
  v10[4] = self;
  v10[5] = v8;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v10];
  CFRelease(v8);
}

void __58__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingClient___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    LogPrintF();
  }

  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 48) client];
  v4 = [*(*(a1 + 32) + 48) origin];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr;
  v13 = getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr;
  if (!getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr)
  {
    v6 = MediaRemoteLibrary();
    v11[3] = dlsym(v6, "MRMediaRemoteSyncClientProperties");
    getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v7);
  }

  (v5)(v2, v3, v4, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)setAPNowPlayingInfo:(__CFDictionary *)a3
{
  CFDictionaryGetValue(a3, @"artworkData");
  if (FigCFEqual())
  {
    [(AirPlayReceiverMediaRemoteHelper *)self removeNowPlayingArtwork];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionaryApplyBlock();
    v6 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
    if (!CFDictionaryContainsKey(v5, v6))
    {
LABEL_12:
      [(AirPlayReceiverMediaRemoteHelper *)self setMRNowPlayingInfo:v5 withMergePolicy:0];
      CFRelease(v5);
      return;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v7 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
    v15 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
    if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr)
    {
      v8 = MediaRemoteLibrary();
      v13[3] = dlsym(v8, "kMRMediaRemoteNowPlayingInfoMediaType");
      getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = v13[3];
      v7 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (v7)
    {
      v9 = *v7;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v10 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
      v15 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
      if (!getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v13[3] = dlsym(v11, "kMRMediaRemoteMediaTypeMusic");
        getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = v13[3];
        v10 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (v10)
      {
        CFDictionaryAddValue(v5, v9, *v10);
        goto LABEL_12;
      }
    }

    dlerror();
    abort_report_np();
  }

  APSLogErrorAt();

  APSLogErrorAt();
}

- (void)removeNowPlayingArtwork
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dataTransferQueue = self->_dataTransferQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke;
  v6[3] = &unk_278C60990;
  v6[4] = self;
  v6[5] = &v7;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v6];
  [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  if (v8[3])
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      v5 = self;
      LogPrintF();
    }

    [(AirPlayReceiverMediaRemoteHelper *)self setMRNowPlayingInfo:v8[3] withMergePolicy:1, v5];
    v4 = v8[3];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  _Block_object_dispose(&v7, 8);
}

void __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke_2;
  v9[3] = &unk_278C5F6A8;
  v4 = *(a1 + 40);
  v9[4] = v2;
  v9[5] = v4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr;
  v14 = getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr)
  {
    v9[6] = MEMORY[0x277D85DD0];
    v9[7] = 3221225472;
    v9[8] = __getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_block_invoke;
    v9[9] = &unk_278C5FC48;
    v10 = &v11;
    v6 = MediaRemoteLibrary();
    v12[3] = dlsym(v6, "MRMediaRemoteGetNowPlayingInfoForPlayer");
    getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr = *(v10[1] + 24);
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v8);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  (v5)(v3, 0, global_queue, v9);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
}

intptr_t __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)makeNowPlayingPlayer
{
  dataTransferQueue = self->_dataTransferQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__AirPlayReceiverMediaRemoteHelper_makeNowPlayingPlayer__block_invoke;
  v3[3] = &unk_278C608C8;
  v3[4] = self;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v3];
}

uint64_t __56__AirPlayReceiverMediaRemoteHelper_makeNowPlayingPlayer__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr;
  v9 = getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v7[3] = dlsym(v3, "MRMediaRemoteSetNowPlayingPlayer");
    getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return (v2)(v1, 0, 0);
}

- (void)setMRSupportedCommandsFromSerializedArray:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_11:
    APSLogErrorAt();
    goto LABEL_12;
  }

  v15 = self;
  if (Count >= 1)
  {
    v8 = 0;
    self = &v16;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v10 = getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr;
      v19 = getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr;
      if (!getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v17[3] = dlsym(v11, "MRMediaRemoteCommandInfoCreateFromExternalRepresentation");
        getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr = v17[3];
        v10 = v17[3];
      }

      _Block_object_dispose(&v16, 8);
      if (!v10)
      {
        break;
      }

      v12 = v10(v6, ValueAtIndex);
      CFArrayAppendValue(Mutable, v12);
      CFRelease(v12);
      if (Count == ++v8)
      {
        goto LABEL_8;
      }
    }

    v14 = dlerror();
    abort_report_np();
    goto LABEL_11;
  }

LABEL_8:
  self = v15;
  if (CFArrayGetCount(Mutable))
  {
    [(AirPlayReceiverMediaRemoteHelper *)v15 setMRSupportedCommands:Mutable];
    v13 = Mutable;
LABEL_23:
    CFRelease(v13);
    return;
  }

LABEL_12:
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v14 = self;
    LogPrintF();
  }

  if (_getDefaultMRSupportedCommandInfos_s_onceToken != -1)
  {
    dispatch_once(&_getDefaultMRSupportedCommandInfos_s_onceToken, &__block_literal_global_148);
  }

  v13 = _getDefaultMRSupportedCommandInfos_s_defaultCommandInfos;
  if (_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos)
  {
    CFRetain(_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  [(AirPlayReceiverMediaRemoteHelper *)self setMRSupportedCommands:v13, v14];
  if (v13)
  {
    goto LABEL_23;
  }
}

- (void)setMRSupportedCommands:(__CFArray *)a3
{
  if (a3)
  {
    CFRetain(a3);
    dataTransferQueue = self->_dataTransferQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__AirPlayReceiverMediaRemoteHelper_setMRSupportedCommands___block_invoke;
    v7[3] = &unk_278C60A58;
    v7[4] = self;
    v7[5] = a3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v7];
  }

  else
  {

    APSLogErrorAt();
  }
}

void __59__AirPlayReceiverMediaRemoteHelper_setMRSupportedCommands___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    CFArrayGetCount(*(a1 + 40));
    LogPrintF();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr;
  v10 = getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v8[3] = dlsym(v5, "MRMediaRemoteSetSupportedCommandsForPlayer");
    getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  (v4)(v2, v3, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)unregisterCommandHandler
{
  if (self->_state.commandHandlerToken)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    playerPath = self->_state.playerPath;
    commandHandlerToken = self->_state.commandHandlerToken;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v5 = getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr;
    v11 = getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr;
    if (!getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr)
    {
      v6 = MediaRemoteLibrary();
      v9[3] = dlsym(v6, "MRMediaRemoteRemoveCommandHandlerBlockForPlayer");
      getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      dlerror();
      v7 = abort_report_np();
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v7);
    }

    v5(playerPath, commandHandlerToken);
    self->_state.commandHandlerToken = 0;
  }
}

- (void)registerCommandHandler
{
  objc_initWeak(location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AirPlayReceiverMediaRemoteHelper_registerCommandHandler__block_invoke;
  v7[3] = &unk_278C5F680;
  objc_copyWeak(&v8, location);
  if (self->_state.commandHandlerToken)
  {
    [(AirPlayReceiverMediaRemoteHelper *)self unregisterCommandHandler];
  }

  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  playerPath = self->_state.playerPath;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr;
  v14 = getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_block_invoke;
    location[4] = &unk_278C5FC48;
    v10 = &v11;
    v5 = MediaRemoteLibrary();
    v6 = dlsym(v5, "MRMediaRemoteAddCommandHandlerBlockForPlayer");
    *(v10[1] + 24) = v6;
    getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr = *(v10[1] + 24);
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v4)
  {
    self->_state.commandHandlerToken = v4(playerPath, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

CFArrayRef __58__AirPlayReceiverMediaRemoteHelper_registerCommandHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_loadWeak((a1 + 32)) handleMediaRemoteCommand:a2 withOptions:a3];
  v3 = *MEMORY[0x277CBECE8];
  values = FigCFNumberCreateUInt32();
  v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x277CBF128]);
  CFRelease(values);
  return v4;
}

- (unsigned)handleMediaRemoteCommand:(unsigned int)a3 withOptions:(__CFDictionary *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a4 && ((v7 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier(), Value = CFDictionaryGetValue(a4, v7), Value == @"com.apple.airplay.mrhelper") || Value && CFEqual(Value, @"com.apple.airplay.mrhelper")))
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    dataTransferQueueInternal = self->_dataTransferQueueInternal;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke;
    block[3] = &unk_278C60990;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(dataTransferQueueInternal, block);
    v10 = v18[3];
    if (v10)
    {
      CFRetain(v10);
      if (a4)
      {
        CFRetain(a4);
      }

      notificationQueue = self->_notificationQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke_2;
      v14[3] = &unk_278C5FCC0;
      v15 = a3;
      v14[4] = &v17;
      v14[5] = a4;
      dispatch_async(notificationQueue, v14);
    }

    else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 60 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v12 = v18[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v17, 8);
  return 0;
}

uint64_t __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = FigCFWeakReferenceHolderCopyReferencedObject();
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 24) handleMRCommand:? translatedAPCommand:? withOptions:?];
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)setMRPlaybackState:(unsigned int)a3
{
  dataTransferQueue = self->_dataTransferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__AirPlayReceiverMediaRemoteHelper_setMRPlaybackState___block_invoke;
  v4[3] = &unk_278C5FB28;
  v4[4] = self;
  v5 = a3;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v4];
}

uint64_t __55__AirPlayReceiverMediaRemoteHelper_setMRPlaybackState___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(*(a1 + 32) + 48);
  v3 = *(a1 + 40);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr;
  v11 = getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v9[3] = dlsym(v5, "MRMediaRemoteSetPlaybackStateForPlayer");
    getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return (v4)(v2, v3, 0, 0);
}

- (void)setMRNowPlayingInfo:(__CFDictionary *)a3 withMergePolicy:(unsigned __int8)a4
{
  if (a3)
  {
    CFRetain(a3);
    dataTransferQueue = self->_dataTransferQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingInfo_withMergePolicy___block_invoke;
    v8[3] = &unk_278C5F658;
    v9 = a4;
    v8[4] = self;
    v8[5] = a3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v8];
  }
}

void __72__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingInfo_withMergePolicy___block_invoke(uint64_t a1)
{
  v2 = gLogCategory_AirPlayReceiverMediaRemoteHelper;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v2 = gLogCategory_AirPlayReceiverMediaRemoteHelper;
    }

    if (v2 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 48);
  v5 = *(a1 + 48);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v6 = getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr;
  v12 = getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr)
  {
    v7 = MediaRemoteLibrary();
    v10[3] = dlsym(v7, "MRMediaRemoteSetNowPlayingInfoForPlayer");
    getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr = v10[3];
    v6 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v6)
  {
    dlerror();
    v8 = abort_report_np();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  (v6)(v4, v3, v5, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)broadcastPauseCommand
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier();
  CFDictionarySetValue(Mutable, v3, @"com.apple.airplay.mrhelper");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMRMediaRemoteGetLocalOriginSymbolLoc_ptr;
  v14 = getMRMediaRemoteGetLocalOriginSymbolLoc_ptr;
  if (!getMRMediaRemoteGetLocalOriginSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v12[3] = dlsym(v5, "MRMediaRemoteGetLocalOrigin");
    getMRMediaRemoteGetLocalOriginSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = v4();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  global_queue = dispatch_get_global_queue(2, 0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getMRMediaRemoteBroadcastCommandSymbolLoc_ptr;
  v14 = getMRMediaRemoteBroadcastCommandSymbolLoc_ptr;
  if (!getMRMediaRemoteBroadcastCommandSymbolLoc_ptr)
  {
    v9 = MediaRemoteLibrary();
    v12[3] = dlsym(v9, "MRMediaRemoteBroadcastCommand");
    getMRMediaRemoteBroadcastCommandSymbolLoc_ptr = v12[3];
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
LABEL_14:
    dlerror();
    v10 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v8(1, Mutable, v6, 0, global_queue, &__block_literal_global_168);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __57__AirPlayReceiverMediaRemoteHelper_broadcastPauseCommand__block_invoke()
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)associateNowPlayingSessionWithAudioSession:(unsigned int)a3
{
  v3 = *&a3;
  if (APSMultiPrimariesEnabled())
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      v6 = self;
      v7 = v3;
      LogPrintF();
    }

    dataTransferQueue = self->_dataTransferQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke;
    v8[3] = &unk_278C5FB28;
    v8[4] = self;
    v9 = v3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v8, v6, v7];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }
}

void __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!*(*(a1 + 32) + 48))
  {
    v2 = 0;
    v18 = -6709;
    goto LABEL_14;
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(a1 + 40);
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke_2;
  v10[3] = &unk_278C5F610;
  v10[5] = &v15;
  v10[6] = &v11;
  v10[4] = v2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v6 = getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr;
  v27 = getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_block_invoke;
    v22 = &unk_278C5FC48;
    v23 = &v24;
    v7 = MediaRemoteLibrary();
    v8 = dlsym(v7, "MRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayer");
    *(v23[1] + 24) = v8;
    getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr = *(v23[1] + 24);
    v6 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
    __break(1u);
    goto LABEL_10;
  }

  v6(v3, v4, global_queue, v10);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v16 + 6))
  {
    if (*(v12 + 24))
    {
      v9 = 90;
LABEL_15:
      if (v9 < gLogCategory_AirPlayReceiverMediaRemoteHelper || gLogCategory_AirPlayReceiverMediaRemoteHelper == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

LABEL_10:
      LogPrintF();
      goto LABEL_18;
    }

LABEL_14:
    v9 = 60;
    goto LABEL_15;
  }

  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

LABEL_18:
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

intptr_t __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke_2(void *a1)
{
  *(*(a1[5] + 8) + 24) = NSErrorToOSStatus();
  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) != 0;
  v2 = a1[4];

  return dispatch_semaphore_signal(v2);
}

- (void)stopNowPlayingSession
{
  if (APSMultiPrimariesEnabled())
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      v4 = self;
      LogPrintF();
    }

    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    dataTransferQueue = self->_dataTransferQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__AirPlayReceiverMediaRemoteHelper_stopNowPlayingSession__block_invoke;
    v5[3] = &unk_278C608C8;
    v5[4] = self;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v5];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void __57__AirPlayReceiverMediaRemoteHelper_stopNowPlayingSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[6])
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper > 50)
    {
      return;
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  [v2 unregisterCommandHandler];
  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(*(a1 + 32) + 48), 0);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v3 = getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr;
  v8 = getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr)
  {
    v4 = MediaRemoteLibrary();
    v6[3] = dlsym(v4, "MRNowPlayingSessionManagerStopSession");
    getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr = v6[3];
    v3 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v3)
  {
    dlerror();
    abort_report_np();
LABEL_14:
    if (!_LogCategory_Initialize())
    {
      return;
    }

LABEL_7:
    LogPrintF();
    return;
  }

  v3();

  *(*(a1 + 32) + 48) = 0;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }
}

- (void)startNowPlayingSessionWithCompletion:(id)a3
{
  if (APSMultiPrimariesEnabled())
  {
    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    v5 = mach_absolute_time();
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      v7 = self;
      LogPrintF();
    }

    dataTransferQueue = self->_dataTransferQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke;
    v8[3] = &unk_278C5F5E8;
    v8[5] = a3;
    v8[6] = v5;
    v8[4] = self;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v8, v7];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v2 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_2;
  v13[3] = &unk_278C5F598;
  v4 = a1[4];
  v5 = a1[6];
  v13[6] = &v14;
  v13[7] = v5;
  v13[4] = v4;
  v13[5] = v2;
  soft_MRNowPlayingSessionManagerStartSession(global_queue, v13);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
  v6 = a1[4];
  v7 = *(v6 + 48);
  v8 = v15[5];
  v9 = v8;
  *(v6 + 48) = v8;

  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(a1[4] + 48), 1);
  v10 = a1[5];
  if (v10)
  {
    v11 = *(a1[4] + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_3;
    block[3] = &unk_278C5F5C0;
    block[4] = v10;
    dispatch_async(v11, block);
  }

  _Block_object_dispose(&v14, 8);
}

intptr_t __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    UpTicksToMilliseconds();
    LogPrintF();
  }

  *(*(*(a1 + 48) + 8) + 40) = a2;
  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (void)startNowPlayingSession
{
  if (APSMultiPrimariesEnabled())
  {
    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    v3 = mach_absolute_time();
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      v5 = self;
      LogPrintF();
    }

    dataTransferQueue = self->_dataTransferQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke;
    v6[3] = &unk_278C60A58;
    v6[4] = self;
    v6[5] = v3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v6, v5];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke_25;
  v10[3] = &unk_278C5F598;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[6] = &v11;
  v10[7] = v5;
  v10[4] = v4;
  v10[5] = v2;
  soft_MRNowPlayingSessionManagerStartSession(global_queue, v10);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v8 = v12[5];
  v9 = v8;
  *(v6 + 48) = v8;

  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(*(a1 + 32) + 48), 1);
  _Block_object_dispose(&v11, 8);
}

intptr_t __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke_25(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    UpTicksToMilliseconds();
    LogPrintF();
  }

  *(*(*(a1 + 48) + 8) + 40) = a2;
  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (void)setIsNowPlaying:(unsigned __int8)a3
{
  v3 = a3;
  v4 = objc_opt_class();

  [v4 setIsNowPlayingApplication:v3];
}

- (void)setDelegate:(id)a3
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  dataTransferQueueInternal = self->_dataTransferQueueInternal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AirPlayReceiverMediaRemoteHelper_setDelegate___block_invoke;
  block[3] = &unk_278C60A08;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(dataTransferQueueInternal, block);
}

uint64_t __48__AirPlayReceiverMediaRemoteHelper_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 64) = 0;
  }

  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 64) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3 = *(a1 + 32);

    return [v3 registerCommandHandler];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 unregisterCommandHandler];
  }
}

+ (void)setIsNowPlayingApplication:(unsigned __int8)a3
{
  v3 = a3;
  if (APSMultiPrimariesEnabled())
  {

    APSLogErrorAt();
  }

  else if (v3)
  {

    [a1 becomeNowPlayingApplication];
  }

  else
  {

    [a1 resignAsNowPlayingApplication];
  }
}

+ (void)resignAsNowPlayingApplication
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(0);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  soft_MRMediaRemoteSetCanBeNowPlayingApplication(0);
}

+ (void)becomeNowPlayingApplication
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  soft_MRMediaRemoteSetCanBeNowPlayingApplication(1);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(1);
}

@end