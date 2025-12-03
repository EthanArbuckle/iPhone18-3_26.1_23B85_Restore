@interface APEndpointStreamScreenAVCWrapper
- (APEndpointStreamScreenAVCWrapper)initWithClientPID:(__CFNumber *)d hdrMode:(__CFString *)mode presentationMode:(BOOL)presentationMode hdrMirroringSupported:(BOOL)supported eventHandlers:(id *)handlers error:(int *)error;
- (id)negotiationDataForPresentationMode:(unsigned __int8)mode;
- (int)createVideoStreamConfig:(id *)config withDirection:(int64_t)direction screenOptions:(id *)options previousConfig:(id)previousConfig;
- (int)getClientUPID:(unint64_t *)d;
- (int)initScreeenCaptureWithScreenOptions:(id *)options;
- (int)initializeNegotiatorWithMode:(__CFString *)mode presentationMode:(BOOL)presentationMode hdrMirroringSupported:(BOOL)supported;
- (int)restartWithScreenOptions:(id *)options negotiatedBlob:(id)blob;
- (int)setCaptureSourceIDForStreamConfig:(id)config;
- (int)start;
- (int)startWithNWConnectionClientID:(unsigned __int8)d[16] negotiatedBlob:(id)blob screenOptions:(id *)options completion:(id *)completion;
- (int)stop;
- (unint64_t)convertHDRMode:(__CFString *)mode;
- (unsigned)isConfigPresentForPresentationMode:(unsigned __int8)mode;
- (void)dealloc;
- (void)getVideoResolutionFromOptions:(id *)options width:(unint64_t *)width height:(unint64_t *)height;
- (void)handleFailureWithError:(int)error reason:(__CFString *)reason;
- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error;
- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error;
- (void)screenCapture:(id)capture screenDidClear:(BOOL)clear;
- (void)serverDidDisconnect:(id)disconnect;
- (void)stopWithCompletion:(id *)completion;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
@end

@implementation APEndpointStreamScreenAVCWrapper

- (APEndpointStreamScreenAVCWrapper)initWithClientPID:(__CFNumber *)d hdrMode:(__CFString *)mode presentationMode:(BOOL)presentationMode hdrMirroringSupported:(BOOL)supported eventHandlers:(id *)handlers error:(int *)error
{
  supportedCopy = supported;
  presentationModeCopy = presentationMode;
  v19.receiver = self;
  v19.super_class = APEndpointStreamScreenAVCWrapper;
  v14 = [(APEndpointStreamScreenAVCWrapper *)&v19 init];
  v15 = v14;
  if (v14)
  {
    if (d)
    {
      CFNumberGetValue(d, kCFNumberIntType, &v14->_clientPID);
    }

    v16 = dispatch_semaphore_create(0);
    v15->_completionSemaphore = v16;
    if (v16)
    {
      v15->_eventWeakContext = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v15->_eventHandleStart = handlers->var1;
      v15->_eventHandleStop = handlers->var2;
      v15->_eventHandleFailed = handlers->var3;
      v15->_eventHandleClearScreen = handlers->var4;
      v15->_isSubFrameEnabled = FigGetCFPreferenceNumberWithDefault();
      v17 = [(APEndpointStreamScreenAVCWrapper *)v15 initializeNegotiatorWithMode:mode presentationMode:presentationModeCopy hdrMirroringSupported:supportedCopy];
      *error = v17;
      if (v17)
      {
        [APEndpointStreamScreenAVCWrapper initWithClientPID:hdrMode:presentationMode:hdrMirroringSupported:eventHandlers:error:];
      }
    }

    else
    {
      [APEndpointStreamScreenAVCWrapper initWithClientPID:hdrMode:presentationMode:hdrMirroringSupported:eventHandlers:error:];
    }
  }

  return v15;
}

