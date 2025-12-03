@interface VCStreamIOAudioController
- (BOOL)_packetThreadStartWithClientFormat:(const tagVCAudioFrameFormat *)format;
- (BOOL)dispatchedStartClient:(id)client error:(id *)error;
- (BOOL)setupAndStartOutputClientThread;
- (BOOL)startInputForClient:(id)client error:(id *)error;
- (BOOL)startOutputForClient:(id)client error:(id *)error;
- (NSDictionary)reportingStats;
- (VCStreamIOAudioController)initWithStreamInputID:(int64_t)d streamToken:(int64_t)token networkClockID:(unint64_t)iD;
- (VCStreamOutput)streamOutput;
- (uint64_t)setupAndStartOutputClientThread;
- (void)_packetThreadStop;
- (void)cleanupOutputThread;
- (void)cleanupStreamOutput;
- (void)dealloc;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)dispatchedStopClient;
- (void)dispatchedUpdateClient:(id)client settings:(const tagVCAudioIOControllerClientSettings *)settings;
- (void)invalidate;
- (void)setStreamOutput:(id)output;
- (void)setupAndStartOutputClientThread;
- (void)startClient:(id)client;
- (void)stopClient:(id)client;
- (void)updateClient:(id)client settings:(const tagVCAudioIOControllerClientSettings *)settings;
@end

@implementation VCStreamIOAudioController

