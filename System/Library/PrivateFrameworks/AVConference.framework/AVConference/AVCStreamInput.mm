@interface AVCStreamInput
- (AVCStreamInput)initWithDelegate:(id)delegate delegateQueue:(id)queue format:(opaqueCMFormatDescription *)format options:(id)options error:(id *)error;
- (BOOL)pushSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (BOOL)sendSampleBufferOverXPC:(opaqueCMSampleBuffer *)c error:(id *)error;
- (id)description;
- (id)formatDescriptionString;
- (id)newRemoteQueueWithServerPid:(int)pid;
- (int)createAndAddRemoteQueueToXPCDictionary:(id)dictionary;
- (int)initializeServerSideInputStream;
- (int)processFormat:(opaqueCMFormatDescription *)format;
- (int)processOptions:(id)options;
- (int)resetXPCConnection;
- (int)setupDelegate:(id)delegate delegateQueue:(id)queue;
- (int)setupXPCConnection;
- (int)setupXPCQueue;
- (uint64_t)initializeServerSideInputStream;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)didResume;
- (void)didServerDie;
- (void)didStart;
- (void)didStop;
- (void)didSuspend;
- (void)initializeServerSideInputStream;
- (void)registerBlocksForNotification;
- (void)registerDidServerDieBlock:(id)block;
- (void)registerService:(char *)service weakSelf:(id)self block:(id)block;
- (void)resetStats;
- (void)setupXPCConnection;
- (void)setupXPCQueue;
- (void)tearDownConnectionWithTerminateMessage:(BOOL)message;
- (void)tearDownRemoteQueue;
@end

@implementation AVCStreamInput

- (AVCStreamInput)initWithDelegate:(id)delegate delegateQueue:(id)queue format:(opaqueCMFormatDescription *)format options:(id)options error:(id *)error
{
  v59[3] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = -2143617020;
  v36.receiver = self;
  v36.super_class = AVCStreamInput;
  v12 = [(AVCStreamInput *)&v36 init];
  if (!v12)
  {
    goto LABEL_12;
  }

  VRTraceReset();
  v12->_printSampleBufferDetailsEnabled = VRTraceGetErrorLogLevelForModule() > 7;
  v13 = [(AVCStreamInput *)v12 processFormat:format];
  *(v38 + 6) = v13;
  if (v13 < 0)
  {
    goto LABEL_12;
  }

  v12->_senderQueueLock._os_unfair_lock_opaque = 0;
  v12->_memoryPoolSize = 0x80000;
  v14 = [(AVCStreamInput *)v12 processOptions:options];
  *(v38 + 6) = v14;
  if (v14 < 0)
  {
    goto LABEL_12;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCInputStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamInputID = v12->_streamInputID;
      memset(v59, 170, 20);
      v18 = MEMORY[0x1E696AEC0];
      AVCStreamInputID_ConvertToCString(streamInputID, v59, 0x14uLL);
      v19 = [v18 stringWithUTF8String:v59];
      *buf = 136316162;
      v42 = v15;
      v43 = 2080;
      v44 = "[AVCStreamInput initWithDelegate:delegateQueue:format:options:error:]";
      v45 = 1024;
      v46 = 162;
      v47 = 2048;
      v48 = v12;
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ AVCInputStream-init (%p) streamInputID=%@", buf, 0x30u);
    }
  }

  v20 = [(AVCStreamInput *)v12 setupDelegate:delegate delegateQueue:queue];
  *(v38 + 6) = v20;
  if (v20 < 0 || (v21 = [(AVCStreamInput *)v12 setupXPCQueue], *(v38 + 6) = v21, v21 < 0) || (xpcQueue = v12->_xpcQueue, v35[0] = MEMORY[0x1E69E9820], v35[1] = 3221225472, v35[2] = __70__AVCStreamInput_initWithDelegate_delegateQueue_format_options_error___block_invoke, v35[3] = &unk_1E85F40B8, v35[4] = v12, v35[5] = &v37, dispatch_sync(xpcQueue, v35), !v12->_didInitializeSuccessfully))
  {
LABEL_12:
    MediaType = 0;
  }

  else
  {
    [(AVCStreamInput *)v12 resetStats];
    MediaType = CMFormatDescriptionGetMediaType(v12->_formatDescription);
    CMFormatDescriptionGetMediaSubType(v12->_formatDescription);
    v24 = v12->_streamInputID == 1650745716 && !VCFeatureFlagManager_PersonaV2Enabled();
    v12->_requireTileIndexAttachment = v24;
    kdebug_trace();
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCInputStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v27 = v12->_streamInputID;
        memset(v59, 170, 20);
        v28 = MEMORY[0x1E696AEC0];
        AVCStreamInputID_ConvertToCString(v27, v59, 0x14uLL);
        v29 = [v28 stringWithUTF8String:v59];
      }

      else
      {
        v29 = @"nil";
      }

      v30 = FourccToCStr(MediaType);
      v31 = *(v38 + 6);
      formatDescriptionString = [(AVCStreamInput *)v12 formatDescriptionString];
      *buf = 136317186;
      v33 = @"NO";
      v42 = v25;
      v43 = 2080;
      v44 = "[AVCStreamInput initWithDelegate:delegateQueue:format:options:error:]";
      v45 = 1024;
      if (v31 >= 0)
      {
        v33 = @"YES";
      }

      v46 = 186;
      v47 = 2048;
      v48 = v12;
      v49 = 2112;
      v50 = v29;
      v51 = 2080;
      v52 = v30;
      v53 = 2112;
      v54 = v33;
      v55 = 1024;
      v56 = v31;
      v57 = 2112;
      v58 = formatDescriptionString;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ AVCInputStream-init (%p) streamInputID=%@ mediaType=%s didSucceed=%@ errorCode=%x %@", buf, 0x54u);
    }
  }

  if ((v38[3] & 0x80000000) != 0)
  {

    v12 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCInputStream" code:*(v38 + 6) userInfo:0];
    }
  }

  _Block_object_dispose(&v37, 8);
  return v12;
}