- (int)initializeNegotiatorWithMode:(__CFString *)mode presentationMode:(BOOL)presentationMode hdrMirroringSupported:(BOOL)supported
{
  presentationModeCopy = presentationMode;
  v18[0] = 0;
  if (presentationMode || supported)
  {
    v7 = [(APEndpointStreamScreenAVCWrapper *)self convertHDRMode:mode];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v7];
  if (!v8)
  {
    [APEndpointStreamScreenAVCWrapper initializeNegotiatorWithMode:presentationMode:hdrMirroringSupported:];
LABEL_19:
    code = -16761;
    goto LABEL_14;
  }

  v9 = MEMORY[0x277CBEAC0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v10 = getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr;
  v23 = getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr;
  if (!getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr)
  {
    v18[1] = MEMORY[0x277D85DD0];
    v18[2] = 3221225472;
    v18[3] = __getAVCMediaStreamNegotiatorHDRModeSymbolLoc_block_invoke;
    v18[4] = &unk_27849ACC8;
    v19 = &v20;
    v11 = AVConferenceLibrary();
    v21[3] = dlsym(v11, "AVCMediaStreamNegotiatorHDRMode");
    getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr = *(v19[1] + 24);
    v10 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getAVCMediaStreamNegotiatorHDRMode(void)") description:{@"APEndpointStreamScreenUDP.m", 74, @"%s", dlerror()}];
    __break(1u);
LABEL_17:
    APSLogErrorAt();
    code = [v18[0] code];
    goto LABEL_14;
  }

  v12 = [v9 dictionaryWithObjectsAndKeys:{v8, *v10, 0}];
  if (!v12)
  {
    [APEndpointStreamScreenAVCWrapper initializeNegotiatorWithMode:presentationMode:hdrMirroringSupported:];
    goto LABEL_19;
  }

  v13 = [objc_alloc(getAVCMediaStreamNegotiatorClass()) initWithMode:2 options:v12 error:v18];
  v14 = 32;
  if (presentationModeCopy)
  {
    v14 = 40;
  }

  *(&self->super.isa + v14) = v13;
  if (v18[0])
  {
    goto LABEL_17;
  }

  code = 0;
LABEL_14:

  return code;
}

- (int)initScreeenCaptureWithScreenOptions:(id *)options
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v5 = getAVCScreenCaptureConfigurationClass_softClass;
  v22 = __Block_byref_object_dispose__0;
  v23 = getAVCScreenCaptureConfigurationClass_softClass;
  if (!getAVCScreenCaptureConfigurationClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getAVCScreenCaptureConfigurationClass_block_invoke;
    v16 = &unk_27849ACC8;
    v17 = &v18;
    __getAVCScreenCaptureConfigurationClass_block_invoke(&v13);
    v5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  v6 = objc_alloc_init(v5);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  [v6 setScreenCaptureDisplayID:0xFFFFFFFFLL];
  v8 = options->var7 ? 1 : 2;
  [v7 setDisplayMode:v8];
  [v7 setPdProtectionOptions:options->var9];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v9 = getAVCScreenCaptureClass_softClass;
  v22 = __Block_byref_object_dispose__0;
  v23 = getAVCScreenCaptureClass_softClass;
  if (!getAVCScreenCaptureClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getAVCScreenCaptureClass_block_invoke;
    v16 = &unk_27849ACC8;
    v17 = &v18;
    __getAVCScreenCaptureClass_block_invoke(&v13);
    v9 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  v10 = [[v9 alloc] initWithDelegate:self withConfig:v7];
  self->_avcScreenCapture = v10;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
LABEL_12:
    [APEndpointStreamScreenAVCWrapper initScreeenCaptureWithScreenOptions:];
    v11 = -6718;
  }

  return v11;
}

- (int)setCaptureSourceIDForStreamConfig:(id)config
{
  avcScreenCapture = self->_avcScreenCapture;
  if (!avcScreenCapture)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:];
    return -6727;
  }

  if (!config)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:];
    return -6727;
  }

  [objc_msgSend(config "video")];
  if (gLogCategory_APEndpointStreamScreenUDP > 50)
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP != -1 || (result = _LogCategory_Initialize()) != 0)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:config];
    return 0;
  }

  return result;
}

- (void)dealloc
{
  eventWeakContext = self->_eventWeakContext;
  if (eventWeakContext)
  {
    CFRelease(eventWeakContext);
    self->_eventWeakContext = 0;
  }

  completionSemaphore = self->_completionSemaphore;
  if (completionSemaphore)
  {
    dispatch_release(completionSemaphore);
    self->_completionSemaphore = 0;
  }

  v5.receiver = self;
  v5.super_class = APEndpointStreamScreenAVCWrapper;
  [(APEndpointStreamScreenAVCWrapper *)&v5 dealloc];
}