- (VCStreamIOAudioController)initWithStreamInputID:(int64_t)d streamToken:(int64_t)token networkClockID:(unint64_t)iD
{
  v35 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCStreamIOAudioController;
  v8 = [(VCObject *)&v24 init];
  if (v8)
  {
    -[VCObject setLogPrefix:](v8, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"streamInputID=%ld", d]);
    if (objc_opt_class() == v8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v26 = v10;
          v27 = 2080;
          v28 = "[VCStreamIOAudioController initWithStreamInputID:streamToken:networkClockID:]";
          v29 = 1024;
          v30 = 88;
          v12 = "VCStreamIOAudioController [%s] %s:%d ";
          v13 = v11;
          v14 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCStreamIOAudioController *)v8 performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v26 = v15;
          v27 = 2080;
          v28 = "[VCStreamIOAudioController initWithStreamInputID:streamToken:networkClockID:]";
          v29 = 1024;
          v30 = 88;
          v31 = 2112;
          v32 = v9;
          v33 = 2048;
          v34 = v8;
          v12 = "VCStreamIOAudioController [%s] %s:%d %@(%p) ";
          v13 = v16;
          v14 = 48;
          goto LABEL_12;
        }
      }
    }

    if (token)
    {
      v17 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AVConference.streamIOAudioController_%ld", d), "UTF8String"];
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
      v19 = dispatch_queue_create_with_target_V2(v17, 0, CustomRootQueue);
      v8->_stateQueue = v19;
      if (v19)
      {
        if (d && ((v20 = [[VCStreamInputManager streamInputWithID:"streamInputWithID:" sharedInstance:objc_opt_class()]? (streamInput = v8->_streamInput) : (streamInput = v20, v8->_streamInput = streamInput), !streamInput))
        {
          [VCStreamIOAudioController initWithStreamInputID:v8 streamToken:? networkClockID:?];
        }

        else
        {
          v8->_streamToken = token;
          SampleBufferAllocator = VCAudioBufferList_CreateSampleBufferAllocator();
          v8->_audioSampleBufferAllocator = SampleBufferAllocator;
          if (SampleBufferAllocator)
          {
            [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager registerStreamOutputSource:"registerStreamOutputSource:forStreamToken:" forStreamToken:v8, token];
            v8->_networkClockID = iD;
            v8->_lastInputHealthPrintHostTime = NAN;
            return v8;
          }

          [VCStreamIOAudioController initWithStreamInputID:v8 streamToken:? networkClockID:?];
        }
      }

      else
      {
        [VCStreamIOAudioController initWithStreamInputID:v8 streamToken:? networkClockID:?];
      }
    }

    else
    {
      [VCStreamIOAudioController initWithStreamInputID:v8 streamToken:? networkClockID:?];
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCStreamIOAudioController dealloc]";
        v19 = 1024;
        v20 = 120;
        v6 = "VCStreamIOAudioController [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCStreamIOAudioController dealloc]";
        v19 = 1024;
        v20 = 120;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        selfCopy = self;
        v6 = "VCStreamIOAudioController [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  if (self->_isRunning)
  {
    [(VCStreamIOAudioController *)self dispatchedStopClient];
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  [(VCStreamIOAudioController *)self cleanupStreamOutput];

  self->_streamInput = 0;
  audioSampleBufferAllocator = self->_audioSampleBufferAllocator;
  if (audioSampleBufferAllocator)
  {
    CFRelease(audioSampleBufferAllocator);
  }

  backingBufferAllocator = self->_backingBufferAllocator;
  if (backingBufferAllocator)
  {
    CFRelease(backingBufferAllocator);
  }

  self->_runningClient = 0;
  v14.receiver = self;
  v14.super_class = VCStreamIOAudioController;
  [(VCObject *)&v14 dealloc];
}

- (BOOL)_packetThreadStartWithClientFormat:(const tagVCAudioFrameFormat *)format
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_packetThread)
  {
    [VCStreamIOAudioController _packetThreadStartWithClientFormat:];
    return LOBYTE(buf.mSampleRate);
  }

  samplesPerFrame = format->samplesPerFrame;
  v6 = *&format->format.mBytesPerPacket;
  *&buf.mSampleRate = *&format->format.mSampleRate;
  *&buf.mBytesPerPacket = v6;
  *&buf.mBitsPerChannel = *&format->format.mBitsPerChannel;
  v7 = VCAudioBufferList_Allocate(&buf, samplesPerFrame, &self->_inputSamples);
  *__str = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = FormatToCStr(format, __str, 0x40uLL);
        v12 = format->samplesPerFrame;
        LODWORD(buf.mSampleRate) = 136316162;
        *(&buf.mSampleRate + 4) = v9;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCStreamIOAudioController _packetThreadStartWithClientFormat:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 146;
        LOWORD(buf.mChannelsPerFrame) = 2080;
        *(&buf.mChannelsPerFrame + 2) = v11;
        HIWORD(buf.mReserved) = 1024;
        LODWORD(selfCopy) = v12;
        v13 = "VCStreamIOAudioController [%s] %s:%d clientFormat=%s samplesPerFrame=%u";
        v14 = v10;
        v15 = 44;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = FormatToCStr(format, __str, 0x40uLL);
        v19 = format->samplesPerFrame;
        LODWORD(buf.mSampleRate) = 136316674;
        *(&buf.mSampleRate + 4) = v16;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCStreamIOAudioController _packetThreadStartWithClientFormat:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 146;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v8;
        HIWORD(buf.mReserved) = 2048;
        selfCopy = self;
        v28 = 2080;
        v29 = v18;
        v30 = 1024;
        v31 = v19;
        v13 = "VCStreamIOAudioController [%s] %s:%d %@(%p) clientFormat=%s samplesPerFrame=%u";
        v14 = v17;
        v15 = 64;
        goto LABEL_12;
      }
    }
  }

  if (!v7 || (inputSamples = self->_inputSamples) == 0)
  {
    if (([(VCStreamIOAudioController *)self _packetThreadStartWithClientFormat:v7]& 1) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  SerializedSize = VCAudioBufferList_GetSerializedSize(inputSamples);
  v22 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AVConference.streamIOAudioController_%ld", -[NSNumber longValue](-[VCStreamInput streamInputID](self->_streamInput, "streamInputID"), "longValue")), "UTF8String"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__VCStreamIOAudioController__packetThreadStartWithClientFormat___block_invoke;
  v25[3] = &unk_1E85F5668;
  v25[4] = self;
  v23 = PacketThread_Create(SerializedSize, 0, 0x10u, 19, v22, v25);
  self->_packetThread = v23;
  if (!v23)
  {
    [VCStreamIOAudioController _packetThreadStartWithClientFormat:?];
LABEL_22:
    VCAudioBufferList_Destroy(&self->_inputSamples);
    return 0;
  }

  return 1;
}

double *__64__VCStreamIOAudioController__packetThreadStartWithClientFormat___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 232) sinkIO];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = VCAudioBufferList_GetSampleFormat(a2);
  if (result)
  {
    LODWORD(v5[0]) = *result;
    v5[1] = VCAudioBufferList_GetTimestamp(a2);
    return (*(v3 + 8))(*v3, v5, a2);
  }

  return result;
}