uint64_t __70__AVCStreamInput_initWithDelegate_delegateQueue_format_options_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setupXPCConnection];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *(*(a1 + 32) + 105) = *(*(*(a1 + 40) + 8) + 24) >= 0;
  return result;
}

- (id)formatDescriptionString
{
  v19 = *MEMORY[0x1E69E9840];
  formatDescription = self->_formatDescription;
  if (!formatDescription)
  {
    return &stru_1F570E008;
  }

  MediaType = CMFormatDescriptionGetMediaType(formatDescription);
  MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDescription);
  v6 = MEMORY[0x1E696AD60];
  v7 = FourccToCStr(MediaType);
  v8 = [v6 stringWithFormat:@"mediaType=%s subtype=%s", v7, FourccToCStr(MediaSubType)];
  if (MediaType == 1936684398)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17 = v9;
    v18 = v9;
    *__str = v9;
    v16 = v9;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(self->_formatDescription);
    v13 = FormatToCStr(StreamBasicDescription, __str, 0x40uLL);
    [v8 appendFormat:@" audioStreamBasicDescription=%s", v13, v14, *__str, *&__str[8], v16, v17, v18];
  }

  else if (MediaType == 1986618469)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(self->_formatDescription);
    [v8 appendFormat:@" dimensions=%dx%d", Dimensions, HIDWORD(*&Dimensions), *__str, *&__str[8], v16, v17, v18];
  }

  return v8;
}

- (int)processFormat:(opaqueCMFormatDescription *)format
{
  if (!format)
  {
    [AVCStreamInput processFormat:];
    return v8;
  }

  v5 = CFGetTypeID(format);
  if (v5 != CMFormatDescriptionGetTypeID())
  {
    [AVCStreamInput processFormat:];
    return v8;
  }

  v6 = CFRetain(format);
  result = 0;
  self->_formatDescription = v6;
  return result;
}

- (int)setupDelegate:(id)delegate delegateQueue:(id)queue
{
  if (!delegate)
  {
    [AVCStreamInput setupDelegate:delegateQueue:];
    return v13;
  }

  queueCopy = queue;
  if (!queue)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = [objc_msgSend(v8 stringWithFormat:@"%s.%@.delegate_queue", "com.apple.AVConference", NSStringFromClass(v9)), "UTF8String"];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    queueCopy = dispatch_queue_create_with_target_V2(v10, 0, CustomRootQueue);
    if (queueCopy)
    {
      goto LABEL_5;
    }

    [AVCStreamInput setupDelegate:delegateQueue:];
    return v13;
  }

  queueCopy2 = queue;
LABEL_5:
  self->_delegateQueue = queueCopy;
  objc_storeWeak(&self->_delegate, delegate);
  return 0;
}

- (int)setupXPCQueue
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_msgSend(v3 stringWithFormat:@"%s.%@.connection_queue", "com.apple.AVConference", NSStringFromClass(v4)), "UTF8String"];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v7 = dispatch_queue_create_with_target_V2(v5, 0, CustomRootQueue);
  self->_xpcQueue = v7;
  if (v7)
  {
    return 0;
  }

  [AVCStreamInput setupXPCQueue];
  return v9;
}

- (id)newRemoteQueueWithServerPid:(int)pid
{
  SenderQueueWithPoolSize = VCRemoteImageQueue_CreateSenderQueueWithPoolSize(*&pid, &self->_senderQueue);
  senderQueue = self->_senderQueue;
  if (senderQueue && SenderQueueWithPoolSize)
  {
    v6 = VCRemoteImageQueue_SharedMemoryPoolAllocator(senderQueue);
    self->_sampleBufferAllocator = v6;
    if (v6)
    {
      CFRetain(v6);
      result = VCRemoteImageQueue_CreateQueueXPCObject(self->_senderQueue);
      if (result)
      {
        return result;
      }

      [AVCStreamInput newRemoteQueueWithServerPid:?];
    }

    else
    {
      [AVCStreamInput newRemoteQueueWithServerPid:?];
    }
  }

  else
  {
    [AVCStreamInput newRemoteQueueWithServerPid:?];
  }

  sampleBufferAllocator = self->_sampleBufferAllocator;
  if (sampleBufferAllocator)
  {
    CFRelease(sampleBufferAllocator);
    self->_sampleBufferAllocator = 0;
  }

  VCRemoteImageQueue_Destroy(&self->_senderQueue);
  return 0;
}

- (int)setupXPCConnection
{
  v3 = objc_alloc_init(AVConferenceXPCClient);
  self->_xpcConnection = v3;
  if (v3)
  {
    [(AVCStreamInput *)self registerBlocksForNotification];

    return [(AVCStreamInput *)self initializeServerSideInputStream];
  }

  else
  {
    [AVCStreamInput setupXPCConnection];
    return v5;
  }
}

- (void)tearDownConnectionWithTerminateMessage:(BOOL)message
{
  messageCopy = message;
  [(AVCStreamInput *)self deregisterBlocksForNotifications];
  if (messageCopy)
  {
    [(AVConferenceXPCClient *)self->_xpcConnection sendMessageSync:"VCStreamInputTerminate"];
  }

  self->_xpcConnection = 0;

  [(AVCStreamInput *)self tearDownRemoteQueue];
}