- (int)start
{
  [(AVCScreenCapture *)self->_avcScreenCapture startCapture];
  [(AVCVideoStream *)self->_avcVideoStream start];
  completionSemaphore = self->_completionSemaphore;
  v4 = dispatch_time(0, 10000000000);
  if (!dispatch_semaphore_wait(completionSemaphore, v4))
  {
    return self->_didStartStatus;
  }

  [APEndpointStreamScreenAVCWrapper start];
  return -6722;
}

- (int)startWithNWConnectionClientID:(unsigned __int8)d[16] negotiatedBlob:(id)blob screenOptions:(id *)options completion:(id *)completion
{
  v34 = 0;
  if (options->var4)
  {
    v10 = 56;
  }

  else
  {
    v10 = 48;
  }

  v11 = 40;
  if (!options->var4)
  {
    v11 = 32;
  }

  v12 = *(&self->super.isa + v11);
  [v12 setAnswer:blob withError:&v34];
  if (v34)
  {
    APSLogErrorAt();
    LODWORD(start) = [v34 code];
LABEL_31:
    v19 = 0;
    v18 = 0;
    goto LABEL_26;
  }

  v13 = [(APEndpointStreamScreenAVCWrapper *)self createVideoStreamConfig:self + v10 withDirection:1 screenOptions:options previousConfig:0];
  if (v13)
  {
    LODWORD(start) = v13;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v14 = [(APEndpointStreamScreenAVCWrapper *)self initScreeenCaptureWithScreenOptions:options];
  if (v14)
  {
    LODWORD(start) = v14;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v15 = [(APEndpointStreamScreenAVCWrapper *)self setCaptureSourceIDForStreamConfig:*(&self->super.isa + v10)];
  if (v15)
  {
    LODWORD(start) = v15;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(v12, "generateMediaStreamInitOptionsWithError:", &v34)}];
  if (v34)
  {
    APSLogErrorAt();
    code = [v34 code];
    v19 = 0;
    v18 = 0;
LABEL_37:
    LODWORD(start) = code;
    goto LABEL_26;
  }

  v17 = v16;
  if (!v16)
  {
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    v19 = 0;
    v18 = 0;
    LODWORD(start) = -16761;
    goto LABEL_26;
  }

  v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:APSHasUDPMirroringOutOfProcessSupport() == 0];
  v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:self->_clientPID];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v20 = getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr;
  v38 = getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr;
  if (!getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr)
  {
    *&v40 = MEMORY[0x277D85DD0];
    *(&v40 + 1) = 3221225472;
    v41 = __getkAVCMediaStreamOptionRunInProcessSymbolLoc_block_invoke;
    v42 = &unk_27849ACC8;
    v43 = &v35;
    v21 = AVConferenceLibrary();
    v22 = dlsym(v21, "kAVCMediaStreamOptionRunInProcess");
    *(*(v43 + 1) + 24) = v22;
    getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr = *(*(v43 + 1) + 24);
    v20 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v20)
  {
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
  }

  [v17 setObject:v18 forKeyedSubscript:*v20];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v23 = getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr;
  v38 = getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr;
  if (!getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr)
  {
    *&v40 = MEMORY[0x277D85DD0];
    *(&v40 + 1) = 3221225472;
    v41 = __getkAVCMediaStreamOptionClientPIDSymbolLoc_block_invoke;
    v42 = &unk_27849ACC8;
    v43 = &v35;
    v24 = AVConferenceLibrary();
    v25 = dlsym(v24, "kAVCMediaStreamOptionClientPID");
    *(*(v43 + 1) + 24) = v25;
    getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr = *(*(v43 + 1) + 24);
    v23 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v23)
  {
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
  }

  [v17 setObject:v19 forKeyedSubscript:*v23];
  *&v40 = 0;
  *(&v40 + 1) = &v40;
  v41 = 0x3052000000;
  v42 = __Block_byref_object_copy__0;
  v26 = getAVCVideoStreamClass_softClass;
  v43 = __Block_byref_object_dispose__0;
  v44 = getAVCVideoStreamClass_softClass;
  if (!getAVCVideoStreamClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getAVCVideoStreamClass_block_invoke;
    v38 = &unk_27849ACC8;
    v39 = &v40;
    __getAVCVideoStreamClass_block_invoke(&v35);
    v26 = *(*(&v40 + 1) + 40);
  }

  _Block_object_dispose(&v40, 8);
  v27 = [[v26 alloc] initWithNWConnectionClientID:d options:v17 error:&v34];
  self->_avcVideoStream = v27;
  if (v34 || ([(AVCVideoStream *)v27 setDelegate:self], [(AVCVideoStream *)self->_avcVideoStream configure:*(&self->super.isa + v10) error:&v34], v34))
  {
    APSLogErrorAt();
    code = [v34 code];
    goto LABEL_37;
  }

  start = [(APEndpointStreamScreenAVCWrapper *)self start];
  if (self->_eventHandleStart)
  {
    if (self->_eventWeakContext)
    {
      v29 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v29)
      {
        v30 = v29;
        eventHandleStart = self->_eventHandleStart;
        v40 = *&completion->var0;
        v41 = *&completion->var2;
        eventHandleStart(v29, &v40, start);
        CFRelease(v30);
      }
    }
  }

