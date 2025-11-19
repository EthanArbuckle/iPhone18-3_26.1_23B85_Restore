@interface APEndpointStreamScreenAVCWrapper
- (APEndpointStreamScreenAVCWrapper)initWithClientPID:(__CFNumber *)a3 hdrMode:(__CFString *)a4 presentationMode:(BOOL)a5 hdrMirroringSupported:(BOOL)a6 eventHandlers:(id *)a7 error:(int *)a8;
- (id)negotiationDataForPresentationMode:(unsigned __int8)a3;
- (int)createVideoStreamConfig:(id *)a3 withDirection:(int64_t)a4 screenOptions:(id *)a5 previousConfig:(id)a6;
- (int)getClientUPID:(unint64_t *)a3;
- (int)initScreeenCaptureWithScreenOptions:(id *)a3;
- (int)initializeNegotiatorWithMode:(__CFString *)a3 presentationMode:(BOOL)a4 hdrMirroringSupported:(BOOL)a5;
- (int)restartWithScreenOptions:(id *)a3 negotiatedBlob:(id)a4;
- (int)setCaptureSourceIDForStreamConfig:(id)a3;
- (int)start;
- (int)startWithNWConnectionClientID:(unsigned __int8)a3[16] negotiatedBlob:(id)a4 screenOptions:(id *)a5 completion:(id *)a6;
- (int)stop;
- (unint64_t)convertHDRMode:(__CFString *)a3;
- (unsigned)isConfigPresentForPresentationMode:(unsigned __int8)a3;
- (void)dealloc;
- (void)getVideoResolutionFromOptions:(id *)a3 width:(unint64_t *)a4 height:(unint64_t *)a5;
- (void)handleFailureWithError:(int)a3 reason:(__CFString *)a4;
- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5;
- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5;
- (void)screenCapture:(id)a3 screenDidClear:(BOOL)a4;
- (void)serverDidDisconnect:(id)a3;
- (void)stopWithCompletion:(id *)a3;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
@end

@implementation APEndpointStreamScreenAVCWrapper