- (int)resetXPCConnection
{
  [(AVCStreamInput *)self tearDownConnectionWithTerminateMessage:0];

  return [(AVCStreamInput *)self setupXPCConnection];
}

- (void)resetStats
{
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *(&self->_isStarted + 4) = *MEMORY[0x1E6960C70];
  v4 = *(v2 + 16);
  *&self->_lastHealthPrintTime.flags = v4;
  *&self->_payloadStats.sampleBufferCount = v3;
  *&self->_payloadStats.lastSampleBufferTime.timescale = v4;
  self->_payloadStats.lastSampleBufferTime.epoch = 0;
  *(&self->_senderQueueLock + 1) = 0;
  *&self->_payloadStats.averageBitrate = v3;
  self->_tileIndexStats[0].lastSampleBufferTime.value = v4;
  *&self->_tileIndexStats[0].lastSampleBufferTime.timescale = 0;
  LODWORD(self->_tileIndexStats[1].lastSampleBufferTime.value) = 0;
  *&self->_tileIndexStats[1].sampleBufferCount = v4;
  *&self->_tileIndexStats[0].lastSampleBufferTime.epoch = v3;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  [(AVCStreamInput *)self tearDownConnectionWithTerminateMessage:1];
  xpcQueue = self->_xpcQueue;
  if (xpcQueue)
  {
    dispatch_release(xpcQueue);
    self->_xpcQueue = 0;
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);

  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  sampleBufferAllocator = self->_sampleBufferAllocator;
  if (sampleBufferAllocator)
  {
    CFRelease(sampleBufferAllocator);
  }

  VCRemoteImageQueue_Destroy(&self->_senderQueue);
  kdebug_trace();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCStreamInput dealloc]";
      v15 = 1024;
      v16 = 356;
      v17 = 2112;
      v18 = NSStringFromClass(v9);
      v19 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ %@-dealloc (%p)", buf, 0x30u);
    }
  }

  v10.receiver = self;
  v10.super_class = AVCStreamInput;
  [(AVCStreamInput *)&v10 dealloc];
}

- (int)initializeServerSideInputStream
{
  v31 = *MEMORY[0x1E69E9840];
  p_streamInputID = &self->_streamInputID;
  if (self->_streamInputID)
  {
    v29 = @"VCStreamInputID";
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = VCStreamInputUtil_EncodeFormatDescription(self->_formatDescription);
  if (!v5)
  {
    [(AVCStreamInput *)self initializeServerSideInputStream];
    return -2143617022;
  }

  v6 = v5;
  v7 = [(AVCStreamInput *)self createAndAddRemoteQueueToXPCDictionary:v5];
  if (v7)
  {
    [(AVCStreamInput *)self initializeServerSideInputStream:v7];
    code = *v25;
    goto LABEL_31;
  }

  v13 = [(AVConferenceXPCClient *)self->_xpcConnection sendMessageSync:"VCStreamInputInitialize" arguments:v4 xpcArguments:v6];
  if (!v13)
  {
    [AVCStreamInput initializeServerSideInputStream];
    code = *v25;
    goto LABEL_37;
  }

  v14 = v13;
  v15 = [v13 objectForKeyedSubscript:@"ERROR"];
  if (v15)
  {
    v18 = v15;
    code = [v15 code];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCStreamInput initializeServerSideInputStream];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v25 = 136316674;
          *&v25[4] = v21;
          *&v25[12] = 2080;
          *&v25[14] = "[AVCStreamInput initializeServerSideInputStream]";
          *&v25[22] = 1024;
          LODWORD(v26) = 420;
          WORD2(v26) = 2112;
          *(&v26 + 6) = v19;
          HIWORD(v26) = 2048;
          selfCopy2 = self;
          *v28 = 2080;
          *&v28[2] = "VCStreamInputInitialize";
          *&v28[10] = 2112;
          *&v28[12] = v18;
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) message=%s returned with an error=%@", v25, 0x44u);
        }
      }
    }

LABEL_31:
    if ((code & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_37:
    [(AVCStreamInput *)self tearDownRemoteQueue];
    goto LABEL_10;
  }

  if (![v14 objectForKeyedSubscript:@"VCStreamInputID"])
  {
    code = -2143617020;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCStreamInput initializeServerSideInputStream];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v25 = 136316418;
          *&v25[4] = v23;
          *&v25[12] = 2080;
          *&v25[14] = "[AVCStreamInput initializeServerSideInputStream]";
          *&v25[22] = 1024;
          LODWORD(v26) = 422;
          WORD2(v26) = 2112;
          *(&v26 + 6) = v20;
          HIWORD(v26) = 2048;
          selfCopy2 = self;
          *v28 = 2112;
          *&v28[2] = v14;
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) No stream input ID provided. nsRet=%@", v25, 0x3Au);
        }
      }
    }

    goto LABEL_37;
  }

  [(AVCStreamInput *)v14 initializeServerSideInputStream:self];
  code = *v25;
LABEL_10:
  CFRelease(v6);
  return code;
}