LABEL_26:

  return start;
}

- (int)stop
{
  [(AVCScreenCapture *)self->_avcScreenCapture stopCapture];

  self->_avcScreenCapture = 0;
  [(AVCVideoStream *)self->_avcVideoStream stop];
  completionSemaphore = self->_completionSemaphore;
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(completionSemaphore, v4);
  if (v5)
  {
    [APEndpointStreamScreenAVCWrapper stop];
    LODWORD(v5) = -6722;
  }

  return v5;
}

- (void)stopWithCompletion:(id *)completion
{
  stop = [(APEndpointStreamScreenAVCWrapper *)self stop];
  if (self->_eventHandleStop)
  {
    v6 = stop;
    if (self->_eventWeakContext)
    {
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v8 = v7;
        eventHandleStop = self->_eventHandleStop;
        v10 = *&completion->var0;
        v11 = *&completion->var2;
        eventHandleStop(v7, &v10, v6);
        CFRelease(v8);
      }
    }
  }

  self->_avcVideoStream = 0;
  self->_videoStreamConfigForMirroring = 0;

  self->_videoStreamConfigForPresentationMode = 0;
  self->_avcScreenCapture = 0;
}

- (unint64_t)convertHDRMode:(__CFString *)mode
{
  if (CFEqual(mode, *MEMORY[0x277CD6530]))
  {
    return 1;
  }

  else
  {
    return 2 * (CFEqual(mode, *MEMORY[0x277CD6528]) != 0);
  }
}

- (void)getVideoResolutionFromOptions:(id *)options width:(unint64_t *)width height:(unint64_t *)height
{
  APSHasHDRSenderSupport();
  APSGetMaxSizePreservingAspectRatio();
  *width = APSSettingsGetIntWithDefault();
  *height = APSSettingsGetIntWithDefault();
}