- (void)_packetThreadStop
{
  packetThread = self->_packetThread;
  if (packetThread)
  {
    PacketThread_Destroy(packetThread);
    self->_packetThread = 0;

    VCAudioBufferList_Destroy(&self->_inputSamples);
  }
}

- (void)startClient:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = v6;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController startClient:]";
        v22 = 1024;
        v23 = 179;
        v8 = "VCStreamIOAudioController [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v19 = v11;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController startClient:]";
        v22 = 1024;
        v23 = 179;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        selfCopy2 = self;
        v8 = "VCStreamIOAudioController [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  if (client)
  {
    stateQueue = self->_stateQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__VCStreamIOAudioController_startClient___block_invoke;
    v17[3] = &unk_1E85F37F0;
    v17[4] = self;
    v17[5] = client;
    dispatch_async(stateQueue, v17);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamIOAudioController startClient:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController startClient:]";
        v22 = 1024;
        v23 = 182;
        v24 = 2112;
        v25 = v14;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) nil client", buf, 0x30u);
      }
    }
  }
}

uint64_t __41__VCStreamIOAudioController_startClient___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = [*(a1 + 32) dispatchedStartClient:*(a1 + 40) error:v5];
  v3 = [*(a1 + 40) delegate];
  return [v3 didStart:v2 error:v5[0]];
}

- (BOOL)startInputForClient:(id)client error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v7;
  v37 = v7;
  *__str = v7;
  v35 = v7;
  v32 = v7;
  v33 = v7;
  *v30 = v7;
  v31 = v7;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription([(VCStreamInput *)self->_streamInput streamFormat]);
  if (!StreamBasicDescription || ![client clientFormat])
  {
    [(VCStreamIOAudioController *)client startInputForClient:StreamBasicDescription error:buf];
    v10 = *buf;
    v12 = 32000;
    goto LABEL_14;
  }

  if (memcmp(StreamBasicDescription, [client clientFormat], 0x28uLL))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = FormatToCStr([client clientFormat], __str, 0x40uLL);
    v10 = [v13 stringWithFormat:@"Client (%p) format=%s does not match stream input format=%s for StreamInputID=%ld", client, v14, FormatToCStr(StreamBasicDescription, v30, 0x40uLL), -[NSNumber longValue](-[VCStreamInput streamInputID](self->_streamInput, "streamInputID"), "longValue")];
LABEL_12:
    v12 = 32016;
    goto LABEL_14;
  }

  if (!*([client sinkIO] + 8))
  {
    [(VCStreamIOAudioController *)&self->_streamInput startInputForClient:client error:buf];
    v10 = *buf;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E6960CC0];
  *&self->_lastHostTime.value = *MEMORY[0x1E6960CC0];
  self->_lastHostTime.epoch = *(v9 + 16);
  self->_lastSampleCount = 0;
  self->_nextExpectedSampleTime = 0;
  self->_timestampInitialized = 0;
  if (!-[VCStreamIOAudioController _packetThreadStartWithClientFormat:](self, "_packetThreadStartWithClientFormat:", [client clientFormat]))
  {
    [(VCStreamIOAudioController *)&self->_streamInput startInputForClient:client error:buf];
    v10 = *buf;
    v12 = 32015;
LABEL_14:
    if (!v10)
    {
      goto LABEL_7;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCStreamIOAudioController startInputForClient:error:];
          if (error)
          {
LABEL_26:
            v18 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:v12 detailCode:0 description:v10];
            LOBYTE(v10) = 0;
            *error = v18;
            return v10;
          }