- (APEndpointStreamScreenAVCWrapper)initWithClientPID:(__CFNumber *)a3 hdrMode:(__CFString *)a4 presentationMode:(BOOL)a5 hdrMirroringSupported:(BOOL)a6 eventHandlers:(id *)a7 error:(int *)a8
{
  v10 = a6;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = APEndpointStreamScreenAVCWrapper;
  v14 = [(APEndpointStreamScreenAVCWrapper *)&v19 init];
  v15 = v14;
  if (v14)
  {
    if (a3)
    {
      CFNumberGetValue(a3, kCFNumberIntType, &v14->_clientPID);
    }

    v16 = dispatch_semaphore_create(0);
    v15->_completionSemaphore = v16;
    if (v16)
    {
      v15->_eventWeakContext = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v15->_eventHandleStart = a7->var1;
      v15->_eventHandleStop = a7->var2;
      v15->_eventHandleFailed = a7->var3;
      v15->_eventHandleClearScreen = a7->var4;
      v15->_isSubFrameEnabled = FigGetCFPreferenceNumberWithDefault();
      v17 = [(APEndpointStreamScreenAVCWrapper *)v15 initializeNegotiatorWithMode:a4 presentationMode:v11 hdrMirroringSupported:v10];
      *a8 = v17;
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

- (int)initializeNegotiatorWithMode:(__CFString *)a3 presentationMode:(BOOL)a4 hdrMirroringSupported:(BOOL)a5
{
  v5 = a4;
  v18[0] = 0;
  if (a4 || a5)
  {
    v7 = [(APEndpointStreamScreenAVCWrapper *)self convertHDRMode:a3];
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
    v15 = -16761;
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
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getAVCMediaStreamNegotiatorHDRMode(void)") description:{@"APEndpointStreamScreenUDP.m", 74, @"%s", dlerror()}];
    __break(1u);
LABEL_17:
    APSLogErrorAt();
    v15 = [v18[0] code];
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
  if (v5)
  {
    v14 = 40;
  }

  *(&self->super.isa + v14) = v13;
  if (v18[0])
  {
    goto LABEL_17;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (int)initScreeenCaptureWithScreenOptions:(id *)a3
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
  v8 = a3->var7 ? 1 : 2;
  [v7 setDisplayMode:v8];
  [v7 setPdProtectionOptions:a3->var9];
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

- (int)setCaptureSourceIDForStreamConfig:(id)a3
{
  avcScreenCapture = self->_avcScreenCapture;
  if (!avcScreenCapture)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:];
    return -6727;
  }

  if (!a3)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:];
    return -6727;
  }

  [objc_msgSend(a3 "video")];
  if (gLogCategory_APEndpointStreamScreenUDP > 50)
  {
    return 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP != -1 || (result = _LogCategory_Initialize()) != 0)
  {
    [APEndpointStreamScreenAVCWrapper setCaptureSourceIDForStreamConfig:a3];
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

- (int)startWithNWConnectionClientID:(unsigned __int8)a3[16] negotiatedBlob:(id)a4 screenOptions:(id *)a5 completion:(id *)a6
{
  v34 = 0;
  if (a5->var4)
  {
    v10 = 56;
  }

  else
  {
    v10 = 48;
  }

  v11 = 40;
  if (!a5->var4)
  {
    v11 = 32;
  }

  v12 = *(&self->super.isa + v11);
  [v12 setAnswer:a4 withError:&v34];
  if (v34)
  {
    APSLogErrorAt();
    LODWORD(v28) = [v34 code];
LABEL_31:
    v19 = 0;
    v18 = 0;
    goto LABEL_26;
  }

  v13 = [(APEndpointStreamScreenAVCWrapper *)self createVideoStreamConfig:self + v10 withDirection:1 screenOptions:a5 previousConfig:0];
  if (v13)
  {
    LODWORD(v28) = v13;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v14 = [(APEndpointStreamScreenAVCWrapper *)self initScreeenCaptureWithScreenOptions:a5];
  if (v14)
  {
    LODWORD(v28) = v14;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v15 = [(APEndpointStreamScreenAVCWrapper *)self setCaptureSourceIDForStreamConfig:*(&self->super.isa + v10)];
  if (v15)
  {
    LODWORD(v28) = v15;
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    goto LABEL_31;
  }

  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(v12, "generateMediaStreamInitOptionsWithError:", &v34)}];
  if (v34)
  {
    APSLogErrorAt();
    v33 = [v34 code];
    v19 = 0;
    v18 = 0;
LABEL_37:
    LODWORD(v28) = v33;
    goto LABEL_26;
  }

  v17 = v16;
  if (!v16)
  {
    [APEndpointStreamScreenAVCWrapper startWithNWConnectionClientID:negotiatedBlob:screenOptions:completion:];
    v19 = 0;
    v18 = 0;
    LODWORD(v28) = -16761;
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
  v27 = [[v26 alloc] initWithNWConnectionClientID:a3 options:v17 error:&v34];
  self->_avcVideoStream = v27;
  if (v34 || ([(AVCVideoStream *)v27 setDelegate:self], [(AVCVideoStream *)self->_avcVideoStream configure:*(&self->super.isa + v10) error:&v34], v34))
  {
    APSLogErrorAt();
    v33 = [v34 code];
    goto LABEL_37;
  }

  v28 = [(APEndpointStreamScreenAVCWrapper *)self start];
  if (self->_eventHandleStart)
  {
    if (self->_eventWeakContext)
    {
      v29 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v29)
      {
        v30 = v29;
        eventHandleStart = self->_eventHandleStart;
        v40 = *&a6->var0;
        v41 = *&a6->var2;
        eventHandleStart(v29, &v40, v28);
        CFRelease(v30);
      }
    }
  }

LABEL_26:

  return v28;
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

- (void)stopWithCompletion:(id *)a3
{
  v5 = [(APEndpointStreamScreenAVCWrapper *)self stop];
  if (self->_eventHandleStop)
  {
    v6 = v5;
    if (self->_eventWeakContext)
    {
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v8 = v7;
        eventHandleStop = self->_eventHandleStop;
        v10 = *&a3->var0;
        v11 = *&a3->var2;
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

- (unint64_t)convertHDRMode:(__CFString *)a3
{
  if (CFEqual(a3, *MEMORY[0x277CD6530]))
  {
    return 1;
  }

  else
  {
    return 2 * (CFEqual(a3, *MEMORY[0x277CD6528]) != 0);
  }
}

- (void)getVideoResolutionFromOptions:(id *)a3 width:(unint64_t *)a4 height:(unint64_t *)a5
{
  APSHasHDRSenderSupport();
  APSGetMaxSizePreservingAspectRatio();
  *a4 = APSSettingsGetIntWithDefault();
  *a5 = APSSettingsGetIntWithDefault();
}

- (int)restartWithScreenOptions:(id *)a3 negotiatedBlob:(id)a4
{
  v19 = 0;
  v7 = 56;
  if (a3->var4)
  {
    v8 = 56;
  }

  else
  {
    v8 = 48;
  }

  if (a3->var4)
  {
    v7 = 48;
  }

  v9 = *(&self->super.isa + v7);
  if (a3->var4)
  {
    p_videoStreamConfigForPresentationMode = &self->_videoStreamConfigForPresentationMode;
  }

  else
  {
    p_videoStreamConfigForPresentationMode = &self->_videoStreamConfigForMirroring;
  }

  v11 = 40;
  if (!a3->var4)
  {
    v11 = 32;
  }

  v12 = *(&self->super.isa + v11);
  v13 = [(APEndpointStreamScreenAVCWrapper *)self stop];
  if (v13)
  {
    v17 = v13;
    [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
  }

  else
  {
    if (a4)
    {
      [v12 setAnswer:a4 withError:&v19];
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

      v14 = -[APEndpointStreamScreenAVCWrapper createVideoStreamConfig:withDirection:screenOptions:previousConfig:](self, "createVideoStreamConfig:withDirection:screenOptions:previousConfig:", p_videoStreamConfigForPresentationMode, [v9 direction], a3, v9);
      if (v14)
      {
        v17 = v14;
        [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
        return v17;
      }
    }

    v15 = [(APEndpointStreamScreenAVCWrapper *)self initScreeenCaptureWithScreenOptions:a3];
    if (v15)
    {
      v17 = v15;
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
      return v17;
    }

    v16 = [(APEndpointStreamScreenAVCWrapper *)self setCaptureSourceIDForStreamConfig:*(&self->super.isa + v8)];
    if (v16)
    {
      v17 = v16;
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
      return v17;
    }

    [(AVCVideoStream *)self->_avcVideoStream configure:*(&self->super.isa + v8) error:&v19];
    if (v19)
    {
LABEL_26:
      APSLogErrorAt();
      return [v19 code];
    }

    v17 = [(APEndpointStreamScreenAVCWrapper *)self start];
    if (v17)
    {
      [APEndpointStreamScreenAVCWrapper restartWithScreenOptions:negotiatedBlob:];
    }
  }

  return v17;
}

- (int)createVideoStreamConfig:(id *)a3 withDirection:(int64_t)a4 screenOptions:(id *)a5 previousConfig:(id)a6
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  p_var4 = &a5->var4;
  v12 = 40;
  if (!a5->var4)
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
    [(APEndpointStreamScreenAVCWrapper *)self getVideoResolutionFromOptions:a5 width:&v23 height:&v22];
    [objc_msgSend(v14 "video")];
    [objc_msgSend(v14 "video")];
    [objc_msgSend(v14 "video")];
    [v14 setDirection:a4];
    var1 = a5->var1;
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
    if (a6)
    {
      [v14 setReceiveMasterKey:{objc_msgSend(a6, "receiveMasterKey")}];
      var2 = [a6 sendMasterKey];
    }

    else
    {
      [v14 setReceiveMasterKey:a5->var3];
      var2 = a5->var2;
    }

    [v14 setSendMasterKey:var2];
    var8 = a5->var8;
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
    *a3 = v20;
  }

  return result;
}

- (int)getClientUPID:(unint64_t *)a3
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
    v5 = [v4 getDaemonProcessInfo];
    if (v5)
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

      *a3 = [objc_msgSend(v5 objectForKeyedSubscript:{*v6), "longLongValue"}];
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
      *a3 = v23;
    }

    else
    {
      *a3 = 0;
      if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        [APEndpointStreamScreenAVCWrapper getClientUPID:];
      }
    }
  }

  return 0;
}

- (id)negotiationDataForPresentationMode:(unsigned __int8)a3
{
  v3 = 40;
  if (!a3)
  {
    v3 = 32;
  }

  return [*(&self->super.isa + v3) offer];
}

- (unsigned)isConfigPresentForPresentationMode:(unsigned __int8)a3
{
  v3 = 56;
  if (!a3)
  {
    v3 = 48;
  }

  return *(&self->super.isa + v3) != 0;
}

- (void)handleFailureWithError:(int)a3 reason:(__CFString *)a4
{
  if (self->_eventHandleFailed)
  {
    if (self->_eventWeakContext)
    {
      v6 = *&a3;
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        v8 = v7;
        (self->_eventHandleFailed)(v7, v6, a4);

        CFRelease(v8);
      }
    }
  }
}

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  if (a5)
  {
    v6 = [a5 code];
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_didStartStatus = v6;
  completionSemaphore = self->_completionSemaphore;

  dispatch_semaphore_signal(completionSemaphore);
}

- (void)streamDidStop:(id)a3
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    [APEndpointStreamScreenAVCWrapper streamDidStop:];
  }

  completionSemaphore = self->_completionSemaphore;

  dispatch_semaphore_signal(completionSemaphore);
}

- (void)streamDidServerDie:(id)a3
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    [APEndpointStreamScreenAVCWrapper streamDidServerDie:];
  }

  [(APEndpointStreamScreenAVCWrapper *)self handleFailureWithError:4294960543 reason:@"Server Died"];
}

- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5
{
  if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)screenCapture:(id)a3 screenDidClear:(BOOL)a4
{
  v4 = a4;
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
        (self->_eventHandleClearScreen)(v6, v4);

        CFRelease(v7);
      }
    }
  }
}

- (void)serverDidDisconnect:(id)a3
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