- (void)didServerDie
{
  AVCStreamInputID_ConvertToNSString(*(a2 + 40));
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

uint64_t __30__AVCStreamInput_didServerDie__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __30__AVCStreamInput_didServerDie__block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __30__AVCStreamInput_didServerDie__block_invoke_cold_1(v3);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*v1 performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v6 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *v1;
          v8 = *v1 + 128;
          v12 = 136316418;
          v13 = v4;
          v14 = 2080;
          v15 = "[AVCStreamInput didServerDie]_block_invoke";
          v16 = 1024;
          v17 = 508;
          v18 = 2112;
          v19 = v2;
          v20 = 2048;
          v21 = v7;
          v22 = 2080;
          v23 = v8;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) AVCStreamInputID=%s server died, notifying client", &v12, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v9 = *v1;
        v10 = *v1 + 128;
        v12 = 136316418;
        v13 = v4;
        v14 = 2080;
        v15 = "[AVCStreamInput didServerDie]_block_invoke";
        v16 = 1024;
        v17 = 508;
        v18 = 2112;
        v19 = v2;
        v20 = 2048;
        v21 = v9;
        v22 = 2080;
        v23 = v10;
        _os_log_fault_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_FAULT, "AVCStreamInput [%s] %s:%d %@(%p) AVCStreamInputID=%s server died, notifying client", &v12, 0x3Au);
      }
    }
  }

  [*v1 delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [objc_msgSend(*v1 "delegate")];
  }

  return result;
}

- (void)didStart
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__AVCStreamInput_didStart__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

uint64_t __26__AVCStreamInput_didStart__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((*(result + 64) & 1) == 0)
  {
    [result resetStats];
    *(*(a1 + 32) + 64) = 1;
    kdebug_trace();
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-didStart");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = *(a1 + 32);
        v8 = 136316162;
        v9 = v3;
        v10 = 2080;
        v11 = "[AVCStreamInput didStart]_block_invoke";
        v12 = 1024;
        v13 = 524;
        v14 = 2112;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ %@-didStart (%p)", &v8, 0x30u);
      }
    }

    [*(a1 + 32) delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  return result;
}

- (void)didStop
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__AVCStreamInput_didStop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

uint64_t __25__AVCStreamInput_didStop__block_invoke(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 64) == 1)
  {
    v2 = result;
    *(v1 + 64) = 0;
    kdebug_trace();
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-didStop");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = *(v2 + 32);
        v8 = 136316162;
        v9 = v3;
        v10 = 2080;
        v11 = "[AVCStreamInput didStop]_block_invoke";
        v12 = 1024;
        v13 = 538;
        v14 = 2112;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ %@-didStop (%p)", &v8, 0x30u);
      }
    }

    [*(v2 + 32) delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [objc_msgSend(*(v2 + 32) "delegate")];
    }
  }

  return result;
}

- (void)didSuspend
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__AVCStreamInput_didSuspend__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

uint64_t __28__AVCStreamInput_didSuspend__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-didSuspend");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v8 = 136316162;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVCStreamInput didSuspend]_block_invoke";
      v12 = 1024;
      v13 = 547;
      v14 = 2112;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ %@-didSuspend (%p)", &v8, 0x30u);
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) "delegate")];
  }

  return result;
}

- (void)didResume
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__AVCStreamInput_didResume__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

uint64_t __27__AVCStreamInput_didResume__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-didResume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v9 = 136316162;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVCStreamInput didResume]_block_invoke";
      v13 = 1024;
      v14 = 557;
      v15 = 2112;
      v16 = v5;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @:@ %@-didResume (%p)", &v9, 0x30u);
    }
  }

  v7 = [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [v7 didResumeStreamInput:*(a1 + 32)];
  }

  return result;
}

- (void)registerService:(char *)service weakSelf:(id)self block:(id)block
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVCStreamInput_registerService_weakSelf_block___block_invoke;
  v5[3] = &unk_1E85F7CF0;
  v5[4] = self;
  v5[5] = block;
  [(AVConferenceXPCClient *)self->_xpcConnection registerBlockForService:service block:v5 queue:self->_xpcQueue];
}

uint64_t __49__AVCStreamInput_registerService_weakSelf_block___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v4 = *(*(a1 + 40) + 16);

      return v4();
    }
  }

  return result;
}

- (void)registerDidServerDieBlock:(id)block
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__AVCStreamInput_registerDidServerDieBlock___block_invoke;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = block;
  [(AVConferenceXPCClient *)self->_xpcConnection registerBlockForService:"VCStreamInputDidServerDie" block:v3 queue:self->_xpcQueue];
}

void *__44__AVCStreamInput_registerDidServerDieBlock___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {

      return [result didServerDie];
    }
  }

  return result;
}

- (void)registerBlocksForNotification
{
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [(AVCStreamInput *)self registerService:"VCStreamInputDidStart" weakSelf:v3 block:&__block_literal_global_58];
  [(AVCStreamInput *)self registerService:"VCStreamInputDidStop" weakSelf:v3 block:&__block_literal_global_83_0];
  [(AVCStreamInput *)self registerService:"VCStreamInputDidSuspend" weakSelf:v3 block:&__block_literal_global_86];
  [(AVCStreamInput *)self registerService:"VCStreamInputDidResume" weakSelf:v3 block:&__block_literal_global_89];

  [(AVCStreamInput *)self registerDidServerDieBlock:v3];
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"conferenceDidServerDie"];
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"VCStreamInputDidStart"];
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"VCStreamInputDidStop"];
  [(AVConferenceXPCClient *)self->_xpcConnection deregisterFromService:"VCStreamInputDidSuspend"];
  xpcConnection = self->_xpcConnection;

  [(AVConferenceXPCClient *)xpcConnection deregisterFromService:"VCStreamInputDidResume"];
}