LABEL_28:
          LOBYTE(v10) = 0;
          return v10;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = v16;
          v20 = 2080;
          v21 = "[VCStreamIOAudioController startInputForClient:error:]";
          v22 = 1024;
          v23 = 223;
          v24 = 2112;
          v25 = v15;
          v26 = 2048;
          selfCopy = self;
          v28 = 2112;
          v29 = v10;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
          if (error)
          {
            goto LABEL_26;
          }

          goto LABEL_28;
        }
      }
    }

    if (error)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  PacketThread_ReceiverIsReady(self->_packetThread);
  [(VCStreamInputAudio *)self->_streamInput registerSampleBufferCallback:_VCStreamIOAudioController_SampleBufferCallback context:self];
  LOBYTE(v10) = 1;
LABEL_7:
  [(VCStreamInput *)self->_streamInput didStartStreamInputCaptureSource];
  return v10;
}

- (BOOL)startOutputForClient:(id)client error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (*([client sourceIO] + 8))
  {
    self->_sourceIO = [client sourceIO];
    if ([(VCStreamIOAudioController *)self setupAndStartOutputClientThread])
    {
      return 1;
    }

    client = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) Failed to create the outputClientThread", client];
    v9 = 32025;
  }

  else
  {
    client = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) sourceIO is nil for StreamToken=%ld", client, self->_streamToken];
    v9 = 32016;
  }

  self->_sourceIO = 0;
  if (!client)
  {
    return 0;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCStreamIOAudioController startOutputForClient:error:]";
        v18 = 1024;
        v19 = 249;
        v20 = 2112;
        v21 = v10;
        v22 = 2048;
        selfCopy = self;
        v24 = 2112;
        v25 = client;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
        if (error)
        {
          goto LABEL_18;
        }

        return 0;
      }
    }

    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
LABEL_17:
    if (error)
    {
      goto LABEL_18;
    }

    return 0;
  }

  [VCStreamIOAudioController startOutputForClient:error:];
  if (error)
  {
LABEL_18:
    v13 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:v9 detailCode:0 description:client];
    result = 0;
    *error = v13;
    return result;
  }

  return 0;
}

- (BOOL)setupAndStartOutputClientThread
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = objc_alloc_init(VCAudioRelay);
  self->_outputThread = v3;
  if (!v3)
  {
    [(VCStreamIOAudioController *)self setupAndStartOutputClientThread];
    goto LABEL_24;
  }

  networkClockID = self->_networkClockID;
  v5 = *MEMORY[0x1E69DA108];
  if (networkClockID != *MEMORY[0x1E69DA108] && ![(VCAudioRelay *)v3 setNetworkClockID:self->_networkClockID withError:&v13])
  {
    [VCStreamIOAudioController setupAndStartOutputClientThread];
    goto LABEL_24;
  }

  v6 = objc_alloc_init(VCAudioRelayIO);
  self->_outputThreadClient = v6;
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          if (([(VCStreamIOAudioController *)v9 setupAndStartOutputClientThread]& 1) == 0)
          {
            return 1;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCStreamIOAudioController setupAndStartOutputClientThread]";
          v18 = 1024;
          v19 = 271;
          v20 = 2112;
          v21 = v8;
          v22 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) Failed to allocate output thread client", buf, 0x30u);
        }
      }
    }

    if (networkClockID != v5)
    {
      return 1;
    }

    goto LABEL_24;
  }

  [(VCAudioRelayIO *)v6 setSpeakerCallback:_VCStreamIOAudioController_PullAudioSamples];
  [(VCAudioRelayIO *)self->_outputThreadClient setSpeakerCallbackContext:self];
  [(VCAudioRelayIO *)self->_outputThreadClient setClientFormat:[(VCAudioIOControllerClient *)self->_runningClient clientFormat]];
  [(VCAudioRelayIO *)self->_outputThreadClient setRealtimeCatchUpEnabled:[(VCAudioIOControllerClient *)self->_runningClient prefersRealtimeCatchUp]];
  if ([(VCAudioRelay *)self->_outputThread setClientIO:self->_outputThreadClient withError:&v13])
  {
    if ([(VCAudioRelay *)self->_outputThread startClientIO])
    {
      return 1;
    }

    [(VCStreamIOAudioController *)self setupAndStartOutputClientThread];
  }

  else
  {
    [VCStreamIOAudioController setupAndStartOutputClientThread];
  }

LABEL_24:
  [(VCStreamIOAudioController *)self cleanupOutputThread];
  return 0;
}