- (int)restartWithScreenOptions:(id *)options negotiatedBlob:(id)blob
{
  v19 = 0;
  v7 = 56;
  if (options->var4)
  {
    v8 = 56;
  }

  else
  {
    v8 = 48;
  }

  if (options->var4)
  {
    v7 = 48;
  }

  v9 = *(&self->super.isa + v7);
  if (options->var4)
  {
    p_videoStreamConfigForPresentationMode = &self->_videoStreamConfigForPresentationMode;
  }

  else
  {
    p_videoStreamConfigForPresentationMode = &self->_videoStreamConfigForMirroring;
  }

  v11 = 40;
  if (!options->var4)
  {
    v11 = 32;
  }

  v12 = *(&self->super.isa + v11);
  stop = [(APEndpointStreamScreenAVCWrapper *)self stop];
  if (stop)
  {
    start = stop;
    [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
  }

  else
  {
    if (blob)
    {
      [v12 setAnswer:blob withError:&v19];
      if (v19)
      {
        goto LABEL_26;
      }
    }

    if (!*(&self->super.isa + v8))
    {
      if (!v9)
      {
        [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
        return -6727;
      }

      v14 = -[APEndpointStreamScreenAVCWrapper createVideoStreamConfig:withDirection:screenOptions:previousConfig:](self, "createVideoStreamConfig:withDirection:screenOptions:previousConfig:", p_videoStreamConfigForPresentationMode, [v9 direction], options, v9);
      if (v14)
      {
        start = v14;
        [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
        return start;
      }
    }

    v15 = [(APEndpointStreamScreenAVCWrapper *)self initScreeenCaptureWithScreenOptions:options];
    if (v15)
    {
      start = v15;
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
      return start;
    }

    v16 = [(APEndpointStreamScreenAVCWrapper *)self setCaptureSourceIDForStreamConfig:*(&self->super.isa + v8)];
    if (v16)
    {
      start = v16;
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
      return start;
    }

    [(AVCVideoStream *)self->_avcVideoStream configure:*(&self->super.isa + v8) error:&v19];
    if (v19)
    {
LABEL_26:
      APSLogErrorAt();
      return [v19 code];
    }

    start = [(APEndpointStreamScreenAVCWrapper *)self start];
    if (start)
    {
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
    }
  }

  return start;
}

- (int)createVideoStreamConfig:(id *)config withDirection:(int64_t)direction screenOptions:(id *)options previousConfig:(id)previousConfig
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  p_var4 = &options->var4;
  v12 = 40;
  if (!options->var4)
  {
    v12 = 32;
  }

  v13 = [*(&self->super.isa + v12) generateMediaStreamConfigurationWithError:&v24];
  if (v24)
  {
    APSLogErrorAt();
    return [v24 code];
  }

  else
  {
    v14 = v13;
    [(APEndpointStreamScreenAVCWrapper *)self getVideoResolutionFromOptions:options width:&v23 height:&v22];
    [objc_msgSend(v14 "video")];
    [objc_msgSend(v14 "video")];
    [objc_msgSend(v14 "video")];
    [v14 setDirection:direction];
    var1 = options->var1;
    if (var1)
    {
      [objc_msgSend(v14 "video")];
    }

    if (self->_isSubFrameEnabled && !*p_var4)
    {
      [objc_msgSend(v14 "video")];
    }

    IntWithDefault = APSSettingsGetIntWithDefault();
    v17 = APSSettingsGetIntWithDefault();
    [objc_msgSend(v14 "video")];
    [objc_msgSend(v14 "video")];
    [v14 setRtcpTimeOutEnabled:1];
    [v14 setRtcpSendInterval:1.0];
    [v14 setRtcpTimeOutInterval:30.0];
    [v14 setSRTPCipherSuite:5];
    [v14 setSRTCPCipherSuite:5];
    if (previousConfig)
    {
      [v14 setReceiveMasterKey:{objc_msgSend(previousConfig, "receiveMasterKey")}];
      var2 = [previousConfig sendMasterKey];
    }

    else
    {
      [v14 setReceiveMasterKey:options->var3];
      var2 = options->var2;
    }

    [v14 setSendMasterKey:var2];
    var8 = options->var8;
    if (var8)
    {
      [objc_msgSend(v14 "video")];
    }

    if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      [APEndpointStreamScreenAVCWrapper createVideoStreamConfig:v14 withDirection:? screenOptions:? previousConfig:?];
    }

    v20 = v14;
    result = 0;
    *config = v20;
  }

  return result;
}

- (int)getClientUPID:(unint64_t *)d
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  buffer = 0u;
  if (APSHasUDPMirroringOutOfProcessSupport())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__0;
    v4 = getAVCDaemonProcessInfoClass_softClass;
    v20 = __Block_byref_object_dispose__0;
    v21 = getAVCDaemonProcessInfoClass_softClass;
    if (!getAVCDaemonProcessInfoClass_softClass)
    {
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __getAVCDaemonProcessInfoClass_block_invoke;
      v14 = &unk_27849ACC8;
      v15 = &v16;
      __getAVCDaemonProcessInfoClass_block_invoke(&v11);
      v4 = *(v17 + 40);
    }

    _Block_object_dispose(&v16, 8);
    getDaemonProcessInfo = [v4 getDaemonProcessInfo];
    if (getDaemonProcessInfo)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v6 = getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr;
      v14 = getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr;
      if (!getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr)
      {
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_block_invoke;
        v19 = &unk_27849ACC8;
        v20 = &v11;
        v7 = AVConferenceLibrary();
        v8 = dlsym(v7, "AVCKeyDaemonProcessInfoUniquePID");
        *(*(v20 + 1) + 24) = v8;
        getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr = *(*(v20 + 1) + 24);
        v6 = *(v12 + 24);
      }

      _Block_object_dispose(&v11, 8);
      if (!v6)
      {
        [APEndpointStreamScreenAVCWrapper getClientUPID:];
      }

      *d = [objc_msgSend(getDaemonProcessInfo objectForKeyedSubscript:{*v6), "longLongValue"}];
    }

    else
    {
      [APEndpointStreamScreenAVCWrapper getClientUPID:];
    }
  }

  else
  {
    v9 = getpid();
    if (proc_pidinfo(v9, 17, 1uLL, &buffer, 56) == 56)
    {
      *d = v23;
    }

    else
    {
      *d = 0;
      if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        [APEndpointStreamScreenAVCWrapper getClientUPID:];
      }
    }
  }

  return 0;
}