- (BOOL)sendSampleBufferOverXPC:(opaqueCMSampleBuffer *)c error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  xpcQueue = self->_xpcQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke;
  v7[3] = &unk_1E85F6D88;
  v7[5] = &v8;
  v7[6] = c;
  v7[4] = self;
  dispatch_sync(xpcQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = VCStreamInputUtil_EncodeSampleBuffer(*(a1 + 48));
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_92;
    v11[3] = &unk_1E85F3AD8;
    v11[4] = v3;
    [v4 sendMessageAsync:"VCStreamInputPushSampleBuffer" arguments:0 xpcArguments:v2 reply:v11 queue:0 replyLogLevel:8];
    xpc_release(v2);
    v5 = 1;
  }

  else
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_cold_1(v7);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          *buf = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCStreamInput sendSampleBufferOverXPC:error:]_block_invoke";
          v16 = 1024;
          v17 = 629;
          v18 = 2112;
          v19 = v6;
          v20 = 2048;
          v21 = v10;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) could not create XPC dictionary for AVCStreamInput", buf, 0x30u);
        }
      }
    }

    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_92(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_92_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          v9 = 136316418;
          v10 = v6;
          v11 = 2080;
          v12 = "[AVCStreamInput sendSampleBufferOverXPC:error:]_block_invoke";
          v13 = 1024;
          v14 = 636;
          v15 = 2112;
          v16 = v5;
          v17 = 2048;
          v18 = v8;
          v19 = 2112;
          v20 = a3;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) Failed to submit frame. error=%@", &v9, 0x3Au);
        }
      }
    }
  }
}

- (BOOL)pushSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  if (*&buffer == 0.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCStreamInput pushSampleBuffer:error:];
      }
    }

    return 0;
  }

  v7 = CMGetAttachment(buffer, @"tileIndex", 0);
  if (self->_requireTileIndexAttachment && v7 == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCStreamInput pushSampleBuffer:error:];
      }
    }

    return 0;
  }

  v9 = v7;
  if (self->_printSampleBufferDetailsEnabled)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(buffer);
    if (CMFormatDescriptionGetMediaType(FormatDescription) == 1835365473)
    {
      v76 = -86;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v74 = v11;
      v75 = v11;
      valuePtr = v11;
      v73 = v11;
      DataBuffer = CMSampleBufferGetDataBuffer(buffer);
      VideoUtil_BlockBufferToString(DataBuffer, &valuePtr, 65);
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_26;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *&v16 = COERCE_DOUBLE(CMBlockBufferGetDataLength(DataBuffer));
        LODWORD(buf.value) = 136316930;
        *(&buf.value + 4) = v13;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_AVCStreamInput_PrintSampleBufferDetails";
        HIWORD(buf.epoch) = 1024;
        v78 = 98;
        v79 = 2048;
        bufferCopy = self;
        v81 = 2080;
        streamInputIDString = self->_streamInputIDString;
        v83 = 2048;
        v84 = *&v16;
        v85 = 2080;
        *v86 = &valuePtr;
        *&v86[8] = 2112;
        *&v86[10] = buffer;
        v17 = "AVCStreamInput [%s] %s:%d streamInput=%p streamInputID=%s length=%zu data=%s sampleBuffer=%@";
        v18 = v14;
        v19 = 78;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &buf, v19);
        goto LABEL_26;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *&v23 = COERCE_DOUBLE(CMBlockBufferGetDataLength(DataBuffer));
        LODWORD(buf.value) = 136316930;
        *(&buf.value + 4) = v13;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_AVCStreamInput_PrintSampleBufferDetails";
        HIWORD(buf.epoch) = 1024;
        v78 = 98;
        v79 = 2048;
        bufferCopy = self;
        v81 = 2080;
        streamInputIDString = self->_streamInputIDString;
        v83 = 2048;
        v84 = *&v23;
        v85 = 2080;
        *v86 = &valuePtr;
        *&v86[8] = 2112;
        *&v86[10] = buffer;
        v24 = "AVCStreamInput [%s] %s:%d streamInput=%p streamInputID=%s length=%zu data=%s sampleBuffer=%@";
        v25 = v14;
        v26 = 78;
LABEL_82:
        _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, v24, &buf, v26);
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_26;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        LODWORD(buf.value) = 136316418;
        *(&buf.value + 4) = v20;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_AVCStreamInput_PrintSampleBufferDetails";
        HIWORD(buf.epoch) = 1024;
        v78 = 100;
        v79 = 2048;
        bufferCopy = self;
        v81 = 2080;
        streamInputIDString = self->_streamInputIDString;
        v83 = 2112;
        v84 = *&buffer;
        v17 = "AVCStreamInput [%s] %s:%d streamInput=%p streamInputID=%s sampleBuffer=%@";
        v18 = v21;
        v19 = 58;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.value) = 136316418;
        *(&buf.value + 4) = v20;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "_AVCStreamInput_PrintSampleBufferDetails";
        HIWORD(buf.epoch) = 1024;
        v78 = 100;
        v79 = 2048;
        bufferCopy = self;
        v81 = 2080;
        streamInputIDString = self->_streamInputIDString;
        v83 = 2112;
        v84 = *&buffer;
        v24 = "AVCStreamInput [%s] %s:%d streamInput=%p streamInputID=%s sampleBuffer=%@";
        v25 = v21;
        v26 = 58;
        goto LABEL_82;
      }
    }
  }