- (void)cleanupOutputThread
{
  self->_outputThreadClient = 0;

  self->_outputThread = 0;
}

- (void)cleanupStreamOutput
{
  streamOutput = self->_streamOutput;
  if (streamOutput)
  {

    self->_streamOutput = 0;
  }
}

- (void)stopClient:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = v6;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController stopClient:]";
        v22 = 1024;
        v23 = 306;
        v8 = "VCStreamIOAudioController [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v19 = v11;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController stopClient:]";
        v22 = 1024;
        v23 = 306;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        selfCopy2 = self;
        v8 = "VCStreamIOAudioController [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  if (client)
  {
    stateQueue = self->_stateQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__VCStreamIOAudioController_stopClient___block_invoke;
    v17[3] = &unk_1E85F37F0;
    v17[4] = self;
    v17[5] = client;
    dispatch_async(stateQueue, v17);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamIOAudioController stopClient:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCStreamIOAudioController stopClient:]";
        v22 = 1024;
        v23 = 309;
        v24 = 2112;
        v25 = v14;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) nil client", buf, 0x30u);
      }
    }
  }
}

uint64_t __40__VCStreamIOAudioController_stopClient___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 176))
  {
    v3 = *(v2 + 232);
    if (*(a1 + 40) == v3)
    {
      [v2 dispatchedStopClient];
      v4 = 0;
      v5 = 1;
      return [objc_msgSend(*(a1 + 40) "delegate")];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) does not match running client=%p. Cannot stop stream IO Audio", *(a1 + 40), v3];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) cannot stop stream IO Audio when not running", *(a1 + 40), v12];
  }

  v4 = v7;
  if (v7)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __40__VCStreamIOAudioController_stopClient___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 32);
          *buf = 136316418;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCStreamIOAudioController stopClient:]_block_invoke";
          v17 = 1024;
          v18 = 325;
          v19 = 2112;
          v20 = v8;
          v21 = 2048;
          v22 = v11;
          v23 = 2112;
          v24 = v4;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
        }
      }
    }

    v4 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32005 detailCode:0 description:v4];
  }

  v5 = 0;
  return [objc_msgSend(*(a1 + 40) "delegate")];
}

- (BOOL)dispatchedStartClient:(id)client error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_isRunning)
  {
    v9 = 0;
    v12 = @"Client (%p) cannot start stream IO Audio when already running";
    v13 = 32025;
    goto LABEL_17;
  }

  if (![client direction])
  {
    v9 = 0;
    v12 = @"Client (%p) direction is invalid";
    v13 = 32026;
    goto LABEL_17;
  }

  [objc_msgSend(client "delegate")];
  [(VCStreamIOAudioController *)self setRunningClient:client];
  direction = [client direction];
  if (direction)
  {
    v8 = [(VCStreamIOAudioController *)self startOutputForClient:client error:error];
    self->_sourceStarted = v8;
    if (!v8)
    {
      v9 = 0;
      v12 = @"Client (%p) Starting output for client failed";
LABEL_16:
      v13 = 32005;
LABEL_17:
      client = [MEMORY[0x1E696AEC0] stringWithFormat:v12, client];
      if (!client)
      {
        return v9;
      }

      v15 = client;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCStreamIOAudioController dispatchedStartClient:error:];
            if (!error)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v16 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
        }

        else
        {
          v16 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v20 = v17;
            v21 = 2080;
            v22 = "[VCStreamIOAudioController dispatchedStartClient:error:]";
            v23 = 1024;
            v24 = 364;
            v25 = 2112;
            v26 = v16;
            v27 = 2048;
            selfCopy = self;
            v29 = 2112;
            v30 = v15;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VCStreamIOAudioController [%s] %s:%d %@(%p) error=%@", buf, 0x3Au);
            if (!error)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }
        }
      }

      if (!error)
      {
LABEL_30:
        [(VCStreamIOAudioController *)self dispatchedStopClient];
        return 0;
      }