- (id)negotiationDataForPresentationMode:(unsigned __int8)mode
{
  v3 = 40;
  if (!mode)
  {
    v3 = 32;
  }

  return [*(&self->super.isa + v3) offer];
}

- (unsigned)isConfigPresentForPresentationMode:(unsigned __int8)mode
{
  v3 = 56;
  if (!mode)
  {
    v3 = 48;
  }

  return *(&self->super.isa + v3) != 0;
}

- (void)handleFailureWithError:(int)error reason:(__CFString *)reason
{
  if (self->_eventHandleFailed)
  {
    if (self->_eventWeakContext)
    {
      v6 = *&error;
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v8 = v7;
        (self->_eventHandleFailed)(v7, v6, reason);

        CFRelease(v8);
      }
    }
  }
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  if (error)
  {
    code = [error code];
  }

  else
  {
    code = 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_didStartStatus = code;
  completionSemaphore = self->_completionSemaphore;

  dispatch_semaphore_signal(completionSemaphore);
}

- (void)streamDidStop:(id)stop
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    [APEndpointStreamScreenAVCWrapper streamDidStop:];
  }

  completionSemaphore = self->_completionSemaphore;

  dispatch_semaphore_signal(completionSemaphore);
}

- (void)streamDidServerDie:(id)die
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    [APEndpointStreamScreenAVCWrapper streamDidServerDie:];
  }

  [(APEndpointStreamScreenAVCWrapper *)self handleFailureWithError:4294960543 reason:@"Server Died"];
}

- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)screenCapture:(id)capture screenDidClear:(BOOL)clear
{
  clearCopy = clear;
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_eventHandleClearScreen)
  {
    if (self->_eventWeakContext)
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        v7 = v6;
        (self->_eventHandleClearScreen)(v6, clearCopy);

        CFRelease(v7);
      }
    }
  }
}

- (void)serverDidDisconnect:(id)disconnect
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    [APEndpointStreamScreenAVCWrapper serverDidDisconnect:];
  }
}

- (void)startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkAVCMediaStreamOptionClientPID(void)") description:{@"APEndpointStreamScreenUDP.m", 72, @"%s", dlerror()}];
  __break(1u);
}

- (void)startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:.cold.5()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkAVCMediaStreamOptionRunInProcess(void)") description:{@"APEndpointStreamScreenUDP.m", 70, @"%s", dlerror()}];
  __break(1u);
}

- (uint64_t)createVideoStreamConfig:(uint64_t)a1 withDirection:(void *)a2 screenOptions:previousConfig:.cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "video")];
  [objc_msgSend(a2 "video")];
  [objc_msgSend(a2 "video")];
  return OUTLINED_FUNCTION_2();
}

- (void)getClientUPID:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getAVCKeyDaemonProcessInfoUniquePID(void)") description:{@"APEndpointStreamScreenUDP.m", 76, @"%s", dlerror()}];
  __break(1u);
}

- (uint64_t)getClientUPID:.cold.2()
{
  result = APSLogErrorAt();
  if (gLogCategory_APEndpointStreamScreenUDP <= 90)
  {
    if (gLogCategory_APEndpointStreamScreenUDP != -1)
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

@end