LABEL_26:
  if (!self->_isStarted)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v48 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCStreamInput pushSampleBuffer:v48 error:self];
          if (error)
          {
LABEL_52:
            v51 = 0;
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCInputStream" code:-2143617007 userInfo:0];
            return v51;
          }

          return 0;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v40 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v40 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *&v67 = COERCE_DOUBLE(AVCStreamInputID_ConvertToNSString(self->_streamInputID));
          LODWORD(buf.value) = 136316418;
          *(&buf.value + 4) = v49;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "[AVCStreamInput pushSampleBuffer:error:]";
          HIWORD(buf.epoch) = 1024;
          v78 = 660;
          v79 = 2112;
          bufferCopy = v40;
          v81 = 2048;
          streamInputIDString = self;
          v83 = 2112;
          v84 = *&v67;
          _os_log_error_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d %@(%p) streamInputID=%@ Buffer pushed before streamInput was started", &buf, 0x3Au);
          if (error)
          {
            goto LABEL_52;
          }

          return 0;
        }
      }
    }

    if (error)
    {
      goto LABEL_52;
    }

    return 0;
  }

  v27 = CMSampleBufferGetFormatDescription(buffer);
  MediaType = CMFormatDescriptionGetMediaType(v27);
  CMFormatDescriptionGetMediaSubType(v27);
  memset(&v70, 170, sizeof(v70));
  CMSampleBufferGetPresentationTimeStamp(&v70, buffer);
  buf = v70;
  CMTimeGetSeconds(&buf);
  kdebug_trace();
  if (v9)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
    if (valuePtr <= 1)
    {
      buf = v70;
      _AVCStreamInput_ComputeStats(self, buffer, MediaType, &buf.value, &self->_payloadStats.lastSampleBufferTime.epoch + 32 * valuePtr + 4);
    }
  }

  buf = v70;
  _AVCStreamInput_ComputeStats(self, buffer, MediaType, &buf.value, (&self->_senderQueueLock + 1));
  v69 = v70;
  if ((self->_lastHealthPrintTime.timescale & 1) == 0 || (memset(&buf, 170, sizeof(buf)), valuePtr = *&v70.value, *&v73 = v70.epoch, rhs = *(&self->_isStarted + 4), CMTimeSubtract(&buf, &valuePtr, &rhs), buf.value / buf.timescale > 5.0))
  {
    if (MediaType == 1835365473)
    {
      requireTileIndexAttachment = self->_requireTileIndexAttachment;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (requireTileIndexAttachment)
      {
        if (ErrorLogLevelForModule >= 6)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v33 = FourccToCStr(1835365473);
            v34 = (*&self->_payloadStats.lastSampleBufferTime.epoch / 1000.0);
            v35 = *(&self->_senderQueueLock + 1);
            v36 = (*&self->_tileIndexStats[0].lastSampleBufferTime.timescale / 1000.0);
            epoch_high = HIDWORD(self->_payloadStats.lastSampleBufferTime.epoch);
            LODWORD(buf.value) = 136317698;
            v38 = *&self->_tileIndexStats[1].lastSampleBufferTime.value;
            flags = self->_tileIndexStats[0].lastSampleBufferTime.flags;
            *(&buf.value + 4) = v31;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "_AVCStreamInput_DisplayHealthInfo";
            HIWORD(buf.epoch) = 1024;
            v78 = 453;
            v79 = 2080;
            bufferCopy = self->_streamInputIDString;
            v81 = 2080;
            streamInputIDString = v33;
            v83 = 2048;
            v84 = v34;
            v85 = 1024;
            *v86 = v35;
            *&v86[4] = 2048;
            *&v86[6] = v36;
            *&v86[14] = 1024;
            *&v86[16] = epoch_high;
            v87 = 2048;
            v88 = (v38 / 1000.0);
            v89 = 1024;
            v90 = flags;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "AVCStreamInput [%s] %s:%d @=@ Health: AVCStreamInput AVCStreamInputID=%s mediaType=%s averageBitrate=%0.2fkbps sampleBufferCount=%d tileStats=[ [%0.2fkbps, %d], [%0.2fkbps, %d] ]", &buf, 0x60u);
          }
        }

        HIDWORD(self->_payloadStats.lastSampleBufferTime.epoch) = 0;
        self->_tileIndexStats[0].lastSampleBufferTime.flags = 0;
        goto LABEL_57;
      }

      if (ErrorLogLevelForModule < 6 || (v52 = VRTraceErrorLogLevelToCSTR(), v53 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_57:
        *(&self->_isStarted + 4) = v69;
        *(&self->_senderQueueLock + 1) = 0;
        goto LABEL_58;
      }

      v54 = FourccToCStr(1835365473);
      v55 = *&self->_payloadStats.lastSampleBufferTime.epoch;
      LODWORD(buf.value) = 136316674;
      v56 = *(&self->_senderQueueLock + 1);
      *(&buf.value + 4) = v52;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "_AVCStreamInput_DisplayHealthInfo";
      HIWORD(buf.epoch) = 1024;
      v78 = 457;
      v79 = 2080;
      bufferCopy = self->_streamInputIDString;
      v81 = 2080;
      streamInputIDString = v54;
      v83 = 2048;
      v84 = (v55 / 1000.0);
      v85 = 1024;
      *v86 = v56;
      v45 = "AVCStreamInput [%s] %s:%d @=@ Health: AVCStreamInput AVCStreamInputID=%s mediaType=%s averageBitrate=%0.2fkbps sampleBufferCount=%d";
      v46 = v53;
      v47 = 64;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_57;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      v43 = FourccToCStr(MediaType);
      v44 = *(&self->_senderQueueLock + 1);
      LODWORD(buf.value) = 136316418;
      *(&buf.value + 4) = v41;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "_AVCStreamInput_DisplayHealthInfo";
      HIWORD(buf.epoch) = 1024;
      v78 = 460;
      v79 = 2080;
      bufferCopy = self->_streamInputIDString;
      v81 = 2080;
      streamInputIDString = v43;
      v83 = 1024;
      LODWORD(v84) = v44;
      v45 = "AVCStreamInput [%s] %s:%d @=@ Health: AVCStreamInput AVCStreamInputID=%s mediaType=%s sampleBufferCount=%d";
      v46 = v42;
      v47 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, v45, &buf, v47);
    goto LABEL_57;
  }