LABEL_29:
      *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:v13 detailCode:0 description:v15];
      goto LABEL_30;
    }
  }

  v9 = direction & 1;
  if (([client direction] & 2) != 0)
  {
    v10 = [(VCStreamIOAudioController *)self startInputForClient:client error:error];
    self->_sinkStarted = v10;
    if (v10)
    {
      v9 = 1;
      goto LABEL_8;
    }

    v12 = @"Client (%p) Stop the output for client";
    goto LABEL_16;
  }

LABEL_8:
  if (self->_sourceStarted || self->_sinkStarted)
  {
    self->_clientDirection = [client direction];
    self->_isRunning = 1;
  }

  return v9;
}

- (void)dispatchedStopClient
{
  self->_isRunning = 0;
  if (self->_sourceStarted)
  {
    [(VCAudioRelay *)self->_outputThread stopClientIO];
    [(VCStreamIOAudioController *)self cleanupOutputThread];
    self->_sourceIO = 0;
    self->_sourceStarted = 0;
  }

  if (self->_sinkStarted)
  {
    [(VCStreamInputAudio *)self->_streamInput registerSampleBufferCallback:0 context:0];
    [(VCStreamIOAudioController *)self _packetThreadStop];
    [(VCStreamInput *)self->_streamInput didStopStreamInputCaptureSource];
    self->_sinkStarted = 0;
  }

  [(VCStreamIOAudioController *)self setRunningClient:0];
}

- (void)dispatchedUpdateClient:(id)client settings:(const tagVCAudioIOControllerClientSettings *)settings
{
  v33 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  direction = [client direction];
  var0 = settings->var0;
  [client setDirection:settings->var0];
  [client setSpatialAudioDisabled:settings->var1];
  [client setIsVoiceActivityEnabled:settings->var2];
  [client setIsMediaPriorityEnabled:settings->var3];
  if (self->_runningClient == client)
  {
    if ([(VCStreamIOAudioController *)self canSetDirection:settings->var0])
    {
      if (self->_isRunning && direction != var0)
      {
        [(VCStreamIOAudioController *)self dispatchedStopClient];
        [(VCStreamIOAudioController *)self dispatchedStartClient:client error:v20];
      }
    }

    else
    {
      [VCStreamIOAudioController dispatchedUpdateClient:settings:];
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    runningClient = self->_runningClient;
    v20[0] = 136316162;
    *&v20[1] = v11;
    v21 = 2080;
    v22 = "[VCStreamIOAudioController dispatchedUpdateClient:settings:]";
    v23 = 1024;
    v24 = 398;
    v25 = 2048;
    clientCopy = client;
    v27 = 2048;
    selfCopy = runningClient;
    v14 = "VCStreamIOAudioController [%s] %s:%d client=%p != runningClient=%p";
    v15 = v12;
    v16 = 48;
LABEL_20:
    _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, v20, v16);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
  }

  else
  {
    v10 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_runningClient;
      v20[0] = 136316674;
      *&v20[1] = v17;
      v21 = 2080;
      v22 = "[VCStreamIOAudioController dispatchedUpdateClient:settings:]";
      v23 = 1024;
      v24 = 398;
      v25 = 2112;
      clientCopy = v10;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      clientCopy2 = client;
      v31 = 2048;
      v32 = v19;
      v14 = "VCStreamIOAudioController [%s] %s:%d %@(%p) client=%p != runningClient=%p";
      v15 = v18;
      v16 = 68;
      goto LABEL_20;
    }
  }
}

- (void)updateClient:(id)client settings:(const tagVCAudioIOControllerClientSettings *)settings
{
  v7 = *MEMORY[0x1E69E9840];
  if (client)
  {
    if (settings)
    {
      stateQueue = self->_stateQueue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __51__VCStreamIOAudioController_updateClient_settings___block_invoke;
      v5[3] = &unk_1E85F3890;
      v5[4] = self;
      v5[5] = client;
      v6 = *settings;
      dispatch_async(stateQueue, v5);
    }

    else
    {
      [VCStreamIOAudioController updateClient:? settings:?];
    }
  }

  else
  {
    [VCStreamIOAudioController updateClient:? settings:?];
  }
}

- (void)invalidate
{
  v3 = +[VCStreamOutputManager sharedInstance];
  streamToken = self->_streamToken;

  [(VCStreamOutputManager *)v3 deregisterStreamOutputSourceForStreamToken:streamToken];
}

- (NSDictionary)reportingStats
{
  result = self->_streamInput;
  if (result)
  {
    return [(NSDictionary *)result reportingStats];
  }

  return result;
}

- (VCStreamOutput)streamOutput
{
  os_unfair_lock_lock(&self->_streamOutputLock);
  v3 = self->_streamOutput;
  os_unfair_lock_unlock(&self->_streamOutputLock);
  return v3;
}

- (void)setStreamOutput:(id)output
{
  os_unfair_lock_lock(&self->_streamOutputLock);

  streamOutput = output;
  self->_streamOutput = streamOutput;
  if (self->_backingBufferAllocator)
  {
    CFRelease(self->_backingBufferAllocator);
    streamOutput = self->_streamOutput;
  }

  backingBufferAllocator = [(VCStreamOutput *)streamOutput backingBufferAllocator];
  self->_backingBufferAllocator = backingBufferAllocator;
  if (backingBufferAllocator)
  {
    CFRetain(backingBufferAllocator);
  }

  os_unfair_lock_unlock(&self->_streamOutputLock);
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        v14 = 2080;
        v15 = "[VCStreamIOAudioController didUpdateBasebandCodec:]";
        v16 = 1024;
        v17 = 467;
        v7 = "VCStreamIOAudioController [%s] %s:%d not handled";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCStreamIOAudioController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCStreamIOAudioController didUpdateBasebandCodec:]";
        v16 = 1024;
        v17 = 467;
        v18 = 2112;
        v19 = v4;
        v20 = 2048;
        selfCopy = self;
        v7 = "VCStreamIOAudioController [%s] %s:%d %@(%p) not handled";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 streamToken:networkClockID:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 streamToken:networkClockID:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 streamToken:networkClockID:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 streamToken:networkClockID:.cold.4(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)_packetThreadStartWithClientFormat:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
}

- (void)_packetThreadStartWithClientFormat:(uint64_t)a1 .cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (uint64_t)_packetThreadStartWithClientFormat:(uint64_t)a1 .cold.3(uint64_t a1, char a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return a2 & 1;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return a2 & 1;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return a2 & 1;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v8 = 48;
      goto LABEL_11;
    }
  }

  return a2 & 1;
}

- (void)startClient:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (uint64_t)startInputForClient:(uint64_t *)a3 error:.cold.1(id *a1, uint64_t a2, uint64_t *a3)
{
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to start the packet thread for Client=%p for StreamInputID=%ld", a2, objc_msgSend(objc_msgSend(*a1, "streamInputID"), "longValue")];
  *a3 = result;
  return result;
}

- (uint64_t)startInputForClient:(uint64_t *)a3 error:.cold.2(id *a1, uint64_t a2, uint64_t *a3)
{
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) sinkIO is nil for StreamInputID=%ld", a2, objc_msgSend(objc_msgSend(*a1, "streamInputID"), "longValue")];
  *a3 = result;
  return result;
}

- (uint64_t)startInputForClient:(uint64_t)a3 error:(uint64_t *)a4 .cold.3(void *a1, char *a2, uint64_t a3, uint64_t *a4)
{
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"AudioStreamBasicDescription is nil for client or stream. Client asbd=%s Stream asbd=%p for client (%p)", FormatToCStr(objc_msgSend(a1, "clientFormat"), a2, 0x40uLL), a3, a1];
  *a4 = result;
  return result;
}

- (void)startInputForClient:error:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VCStreamIOAudioController [%s] %s:%d error=%@");
}

- (void)startOutputForClient:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VCStreamIOAudioController [%s] %s:%d error=%@");
}

- (void)setupAndStartOutputClientThread
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (uint64_t)setupAndStartOutputClientThread
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, v9);
  return a3 & 1;
}

- (void)stopClient:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __40__VCStreamIOAudioController_stopClient___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VCStreamIOAudioController [%s] %s:%d error=%@");
}

- (void)dispatchedStartClient:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VCStreamIOAudioController [%s] %s:%d error=%@");
}

- (void)dispatchedUpdateClient:settings:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)updateClient:(uint64_t)a1 settings:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)updateClient:(uint64_t)a1 settings:.cold.2(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end