LABEL_58:
  os_unfair_lock_lock(&self->_senderQueueLock);
  if (self->_useFigRemoteQueue)
  {
    v51 = VCRemoteImageQueue_EnqueueFrame(self->_senderQueue, buffer) == 0;
  }

  else
  {
    v51 = [(AVCStreamInput *)self sendSampleBufferOverXPC:buffer error:error];
  }

  os_unfair_lock_unlock(&self->_senderQueueLock);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      v60 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315906;
          *(&buf.value + 4) = v58;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "[AVCStreamInput pushSampleBuffer:error:]";
          HIWORD(buf.epoch) = 1024;
          v78 = 703;
          v79 = 2112;
          bufferCopy = buffer;
          v61 = "AVCStreamInput [%s] %s:%d Pushing sampleBuffer=%@";
          v62 = v59;
          v63 = 38;
LABEL_73:
          _os_log_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_DEFAULT, v61, &buf, v63);
        }
      }

      else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [AVCStreamInput pushSampleBuffer:error:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v57 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
    }

    else
    {
      v57 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v64 = VRTraceErrorLogLevelToCSTR();
      v65 = *MEMORY[0x1E6986650];
      v66 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136316418;
          *(&buf.value + 4) = v64;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "[AVCStreamInput pushSampleBuffer:error:]";
          HIWORD(buf.epoch) = 1024;
          v78 = 703;
          v79 = 2112;
          bufferCopy = v57;
          v81 = 2048;
          streamInputIDString = self;
          v83 = 2112;
          v84 = *&buffer;
          v61 = "AVCStreamInput [%s] %s:%d %@(%p) Pushing sampleBuffer=%@";
          v62 = v65;
          v63 = 58;
          goto LABEL_73;
        }
      }

      else if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.value) = 136316418;
        *(&buf.value + 4) = v64;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "[AVCStreamInput pushSampleBuffer:error:]";
        HIWORD(buf.epoch) = 1024;
        v78 = 703;
        v79 = 2112;
        bufferCopy = v57;
        v81 = 2048;
        streamInputIDString = self;
        v83 = 2112;
        v84 = *&buffer;
        _os_log_debug_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEBUG, "AVCStreamInput [%s] %s:%d %@(%p) Pushing sampleBuffer=%@", &buf, 0x3Au);
      }
    }
  }

  return v51;
}

- (id)description
{
  result = self->_description;
  if (!result)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    result = [v4 stringWithFormat:@"%@(%p) streamInputID=%ld", NSStringFromClass(v5), self, self->_streamInputID];
    self->_description = result;
  }

  return result;
}

- (int)processOptions:(id)options
{
  OUTLINED_FUNCTION_40_0();
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = v3;
  v7 = [v4 objectForKeyedSubscript:@"options"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() != v6)
      {
        if (objc_opt_respondsToSelector())
        {
          [v6 performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_31())
          {
            goto LABEL_25;
          }
        }

        goto LABEL_7;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_7;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_7;
      }

LABEL_19:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
LABEL_26:
      _os_log_error_impl(v10, v11, v12, v13, v14, v15);
      goto LABEL_7;
    }
  }

  v6[5] = [v7 intValue];
  v8 = [v5 objectForKeyedSubscript:@"poolSize"];
  if (!v8)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[15] = [v8 intValue];
    goto LABEL_7;
  }

  if (objc_opt_class() == v6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_7;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
LABEL_25:
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_26;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  return result;
}

- (void)tearDownRemoteQueue
{
  os_unfair_lock_lock(&self->_senderQueueLock);
  if (self->_useFigRemoteQueue)
  {
    self->_useFigRemoteQueue = 0;
    VCRemoteImageQueue_Destroy(&self->_senderQueue);
  }

  os_unfair_lock_unlock(&self->_senderQueueLock);
}

- (int)createAndAddRemoteQueueToXPCDictionary:(id)dictionary
{
  v60 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_senderQueueLock);
  MediaType = CMFormatDescriptionGetMediaType(self->_formatDescription);
  v5 = MEMORY[0x1E6986650];
  if (MediaType == 1952606066)
  {
    goto LABEL_8;
  }

  v6 = [(AVConferenceXPCClient *)self->_xpcConnection sendMessageSync:"VCStreamInputGetServerPid" arguments:0 xpcArguments:0];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"ERROR"];
  if (v8)
  {
    v29 = v8;
    code = [(AVCStreamInput *)v8 code];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_46;
      }

      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v47 = 136316674;
      v48 = v39;
      v49 = 2080;
      OUTLINED_FUNCTION_19_11();
      v51 = 386;
      v52 = 2112;
      v53 = v30;
      v54 = 2048;
      selfCopy3 = self;
      v56 = v41;
      v57 = "VCStreamInputGetServerPid";
      v58 = 2112;
      v59 = v29;
      v35 = &dword_1DB56E000;
      v36 = "AVCStreamInput [%s] %s:%d %@(%p) Message=%s returned with an error=%@";
      v37 = &v47;
      v38 = v40;
      v42 = OS_LOG_TYPE_ERROR;
      v43 = 68;
      goto LABEL_45;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_46;
    }

    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v47 = 136316162;
    v48 = v32;
    v49 = 2080;
    OUTLINED_FUNCTION_19_11();
    v51 = 386;
    v52 = v34;
    v53 = "VCStreamInputGetServerPid";
    v54 = 2112;
    selfCopy3 = v29;
    v35 = &dword_1DB56E000;
    v36 = "AVCStreamInput [%s] %s:%d Message=%s returned with an error=%@";
    v37 = &v47;
    v38 = v33;
    goto LABEL_44;
  }

  v9 = [v7 objectForKeyedSubscript:@"VCStreamInputServerPID"];
  v10 = v9;
  if (!v9)
  {
LABEL_9:
    code = 0;
    goto LABEL_10;
  }

  if (![v9 intValue])
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = -[AVCStreamInput newRemoteQueueWithServerPid:](self, "newRemoteQueueWithServerPid:", [v10 intValue]);
  if (v11)
  {
    v10 = v11;
    v12 = OUTLINED_FUNCTION_39_3();
    xpc_dictionary_set_value(v12, v13, v14);
    code = 0;
    self->_useFigRemoteQueue = 1;
    goto LABEL_10;
  }

  code = -2143617020;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_46;
    }

    VRTraceErrorLogLevelToCSTR();
    v45 = *v5;
    if (!OUTLINED_FUNCTION_31())
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_8();
    v49 = v46;
    v50 = "[AVCStreamInput createAndAddRemoteQueueToXPCDictionary:]";
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_29();
    v53 = v31;
    v54 = 2048;
    selfCopy3 = self;
    v35 = &dword_1DB56E000;
    v36 = "AVCStreamInput [%s] %s:%d %@(%p) Failed to create remote queue";
    v37 = &v47;
    v38 = v45;
LABEL_44:
    v42 = OS_LOG_TYPE_ERROR;
    v43 = 48;
    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_46;
  }

  VRTraceErrorLogLevelToCSTR();
  if (!OUTLINED_FUNCTION_40())
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_10();
  v49 = v44;
  v50 = "[AVCStreamInput createAndAddRemoteQueueToXPCDictionary:]";
  OUTLINED_FUNCTION_4_2();
  v51 = 390;
  OUTLINED_FUNCTION_24();
  v43 = 28;
LABEL_45:
  _os_log_error_impl(v35, v38, v42, v36, v37, v43);
LABEL_46:
  v10 = 0;
LABEL_10:
  os_unfair_lock_unlock(&self->_senderQueueLock);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(AVCStreamInput *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_21;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v47 = 136316418;
    v48 = v24;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_19_11();
    v51 = 397;
    v52 = 2112;
    v53 = v16;
    v54 = 2048;
    selfCopy3 = self;
    v56 = v26;
    LODWORD(v57) = v27;
    v21 = "AVCStreamInput [%s] %s:%d %@(%p) useFigRemoteQueue=%d";
    v22 = v25;
    v23 = 54;
    goto LABEL_20;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 136315906;
      v48 = v17;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_19_11();
      v51 = 397;
      v52 = v19;
      LODWORD(v53) = v20;
      v21 = "AVCStreamInput [%s] %s:%d useFigRemoteQueue=%d";
      v22 = v18;
      v23 = 34;
LABEL_20:
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, &v47, v23);
    }
  }

LABEL_21:
  if (v10)
  {
    CFRelease(v10);
  }

  return code;
}

- (void)processFormat:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_29_6() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)processFormat:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_29_6() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupDelegate:delegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_30_7() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupDelegate:delegateQueue:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_29_6() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupXPCQueue
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_30_7() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)newRemoteQueueWithServerPid:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  OUTLINED_FUNCTION_28_6();
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)newRemoteQueueWithServerPid:(uint64_t)a1 .cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  OUTLINED_FUNCTION_28_6();
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)newRemoteQueueWithServerPid:(uint64_t)a1 .cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  OUTLINED_FUNCTION_28_6();
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setupXPCConnection
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_30_7() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)initializeServerSideInputStream
{
  OUTLINED_FUNCTION_11_0();
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_0();
    v13 = v4;
    OUTLINED_FUNCTION_7();
    v14 = 417;
    v15 = v5;
    v16 = "VCStreamInputInitialize";
    v6 = "AVCStreamInput [%s] %s:%d message=%s sendMessageSync failed";
    v7 = v3;
    v8 = 38;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, v6, v12, v8);
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    v2 = [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      v13 = v10;
      OUTLINED_FUNCTION_7();
      v14 = 417;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = v1;
      v19 = v11;
      v20 = "VCStreamInputInitialize";
      v6 = "AVCStreamInput [%s] %s:%d %@(%p) message=%s sendMessageSync failed";
      v7 = v9;
      v8 = 58;
      goto LABEL_12;
    }
  }

LABEL_10:
  *v0 = -2143617023;
}

- (uint64_t)initializeServerSideInputStream
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return [self tearDownRemoteQueue];
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return [self tearDownRemoteQueue];
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return [self tearDownRemoteQueue];
  }

  OUTLINED_FUNCTION_28_6();
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }

  return [self tearDownRemoteQueue];
}

void __30__AVCStreamInput_didServerDie__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_32_6();
  _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, "AVCStreamInput [%s] %s:%d AVCStreamInputID=%s server died, notifying client", &v2, 0x26u);
}

void __30__AVCStreamInput_didServerDie__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_32_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 629;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCStreamInput [%s] %s:%d could not create XPC dictionary for AVCStreamInput", &v2, 0x1Cu);
}

void __48__AVCStreamInput_sendSampleBufferOverXPC_error___block_invoke_92_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)pushSampleBuffer:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  AVCStreamInputID_ConvertToNSString(*(a2 + 40));
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)pushSampleBuffer:error:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[AVCStreamInput pushSampleBuffer:error:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  v4 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "AVCStreamInput [%s] %s:%d Pushing sampleBuffer=%@", v2, 0x26u);
}

- (void)pushSampleBuffer:error:.cold.3()
{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)pushSampleBuffer:error:.cold.4()
{
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_11_13();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

@end